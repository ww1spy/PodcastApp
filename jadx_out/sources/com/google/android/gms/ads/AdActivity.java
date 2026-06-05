package com.google.android.gms.ads;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.zzn;
import com.google.android.gms.internal.zzaky;
import com.google.android.gms.internal.zzlc;
import com.google.android.gms.internal.zzyq;

@Hide
@KeepForSdkWithMembers
/* loaded from: classes.dex */
public class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzyq zzalm;

    private final void zzbd() {
        if (this.zzalm != null) {
            try {
                this.zzalm.zzbd();
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward setContentViewSet to ad overlay:", e);
            }
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        try {
            this.zzalm.onActivityResult(i, i2, intent);
        } catch (Exception e) {
            zzaky.zzc("Could not forward onActivityResult to ad overlay:", e);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z = true;
        try {
            if (this.zzalm != null) {
                z = this.zzalm.zzni();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onBackPressed to ad overlay:", e);
        }
        if (z) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        try {
            this.zzalm.zzk(zzn.zzz(configuration));
        } catch (RemoteException e) {
            zzaky.zzc("Failed to wrap configuration.", e);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zzalm = zzlc.zzik().zzb(this);
        if (this.zzalm == null) {
            zzaky.zzcz("Could not create ad overlay.");
        } else {
            try {
                this.zzalm.onCreate(bundle);
                return;
            } catch (RemoteException e) {
                zzaky.zzc("Could not forward onCreate to ad overlay:", e);
            }
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.zzalm != null) {
                this.zzalm.onDestroy();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onDestroy to ad overlay:", e);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        try {
            if (this.zzalm != null) {
                this.zzalm.onPause();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onPause to ad overlay:", e);
            finish();
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        try {
            if (this.zzalm != null) {
                this.zzalm.onRestart();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onRestart to ad overlay:", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        try {
            if (this.zzalm != null) {
                this.zzalm.onResume();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onResume to ad overlay:", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.zzalm != null) {
                this.zzalm.onSaveInstanceState(bundle);
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onSaveInstanceState to ad overlay:", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        try {
            if (this.zzalm != null) {
                this.zzalm.onStart();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onStart to ad overlay:", e);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        try {
            if (this.zzalm != null) {
                this.zzalm.onStop();
            }
        } catch (RemoteException e) {
            zzaky.zzc("Could not forward onStop to ad overlay:", e);
            finish();
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        super.setContentView(i);
        zzbd();
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        super.setContentView(view);
        zzbd();
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzbd();
    }
}
