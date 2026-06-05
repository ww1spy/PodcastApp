package com.google.android.gms.iid;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.util.ArrayMap;
import android.support.v7.media.MediaRouteProviderProtocol;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.tasks.Tasks;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.interfaces.RSAPrivateKey;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import mobi.beyondpod.services.auto.MediaIdHelper;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;

@Hide
/* loaded from: classes.dex */
public final class zzaa {
    private static int zzino = 0;
    private static zzae<Boolean> zzinr = zzad.zzawy().zzf("gcm_iid_use_messenger_ipc", true);
    private static String zzins = null;
    private static boolean zzint = false;
    private static int zzinu;
    private static int zzinv;
    private static BroadcastReceiver zzinw;
    private Context zzaiq;
    private PendingIntent zzikb;
    private Messenger zzikf;
    private Map<String, Object> zzinx = new ArrayMap();
    private Messenger zziny;
    private MessengerCompat zzinz;

    public zzaa(Context context) {
        this.zzaiq = context;
    }

    private static String zza(KeyPair keyPair, String... strArr) {
        String str;
        String str2;
        byte[] bytes;
        try {
            bytes = TextUtils.join("\n", strArr).getBytes(HttpRequest.CHARSET_UTF8);
        } catch (UnsupportedEncodingException e) {
            e = e;
            str = "InstanceID/Rpc";
            str2 = "Unable to encode string";
        }
        try {
            PrivateKey privateKey = keyPair.getPrivate();
            Signature signature = Signature.getInstance(privateKey instanceof RSAPrivateKey ? "SHA256withRSA" : "SHA256withECDSA");
            signature.initSign(privateKey);
            signature.update(bytes);
            return InstanceID.zzp(signature.sign());
        } catch (GeneralSecurityException e2) {
            e = e2;
            str = "InstanceID/Rpc";
            str2 = "Unable to sign registration request";
            Log.e(str, str2, e);
            return null;
        }
    }

    private static boolean zza(PackageManager packageManager) {
        Iterator<ResolveInfo> it = packageManager.queryBroadcastReceivers(new Intent("com.google.iid.TOKEN_REQUEST"), 0).iterator();
        while (it.hasNext()) {
            if (zza(packageManager, it.next().activityInfo.packageName, "com.google.iid.TOKEN_REQUEST")) {
                zzint = true;
                return true;
            }
        }
        return false;
    }

    private static boolean zza(PackageManager packageManager, String str, String str2) {
        if (packageManager.checkPermission("com.google.android.c2dm.permission.SEND", str) == 0) {
            return zzb(packageManager, str);
        }
        StringBuilder sb = new StringBuilder(56 + String.valueOf(str).length() + String.valueOf(str2).length());
        sb.append("Possible malicious package ");
        sb.append(str);
        sb.append(" declares ");
        sb.append(str2);
        sb.append(" without permission");
        Log.w("InstanceID/Rpc", sb.toString());
        return false;
    }

    private final Bundle zzaa(Bundle bundle) throws IOException {
        Bundle bundle2;
        ConditionVariable conditionVariable = new ConditionVariable();
        String zzawx = zzawx();
        synchronized (getClass()) {
            this.zzinx.put(zzawx, conditionVariable);
        }
        zzf(bundle, zzawx);
        conditionVariable.block(30000L);
        synchronized (getClass()) {
            Object remove = this.zzinx.remove(zzawx);
            if (!(remove instanceof Bundle)) {
                if (remove instanceof String) {
                    throw new IOException((String) remove);
                }
                String valueOf = String.valueOf(remove);
                StringBuilder sb = new StringBuilder(12 + String.valueOf(valueOf).length());
                sb.append("No response ");
                sb.append(valueOf);
                Log.w("InstanceID/Rpc", sb.toString());
                throw new IOException(InstanceID.ERROR_TIMEOUT);
            }
            bundle2 = (Bundle) remove;
        }
        return bundle2;
    }

    private final void zzae(Object obj) {
        synchronized (getClass()) {
            for (String str : this.zzinx.keySet()) {
                Object obj2 = this.zzinx.get(str);
                this.zzinx.put(str, obj);
                zze(obj2, obj);
            }
        }
    }

