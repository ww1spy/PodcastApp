package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.internal.zzdkf;
import com.google.android.gms.internal.zzdkh;
import com.google.android.gms.internal.zzdkl;
import com.google.android.gms.internal.zzdkp;
import com.google.android.gms.internal.zzflr;
import com.google.android.gms.internal.zzfls;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzey implements zzah {
    private final Context mContext;
    private final ExecutorService zzimc = Executors.newSingleThreadExecutor();
    private final String zzknc;
    private zzdi<zzdkf> zzksb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzey(Context context, String str) {
        this.mContext = context;
        this.zzknc = str;
    }

    private static zzdkl zza(ByteArrayOutputStream byteArrayOutputStream) {
        try {
            return zzdb.zzly(byteArrayOutputStream.toString(HttpRequest.CHARSET_UTF8));
        } catch (UnsupportedEncodingException unused) {
            zzdj.zzby("Failed to convert binary resource to string for JSON parsing; the file format is not UTF-8 format.");
            return null;
        } catch (JSONException unused2) {
            zzdj.zzcz("Failed to extract the container from the resource file. Resource is a UTF-8 encoded string but doesn't contain a JSON container");
            return null;
        }
    }

    private final File zzbhn() {
        String valueOf = String.valueOf("resource_");
        String valueOf2 = String.valueOf(this.zzknc);
        return new File(this.mContext.getDir("google_tagmanager", 0), valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
    }

    private static zzdkl zzz(byte[] bArr) {
        try {
            zzdkl zza = zzdkh.zza((com.google.android.gms.internal.zzbp) zzfls.zza(new com.google.android.gms.internal.zzbp(), bArr));
            if (zza != null) {
                zzdj.v("The container was successfully loaded from the resource (using binary file)");
            }
            return zza;
        } catch (zzdkp unused) {
            zzdj.zzcz("The resource file is invalid. The container from the binary file is invalid");
            return null;
        } catch (zzflr unused2) {
            zzdj.e("The resource file is corrupted. The container cannot be extracted from the binary file");
            return null;
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public final synchronized void release() {
        this.zzimc.shutdown();
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zza(zzdkf zzdkfVar) {
        this.zzimc.execute(new zzfa(this, zzdkfVar));
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zza(zzdi<zzdkf> zzdiVar) {
        this.zzksb = zzdiVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzb(zzdkf zzdkfVar) {
        File zzbhn = zzbhn();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(zzbhn);
            try {
                try {
                    fileOutputStream.write(zzfls.zzc(zzdkfVar));
                    try {
                        fileOutputStream.close();
                        return true;
                    } catch (IOException unused) {
                        zzdj.zzcz("error closing stream for writing resource to disk");
                        return true;
                    }
                } catch (IOException unused2) {
                    zzdj.zzcz("Error writing resource to disk. Removing resource from disk.");
                    zzbhn.delete();
                    try {
                        fileOutputStream.close();
                        return false;
                    } catch (IOException unused3) {
                        zzdj.zzcz("error closing stream for writing resource to disk");
                        return false;
                    }
                }
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                    zzdj.zzcz("error closing stream for writing resource to disk");
                }
                throw th;
            }
        } catch (FileNotFoundException unused5) {
            zzdj.e("Error opening resource file for writing");
            return false;
        }
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final void zzbfv() {
        this.zzimc.execute(new zzez(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
    
        if (r0 == com.google.android.gms.tagmanager.zzei.zza.CONTAINER_DEBUG) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzbhm() {
        /*
            r3 = this;
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r0 = r3.zzksb
            if (r0 != 0) goto Lc
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Callback must be set before execute"
            r0.<init>(r1)
            throw r0
        Lc:
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r0 = r3.zzksb
            r0.zzbfu()
            java.lang.String r0 = "Attempting to load resource from disk"
            com.google.android.gms.tagmanager.zzdj.v(r0)
            com.google.android.gms.tagmanager.zzei r0 = com.google.android.gms.tagmanager.zzei.zzbhh()
            com.google.android.gms.tagmanager.zzei$zza r0 = r0.zzbhi()
            com.google.android.gms.tagmanager.zzei$zza r1 = com.google.android.gms.tagmanager.zzei.zza.CONTAINER
            if (r0 == r1) goto L2e
            com.google.android.gms.tagmanager.zzei r0 = com.google.android.gms.tagmanager.zzei.zzbhh()
            com.google.android.gms.tagmanager.zzei$zza r0 = r0.zzbhi()
            com.google.android.gms.tagmanager.zzei$zza r1 = com.google.android.gms.tagmanager.zzei.zza.CONTAINER_DEBUG
            if (r0 != r1) goto L46
        L2e:
            java.lang.String r0 = r3.zzknc
            com.google.android.gms.tagmanager.zzei r1 = com.google.android.gms.tagmanager.zzei.zzbhh()
            java.lang.String r1 = r1.getContainerId()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L46
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r0 = r3.zzksb
            int r1 = com.google.android.gms.tagmanager.zzda.zzkqn
            r0.zzex(r1)
            return
        L46:
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> Lb0
            java.io.File r1 = r3.zzbhn()     // Catch: java.io.FileNotFoundException -> Lb0
            r0.<init>(r1)     // Catch: java.io.FileNotFoundException -> Lb0
            java.io.ByteArrayOutputStream r1 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            r1.<init>()     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            com.google.android.gms.internal.zzdkh.zzb(r0, r1)     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            byte[] r1 = r1.toByteArray()     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            com.google.android.gms.internal.zzdkf r2 = new com.google.android.gms.internal.zzdkf     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            r2.<init>()     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            com.google.android.gms.internal.zzfls r1 = com.google.android.gms.internal.zzfls.zza(r2, r1)     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            com.google.android.gms.internal.zzdkf r1 = (com.google.android.gms.internal.zzdkf) r1     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            com.google.android.gms.internal.zzbp r2 = r1.zzyi     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            if (r2 != 0) goto L76
            com.google.android.gms.internal.zzbs r2 = r1.zzldm     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            if (r2 != 0) goto L76
            java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            java.lang.String r2 = "Resource and SupplementedResource are NULL."
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            throw r1     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
        L76:
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r2 = r3.zzksb     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            r2.onSuccess(r1)     // Catch: java.lang.Throwable -> L7c java.lang.IllegalArgumentException -> L7e java.io.IOException -> L8e
            goto L8a
        L7c:
            r1 = move-exception
            goto La6
        L7e:
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r1 = r3.zzksb     // Catch: java.lang.Throwable -> L7c
            int r2 = com.google.android.gms.tagmanager.zzda.zzkqo     // Catch: java.lang.Throwable -> L7c
            r1.zzex(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = "Failed to read the resource from disk. The resource is inconsistent"
            com.google.android.gms.tagmanager.zzdj.zzcz(r1)     // Catch: java.lang.Throwable -> L7c
        L8a:
            r0.close()     // Catch: java.io.IOException -> L9b
            goto La0
        L8e:
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r1 = r3.zzksb     // Catch: java.lang.Throwable -> L7c
            int r2 = com.google.android.gms.tagmanager.zzda.zzkqo     // Catch: java.lang.Throwable -> L7c
            r1.zzex(r2)     // Catch: java.lang.Throwable -> L7c
            java.lang.String r1 = "Failed to read the resource from disk"
            com.google.android.gms.tagmanager.zzdj.zzcz(r1)     // Catch: java.lang.Throwable -> L7c
            goto L8a
        L9b:
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzdj.zzcz(r0)
        La0:
            java.lang.String r0 = "The Disk resource was successfully read."
            com.google.android.gms.tagmanager.zzdj.v(r0)
            return
        La6:
            r0.close()     // Catch: java.io.IOException -> Laa
            goto Laf
        Laa:
            java.lang.String r0 = "Error closing stream for reading resource from disk"
            com.google.android.gms.tagmanager.zzdj.zzcz(r0)
        Laf:
            throw r1
        Lb0:
            java.lang.String r0 = "Failed to find the resource in the disk"
            com.google.android.gms.tagmanager.zzdj.zzby(r0)
            com.google.android.gms.tagmanager.zzdi<com.google.android.gms.internal.zzdkf> r0 = r3.zzksb
            int r1 = com.google.android.gms.tagmanager.zzda.zzkqn
            r0.zzex(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzey.zzbhm():void");
    }

    @Override // com.google.android.gms.tagmanager.zzah
    public final zzdkl zzey(int i) {
        String sb;
        InputStream openRawResource;
        try {
            openRawResource = this.mContext.getResources().openRawResource(i);
            String resourceName = this.mContext.getResources().getResourceName(i);
            StringBuilder sb2 = new StringBuilder(66 + String.valueOf(resourceName).length());
            sb2.append("Attempting to load a container from the resource ID ");
            sb2.append(i);
            sb2.append(" (");
            sb2.append(resourceName);
            sb2.append(")");
            zzdj.v(sb2.toString());
        } catch (Resources.NotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(98);
            sb3.append("Failed to load the container. No default container resource found with the resource ID ");
            sb3.append(i);
            sb = sb3.toString();
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            zzdkh.zzb(openRawResource, byteArrayOutputStream);
            zzdkl zza = zza(byteArrayOutputStream);
            if (zza == null) {
                return zzz(byteArrayOutputStream.toByteArray());
            }
            zzdj.v("The container was successfully loaded from the resource (using JSON file format)");
            return zza;
        } catch (IOException unused2) {
            String resourceName2 = this.mContext.getResources().getResourceName(i);
            StringBuilder sb4 = new StringBuilder(67 + String.valueOf(resourceName2).length());
            sb4.append("Error reading the default container with resource ID ");
            sb4.append(i);
            sb4.append(" (");
            sb4.append(resourceName2);
            sb4.append(")");
            sb = sb4.toString();
            zzdj.zzcz(sb);
            return null;
        }
    }
}
