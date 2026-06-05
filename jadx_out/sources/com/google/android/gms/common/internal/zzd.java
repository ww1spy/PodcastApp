package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.CallSuper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;

/* loaded from: classes.dex */
public abstract class zzd<T extends IInterface> {

    @Hide
    private static String[] zzgfi = {"service_esmobile", "service_googleme"};
    private final Context mContext;
    final Handler mHandler;
    private final Object mLock;
    private final Looper zzalj;
    private final com.google.android.gms.common.zzf zzfwk;
    private int zzgen;
    private long zzgeo;
    private long zzgep;
    private int zzgeq;
    private long zzger;
    private zzam zzges;
    private final zzag zzget;
    private final Object zzgeu;
    private zzay zzgev;
    protected zzj zzgew;
    private T zzgex;
    private final ArrayList<zzi<?>> zzgey;
    private zzl zzgez;
    private int zzgfa;
    private final zzf zzgfb;
    private final zzg zzgfc;
    private final int zzgfd;
    private final String zzgfe;
    private ConnectionResult zzgff;
    private boolean zzgfg;
    protected AtomicInteger zzgfh;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzd(Context context, Looper looper, int i, zzf zzfVar, zzg zzgVar, String str) {
        this(context, looper, zzag.zzcp(context), com.google.android.gms.common.zzf.zzahf(), i, (zzf) zzbq.checkNotNull(zzfVar), (zzg) zzbq.checkNotNull(zzgVar), null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzd(Context context, Looper looper, zzag zzagVar, com.google.android.gms.common.zzf zzfVar, int i, zzf zzfVar2, zzg zzgVar, String str) {
        this.mLock = new Object();
        this.zzgeu = new Object();
        this.zzgey = new ArrayList<>();
        this.zzgfa = 1;
        this.zzgff = null;
        this.zzgfg = false;
        this.zzgfh = new AtomicInteger(0);
        this.mContext = (Context) zzbq.checkNotNull(context, "Context must not be null");
        this.zzalj = (Looper) zzbq.checkNotNull(looper, "Looper must not be null");
        this.zzget = (zzag) zzbq.checkNotNull(zzagVar, "Supervisor must not be null");
        this.zzfwk = (com.google.android.gms.common.zzf) zzbq.checkNotNull(zzfVar, "API availability must not be null");
        this.mHandler = new zzh(this, looper);
        this.zzgfd = i;
        this.zzgfb = zzfVar2;
        this.zzgfc = zzgVar;
        this.zzgfe = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(int i, T t) {
        zzbq.checkArgument((i == 4) == (t != null));
        synchronized (this.mLock) {
            this.zzgfa = i;
            this.zzgex = t;
            zzb(i, t);
            switch (i) {
                case 1:
                    if (this.zzgez != null) {
                        this.zzget.zza(zzhm(), zzalq(), NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED, this.zzgez, zzalr());
                        this.zzgez = null;
                        break;
                    }
                    break;
                case 2:
                case 3:
                    if (this.zzgez != null && this.zzges != null) {
                        String zzamx = this.zzges.zzamx();
                        String packageName = this.zzges.getPackageName();
                        StringBuilder sb = new StringBuilder(70 + String.valueOf(zzamx).length() + String.valueOf(packageName).length());
                        sb.append("Calling connect() while still connected, missing disconnect() for ");
                        sb.append(zzamx);
                        sb.append(" on ");
                        sb.append(packageName);
                        Log.e("GmsClient", sb.toString());
                        this.zzget.zza(this.zzges.zzamx(), this.zzges.getPackageName(), this.zzges.zzamu(), this.zzgez, zzalr());
                        this.zzgfh.incrementAndGet();
                    }
                    this.zzgez = new zzl(this, this.zzgfh.get());
                    this.zzges = new zzam(zzalq(), zzhm(), false, NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED);
                    if (!this.zzget.zza(new zzah(this.zzges.zzamx(), this.zzges.getPackageName(), this.zzges.zzamu()), this.zzgez, zzalr())) {
                        String zzamx2 = this.zzges.zzamx();
                        String packageName2 = this.zzges.getPackageName();
                        StringBuilder sb2 = new StringBuilder(34 + String.valueOf(zzamx2).length() + String.valueOf(packageName2).length());
                        sb2.append("unable to connect to service: ");
                        sb2.append(zzamx2);
                        sb2.append(" on ");
                        sb2.append(packageName2);
                        Log.e("GmsClient", sb2.toString());
                        zza(16, (Bundle) null, this.zzgfh.get());
                        break;
                    }
                    break;
                case 4:
                    zza((zzd<T>) t);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zza(int i, int i2, T t) {
        synchronized (this.mLock) {
            if (this.zzgfa != i) {
                return false;
            }
            zza(i2, (int) t);
            return true;
        }
    }

    @Hide
    @Nullable
    private final String zzalr() {
        return this.zzgfe == null ? this.mContext.getClass().getName() : this.zzgfe;
    }

    @Hide
    private final boolean zzalt() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzgfa == 3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzalz() {
        if (this.zzgfg || TextUtils.isEmpty(zzhn()) || TextUtils.isEmpty(null)) {
            return false;
        }
        try {
            Class.forName(zzhn());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Hide
    public final void zzce(int i) {
        int i2;
        if (zzalt()) {
            i2 = 5;
            this.zzgfg = true;
        } else {
            i2 = 4;
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(i2, this.zzgfh.get(), 16));
    }

    public void disconnect() {
        this.zzgfh.incrementAndGet();
        synchronized (this.zzgey) {
            int size = this.zzgey.size();
            for (int i = 0; i < size; i++) {
                this.zzgey.get(i).removeListener();
            }
            this.zzgey.clear();
        }
        synchronized (this.zzgeu) {
            this.zzgev = null;
        }
        zza(1, (int) null);
    }

    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i;
        T t;
        zzay zzayVar;
        String str2;
        String str3;
        synchronized (this.mLock) {
            i = this.zzgfa;
            t = this.zzgex;
        }
        synchronized (this.zzgeu) {
            zzayVar = this.zzgev;
        }
        printWriter.append((CharSequence) str).append("mConnectState=");
        switch (i) {
            case 1:
                str2 = "DISCONNECTED";
                break;
            case 2:
                str2 = "REMOTE_CONNECTING";
                break;
            case 3:
                str2 = "LOCAL_CONNECTING";
                break;
            case 4:
                str2 = "CONNECTED";
                break;
            case 5:
                str2 = "DISCONNECTING";
                break;
            default:
                str2 = "UNKNOWN";
                break;
        }
        printWriter.print(str2);
        printWriter.append(" mService=");
        if (t == null) {
            printWriter.append("null");
        } else {
            printWriter.append((CharSequence) zzhn()).append("@").append((CharSequence) Integer.toHexString(System.identityHashCode(t.asBinder())));
        }
        printWriter.append(" mServiceBroker=");
        if (zzayVar == null) {
            printWriter.println("null");
        } else {
            printWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(zzayVar.asBinder())));
        }
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
        if (this.zzgep > 0) {
            PrintWriter append = printWriter.append((CharSequence) str).append("lastConnectedTime=");
            long j = this.zzgep;
            String format = simpleDateFormat.format(new Date(this.zzgep));
            StringBuilder sb = new StringBuilder(String.valueOf(format).length() + 21);
            sb.append(j);
            sb.append(" ");
            sb.append(format);
            append.println(sb.toString());
        }
        if (this.zzgeo > 0) {
            printWriter.append((CharSequence) str).append("lastSuspendedCause=");
            switch (this.zzgen) {
                case 1:
                    str3 = "CAUSE_SERVICE_DISCONNECTED";
                    break;
                case 2:
                    str3 = "CAUSE_NETWORK_LOST";
                    break;
                default:
                    str3 = String.valueOf(this.zzgen);
                    break;
            }
            printWriter.append((CharSequence) str3);
            PrintWriter append2 = printWriter.append(" lastSuspendedTime=");
            long j2 = this.zzgeo;
            String format2 = simpleDateFormat.format(new Date(this.zzgeo));
            StringBuilder sb2 = new StringBuilder(String.valueOf(format2).length() + 21);
            sb2.append(j2);
            sb2.append(" ");
            sb2.append(format2);
            append2.println(sb2.toString());
        }
        if (this.zzger > 0) {
            printWriter.append((CharSequence) str).append("lastFailedStatus=").append((CharSequence) CommonStatusCodes.getStatusCodeString(this.zzgeq));
            PrintWriter append3 = printWriter.append(" lastFailedTime=");
            long j3 = this.zzger;
            String format3 = simpleDateFormat.format(new Date(this.zzger));
            StringBuilder sb3 = new StringBuilder(21 + String.valueOf(format3).length());
            sb3.append(j3);
            sb3.append(" ");
            sb3.append(format3);
            append3.println(sb3.toString());
        }
    }

    public Account getAccount() {
        return null;
    }

    @Hide
    public final Context getContext() {
        return this.mContext;
    }

    @Hide
    public final Looper getLooper() {
        return this.zzalj;
    }

    public Intent getSignInIntent() {
        throw new UnsupportedOperationException("Not a sign in API");
    }

    public final boolean isConnected() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzgfa == 4;
        }
        return z;
    }

    public final boolean isConnecting() {
        boolean z;
        synchronized (this.mLock) {
            z = this.zzgfa == 2 || this.zzgfa == 3;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzgeq = connectionResult.getErrorCode();
        this.zzger = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void onConnectionSuspended(int i) {
        this.zzgen = i;
        this.zzgeo = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    public final void zza(int i, @Nullable Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, i2, -1, new zzo(this, i, null)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, i2, -1, new zzn(this, i, iBinder, bundle)));
    }

    @CallSuper
    protected void zza(@NonNull T t) {
        this.zzgep = System.currentTimeMillis();
    }

    @WorkerThread
    @Hide
    public final void zza(zzan zzanVar, Set<Scope> set) {
        Bundle zzabt = zzabt();
        zzz zzzVar = new zzz(this.zzgfd);
        zzzVar.zzggd = this.mContext.getPackageName();
        zzzVar.zzggg = zzabt;
        if (set != null) {
            zzzVar.zzggf = (Scope[]) set.toArray(new Scope[set.size()]);
        }
        if (zzacc()) {
            zzzVar.zzggh = getAccount() != null ? getAccount() : new Account("<<default account>>", "com.google");
            if (zzanVar != null) {
                zzzVar.zzgge = zzanVar.asBinder();
            }
        } else if (zzalx()) {
            zzzVar.zzggh = getAccount();
        }
        zzzVar.zzggi = zzalu();
        try {
            try {
                synchronized (this.zzgeu) {
                    if (this.zzgev != null) {
                        this.zzgev.zza(new zzk(this, this.zzgfh.get()), zzzVar);
                    } else {
                        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                    }
                }
            } catch (RemoteException | RuntimeException e) {
                Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
                zza(8, (IBinder) null, (Bundle) null, this.zzgfh.get());
            }
        } catch (DeadObjectException e2) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e2);
            zzcd(1);
        } catch (SecurityException e3) {
            throw e3;
        }
    }

    public void zza(@NonNull zzj zzjVar) {
        this.zzgew = (zzj) zzbq.checkNotNull(zzjVar, "Connection progress callbacks cannot be null.");
        zza(2, (int) null);
    }

    protected final void zza(@NonNull zzj zzjVar, int i, @Nullable PendingIntent pendingIntent) {
        this.zzgew = (zzj) zzbq.checkNotNull(zzjVar, "Connection progress callbacks cannot be null.");
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.zzgfh.get(), i, pendingIntent));
    }

