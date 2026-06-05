package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

@Hide
@TargetApi(14)
@zzabh
/* loaded from: classes.dex */
public final class zzanl extends Thread implements SurfaceTexture.OnFrameAvailableListener, zzank {
    private static final float[] zzdmn = {-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, -1.0f, 1.0f, 1.0f, -1.0f};
    private int zzalt;
    private int zzalu;
    private final float[] zzdmk;
    private final zzani zzdmo;
    private final float[] zzdmp;
    private final float[] zzdmq;
    private final float[] zzdmr;
    private final float[] zzdms;
    private final float[] zzdmt;
    private final float[] zzdmu;
    private float zzdmv;
    private float zzdmw;
    private float zzdmx;
    private SurfaceTexture zzdmy;
    private SurfaceTexture zzdmz;
    private int zzdna;
    private int zzdnb;
    private int zzdnc;
    private FloatBuffer zzdnd;
    private final CountDownLatch zzdne;
    private final Object zzdnf;
    private EGL10 zzdng;
    private EGLDisplay zzdnh;
    private EGLContext zzdni;
    private EGLSurface zzdnj;
    private volatile boolean zzdnk;
    private volatile boolean zzdnl;

    public zzanl(Context context) {
        super("SphericalVideoProcessor");
        this.zzdnd = ByteBuffer.allocateDirect(zzdmn.length << 2).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.zzdnd.put(zzdmn).position(0);
        this.zzdmk = new float[9];
        this.zzdmp = new float[9];
        this.zzdmq = new float[9];
        this.zzdmr = new float[9];
        this.zzdms = new float[9];
        this.zzdmt = new float[9];
        this.zzdmu = new float[9];
        this.zzdmv = Float.NaN;
        this.zzdmo = new zzani(context);
        this.zzdmo.zza(this);
        this.zzdne = new CountDownLatch(1);
        this.zzdnf = new Object();
    }

    private static void zza(float[] fArr, float f) {
        fArr[0] = 1.0f;
        fArr[1] = 0.0f;
        fArr[2] = 0.0f;
        fArr[3] = 0.0f;
        double d = f;
        fArr[4] = (float) Math.cos(d);
        fArr[5] = (float) (-Math.sin(d));
        fArr[6] = 0.0f;
        fArr[7] = (float) Math.sin(d);
        fArr[8] = (float) Math.cos(d);
    }

    private static void zza(float[] fArr, float[] fArr2, float[] fArr3) {
        fArr[0] = (fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[3]) + (fArr2[2] * fArr3[6]);
        fArr[1] = (fArr2[0] * fArr3[1]) + (fArr2[1] * fArr3[4]) + (fArr2[2] * fArr3[7]);
        fArr[2] = (fArr2[0] * fArr3[2]) + (fArr2[1] * fArr3[5]) + (fArr2[2] * fArr3[8]);
        fArr[3] = (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[3]) + (fArr2[5] * fArr3[6]);
        fArr[4] = (fArr2[3] * fArr3[1]) + (fArr2[4] * fArr3[4]) + (fArr2[5] * fArr3[7]);
        fArr[5] = (fArr2[3] * fArr3[2]) + (fArr2[4] * fArr3[5]) + (fArr2[5] * fArr3[8]);
        fArr[6] = (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[3]) + (fArr2[8] * fArr3[6]);
        fArr[7] = (fArr2[6] * fArr3[1]) + (fArr2[7] * fArr3[4]) + (fArr2[8] * fArr3[7]);
        fArr[8] = (fArr2[6] * fArr3[2]) + (fArr2[7] * fArr3[5]) + (fArr2[8] * fArr3[8]);
    }

    private static void zzb(float[] fArr, float f) {
        double d = f;
        fArr[0] = (float) Math.cos(d);
        fArr[1] = (float) (-Math.sin(d));
        fArr[2] = 0.0f;
        fArr[3] = (float) Math.sin(d);
        fArr[4] = (float) Math.cos(d);
        fArr[5] = 0.0f;
        fArr[6] = 0.0f;
        fArr[7] = 0.0f;
        fArr[8] = 1.0f;
    }

