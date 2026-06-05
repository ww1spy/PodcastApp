package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.accessibility.CaptioningManager;
import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.internal.zzbdw;
import com.google.android.gms.internal.zzbgl;
import com.google.android.gms.internal.zzbgo;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class TextTrackStyle extends zzbgl {
    public static final int COLOR_UNSPECIFIED = 0;

    @Hide
    public static final Parcelable.Creator<TextTrackStyle> CREATOR = new zzbn();
    public static final float DEFAULT_FONT_SCALE = 1.0f;
    public static final int EDGE_TYPE_DEPRESSED = 4;
    public static final int EDGE_TYPE_DROP_SHADOW = 2;
    public static final int EDGE_TYPE_NONE = 0;
    public static final int EDGE_TYPE_OUTLINE = 1;
    public static final int EDGE_TYPE_RAISED = 3;
    public static final int EDGE_TYPE_UNSPECIFIED = -1;
    public static final int FONT_FAMILY_CASUAL = 4;
    public static final int FONT_FAMILY_CURSIVE = 5;
    public static final int FONT_FAMILY_MONOSPACED_SANS_SERIF = 1;
    public static final int FONT_FAMILY_MONOSPACED_SERIF = 3;
    public static final int FONT_FAMILY_SANS_SERIF = 0;
    public static final int FONT_FAMILY_SERIF = 2;
    public static final int FONT_FAMILY_SMALL_CAPITALS = 6;
    public static final int FONT_FAMILY_UNSPECIFIED = -1;
    public static final int FONT_STYLE_BOLD = 1;
    public static final int FONT_STYLE_BOLD_ITALIC = 3;
    public static final int FONT_STYLE_ITALIC = 2;
    public static final int FONT_STYLE_NORMAL = 0;
    public static final int FONT_STYLE_UNSPECIFIED = -1;
    public static final int WINDOW_TYPE_NONE = 0;
    public static final int WINDOW_TYPE_NORMAL = 1;
    public static final int WINDOW_TYPE_ROUNDED = 2;
    public static final int WINDOW_TYPE_UNSPECIFIED = -1;
    private int zzbxm;
    private String zzesn;
    private JSONObject zzess;
    private float zzezf;
    private int zzezg;
    private int zzezh;
    private int zzezi;
    private int zzezj;
    private int zzezk;
    private int zzezl;
    private String zzezm;
    private int zzezn;
    private int zzezo;

    public TextTrackStyle() {
        this(1.0f, 0, 0, -1, 0, -1, 0, 0, null, -1, -1, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TextTrackStyle(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8, int i9, String str2) {
        this.zzezf = f;
        this.zzezg = i;
        this.zzbxm = i2;
        this.zzezh = i3;
        this.zzezi = i4;
        this.zzezj = i5;
        this.zzezk = i6;
        this.zzezl = i7;
        this.zzezm = str;
        this.zzezn = i8;
        this.zzezo = i9;
        this.zzesn = str2;
        if (this.zzesn == null) {
            this.zzess = null;
            return;
        }
        try {
            this.zzess = new JSONObject(this.zzesn);
        } catch (JSONException unused) {
            this.zzess = null;
            this.zzesn = null;
        }
    }

    @TargetApi(19)
    public static TextTrackStyle fromSystemSettings(Context context) {
        TextTrackStyle textTrackStyle = new TextTrackStyle();
        if (!com.google.android.gms.common.util.zzs.zzanv()) {
            return textTrackStyle;
        }
        CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
        textTrackStyle.setFontScale(captioningManager.getFontScale());
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        textTrackStyle.setBackgroundColor(userStyle.backgroundColor);
        textTrackStyle.setForegroundColor(userStyle.foregroundColor);
        switch (userStyle.edgeType) {
            case 1:
                textTrackStyle.setEdgeType(1);
                break;
            case 2:
                textTrackStyle.setEdgeType(2);
                break;
            default:
                textTrackStyle.setEdgeType(0);
                break;
        }
        textTrackStyle.setEdgeColor(userStyle.edgeColor);
        Typeface typeface = userStyle.getTypeface();
        if (typeface != null) {
            if (Typeface.MONOSPACE.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(1);
            } else if (Typeface.SANS_SERIF.equals(typeface) || !Typeface.SERIF.equals(typeface)) {
                textTrackStyle.setFontGenericFamily(0);
            } else {
                textTrackStyle.setFontGenericFamily(2);
            }
            boolean isBold = typeface.isBold();
            boolean isItalic = typeface.isItalic();
            if (isBold && isItalic) {
                textTrackStyle.setFontStyle(3);
                return textTrackStyle;
            }
            if (isBold) {
                textTrackStyle.setFontStyle(1);
                return textTrackStyle;
            }
            if (isItalic) {
                textTrackStyle.setFontStyle(2);
                return textTrackStyle;
            }
            textTrackStyle.setFontStyle(0);
        }
        return textTrackStyle;
    }

    private static String zzbd(int i) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i)));
    }

    private static int zzfo(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        if ((this.zzess == null) != (textTrackStyle.zzess == null)) {
            return false;
        }
        return (this.zzess == null || textTrackStyle.zzess == null || com.google.android.gms.common.util.zzq.zzc(this.zzess, textTrackStyle.zzess)) && this.zzezf == textTrackStyle.zzezf && this.zzezg == textTrackStyle.zzezg && this.zzbxm == textTrackStyle.zzbxm && this.zzezh == textTrackStyle.zzezh && this.zzezi == textTrackStyle.zzezi && this.zzezj == textTrackStyle.zzezj && this.zzezl == textTrackStyle.zzezl && zzbdw.zza(this.zzezm, textTrackStyle.zzezm) && this.zzezn == textTrackStyle.zzezn && this.zzezo == textTrackStyle.zzezo;
    }

    public final int getBackgroundColor() {
        return this.zzbxm;
    }

    public final JSONObject getCustomData() {
        return this.zzess;
    }

    public final int getEdgeColor() {
        return this.zzezi;
    }

    public final int getEdgeType() {
        return this.zzezh;
    }

    public final String getFontFamily() {
        return this.zzezm;
    }

    public final int getFontGenericFamily() {
        return this.zzezn;
    }

    public final float getFontScale() {
        return this.zzezf;
    }

    public final int getFontStyle() {
        return this.zzezo;
    }

    public final int getForegroundColor() {
        return this.zzezg;
    }

    public final int getWindowColor() {
        return this.zzezk;
    }

    public final int getWindowCornerRadius() {
        return this.zzezl;
    }

    public final int getWindowType() {
        return this.zzezj;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.zzezf), Integer.valueOf(this.zzezg), Integer.valueOf(this.zzbxm), Integer.valueOf(this.zzezh), Integer.valueOf(this.zzezi), Integer.valueOf(this.zzezj), Integer.valueOf(this.zzezk), Integer.valueOf(this.zzezl), this.zzezm, Integer.valueOf(this.zzezn), Integer.valueOf(this.zzezo), String.valueOf(this.zzess)});
    }

    public final void setBackgroundColor(int i) {
        this.zzbxm = i;
    }

    public final void setCustomData(JSONObject jSONObject) {
        this.zzess = jSONObject;
    }

    public final void setEdgeColor(int i) {
        this.zzezi = i;
    }

    public final void setEdgeType(int i) {
        if (i < 0 || i > 4) {
            throw new IllegalArgumentException("invalid edgeType");
        }
        this.zzezh = i;
    }

    public final void setFontFamily(String str) {
        this.zzezm = str;
    }

    public final void setFontGenericFamily(int i) {
        if (i < 0 || i > 6) {
            throw new IllegalArgumentException("invalid fontGenericFamily");
        }
        this.zzezn = i;
    }

    public final void setFontScale(float f) {
        this.zzezf = f;
    }

    public final void setFontStyle(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("invalid fontStyle");
        }
        this.zzezo = i;
    }

    public final void setForegroundColor(int i) {
        this.zzezg = i;
    }

    public final void setWindowColor(int i) {
        this.zzezk = i;
    }

    public final void setWindowCornerRadius(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("invalid windowCornerRadius");
        }
        this.zzezl = i;
    }

    public final void setWindowType(int i) {
        if (i < 0 || i > 2) {
            throw new IllegalArgumentException("invalid windowType");
        }
        this.zzezj = i;
    }

    @Hide
    public final JSONObject toJson() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fontScale", this.zzezf);
            if (this.zzezg != 0) {
                jSONObject.put("foregroundColor", zzbd(this.zzezg));
            }
            if (this.zzbxm != 0) {
                jSONObject.put("backgroundColor", zzbd(this.zzbxm));
            }
            switch (this.zzezh) {
                case 0:
                    str = "edgeType";
                    str2 = "NONE";
                    jSONObject.put(str, str2);
                    break;
                case 1:
                    str = "edgeType";
                    str2 = "OUTLINE";
                    jSONObject.put(str, str2);
                    break;
                case 2:
                    str = "edgeType";
                    str2 = "DROP_SHADOW";
                    jSONObject.put(str, str2);
                    break;
                case 3:
                    str = "edgeType";
                    str2 = "RAISED";
                    jSONObject.put(str, str2);
                    break;
                case 4:
                    str = "edgeType";
                    str2 = "DEPRESSED";
                    jSONObject.put(str, str2);
                    break;
            }
            if (this.zzezi != 0) {
                jSONObject.put("edgeColor", zzbd(this.zzezi));
            }
            switch (this.zzezj) {
                case 0:
                    str3 = "windowType";
                    str4 = "NONE";
                    jSONObject.put(str3, str4);
                    break;
                case 1:
                    str3 = "windowType";
                    str4 = "NORMAL";
                    jSONObject.put(str3, str4);
                    break;
                case 2:
                    str3 = "windowType";
                    str4 = "ROUNDED_CORNERS";
                    jSONObject.put(str3, str4);
                    break;
            }
            if (this.zzezk != 0) {
                jSONObject.put("windowColor", zzbd(this.zzezk));
            }
            if (this.zzezj == 2) {
                jSONObject.put("windowRoundedCornerRadius", this.zzezl);
            }
            if (this.zzezm != null) {
                jSONObject.put("fontFamily", this.zzezm);
            }
            switch (this.zzezn) {
                case 0:
                    str5 = "fontGenericFamily";
                    str6 = "SANS_SERIF";
                    jSONObject.put(str5, str6);
                    break;
                case 1:
                    str5 = "fontGenericFamily";
                    str6 = "MONOSPACED_SANS_SERIF";
                    jSONObject.put(str5, str6);
                    break;
                case 2:
                    str5 = "fontGenericFamily";
                    str6 = "SERIF";
                    jSONObject.put(str5, str6);
                    break;
                case 3:
                    str5 = "fontGenericFamily";
                    str6 = "MONOSPACED_SERIF";
                    jSONObject.put(str5, str6);
                    break;
                case 4:
                    str5 = "fontGenericFamily";
                    str6 = "CASUAL";
                    jSONObject.put(str5, str6);
                    break;
                case 5:
                    str5 = "fontGenericFamily";
                    str6 = "CURSIVE";
                    jSONObject.put(str5, str6);
                    break;
                case 6:
                    str5 = "fontGenericFamily";
                    str6 = "SMALL_CAPITALS";
                    jSONObject.put(str5, str6);
                    break;
            }
            switch (this.zzezo) {
                case 0:
                    str7 = "fontStyle";
                    str8 = "NORMAL";
                    jSONObject.put(str7, str8);
                    break;
                case 1:
                    str7 = "fontStyle";
                    str8 = "BOLD";
                    jSONObject.put(str7, str8);
                    break;
                case 2:
                    str7 = "fontStyle";
                    str8 = "ITALIC";
                    jSONObject.put(str7, str8);
                    break;
                case 3:
                    str7 = "fontStyle";
                    str8 = "BOLD_ITALIC";
                    jSONObject.put(str7, str8);
                    break;
            }
            if (this.zzess != null) {
                jSONObject.put("customData", this.zzess);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        this.zzesn = this.zzess == null ? null : this.zzess.toString();
        int zze = zzbgo.zze(parcel);
        zzbgo.zza(parcel, 2, getFontScale());
        zzbgo.zzc(parcel, 3, getForegroundColor());
        zzbgo.zzc(parcel, 4, getBackgroundColor());
        zzbgo.zzc(parcel, 5, getEdgeType());
        zzbgo.zzc(parcel, 6, getEdgeColor());
        zzbgo.zzc(parcel, 7, getWindowType());
        zzbgo.zzc(parcel, 8, getWindowColor());
        zzbgo.zzc(parcel, 9, getWindowCornerRadius());
        zzbgo.zza(parcel, 10, getFontFamily(), false);
        zzbgo.zzc(parcel, 11, getFontGenericFamily());
        zzbgo.zzc(parcel, 12, getFontStyle());
        zzbgo.zza(parcel, 13, this.zzesn, false);
        zzbgo.zzai(parcel, zze);
    }

    @Hide
    public final void zzt(JSONObject jSONObject) throws JSONException {
        int i;
        this.zzezf = (float) jSONObject.optDouble("fontScale", 1.0d);
        this.zzezg = zzfo(jSONObject.optString("foregroundColor"));
        this.zzbxm = zzfo(jSONObject.optString("backgroundColor"));
        if (jSONObject.has("edgeType")) {
            String string = jSONObject.getString("edgeType");
            if ("NONE".equals(string)) {
                this.zzezh = 0;
            } else if ("OUTLINE".equals(string)) {
                this.zzezh = 1;
            } else if ("DROP_SHADOW".equals(string)) {
                this.zzezh = 2;
            } else if ("RAISED".equals(string)) {
                this.zzezh = 3;
            } else if ("DEPRESSED".equals(string)) {
                this.zzezh = 4;
            }
        }
        this.zzezi = zzfo(jSONObject.optString("edgeColor"));
        if (jSONObject.has("windowType")) {
            String string2 = jSONObject.getString("windowType");
            if ("NONE".equals(string2)) {
                this.zzezj = 0;
            } else if ("NORMAL".equals(string2)) {
                this.zzezj = 1;
            } else if ("ROUNDED_CORNERS".equals(string2)) {
                this.zzezj = 2;
            }
        }
        this.zzezk = zzfo(jSONObject.optString("windowColor"));
        if (this.zzezj == 2) {
            this.zzezl = jSONObject.optInt("windowRoundedCornerRadius", 0);
        }
        this.zzezm = jSONObject.optString("fontFamily", null);
        if (jSONObject.has("fontGenericFamily")) {
            String string3 = jSONObject.getString("fontGenericFamily");
            if ("SANS_SERIF".equals(string3)) {
                this.zzezn = 0;
            } else if ("MONOSPACED_SANS_SERIF".equals(string3)) {
                this.zzezn = 1;
            } else if ("SERIF".equals(string3)) {
                this.zzezn = 2;
            } else if ("MONOSPACED_SERIF".equals(string3)) {
                this.zzezn = 3;
            } else if ("CASUAL".equals(string3)) {
                this.zzezn = 4;
            } else {
                if (!"CURSIVE".equals(string3)) {
                    i = "SMALL_CAPITALS".equals(string3) ? 6 : 5;
                }
                this.zzezn = i;
            }
        }
        if (jSONObject.has("fontStyle")) {
            String string4 = jSONObject.getString("fontStyle");
            if ("NORMAL".equals(string4)) {
                this.zzezo = 0;
            } else if ("BOLD".equals(string4)) {
                this.zzezo = 1;
            } else if ("ITALIC".equals(string4)) {
                this.zzezo = 2;
            } else if ("BOLD_ITALIC".equals(string4)) {
                this.zzezo = 3;
            }
        }
        this.zzess = jSONObject.optJSONObject("customData");
    }
}
