package uk.co.chrisjenx.calligraphy;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class CalligraphyUtils {
    private static Boolean sToolbarCheck;

    public static CharSequence applyTypefaceSpan(CharSequence charSequence, Typeface typeface) {
        if (charSequence != null && charSequence.length() > 0) {
            if (!(charSequence instanceof Spannable)) {
                charSequence = new SpannableString(charSequence);
            }
            ((Spannable) charSequence).setSpan(TypefaceUtils.getSpan(typeface), 0, charSequence.length(), 33);
        }
        return charSequence;
    }

    public static boolean applyFontToTextView(TextView textView, Typeface typeface) {
        return applyFontToTextView(textView, typeface, false);
    }

    public static boolean applyFontToTextView(TextView textView, final Typeface typeface, boolean z) {
        if (textView == null || typeface == null) {
            return false;
        }
        textView.setPaintFlags(textView.getPaintFlags() | 128 | 1);
        textView.setTypeface(typeface);
        if (z) {
            textView.setText(applyTypefaceSpan(textView.getText(), typeface), TextView.BufferType.SPANNABLE);
            textView.addTextChangedListener(new TextWatcher() { // from class: uk.co.chrisjenx.calligraphy.CalligraphyUtils.1
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    CalligraphyUtils.applyTypefaceSpan(editable, typeface);
                }
            });
        }
        return true;
    }

    public static boolean applyFontToTextView(Context context, TextView textView, String str) {
        return applyFontToTextView(context, textView, str, false);
    }

    static boolean applyFontToTextView(Context context, TextView textView, String str, boolean z) {
        if (textView == null || context == null) {
            return false;
        }
        return applyFontToTextView(textView, TypefaceUtils.load(context.getAssets(), str), z);
    }

    static void applyFontToTextView(Context context, TextView textView, CalligraphyConfig calligraphyConfig) {
        applyFontToTextView(context, textView, calligraphyConfig, false);
    }

    static void applyFontToTextView(Context context, TextView textView, CalligraphyConfig calligraphyConfig, boolean z) {
        if (context == null || textView == null || calligraphyConfig == null || !calligraphyConfig.isFontSet()) {
            return;
        }
        applyFontToTextView(context, textView, calligraphyConfig.getFontPath(), z);
    }

    public static void applyFontToTextView(Context context, TextView textView, CalligraphyConfig calligraphyConfig, String str) {
        applyFontToTextView(context, textView, calligraphyConfig, str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void applyFontToTextView(Context context, TextView textView, CalligraphyConfig calligraphyConfig, String str, boolean z) {
        if (context == null || textView == null || calligraphyConfig == null) {
            return;
        }
        if (TextUtils.isEmpty(str) || !applyFontToTextView(context, textView, str, z)) {
            applyFontToTextView(context, textView, calligraphyConfig, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String pullFontPathFromView(Context context, AttributeSet attributeSet, int i) {
        if (i == -1 || attributeSet == null) {
            return null;
        }
        try {
            String resourceEntryName = context.getResources().getResourceEntryName(i);
            int attributeResourceValue = attributeSet.getAttributeResourceValue(null, resourceEntryName, -1);
            if (attributeResourceValue > 0) {
                return context.getString(attributeResourceValue);
            }
            return attributeSet.getAttributeValue(null, resourceEntryName);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String pullFontPathFromStyle(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes;
        if (i != -1 && attributeSet != null && (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{i})) != null) {
            try {
                String string = obtainStyledAttributes.getString(0);
                if (!TextUtils.isEmpty(string)) {
                    obtainStyledAttributes.recycle();
                    return string;
                }
            } catch (Exception unused) {
            } catch (Throwable th) {
                obtainStyledAttributes.recycle();
                throw th;
            }
            obtainStyledAttributes.recycle();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String pullFontPathFromTextAppearance(Context context, AttributeSet attributeSet, int i) {
        int i2 = -1;
        if (i == -1 || attributeSet == null) {
            return null;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.textAppearance});
        if (obtainStyledAttributes != null) {
            try {
                i2 = obtainStyledAttributes.getResourceId(0, -1);
            } catch (Exception unused) {
                return null;
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i2, new int[]{i});
        if (obtainStyledAttributes2 == null) {
            return null;
        }
        try {
            return obtainStyledAttributes2.getString(0);
        } catch (Exception unused2) {
            return null;
        } finally {
            obtainStyledAttributes2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String pullFontPathFromTheme(Context context, int i, int i2) {
        if (i == -1 || i2 == -1) {
            return null;
        }
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(i, typedValue, true);
        TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(typedValue.resourceId, new int[]{i2});
        try {
            return obtainStyledAttributes.getString(0);
        } catch (Exception unused) {
            return null;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String pullFontPathFromTheme(Context context, int i, int i2, int i3) {
        TypedArray obtainStyledAttributes;
        if (i == -1 || i3 == -1) {
            return null;
        }
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(i, typedValue, true);
        TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(typedValue.resourceId, new int[]{i2});
        try {
            int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
            if (resourceId == -1 || (obtainStyledAttributes = context.obtainStyledAttributes(resourceId, new int[]{i3})) == null) {
                return null;
            }
            try {
                return obtainStyledAttributes.getString(0);
            } catch (Exception unused) {
                return null;
            } finally {
                obtainStyledAttributes.recycle();
            }
        } catch (Exception unused2) {
            return null;
        } finally {
            obtainStyledAttributes2.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean canCheckForV7Toolbar() {
        if (sToolbarCheck == null) {
            try {
                Class.forName("android.support.v7.widget.Toolbar");
                sToolbarCheck = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                sToolbarCheck = Boolean.FALSE;
            }
        }
        return sToolbarCheck.booleanValue();
    }

    private CalligraphyUtils() {
    }
}
