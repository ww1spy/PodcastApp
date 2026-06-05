.class public Lmobi/beyondpod/ui/views/notifications/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field private static final EMBEDDED_IMAGE_ALT_MARKER:Ljava/lang/String; = "#IMGALT#"

.field private static final EMBEDDED_IMAGE_MARKER:Ljava/lang/String; = "#IMG#"


# instance fields
.field public DismissTitle:Ljava/lang/String;

.field public ImageAltResourceId:I

.field public ImageResourceId:I

.field public MessageText:Ljava/lang/String;

.field public MessageTitle:Ljava/lang/String;

.field public RepeatInterval:I

.field public URL:Ljava/lang/String;

.field private _ExpirationPolicy:Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa8

    .line 17
    iput v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa8

    .line 17
    iput v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    .line 33
    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "--"

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const-string v1, "\\|"

    .line 39
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 41
    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 42
    aget-object v1, p1, v1

    const-string v2, "&lt;"

    const-string v3, "<"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&gt;"

    const-string v3, ">"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\n"

    const-string v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x1

    .line 44
    array-length v2, p1

    if-le v2, v1, :cond_3

    .line 45
    aget-object v1, p1, v1

    iput-object v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    :cond_3
    const/4 v1, 0x2

    .line 47
    array-length v2, p1

    if-le v2, v1, :cond_4

    .line 49
    aget-object v1, p1, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->tryParseIntFromString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    :cond_4
    const/4 v0, 0x3

    .line 52
    array-length v1, p1

    if-le v1, v0, :cond_5

    .line 54
    aget-object p1, p1, v0

    invoke-static {p1}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;->buildPolicy(Ljava/lang/String;)Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->_ExpirationPolicy:Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;

    :cond_5
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

    .line 76
    :cond_1
    instance-of v2, p1, Lmobi/beyondpod/ui/views/notifications/Message;

    if-nez v2, :cond_2

    return v1

    .line 78
    :cond_2
    check-cast p1, Lmobi/beyondpod/ui/views/notifications/Message;

    .line 79
    iget-object v2, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 81
    iget-object v2, p1, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 83
    :cond_3
    iget-object v2, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    iget-object v3, p1, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 85
    :cond_4
    iget v2, p0, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    iget v3, p1, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    if-eq v2, v3, :cond_5

    return v1

    .line 87
    :cond_5
    iget-object v2, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 89
    iget-object p1, p1, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    if-eqz p1, :cond_7

    return v1

    .line 91
    :cond_6
    iget-object v2, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    iget-object p1, p1, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public expandURLTokens()Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 111
    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    const-string v1, "#BP_VERSION#"

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->productVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formattedMessage(Landroid/content/Context;)Landroid/text/Spannable;
    .locals 5

    .line 117
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    iget v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->ImageResourceId:I

    const/16 v2, 0x21

    if-lez v1, :cond_0

    .line 120
    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    const-string v3, "#IMG#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 123
    new-instance v3, Landroid/text/style/ImageSpan;

    iget v4, p0, Lmobi/beyondpod/ui/views/notifications/Message;->ImageResourceId:I

    invoke-direct {v3, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const-string v4, "#IMG#"

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 129
    :cond_0
    iget v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->ImageAltResourceId:I

    if-lez v1, :cond_1

    .line 131
    iget-object v1, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    const-string v3, "#IMGALT#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 134
    new-instance v3, Landroid/text/style/ImageSpan;

    iget v4, p0, Lmobi/beyondpod/ui/views/notifications/Message;->ImageAltResourceId:I

    invoke-direct {v3, p1, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    const-string p1, "#IMGALT#"

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    invoke-interface {v0, v3, v1, p1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    invoke-static {v0}, Lmobi/beyondpod/rsscore/helpers/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 63
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->MessageText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 64
    iget v3, p0, Lmobi/beyondpod/ui/views/notifications/Message;->RepeatInterval:I

    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    .line 65
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->URL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public isExpired()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->_ExpirationPolicy:Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/notifications/Message;->_ExpirationPolicy:Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;

    invoke-virtual {v0}, Lmobi/beyondpod/ui/views/notifications/MessageExpirationPolicy;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
