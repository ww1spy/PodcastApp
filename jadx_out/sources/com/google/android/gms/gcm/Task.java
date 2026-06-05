package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.support.annotation.CallSuper;
import android.support.annotation.RequiresPermission;
import android.support.v4.app.NotificationCompat;
import android.util.Log;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzbq;
import java.util.Iterator;

/* loaded from: classes.dex */
public class Task implements ReflectedParcelable {
    public static final int EXTRAS_LIMIT_BYTES = 10240;
    public static final int NETWORK_STATE_ANY = 2;
    public static final int NETWORK_STATE_CONNECTED = 0;
    public static final int NETWORK_STATE_UNMETERED = 1;
    protected static final long UNINITIALIZED = -1;
    private final Bundle mExtras;
    private final String mTag;
    private final String zziks;
    private final boolean zzikt;
    private final boolean zziku;
    private final int zzikv;
    private final boolean zzikw;
    private final boolean zzikx;
    private final zzi zziky;

    /* loaded from: classes.dex */
    public static abstract class Builder {
        protected Bundle extras;
        protected String gcmTaskService;
        protected boolean isPersisted;
        protected int requiredNetworkState;
        protected boolean requiresCharging;
        protected String tag;
        protected boolean updateCurrent;

        @Hide
        protected zzi zzikz = zzi.zzikn;

        public abstract Task build();

        /* JADX INFO: Access modifiers changed from: protected */
        @CallSuper
        public void checkConditions() {
            zzbq.checkArgument(this.gcmTaskService != null, "Must provide an endpoint for this task by calling setService(ComponentName).");
            GcmNetworkManager.zzid(this.tag);
            zzi zziVar = this.zzikz;
            if (zziVar != null) {
                int zzawi = zziVar.zzawi();
                if (zzawi != 1 && zzawi != 0) {
                    StringBuilder sb = new StringBuilder(45);
                    sb.append("Must provide a valid RetryPolicy: ");
                    sb.append(zzawi);
                    throw new IllegalArgumentException(sb.toString());
                }
                int zzawj = zziVar.zzawj();
                int zzawk = zziVar.zzawk();
                if (zzawi == 0 && zzawj < 0) {
                    StringBuilder sb2 = new StringBuilder(52);
                    sb2.append("InitialBackoffSeconds can't be negative: ");
                    sb2.append(zzawj);
                    throw new IllegalArgumentException(sb2.toString());
                }
                if (zzawi == 1 && zzawj < 10) {
                    throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
                }
                if (zzawk < zzawj) {
                    int zzawk2 = zziVar.zzawk();
                    StringBuilder sb3 = new StringBuilder(77);
                    sb3.append("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: ");
                    sb3.append(zzawk2);
                    throw new IllegalArgumentException(sb3.toString());
                }
            }
            if (this.isPersisted) {
                Task.zzw(this.extras);
            }
        }

        public abstract Builder setExtras(Bundle bundle);

        @RequiresPermission("android.permission.RECEIVE_BOOT_COMPLETED")
        public abstract Builder setPersisted(boolean z);

        public abstract Builder setRequiredNetwork(int i);

        public abstract Builder setRequiresCharging(boolean z);

        public abstract Builder setService(Class<? extends GcmTaskService> cls);

        public abstract Builder setTag(String str);

        public abstract Builder setUpdateCurrent(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public Task(Parcel parcel) {
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.zziks = parcel.readString();
        this.mTag = parcel.readString();
        this.zzikt = parcel.readInt() == 1;
        this.zziku = parcel.readInt() == 1;
        this.zzikv = 2;
        this.zzikw = false;
        this.zzikx = false;
        this.zziky = zzi.zzikn;
        this.mExtras = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task(Builder builder) {
        this.zziks = builder.gcmTaskService;
        this.mTag = builder.tag;
        this.zzikt = builder.updateCurrent;
        this.zziku = builder.isPersisted;
        this.zzikv = builder.requiredNetworkState;
        this.zzikw = builder.requiresCharging;
        this.zzikx = false;
        this.mExtras = builder.extras;
        this.zziky = builder.zzikz != null ? builder.zzikz : zzi.zzikn;
    }

    @Hide
    public static void zzw(Bundle bundle) {
        if (bundle != null) {
            Parcel obtain = Parcel.obtain();
            bundle.writeToParcel(obtain, 0);
            int dataSize = obtain.dataSize();
            obtain.recycle();
            if (dataSize > 10240) {
                StringBuilder sb = new StringBuilder(55);
                sb.append("Extras exceeding maximum size(10240 bytes): ");
                sb.append(dataSize);
                throw new IllegalArgumentException(sb.toString());
            }
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                if (!((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean))) {
                    if (!(obj instanceof Bundle)) {
                        throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, Boolean, and nested Bundles with the same restrictions.");
                    }
                    zzw((Bundle) obj);
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getRequiredNetwork() {
        return this.zzikv;
    }

    public boolean getRequiresCharging() {
        return this.zzikw;
    }

    public String getServiceName() {
        return this.zziks;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.zziku;
    }

    public boolean isUpdateCurrent() {
        return this.zzikt;
    }

    @Hide
    public void toBundle(Bundle bundle) {
        bundle.putString("tag", this.mTag);
        bundle.putBoolean("update_current", this.zzikt);
        bundle.putBoolean("persisted", this.zziku);
        bundle.putString(NotificationCompat.CATEGORY_SERVICE, this.zziks);
        bundle.putInt("requiredNetwork", this.zzikv);
        bundle.putBoolean("requiresCharging", this.zzikw);
        bundle.putBoolean("requiresIdle", false);
        bundle.putBundle("retryStrategy", this.zziky.zzv(new Bundle()));
        bundle.putBundle("extras", this.mExtras);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.zziks);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.zzikt ? 1 : 0);
        parcel.writeInt(this.zziku ? 1 : 0);
    }
}
