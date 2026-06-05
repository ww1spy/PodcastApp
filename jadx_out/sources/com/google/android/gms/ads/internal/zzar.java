package com.google.android.gms.ads.internal;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahd;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzpk;
import com.google.android.gms.internal.zzpm;
import com.google.android.gms.internal.zzqs;
import com.google.android.gms.internal.zzqt;
import com.google.android.gms.internal.zzwr;
import com.google.android.gms.internal.zzwu;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.io.ByteArrayOutputStream;
import java.util.Iterator;
import java.util.List;
import mobi.beyondpod.ui.views.notifications.NotificationPreferences;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzar {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.google.android.gms.ads.internal.gmsg.zzt<zzaof> zza(@Nullable zzwr zzwrVar, @Nullable zzwu zzwuVar, zzab zzabVar) {
        return new zzaw(zzwrVar, zzabVar, zzwuVar);
    }

    private static String zza(@Nullable Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (bitmap == null) {
            zzahw.zzcz("Bitmap is null. Returning empty string");
            return "";
        }
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
        String valueOf = String.valueOf("data:image/png;base64,");
        String valueOf2 = String.valueOf(encodeToString);
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    private static String zza(@Nullable zzqs zzqsVar) {
        if (zzqsVar == null) {
            zzahw.zzcz("Image is null. Returning empty string");
            return "";
        }
        try {
            Uri uri = zzqsVar.getUri();
            if (uri != null) {
                return uri.toString();
            }
        } catch (RemoteException unused) {
            zzahw.zzcz("Unable to get image uri. Trying data uri next");
        }
        return zzb(zzqsVar);
    }

    private static JSONObject zza(@Nullable Bundle bundle, String str) throws JSONException {
        String valueOf;
        String str2;
        JSONObject jSONObject = new JSONObject();
        if (bundle == null || TextUtils.isEmpty(str)) {
            return jSONObject;
        }
        JSONObject jSONObject2 = new JSONObject(str);
        Iterator<String> keys = jSONObject2.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (bundle.containsKey(next)) {
                if ("image".equals(jSONObject2.getString(next))) {
                    Object obj = bundle.get(next);
                    if (obj instanceof Bitmap) {
                        valueOf = zza((Bitmap) obj);
                        jSONObject.put(next, valueOf);
                    } else {
                        str2 = "Invalid type. An image type extra should return a bitmap";
                        zzahw.zzcz(str2);
                    }
                } else if (bundle.get(next) instanceof Bitmap) {
                    str2 = "Invalid asset type. Bitmap should be returned only for image type";
                    zzahw.zzcz(str2);
                } else {
                    valueOf = String.valueOf(bundle.get(next));
                    jSONObject.put(next, valueOf);
                }
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(zzpk zzpkVar, String str, zzaof zzaofVar, zzaof zzaofVar2, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", zzpkVar.getHeadline());
            jSONObject.put("body", zzpkVar.getBody());
            jSONObject.put("call_to_action", zzpkVar.getCallToAction());
            jSONObject.put("price", zzpkVar.getPrice());
            jSONObject.put("star_rating", String.valueOf(zzpkVar.getStarRating()));
            jSONObject.put("store", zzpkVar.getStore());
            jSONObject.put(SettingsJsonConstants.APP_ICON_KEY, zza(zzpkVar.zzkc()));
            JSONArray jSONArray = new JSONArray();
            List images = zzpkVar.getImages();
            if (images != null) {
                Iterator it = images.iterator();
                while (it.hasNext()) {
                    jSONArray.put(zza(zzd(it.next())));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", zza(zzpkVar.getExtras(), str));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", "2");
            zzaofVar.zzb("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            zzahw.zzc("Exception occurred when loading assets", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void zza(zzpm zzpmVar, String str, zzaof zzaofVar, zzaof zzaofVar2, boolean z) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("headline", zzpmVar.getHeadline());
            jSONObject.put("body", zzpmVar.getBody());
            jSONObject.put("call_to_action", zzpmVar.getCallToAction());
            jSONObject.put("advertiser", zzpmVar.getAdvertiser());
            jSONObject.put("logo", zza(zzpmVar.zzkj()));
            JSONArray jSONArray = new JSONArray();
            List images = zzpmVar.getImages();
            if (images != null) {
                Iterator it = images.iterator();
                while (it.hasNext()) {
                    jSONArray.put(zza(zzd(it.next())));
                }
            }
            jSONObject.put("images", jSONArray);
            jSONObject.put("extras", zza(zzpmVar.getExtras(), str));
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("assets", jSONObject);
            jSONObject2.put("template_id", NotificationPreferences.YES);
            zzaofVar.zzb("google.afma.nativeExpressAds.loadAssets", jSONObject2);
        } catch (JSONException e) {
            zzahw.zzc("Exception occurred when loading assets", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x013c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zza(final com.google.android.gms.internal.zzaof r26, com.google.android.gms.internal.zzvw r27, java.util.concurrent.CountDownLatch r28) {
        /*
            Method dump skipped, instructions count: 320
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.zzar.zza(com.google.android.gms.internal.zzaof, com.google.android.gms.internal.zzvw, java.util.concurrent.CountDownLatch):boolean");
    }

    private static String zzb(zzqs zzqsVar) {
        try {
            IObjectWrapper zzkb = zzqsVar.zzkb();
            if (zzkb == null) {
                zzahw.zzcz("Drawable is null. Returning empty string");
                return "";
            }
            Drawable drawable = (Drawable) com.google.android.gms.dynamic.zzn.zzy(zzkb);
            if (drawable instanceof BitmapDrawable) {
                return zza(((BitmapDrawable) drawable).getBitmap());
            }
            zzahw.zzcz("Drawable is not an instance of BitmapDrawable. Returning empty string");
            return "";
        } catch (RemoteException unused) {
            zzahw.zzcz("Unable to get drawable. Returning empty string");
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(zzaof zzaofVar) {
        View.OnClickListener onClickListener = zzaofVar.getOnClickListener();
        if (onClickListener != null) {
            onClickListener.onClick(zzaofVar.getView());
        }
    }

    @Nullable
    private static zzqs zzd(Object obj) {
        if (obj instanceof IBinder) {
            return zzqt.zzk((IBinder) obj);
        }
        return null;
    }

    @Nullable
    public static View zze(@Nullable zzahd zzahdVar) {
        if (zzahdVar == null) {
            zzahw.e("AdState is null");
            return null;
        }
        if (zzf(zzahdVar) && zzahdVar.zzcnm != null) {
            return zzahdVar.zzcnm.getView();
        }
        try {
            IObjectWrapper view = zzahdVar.zzcjf != null ? zzahdVar.zzcjf.getView() : null;
            if (view != null) {
                return (View) com.google.android.gms.dynamic.zzn.zzy(view);
            }
            zzahw.zzcz("View in mediation adapter is null.");
            return null;
        } catch (RemoteException e) {
            zzahw.zzc("Could not get View from mediation adapter.", e);
            return null;
        }
    }

    public static boolean zzf(@Nullable zzahd zzahdVar) {
        return (zzahdVar == null || !zzahdVar.zzcto || zzahdVar.zzcje == null || zzahdVar.zzcje.zzcho == null) ? false : true;
    }
}
