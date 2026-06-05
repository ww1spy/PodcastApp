.class public Lmobi/beyondpod/rsscore/rss/LicenseManager;
.super Ljava/lang/Object;
.source "LicenseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/beyondpod/rsscore/rss/LicenseManager$License;
    }
.end annotation


# static fields
.field public static final LICENSE_TYPE_AMAZON:I = 0x6

.field public static final LICENSE_TYPE_ANDROID_MARKET:I = 0x1

.field public static final LICENSE_TYPE_ARC:I = 0x7

.field public static final LICENSE_TYPE_BETA:I = 0x2

.field public static final LICENSE_TYPE_EXPIRED:I = 0x5

.field public static final LICENSE_TYPE_IN_TRIAL:I = 0x0

.field public static final LICENSE_TYPE_OTHER:I = 0x4

.field public static final LICENSE_TYPE_PAYPAL:I = 0x3

.field public static final LICENSE_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LicenseManager"

.field public static _CheckKeyUri:Landroid/net/Uri;

.field private static final _ChromiumLicense:Lmobi/beyondpod/rsscore/rss/ExternalLicense;

.field private static _DefaultTrialStartDate:Ljava/util/Date;

.field private static final _InstallStartDate:Ljava/util/Date;

.field public static final _Key:Ljava/lang/String;

.field private static final _ProVersionLicense:Lmobi/beyondpod/rsscore/rss/LicenseManager$License;

.field private static _TrialStartDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x11fc3251000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_InstallStartDate:Ljava/util/Date;

    .line 43
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x11fc3268ecfL

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_DefaultTrialStartDate:Ljava/util/Date;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://beyondpod.license.manager/checkKey/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 90
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_CheckKeyUri:Landroid/net/Uri;

    .line 91
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_CheckKeyUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_Key:Ljava/lang/String;

    .line 92
    new-instance v0, Lmobi/beyondpod/rsscore/rss/LicenseManager$License;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/LicenseManager$License;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_ProVersionLicense:Lmobi/beyondpod/rsscore/rss/LicenseManager$License;

    .line 93
    new-instance v0, Lmobi/beyondpod/rsscore/rss/ExternalLicense;

    invoke-direct {v0}, Lmobi/beyondpod/rsscore/rss/ExternalLicense;-><init>()V

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_ChromiumLicense:Lmobi/beyondpod/rsscore/rss/ExternalLicense;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static betaExpirationDate()Ljava/util/Date;
    .locals 4

    .line 177
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 179
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isRunningOnARC()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "ARC"

    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v3

    invoke-virtual {v3}, Lmobi/beyondpod/BeyondPodApplication;->appKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x7e0

    .line 180
    invoke-virtual {v0, v1, v2, v2}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d9

    const/4 v3, 0x3

    .line 182
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/Calendar;->set(III)V

    .line 183
    :goto_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static currentLicenseKind()I
    .locals 4

    .line 214
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->isUnlocked()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 216
    invoke-static {v2}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getLicenseTypeString(Z)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v2, "Beta Tester"

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-string v2, "Android Market"

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "Google Play"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "Amazon Appstore"

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x6

    return v0

    :cond_3
    const-string v2, "PayPal"

    .line 230
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    return v0

    .line 233
    :cond_4
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    return v0

    :cond_5
    return v1

    :cond_6
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_7
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->ifInRestrictedMode()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, ""

    .line 241
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLicenseTypeString(Ljava/lang/String;)V

    const/4 v0, 0x5

    return v0

    .line 245
    :cond_8
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_9

    return v2

    :cond_9
    return v1
.end method

.method private static freeTrialDurationDays()I
    .locals 1

    .line 163
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->isPartner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    return v0
.end method