    public void zza(@NonNull zzp zzpVar) {
        zzpVar.zzako();
    }

    @Hide
    protected Bundle zzabt() {
        return new Bundle();
    }

    public boolean zzacc() {
        return false;
    }

    public boolean zzacn() {
        return false;
    }

    public Bundle zzagp() {
        return null;
    }

    public boolean zzahn() {
        return true;
    }

    @Nullable
    public final IBinder zzaho() {
        synchronized (this.zzgeu) {
            if (this.zzgev == null) {
                return null;
            }
            return this.zzgev.asBinder();
        }
    }

    @Hide
    public final String zzahp() {
        if (!isConnected() || this.zzges == null) {
            throw new RuntimeException("Failed to connect when checking package");
        }
        return this.zzges.getPackageName();
    }

    @Hide
    protected String zzalq() {
        return "com.google.android.gms";
    }

    public final void zzals() {
        int isGooglePlayServicesAvailable = this.zzfwk.isGooglePlayServicesAvailable(this.mContext);
        if (isGooglePlayServicesAvailable == 0) {
            zza(new zzm(this));
        } else {
            zza(1, (int) null);
            zza(new zzm(this), isGooglePlayServicesAvailable, (PendingIntent) null);
        }
    }

    public com.google.android.gms.common.zzc[] zzalu() {
        return new com.google.android.gms.common.zzc[0];
    }

    @Hide
    protected final void zzalv() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    @Hide
    public final T zzalw() throws DeadObjectException {
        T t;
        synchronized (this.mLock) {
            if (this.zzgfa == 5) {
                throw new DeadObjectException();
            }
            zzalv();
            zzbq.zza(this.zzgex != null, "Client is connected but service is null");
            t = this.zzgex;
        }
        return t;
    }

    public boolean zzalx() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Set<Scope> zzaly() {
        return Collections.EMPTY_SET;
    }

    void zzb(int i, T t) {
    }

    @Hide
    public final void zzcd(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6, this.zzgfh.get(), i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    @Nullable
    public abstract T zzd(IBinder iBinder);

    @Hide
    @NonNull
    protected abstract String zzhm();

    /* JADX INFO: Access modifiers changed from: protected */
    @Hide
    @NonNull
    public abstract String zzhn();
}
