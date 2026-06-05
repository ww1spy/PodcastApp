package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzako;
import com.google.android.gms.internal.zzlc;

@Hide
@zzabh
/* loaded from: classes.dex */
public final class zzo extends FrameLayout implements View.OnClickListener {
    private final ImageButton zzcnv;
    private final zzw zzcnw;

    public zzo(Context context, zzp zzpVar, zzw zzwVar) {
        super(context);
        this.zzcnw = zzwVar;
        setOnClickListener(this);
        this.zzcnv = new ImageButton(context);
        this.zzcnv.setImageResource(R.drawable.btn_dialog);
        this.zzcnv.setBackgroundColor(0);
        this.zzcnv.setOnClickListener(this);
        ImageButton imageButton = this.zzcnv;
        zzlc.zzij();
        int zza = zzako.zza(context, zzpVar.paddingLeft);
        zzlc.zzij();
        int zza2 = zzako.zza(context, 0);
        zzlc.zzij();
        int zza3 = zzako.zza(context, zzpVar.paddingRight);
        zzlc.zzij();
        imageButton.setPadding(zza, zza2, zza3, zzako.zza(context, zzpVar.paddingBottom));
        this.zzcnv.setContentDescription("Interstitial close button");
        zzlc.zzij();
        zzako.zza(context, zzpVar.size);
        ImageButton imageButton2 = this.zzcnv;
        zzlc.zzij();
        int zza4 = zzako.zza(context, zzpVar.size + zzpVar.paddingLeft + zzpVar.paddingRight);
        zzlc.zzij();
        addView(imageButton2, new FrameLayout.LayoutParams(zza4, zzako.zza(context, zzpVar.size + zzpVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.zzcnw != null) {
            this.zzcnw.zznh();
        }
    }

    public final void zza(boolean z, boolean z2) {
        ImageButton imageButton;
        int i;
        if (!z2) {
            imageButton = this.zzcnv;
            i = 0;
        } else if (z) {
            imageButton = this.zzcnv;
            i = 4;
        } else {
            imageButton = this.zzcnv;
            i = 8;
        }
        imageButton.setVisibility(i);
    }
}
