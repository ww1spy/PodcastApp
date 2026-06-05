.class final Lmobi/beyondpod/services/auto/PackageValidator$CallerInfo;
.super Ljava/lang/Object;
.source "PackageValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/services/auto/PackageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallerInfo"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final packageName:Ljava/lang/String;

.field final release:Z

.field final signingCertificate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lmobi/beyondpod/services/auto/PackageValidator$CallerInfo;->name:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lmobi/beyondpod/services/auto/PackageValidator$CallerInfo;->packageName:Ljava/lang/String;

    .line 158
    iput-boolean p3, p0, Lmobi/beyondpod/services/auto/PackageValidator$CallerInfo;->release:Z

    .line 159
    iput-object p4, p0, Lmobi/beyondpod/services/auto/PackageValidator$CallerInfo;->signingCertificate:Ljava/lang/String;

    return-void
.end method
