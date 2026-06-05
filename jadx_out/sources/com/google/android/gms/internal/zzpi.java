package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.util.Iterator;
import java.util.List;

@zzabh
/* loaded from: classes.dex */
public final class zzpi extends RelativeLayout {
    private static final float[] zzbxr = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    @Nullable
    private AnimationDrawable zzbxs;

    public zzpi(Context context, zzph zzphVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        com.google.android.gms.common.internal.zzbq.checkNotNull(zzphVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(zzbxr, null, null));
        shapeDrawable.getPaint().setColor(zzphVar.getBackgroundColor());
        setLayoutParams(layoutParams);
        com.google.android.gms.ads.internal.zzbt.zzen().setBackground(this, shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzphVar.getText())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzphVar.getText());
            textView.setTextColor(zzphVar.getTextColor());
            textView.setTextSize(zzphVar.getTextSize());
            zzlc.zzij();
            int zza = zzako.zza(context, 4);
            zzlc.zzij();
            textView.setPadding(zza, 0, zzako.zza(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzpj> zzjx = zzphVar.zzjx();
        if (zzjx != null && zzjx.size() > 1) {
            this.zzbxs = new AnimationDrawable();
            Iterator<zzpj> it = zzjx.iterator();
            while (it.hasNext()) {
                try {
                    this.zzbxs.addFrame((Drawable) com.google.android.gms.dynamic.zzn.zzy(it.next().zzkb()), zzphVar.zzjy());
                } catch (Exception e) {
                    zzahw.zzb("Error while getting drawable.", e);
                }
            }
            com.google.android.gms.ads.internal.zzbt.zzen().setBackground(imageView, this.zzbxs);
        } else if (zzjx.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) com.google.android.gms.dynamic.zzn.zzy(zzjx.get(0).zzkb()));
            } catch (Exception e2) {
                zzahw.zzb("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        if (this.zzbxs != null) {
            this.zzbxs.start();
        }
        super.onAttachedToWindow();
    }
}
