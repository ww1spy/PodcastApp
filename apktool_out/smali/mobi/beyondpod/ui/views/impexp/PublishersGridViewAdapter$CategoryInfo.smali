.class Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;
.super Ljava/lang/Object;
.source "PublishersGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryInfo"
.end annotation


# instance fields
.field CategoryName:Ljava/lang/String;

.field CategoryResourceID:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryName:Ljava/lang/String;

    const-string p1, "1"

    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080100

    .line 63
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_0
    const-string p1, "2"

    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080101

    .line 65
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_1
    const-string p1, "3"

    .line 66
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f080103

    .line 67
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_2
    const-string p1, "4"

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f080106

    .line 69
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_3
    const-string p1, "5"

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const p1, 0x7f080107

    .line 71
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_4
    const-string p1, "6"

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f080108

    .line 73
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_5
    const-string p1, "7"

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f080105

    .line 75
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_6
    const-string p1, "8"

    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f080104

    .line 77
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto/16 :goto_0

    :cond_7
    const-string p1, "9"

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f080109

    .line 79
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_8
    const-string p1, "10"

    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f08010a

    .line 81
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_9
    const-string p1, "11"

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f08010b

    .line 83
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_a
    const-string p1, "12"

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f080102

    .line 85
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_b
    const-string p1, "13"

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const p1, 0x7f08010c

    .line 87
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_c
    const-string p1, "14"

    .line 88
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const p1, 0x7f08010d

    .line 89
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_d
    const-string p1, "15"

    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const p1, 0x7f0800ff

    .line 91
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    goto :goto_0

    :cond_e
    const-string p1, "16"

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const p1, 0x7f08010e

    .line 93
    iput p1, p0, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;->CategoryResourceID:I

    :cond_f
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lmobi/beyondpod/ui/views/impexp/PublishersGridViewAdapter$CategoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