    private static int zzd(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        zzdb("createShader");
        if (glCreateShader == 0) {
            return glCreateShader;
        }
        GLES20.glShaderSource(glCreateShader, str);
        zzdb("shaderSource");
        GLES20.glCompileShader(glCreateShader);
        zzdb("compileShader");
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        zzdb("getShaderiv");
        if (iArr[0] != 0) {
            return glCreateShader;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Could not compile shader ");
        sb.append(i);
        sb.append(":");
        Log.e("SphericalVideoRenderer", sb.toString());
        Log.e("SphericalVideoRenderer", GLES20.glGetShaderInfoLog(glCreateShader));
        GLES20.glDeleteShader(glCreateShader);
        zzdb("deleteShader");
        return 0;
    }

    private static void zzdb(String str) {
        int glGetError = GLES20.glGetError();
        if (glGetError != 0) {
            StringBuilder sb = new StringBuilder(21 + String.valueOf(str).length());
            sb.append(str);
            sb.append(": glError ");
            sb.append(glGetError);
            Log.e("SphericalVideoRenderer", sb.toString());
        }
    }

    private final void zzte() {
        float[] fArr;
        float f;
        while (this.zzdnc > 0) {
            this.zzdmy.updateTexImage();
            this.zzdnc--;
        }
        if (this.zzdmo.zza(this.zzdmk)) {
            if (Float.isNaN(this.zzdmv)) {
                float[] fArr2 = this.zzdmk;
                float[] fArr3 = {0.0f, 1.0f, 0.0f};
                float[] fArr4 = {(fArr2[0] * fArr3[0]) + (fArr2[1] * fArr3[1]) + (fArr2[2] * fArr3[2]), (fArr2[3] * fArr3[0]) + (fArr2[4] * fArr3[1]) + (fArr2[5] * fArr3[2]), (fArr2[6] * fArr3[0]) + (fArr2[7] * fArr3[1]) + (fArr2[8] * fArr3[2])};
                this.zzdmv = -(((float) Math.atan2(fArr4[1], fArr4[0])) - 1.5707964f);
            }
            fArr = this.zzdmt;
            f = this.zzdmv + this.zzdmw;
        } else {
            zza(this.zzdmk, -1.5707964f);
            fArr = this.zzdmt;
            f = this.zzdmw;
        }
        zzb(fArr, f);
        zza(this.zzdmp, 1.5707964f);
        zza(this.zzdmq, this.zzdmt, this.zzdmp);
        zza(this.zzdmr, this.zzdmk, this.zzdmq);
        zza(this.zzdms, this.zzdmx);
        zza(this.zzdmu, this.zzdms, this.zzdmr);
        GLES20.glUniformMatrix3fv(this.zzdnb, 1, false, this.zzdmu, 0);
        GLES20.glDrawArrays(5, 0, 4);
        zzdb("drawArrays");
        GLES20.glFinish();
        this.zzdng.eglSwapBuffers(this.zzdnh, this.zzdnj);
    }

    private final boolean zztf() {
        boolean z = false;
        if (this.zzdnj != null && this.zzdnj != EGL10.EGL_NO_SURFACE) {
            z = this.zzdng.eglDestroySurface(this.zzdnh, this.zzdnj) | this.zzdng.eglMakeCurrent(this.zzdnh, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT) | false;
            this.zzdnj = null;
        }
        if (this.zzdni != null) {
            z |= this.zzdng.eglDestroyContext(this.zzdnh, this.zzdni);
            this.zzdni = null;
        }
        if (this.zzdnh == null) {
            return z;
        }
        boolean eglTerminate = z | this.zzdng.eglTerminate(this.zzdnh);
        this.zzdnh = null;
        return eglTerminate;
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public final void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.zzdnc++;
        synchronized (this.zzdnf) {
            this.zzdnf.notifyAll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00c8  */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzanl.run():void");
    }

    public final void zza(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zzalt = i;
        this.zzalu = i2;
        this.zzdmz = surfaceTexture;
    }

    public final void zzb(float f, float f2) {
        float f3;
        float f4;
        int i;
        if (this.zzalt > this.zzalu) {
            f3 = (f * 1.7453293f) / this.zzalt;
            f4 = 1.7453293f * f2;
            i = this.zzalt;
        } else {
            f3 = (f * 1.7453293f) / this.zzalu;
            f4 = 1.7453293f * f2;
            i = this.zzalu;
        }
        float f5 = f4 / i;
        this.zzdmw -= f3;
        this.zzdmx -= f5;
        if (this.zzdmx < -1.5707964f) {
            this.zzdmx = -1.5707964f;
        }
        if (this.zzdmx > 1.5707964f) {
            this.zzdmx = 1.5707964f;
        }
    }

    public final void zzh(int i, int i2) {
        synchronized (this.zzdnf) {
            this.zzalt = i;
            this.zzalu = i2;
            this.zzdnk = true;
            this.zzdnf.notifyAll();
        }
    }

    @Override // com.google.android.gms.internal.zzank
    public final void zznm() {
        synchronized (this.zzdnf) {
            this.zzdnf.notifyAll();
        }
    }

    public final void zztc() {
        synchronized (this.zzdnf) {
            this.zzdnl = true;
            this.zzdmz = null;
            this.zzdnf.notifyAll();
        }
    }

    public final SurfaceTexture zztd() {
        if (this.zzdmz == null) {
            return null;
        }
        try {
            this.zzdne.await();
        } catch (InterruptedException unused) {
        }
        return this.zzdmy;
    }
}
