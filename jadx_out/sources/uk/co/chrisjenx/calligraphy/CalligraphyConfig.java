package uk.co.chrisjenx.calligraphy;

import android.os.Build;
import android.text.TextUtils;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class CalligraphyConfig {
    private static final Map<Class<? extends TextView>, Integer> DEFAULT_STYLES = new HashMap();
    private static CalligraphyConfig sInstance;
    private final int mAttrId;
    private final Map<Class<? extends TextView>, Integer> mClassStyleAttributeMap;
    private final boolean mCustomViewCreation;
    private final String mFontPath;
    private final boolean mIsFontSet;
    private final boolean mReflection;

    static {
        DEFAULT_STYLES.put(TextView.class, Integer.valueOf(android.R.attr.textViewStyle));
        DEFAULT_STYLES.put(Button.class, Integer.valueOf(android.R.attr.buttonStyle));
        DEFAULT_STYLES.put(EditText.class, Integer.valueOf(android.R.attr.editTextStyle));
        DEFAULT_STYLES.put(AutoCompleteTextView.class, Integer.valueOf(android.R.attr.autoCompleteTextViewStyle));
        DEFAULT_STYLES.put(MultiAutoCompleteTextView.class, Integer.valueOf(android.R.attr.autoCompleteTextViewStyle));
        DEFAULT_STYLES.put(CheckBox.class, Integer.valueOf(android.R.attr.checkboxStyle));
        DEFAULT_STYLES.put(RadioButton.class, Integer.valueOf(android.R.attr.radioButtonStyle));
        DEFAULT_STYLES.put(ToggleButton.class, Integer.valueOf(android.R.attr.buttonStyleToggle));
    }

    public static void initDefault(CalligraphyConfig calligraphyConfig) {
        sInstance = calligraphyConfig;
    }

    public static CalligraphyConfig get() {
        if (sInstance == null) {
            sInstance = new CalligraphyConfig(new Builder());
        }
        return sInstance;
    }

    protected CalligraphyConfig(Builder builder) {
        this.mIsFontSet = builder.isFontSet;
        this.mFontPath = builder.fontAssetPath;
        this.mAttrId = builder.attrId;
        this.mReflection = builder.reflection;
        this.mCustomViewCreation = builder.customViewCreation;
        HashMap hashMap = new HashMap(DEFAULT_STYLES);
        hashMap.putAll(builder.mStyleClassMap);
        this.mClassStyleAttributeMap = Collections.unmodifiableMap(hashMap);
    }

    public String getFontPath() {
        return this.mFontPath;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isFontSet() {
        return this.mIsFontSet;
    }

    public boolean isReflection() {
        return this.mReflection;
    }

    public boolean isCustomViewCreation() {
        return this.mCustomViewCreation;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<Class<? extends TextView>, Integer> getClassStyles() {
        return this.mClassStyleAttributeMap;
    }

    public int getAttrId() {
        return this.mAttrId;
    }

    /* loaded from: classes.dex */
    public static class Builder {
        public static final int INVALID_ATTR_ID = -1;
        private int attrId;
        private boolean customViewCreation;
        private String fontAssetPath;
        private boolean isFontSet;
        private Map<Class<? extends TextView>, Integer> mStyleClassMap;
        private boolean reflection;

        public Builder() {
            this.reflection = Build.VERSION.SDK_INT >= 11;
            this.customViewCreation = true;
            this.attrId = R.attr.fontPath;
            this.isFontSet = false;
            this.fontAssetPath = null;
            this.mStyleClassMap = new HashMap();
        }

        public Builder setFontAttrId(int i) {
            if (i == -1) {
                i = -1;
            }
            this.attrId = i;
            return this;
        }

        public Builder setDefaultFontPath(String str) {
            this.isFontSet = !TextUtils.isEmpty(str);
            this.fontAssetPath = str;
            return this;
        }

        public Builder disablePrivateFactoryInjection() {
            this.reflection = false;
            return this;
        }

        public Builder disableCustomViewInflation() {
            this.customViewCreation = false;
            return this;
        }

        public Builder addCustomStyle(Class<? extends TextView> cls, int i) {
            if (cls == null || i == 0) {
                return this;
            }
            this.mStyleClassMap.put(cls, Integer.valueOf(i));
            return this;
        }

        public CalligraphyConfig build() {
            this.isFontSet = !TextUtils.isEmpty(this.fontAssetPath);
            return new CalligraphyConfig(this);
        }
    }
}
