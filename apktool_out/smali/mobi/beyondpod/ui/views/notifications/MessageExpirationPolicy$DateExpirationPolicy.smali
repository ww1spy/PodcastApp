.class public Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;
.super Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.source "MessageExpirationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateExpirationPolicy"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SHOW_BEFORE:"


# instance fields
.field _TargetDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 115
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;-><init>()V

    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    const/16 v2, 0x834

    invoke-direct {v0, v2, v1, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;->_TargetDate:Ljava/util/Date;

    .line 116
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, v0}, Lmobi/beyondpod/rsscore/helpers/DateTime;->tryParseDateTimeWithFormat(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 121
    iput-object p1, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;->_TargetDate:Ljava/util/Date;

    :cond_1
    return-void
.end method


# virtual methods
.method isExpired()Z
    .locals 2

    .line 127
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy$DateExpirationPolicy;->_TargetDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method
