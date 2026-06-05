package com.google.android.gms.internal;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.Display;
import android.view.WindowManager;
import mobi.beyondpod.rsscore.helpers.NotificationHelper;

@zzabh
/* loaded from: classes.dex */
final class zzani implements SensorEventListener {
    private final SensorManager zzdmf;
    private final Display zzdmh;
    private float[] zzdmk;
    private Handler zzdml;
    private zzank zzdmm;
    private final float[] zzdmi = new float[9];
    private final float[] zzdmj = new float[9];
    private final Object zzdmg = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzani(Context context) {
        this.zzdmf = (SensorManager) context.getSystemService("sensor");
        this.zzdmh = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    private final void zzg(int i, int i2) {
        float f = this.zzdmj[i];
        this.zzdmj[i] = this.zzdmj[i2];
        this.zzdmj[i2] = f;
    }

    @Override // android.hardware.SensorEventListener
    public final void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.hardware.SensorEventListener
    public final void onSensorChanged(SensorEvent sensorEvent) {
        float[] fArr = sensorEvent.values;
        if (fArr[0] == 0.0f && fArr[1] == 0.0f && fArr[2] == 0.0f) {
            return;
        }
        synchronized (this.zzdmg) {
            if (this.zzdmk == null) {
                this.zzdmk = new float[9];
            }
        }
        SensorManager.getRotationMatrixFromVector(this.zzdmi, fArr);
        switch (this.zzdmh.getRotation()) {
            case 1:
                SensorManager.remapCoordinateSystem(this.zzdmi, 2, NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED, this.zzdmj);
                break;
            case 2:
                SensorManager.remapCoordinateSystem(this.zzdmi, NotificationHelper.UPDATEANDDOWNLOAD_COMPLETED, 130, this.zzdmj);
                break;
            case 3:
                SensorManager.remapCoordinateSystem(this.zzdmi, 130, 1, this.zzdmj);
                break;
            default:
                System.arraycopy(this.zzdmi, 0, this.zzdmj, 0, 9);
                break;
        }
        zzg(1, 3);
        zzg(2, 6);
        zzg(5, 7);
        synchronized (this.zzdmg) {
            System.arraycopy(this.zzdmj, 0, this.zzdmk, 0, 9);
        }
        if (this.zzdmm != null) {
            this.zzdmm.zznm();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void start() {
        if (this.zzdml != null) {
            return;
        }
        Sensor defaultSensor = this.zzdmf.getDefaultSensor(11);
        if (defaultSensor == null) {
            zzahw.e("No Sensor of TYPE_ROTATION_VECTOR");
            return;
        }
        HandlerThread handlerThread = new HandlerThread("OrientationMonitor");
        handlerThread.start();
        this.zzdml = new Handler(handlerThread.getLooper());
        if (this.zzdmf.registerListener(this, defaultSensor, 0, this.zzdml)) {
            return;
        }
        zzahw.e("SensorManager.registerListener failed.");
        stop();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void stop() {
        if (this.zzdml == null) {
            return;
        }
        this.zzdmf.unregisterListener(this);
        this.zzdml.post(new zzanj(this));
        this.zzdml = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzank zzankVar) {
        this.zzdmm = zzankVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zza(float[] fArr) {
        synchronized (this.zzdmg) {
            if (this.zzdmk == null) {
                return false;
            }
            System.arraycopy(this.zzdmk, 0, fArr, 0, this.zzdmk.length);
            return true;
        }
    }
}
