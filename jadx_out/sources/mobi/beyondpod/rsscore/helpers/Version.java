package mobi.beyondpod.rsscore.helpers;

/* loaded from: classes.dex */
public class Version {
    int _Build;
    boolean _IsDebug;
    int _Major;
    int _Minor;
    int _Revision;

    public Version(String str) {
        if (str.contains("debug")) {
            this._IsDebug = true;
            str = str.replace("debug", "");
        }
        String[] split = str.split("\\.");
        if (split.length <= 1 || split.length >= 5) {
            return;
        }
        if (split.length > 0) {
            this._Major = StringUtils.tryParseIntFromString(split[0], 0).intValue();
        }
        if (split.length > 1) {
            this._Minor = StringUtils.tryParseIntFromString(split[1], 0).intValue();
        }
        if (split.length > 2) {
            this._Build = StringUtils.tryParseIntFromString(split[2], 0).intValue();
        }
        if (split.length > 3) {
            this._Revision = StringUtils.tryParseIntFromString(split[3], 0).intValue();
        }
    }

    public Version(int i, int i2, int i3, int i4) {
        this._Major = i;
        this._Minor = i2;
        this._Build = i3;
        this._Revision = i4;
    }

    public int hashCode() {
        return (31 * (((((this._Build + 31) * 31) + this._Major) * 31) + this._Minor)) + this._Revision;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this._Build == version._Build && this._Major == version._Major && this._Minor == version._Minor && this._Revision == version._Revision;
    }

    public static int compare(Version version, Version version2) {
        if (version == version2) {
            return 0;
        }
        if (version != null && version2 == null) {
            return 1;
        }
        if (version == null && version2 != null) {
            return -1;
        }
        if (version._Major > version2._Major) {
            return 1;
        }
        if (version._Major < version2._Major) {
            return -1;
        }
        if (version._Minor > version2._Minor) {
            return 1;
        }
        if (version._Minor < version2._Minor) {
            return -1;
        }
        if (version._Build > version2._Build) {
            return 1;
        }
        if (version._Build < version2._Build) {
            return -1;
        }
        if (version._Revision > version2._Revision) {
            return 1;
        }
        return version._Revision < version2._Revision ? -1 : 0;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this._Major);
        sb.append(".");
        sb.append(this._Minor);
        sb.append(".");
        sb.append(this._Build);
        if (this._Revision != 0) {
            str = "." + this._Revision;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    public boolean isZero() {
        return this._Major == 0 && this._Minor == 0 && this._Build == 0 && this._Revision == 0;
    }
}
