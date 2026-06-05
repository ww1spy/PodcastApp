package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v7.widget.helper.ItemTouchHelper;

/* loaded from: classes.dex */
public final class zzbge extends Drawable implements Drawable.Callback {
    private int mAlpha;
    private int mFrom;
    private long zzebf;
    private boolean zzgdt;
    private int zzgdy;
    private int zzgdz;
    private int zzgea;
    private int zzgeb;
    private boolean zzgec;
    private zzbgi zzged;
    private Drawable zzgee;
    private Drawable zzgef;
    private boolean zzgeg;
    private boolean zzgeh;
    private boolean zzgei;
    private int zzgej;

    public zzbge(Drawable drawable, Drawable drawable2) {
        this(null);
        drawable = drawable == null ? zzbgg.zzgek : drawable;
        this.zzgee = drawable;
        drawable.setCallback(this);
        zzbgi zzbgiVar = this.zzged;
        zzbgiVar.zzgem = drawable.getChangingConfigurations() | zzbgiVar.zzgem;
        drawable2 = drawable2 == null ? zzbgg.zzgek : drawable2;
        this.zzgef = drawable2;
        drawable2.setCallback(this);
        zzbgi zzbgiVar2 = this.zzged;
        zzbgiVar2.zzgem = drawable2.getChangingConfigurations() | zzbgiVar2.zzgem;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbge(zzbgi zzbgiVar) {
        this.zzgdy = 0;
        this.zzgea = 255;
        this.mAlpha = 0;
        this.zzgdt = true;
        this.zzged = new zzbgi(zzbgiVar);
    }

    private final boolean canConstantState() {
        if (!this.zzgeg) {
            this.zzgeh = (this.zzgee.getConstantState() == null || this.zzgef.getConstantState() == null) ? false : true;
            this.zzgeg = true;
        }
        return this.zzgeh;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        switch (this.zzgdy) {
            case 1:
                this.zzebf = SystemClock.uptimeMillis();
                this.zzgdy = 2;
                r1 = false;
                break;
            case 2:
                if (this.zzebf >= 0) {
                    float uptimeMillis = ((float) (SystemClock.uptimeMillis() - this.zzebf)) / this.zzgeb;
                    r1 = uptimeMillis >= 1.0f;
                    if (r1) {
                        this.zzgdy = 0;
                    }
                    this.mAlpha = (int) (0.0f + (this.zzgdz * Math.min(uptimeMillis, 1.0f)));
                    break;
                }
                break;
        }
        int i = this.mAlpha;
        boolean z = this.zzgdt;
        Drawable drawable = this.zzgee;
        Drawable drawable2 = this.zzgef;
        if (r1) {
            if (!z || i == 0) {
                drawable.draw(canvas);
            }
            if (i == this.zzgea) {
                drawable2.setAlpha(this.zzgea);
                drawable2.draw(canvas);
                return;
            }
            return;
        }
        if (z) {
            drawable.setAlpha(this.zzgea - i);
        }
        drawable.draw(canvas);
        if (z) {
            drawable.setAlpha(this.zzgea);
        }
        if (i > 0) {
            drawable2.setAlpha(i);
            drawable2.draw(canvas);
            drawable2.setAlpha(this.zzgea);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        return super.getChangingConfigurations() | this.zzged.mChangingConfigurations | this.zzged.zzgem;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (!canConstantState()) {
            return null;
        }
        this.zzged.mChangingConfigurations = getChangingConfigurations();
        return this.zzged;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return Math.max(this.zzgee.getIntrinsicHeight(), this.zzgef.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.max(this.zzgee.getIntrinsicWidth(), this.zzgef.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        if (!this.zzgei) {
            this.zzgej = Drawable.resolveOpacity(this.zzgee.getOpacity(), this.zzgef.getOpacity());
            this.zzgei = true;
        }
        return this.zzgej;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        if (!this.zzgec && super.mutate() == this) {
            if (!canConstantState()) {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            this.zzgee.mutate();
            this.zzgef.mutate();
            this.zzgec = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected final void onBoundsChange(Rect rect) {
        this.zzgee.setBounds(rect);
        this.zzgef.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.mAlpha == this.zzgea) {
            this.mAlpha = i;
        }
        this.zzgea = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.zzgee.setColorFilter(colorFilter);
        this.zzgef.setColorFilter(colorFilter);
    }

    public final void startTransition(int i) {
        this.mFrom = 0;
        this.zzgdz = this.zzgea;
        this.mAlpha = 0;
        this.zzgeb = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        this.zzgdy = 1;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final Drawable zzaln() {
        return this.zzgef;
    }
}
