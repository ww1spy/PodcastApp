.class public Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/downloadengine/VersionCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInformation"
.end annotation


# instance fields
.field public AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

.field public BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

.field public LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

.field public LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

.field public TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(IIII)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 227
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-direct {v0, v1, v1, v1, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(IIII)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 228
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 229
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 230
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(IIII)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 227
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-direct {v0, v1, v1, v1, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(IIII)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 228
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 229
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 230
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-direct {v0}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>()V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 239
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 241
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 242
    new-instance v0, Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 244
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 246
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 247
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    const-string v1, "BeyondPod"

    iput-object v1, v0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 250
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 252
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 253
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    const-string v1, "New BeyondPod BETA is available!"

    iput-object v1, v0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    .line 256
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    .line 258
    new-instance v0, Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lmobi/beyondpod/ui/views/notifications/Message;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    .line 259
    iget-object p1, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    const-string v0, "Announcement"

    iput-object v0, p1, Lmobi/beyondpod/ui/views/notifications/Message;->MessageTitle:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 296
    :cond_1
    instance-of v2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    if-nez v2, :cond_2

    return v1

    .line 299
    :cond_2
    check-cast p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;

    .line 300
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-nez v2, :cond_3

    .line 302
    iget-object v2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-eqz v2, :cond_4

    return v1

    .line 305
    :cond_3
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    iget-object v3, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/views/notifications/Message;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 308
    :cond_4
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-nez v2, :cond_5

    .line 310
    iget-object v2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-eqz v2, :cond_6

    return v1

    .line 313
    :cond_5
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    iget-object v3, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/ui/views/notifications/Message;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 316
    :cond_6
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-nez v2, :cond_7

    .line 318
    iget-object v2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-eqz v2, :cond_8

    return v1

    .line 321
    :cond_7
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    iget-object v3, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/helpers/Version;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 324
    :cond_8
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-nez v2, :cond_9

    .line 326
    iget-object v2, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-eqz v2, :cond_a

    return v1

    .line 329
    :cond_9
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    iget-object v3, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {v2, v3}, Lmobi/beyondpod/rsscore/helpers/Version;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 332
    :cond_a
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-nez v2, :cond_b

    .line 334
    iget-object p1, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-eqz p1, :cond_c

    return v1

    .line 337
    :cond_b
    iget-object v2, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    iget-object p1, p1, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {v2, p1}, Lmobi/beyondpod/ui/views/notifications/Message;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v1

    :cond_c
    return v0
.end method

.method public getCustomizedMessage()Lmobi/beyondpod/ui/views/notifications/Message;
    .locals 2

    .line 344
    invoke-static {}, Lmobi/beyondpod/rsscore/rss/LicenseManager;->currentLicenseKind()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    return-object v0

    :cond_0
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 351
    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    return-object v0

    .line 349
    :cond_2
    :goto_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 279
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->AllUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/notifications/Message;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 280
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->BetaUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {v3}, Lmobi/beyondpod/ui/views/notifications/Message;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 281
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/helpers/Version;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 282
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-virtual {v3}, Lmobi/beyondpod/rsscore/helpers/Version;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 283
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->TrialUsers:Lmobi/beyondpod/ui/views/notifications/Message;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/notifications/Message;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    return v2
.end method

.method public isNewDevVersionAvailable()Z
    .locals 2

    .line 271
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastDevVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersion()Lmobi/beyondpod/rsscore/helpers/Version;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;->compare(Lmobi/beyondpod/rsscore/helpers/Version;Lmobi/beyondpod/rsscore/helpers/Version;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNewPublicVersionAvailable()Z
    .locals 2

    .line 265
    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/downloadengine/VersionCheckManager$VersionInformation;->LastPublicVersion:Lmobi/beyondpod/rsscore/helpers/Version;

    .line 266
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->currentProductVersion()Lmobi/beyondpod/rsscore/helpers/Version;

    move-result-object v1

    invoke-static {v0, v1}, Lmobi/beyondpod/rsscore/helpers/Version;->compare(Lmobi/beyondpod/rsscore/helpers/Version;Lmobi/beyondpod/rsscore/helpers/Version;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