    private static synchronized String zzawx() {
        String num;
        synchronized (zzaa.class) {
            int i = zzino;
            zzino = i + 1;
            num = Integer.toString(i);
        }
        return num;
    }

    private static boolean zzb(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 0);
            zzins = applicationInfo.packageName;
            zzinv = applicationInfo.uid;
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean zzdq(Context context) {
        if (zzins != null) {
            zzdr(context);
        }
        return zzint;
    }

    @Hide
    public static String zzdr(Context context) {
        boolean z;
        if (zzins != null) {
            return zzins;
        }
        zzinu = Process.myUid();
        PackageManager packageManager = context.getPackageManager();
        if (!com.google.android.gms.common.util.zzs.isAtLeastO()) {
            Iterator<ResolveInfo> it = packageManager.queryIntentServices(new Intent("com.google.android.c2dm.intent.REGISTER"), 0).iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (zza(packageManager, it.next().serviceInfo.packageName, "com.google.android.c2dm.intent.REGISTER")) {
                    zzint = false;
                    z = true;
                    break;
                }
            }
            if (z) {
                return zzins;
            }
        }
        if (zza(packageManager)) {
            return zzins;
        }
        Log.w("InstanceID/Rpc", "Failed to resolve IID implementation package, falling back");
        if (zzb(packageManager, "com.google.android.gms")) {
            zzint = com.google.android.gms.common.util.zzs.isAtLeastO();
            return zzins;
        }
        if (com.google.android.gms.common.util.zzs.zzanx() || !zzb(packageManager, "com.google.android.gsf")) {
            Log.w("InstanceID/Rpc", "Google Play services is missing, unable to get tokens");
            return null;
        }
        zzint = false;
        return zzins;
    }

    private static int zzds(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzdr(context), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return -1;
        }
    }

    private static void zze(Object obj, Object obj2) {
        if (obj instanceof ConditionVariable) {
            ((ConditionVariable) obj).open();
        }
        if (obj instanceof Messenger) {
            Messenger messenger = (Messenger) obj;
            Message obtain = Message.obtain();
            obtain.obj = obj2;
            try {
                messenger.send(obtain);
            } catch (RemoteException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(24 + String.valueOf(valueOf).length());
                sb.append("Failed to send response ");
                sb.append(valueOf);
                Log.w("InstanceID/Rpc", sb.toString());
            }
        }
    }

    private final void zzf(Bundle bundle, String str) throws IOException {
        if (this.zzikf == null) {
            zzdr(this.zzaiq);
            this.zzikf = new Messenger(new zzab(this, Looper.getMainLooper()));
        }
        if (zzins == null) {
            throw new IOException(InstanceID.ERROR_MISSING_INSTANCEID_SERVICE);
        }
        Intent intent = new Intent(zzint ? "com.google.iid.TOKEN_REQUEST" : "com.google.android.c2dm.intent.REGISTER");
        intent.setPackage(zzins);
        intent.putExtras(bundle);
        zzi(intent);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 5);
        sb.append("|ID|");
        sb.append(str);
        sb.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
        intent.putExtra("kid", sb.toString());
        StringBuilder sb2 = new StringBuilder(5 + String.valueOf(str).length());
        sb2.append("|ID|");
        sb2.append(str);
        sb2.append(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR);
        intent.putExtra("X-kid", sb2.toString());
        boolean equals = "com.google.android.gsf".equals(zzins);
        String stringExtra = intent.getStringExtra("useGsf");
        if (stringExtra != null) {
            equals = NotificationPreferences.YES.equals(stringExtra);
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf = String.valueOf(intent.getExtras());
            StringBuilder sb3 = new StringBuilder(8 + String.valueOf(valueOf).length());
            sb3.append("Sending ");
            sb3.append(valueOf);
            Log.d("InstanceID/Rpc", sb3.toString());
        }
        if (this.zziny != null) {
            intent.putExtra("google.messenger", this.zzikf);
            Message obtain = Message.obtain();
            obtain.obj = intent;
            try {
                this.zziny.send(obtain);
                return;
            } catch (RemoteException unused) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (equals) {
            synchronized (this) {
                if (zzinw == null) {
                    zzinw = new zzac(this);
                    if (Log.isLoggable("InstanceID/Rpc", 3)) {
                        Log.d("InstanceID/Rpc", "Registered GSF callback receiver");
                    }
                    IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
                    intentFilter.addCategory(this.zzaiq.getPackageName());
                    this.zzaiq.registerReceiver(zzinw, intentFilter, "com.google.android.c2dm.permission.SEND", null);
                }
            }
            this.zzaiq.sendBroadcast(intent);
            return;
        }
        intent.putExtra("google.messenger", this.zzikf);
        intent.putExtra("messenger2", NotificationPreferences.YES);
        if (this.zzinz != null) {
            Message obtain2 = Message.obtain();
            obtain2.obj = intent;
            try {
                this.zzinz.send(obtain2);
                return;
            } catch (RemoteException unused2) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    Log.d("InstanceID/Rpc", "Messenger failed, fallback to startService");
                }
            }
        }
        if (zzint) {
            this.zzaiq.sendBroadcast(intent);
        } else {
            this.zzaiq.startService(intent);
        }
    }

    private final synchronized void zzi(Intent intent) {
        if (this.zzikb == null) {
            Intent intent2 = new Intent();
            intent2.setPackage("com.google.example.invalidpackage");
            this.zzikb = PendingIntent.getBroadcast(this.zzaiq, 0, intent2, 0);
        }
        intent.putExtra(SettingsJsonConstants.APP_KEY, this.zzikb);
    }

    private final void zzi(String str, Object obj) {
        synchronized (getClass()) {
            Object obj2 = this.zzinx.get(str);
            this.zzinx.put(str, obj);
            zze(obj2, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzy(Bundle bundle) throws IOException {
        if (bundle == null) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        String string = bundle.getString("registration_id");
        if (string == null) {
            string = bundle.getString("unregistered");
        }
        if (string != null) {
            return string;
        }
        String string2 = bundle.getString(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        if (string2 != null) {
            throw new IOException(string2);
        }
        String valueOf = String.valueOf(bundle);
        StringBuilder sb = new StringBuilder(29 + String.valueOf(valueOf).length());
        sb.append("Unexpected response from GCM ");
        sb.append(valueOf);
        Log.w("InstanceID/Rpc", sb.toString(), new Throwable());
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    private final Bundle zzz(Bundle bundle) throws IOException {
        Bundle zzaa = zzaa(bundle);
        if (zzaa == null || !zzaa.containsKey("google.messenger")) {
            return zzaa;
        }
        Bundle zzaa2 = zzaa(bundle);
        if (zzaa2 == null || !zzaa2.containsKey("google.messenger")) {
            return zzaa2;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Bundle zza(Bundle bundle, KeyPair keyPair) throws IOException {
        int zzds = zzds(this.zzaiq);
        bundle.putString("gmsv", Integer.toString(zzds));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", Integer.toString(InstanceID.zzdo(this.zzaiq)));
        bundle.putString("app_ver_name", InstanceID.zzdp(this.zzaiq));
        bundle.putString("cliv", "iid-12211000");
        bundle.putString("appid", InstanceID.zza(keyPair));
        String zzp = InstanceID.zzp(keyPair.getPublic().getEncoded());
        bundle.putString("pub2", zzp);
        bundle.putString("sig", zza(keyPair, this.zzaiq.getPackageName(), zzp));
        if (zzds < 12000000 || !zzinr.get().booleanValue()) {
            return zzz(bundle);
        }
        try {
            return (Bundle) Tasks.await(new zzm(this.zzaiq).zzj(1, bundle));
        } catch (InterruptedException | ExecutionException e) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(22 + String.valueOf(valueOf).length());
                sb.append("Error making request: ");
                sb.append(valueOf);
                Log.d("InstanceID/Rpc", sb.toString());
            }
            if ((e.getCause() instanceof zzv) && ((zzv) e.getCause()).getErrorCode() == 4) {
                return zzz(bundle);
            }
            return null;
        }
    }

    public final void zzd(Message message) {
        if (message == null) {
            return;
        }
        if (!(message.obj instanceof Intent)) {
            Log.w("InstanceID/Rpc", "Dropping invalid message");
            return;
        }
        Intent intent = (Intent) message.obj;
        intent.setExtrasClassLoader(MessengerCompat.class.getClassLoader());
        if (intent.hasExtra("google.messenger")) {
            Parcelable parcelableExtra = intent.getParcelableExtra("google.messenger");
            if (parcelableExtra instanceof MessengerCompat) {
                this.zzinz = (MessengerCompat) parcelableExtra;
            }
            if (parcelableExtra instanceof Messenger) {
                this.zziny = (Messenger) parcelableExtra;
            }
        }
        zzj((Intent) message.obj);
    }

    @Hide
    public final void zzj(Intent intent) {
        String str;
        if (intent == null) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                Log.d("InstanceID/Rpc", "Unexpected response: null");
                return;
            }
            return;
        }
        String action = intent.getAction();
        if (!"com.google.android.c2dm.intent.REGISTRATION".equals(action) && !"com.google.android.gms.iid.InstanceID".equals(action)) {
            if (Log.isLoggable("InstanceID/Rpc", 3)) {
                String valueOf = String.valueOf(intent.getAction());
                Log.d("InstanceID/Rpc", valueOf.length() != 0 ? "Unexpected response ".concat(valueOf) : new String("Unexpected response "));
                return;
            }
            return;
        }
        String stringExtra = intent.getStringExtra("registration_id");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("unregistered");
        }
        if (stringExtra != null) {
            Matcher matcher = Pattern.compile("\\|ID\\|([^|]+)\\|:?+(.+)").matcher(stringExtra);
            if (!matcher.matches()) {
                if (Log.isLoggable("InstanceID/Rpc", 3)) {
                    String valueOf2 = String.valueOf(stringExtra);
                    Log.d("InstanceID/Rpc", valueOf2.length() != 0 ? "Unexpected response string: ".concat(valueOf2) : new String("Unexpected response string: "));
                    return;
                }
                return;
            }
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            Bundle extras = intent.getExtras();
            extras.putString("registration_id", group2);
            zzi(group, extras);
            return;
        }
        String stringExtra2 = intent.getStringExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR);
        if (stringExtra2 == null) {
            String valueOf3 = String.valueOf(intent.getExtras());
            StringBuilder sb = new StringBuilder(49 + String.valueOf(valueOf3).length());
            sb.append("Unexpected response, no error or registration id ");
            sb.append(valueOf3);
            Log.w("InstanceID/Rpc", sb.toString());
            return;
        }
        if (Log.isLoggable("InstanceID/Rpc", 3)) {
            String valueOf4 = String.valueOf(stringExtra2);
            Log.d("InstanceID/Rpc", valueOf4.length() != 0 ? "Received InstanceID error ".concat(valueOf4) : new String("Received InstanceID error "));
        }
        String str2 = null;
        if (stringExtra2.startsWith(MediaIdHelper.AUTO_MEDIA_ID_SEPERATOR)) {
            String[] split = stringExtra2.split("\\|");
            if (!"ID".equals(split[1])) {
                String valueOf5 = String.valueOf(stringExtra2);
                Log.w("InstanceID/Rpc", valueOf5.length() != 0 ? "Unexpected structured response ".concat(valueOf5) : new String("Unexpected structured response "));
            }
            if (split.length > 2) {
                String str3 = split[2];
                str = split[3];
                if (str.startsWith(":")) {
                    str = str.substring(1);
                }
                str2 = str3;
            } else {
                str = "UNKNOWN";
            }
            stringExtra2 = str;
            intent.putExtra(MediaRouteProviderProtocol.SERVICE_DATA_ERROR, stringExtra2);
        }
        if (str2 == null) {
            zzae(stringExtra2);
        } else {
            zzi(str2, stringExtra2);
        }
    }
}