.method public static getLicenseKey()[Ljava/lang/String;
    .locals 3

    .line 103
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_ProVersionLicense:Lmobi/beyondpod/rsscore/rss/LicenseManager$License;

    sget-object v1, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_CheckKeyUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/LicenseManager$License;->getLicenseKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "\\|"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_ChromiumLicense:Lmobi/beyondpod/rsscore/rss/ExternalLicense;

    sget-object v1, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_CheckKeyUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lmobi/beyondpod/rsscore/rss/ExternalLicense;->getLicenseKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "\\|"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    sget-object v2, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_CheckKeyUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "\\|"

    .line 119
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    return-object v0

    :catch_0
    const-string v1, "LicenseManager"

    const-string v2, "failed to get License key!"

    .line 125
    invoke-static {v1, v2}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->writeTraceEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLicenseTypeString(Z)Ljava/lang/String;
    .locals 3

    .line 253
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->licenseTypeString()Ljava/lang/String;

    move-result-object v0

    if-nez p0, :cond_0

    .line 254
    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 256
    :cond_0
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getLicenseKey()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 257
    array-length v2, p0

    if-le v2, v1, :cond_1

    .line 259
    aget-object v0, p0, v1

    .line 260
    invoke-static {v0}, Lmobi/beyondpod/rsscore/Configuration;->setLicenseTypeString(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getShortLicenseKind()Ljava/lang/String;
    .locals 1

    .line 292
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->currentLicenseKind()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "u"

    return-object v0

    :pswitch_0
    const-string v0, "c"

    return-object v0

    :pswitch_1
    const-string v0, "a"

    return-object v0

    :pswitch_2
    const-string v0, "x"

    return-object v0

    :pswitch_3
    const-string v0, "o"

    return-object v0

    :pswitch_4
    const-string v0, "P"

    return-object v0

    :pswitch_5
    const-string v0, "b"

    return-object v0

    :pswitch_6
    const-string v0, "m"

    return-object v0

    :pswitch_7
    const-string v0, "t"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static ifInRestrictedMode()Z
    .locals 3

    .line 204
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->isUnlocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 207
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 209
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isKeyInstalled()Z
    .locals 4

    const/4 v0, 0x0

    .line 142
    :try_start_0
    invoke-static {}, Lmobi/beyondpod/BeyondPodApplication;->getInstance()Lmobi/beyondpod/BeyondPodApplication;

    move-result-object v1

    invoke-virtual {v1}, Lmobi/beyondpod/BeyondPodApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 143
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->packageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobi.beyondpod.unlockkey"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method private static isPartner()Z
    .locals 1

    .line 172
    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->isPartnerSony()Z

    move-result v0

    return v0
.end method

.method static isUnlocked()Z
    .locals 1

    .line 97
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->isKeyInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->pokeKey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static pokeKey()Z
    .locals 4

    .line 134
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->getLicenseKey()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v2, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_Key:Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static setTrialStartDate(Ljava/util/Date;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 72
    sput-object p0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    .line 74
    sget-object p0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_InstallStartDate:Ljava/util/Date;

    invoke-virtual {p0, v0}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 75
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    sput-object p0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    .line 78
    :cond_0
    sget-object p0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    invoke-static {p0}, Lmobi/beyondpod/rsscore/Configuration;->setTrialStartDate(Ljava/util/Date;)V

    return-void
.end method

.method public static trialExpirationDate()Ljava/util/Date;
    .locals 3

    .line 155
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationWarningDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->warningTrialDurationDays()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 158
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static trialExpirationWarningDate()Ljava/util/Date;
    .locals 3

    .line 188
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 189
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialStartDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 190
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->freeTrialDurationDays()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 191
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 193
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->betaExpirationDate()Ljava/util/Date;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public static trialExpiresInDays()I
    .locals 7

    .line 83
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/TimeSpan;

    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->trialExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v5, v1, v3

    invoke-direct {v0, v5, v6}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;-><init>(J)V

    invoke-virtual {v0}, Lmobi/beyondpod/rsscore/helpers/TimeSpan;->getTotalDays()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static trialStartDate()Ljava/util/Date;
    .locals 1

    .line 58
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->getTrialStartDate()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    .line 61
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 62
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_DefaultTrialStartDate:Ljava/util/Date;

    sput-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    .line 65
    :cond_0
    sget-object v0, Lmobi/beyondpod/rsscore/rss/LicenseManager;->_TrialStartDate:Ljava/util/Date;

    return-object v0
.end method

.method private static warningTrialDurationDays()I
    .locals 1

    .line 167
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->isPartner()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method
