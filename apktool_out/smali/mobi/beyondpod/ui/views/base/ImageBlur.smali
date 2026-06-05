.class public Lmobi/beyondpod/ui/views/base/ImageBlur;
.super Ljava/lang/Object;
.source "ImageBlur.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Blur"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 39
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move/from16 v0, p2

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v13, v11, v12

    .line 68
    new-array v14, v13, [I

    const-string v3, "pix"

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v14

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v12

    .line 70
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v3, v11, -0x1

    add-int/lit8 v4, v12, -0x1

    add-int v5, v0, v0

    add-int/2addr v5, v2

    .line 77
    new-array v6, v13, [I

    .line 78
    new-array v7, v13, [I

    .line 79
    new-array v8, v13, [I

    .line 81
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v9, v9, [I

    add-int/lit8 v10, v5, 0x1

    shr-int/2addr v10, v2

    mul-int/2addr v10, v10

    const/16 v13, 0x100

    mul-int/2addr v13, v10

    .line 85
    new-array v2, v13, [I

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_1

    .line 87
    div-int v18, v15, v10

    aput v18, v2, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x3

    .line 92
    filled-new-array {v5, v10}, [I

    move-result-object v10

    const-class v13, I

    invoke-static {v13, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    add-int/lit8 v13, v0, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    const/16 v20, 0x2

    if-ge v15, v12, :cond_6

    move-object/from16 v21, v1

    neg-int v1, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_2
    const v31, 0xff00

    const/high16 v32, 0xff0000

    if-gt v1, v0, :cond_3

    move/from16 v34, v4

    move/from16 v33, v12

    const/4 v12, 0x0

    .line 104
    invoke-static {v1, v12}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v18, v4

    aget v4, v14, v4

    add-int v17, v1, v0

    .line 105
    aget-object v35, v10, v17

    and-int v17, v4, v32

    shr-int/lit8 v17, v17, 0x10

    .line 106
    aput v17, v35, v12

    and-int v17, v4, v31

    shr-int/lit8 v17, v17, 0x8

    const/16 v16, 0x1

    .line 107
    aput v17, v35, v16

    and-int/lit16 v4, v4, 0xff

    .line 108
    aput v4, v35, v20

    .line 109
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v13, v4

    .line 110
    aget v17, v35, v12

    mul-int v17, v17, v4

    add-int v22, v22, v17

    .line 111
    aget v17, v35, v16

    mul-int v17, v17, v4

    add-int v23, v23, v17

    .line 112
    aget v17, v35, v20

    mul-int v17, v17, v4

    add-int v24, v24, v17

    if-lez v1, :cond_2

    .line 114
    aget v4, v35, v12

    add-int v25, v25, v4

    .line 115
    aget v4, v35, v16

    add-int v26, v26, v4

    .line 116
    aget v4, v35, v20

    add-int v27, v27, v4

    goto :goto_3

    .line 118
    :cond_2
    aget v4, v35, v12

    add-int v28, v28, v4

    .line 119
    aget v4, v35, v16

    add-int v29, v29, v4

    .line 120
    aget v4, v35, v20

    add-int v30, v30, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move/from16 v12, v33

    move/from16 v4, v34

    goto :goto_2

    :cond_3
    move/from16 v34, v4

    move/from16 v33, v12

    move v4, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v11, :cond_5

    .line 127
    aget v12, v2, v22

    aput v12, v6, v18

    .line 128
    aget v12, v2, v23

    aput v12, v7, v18

    .line 129
    aget v12, v2, v24

    aput v12, v8, v18

    sub-int v22, v22, v28

    sub-int v23, v23, v29

    sub-int v24, v24, v30

    sub-int v12, v4, v0

    add-int/2addr v12, v5

    .line 136
    rem-int/2addr v12, v5

    aget-object v12, v10, v12

    const/16 v17, 0x0

    .line 138
    aget v35, v12, v17

    sub-int v28, v28, v35

    const/16 v16, 0x1

    .line 139
    aget v35, v12, v16

    sub-int v29, v29, v35

    .line 140
    aget v35, v12, v20

    sub-int v30, v30, v35

    if-nez v15, :cond_4

    add-int v35, v1, v0

    move-object/from16 v36, v2

    add-int/lit8 v2, v35, 0x1

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v9, v1

    goto :goto_5

    :cond_4
    move-object/from16 v36, v2

    .line 146
    :goto_5
    aget v2, v9, v1

    add-int v2, v19, v2

    aget v2, v14, v2

    and-int v35, v2, v32

    shr-int/lit8 v35, v35, 0x10

    const/16 v17, 0x0

    .line 148
    aput v35, v12, v17

    and-int v35, v2, v31

    shr-int/lit8 v35, v35, 0x8

    const/16 v16, 0x1

    .line 149
    aput v35, v12, v16

    and-int/lit16 v2, v2, 0xff

    .line 150
    aput v2, v12, v20

    .line 152
    aget v2, v12, v17

    add-int v25, v25, v2

    .line 153
    aget v2, v12, v16

    add-int v26, v26, v2

    .line 154
    aget v2, v12, v20

    add-int v27, v27, v2

    add-int v22, v22, v25

    add-int v23, v23, v26

    add-int v24, v24, v27

    add-int/lit8 v4, v4, 0x1

    .line 160
    rem-int/2addr v4, v5

    .line 161
    rem-int v2, v4, v5

    aget-object v2, v10, v2

    const/4 v12, 0x0

    .line 163
    aget v17, v2, v12

    add-int v28, v28, v17

    const/16 v16, 0x1

    .line 164
    aget v17, v2, v16

    add-int v29, v29, v17

    .line 165
    aget v17, v2, v20

    add-int v30, v30, v17

    .line 167
    aget v35, v2, v12

    sub-int v25, v25, v35

    .line 168
    aget v12, v2, v16

    sub-int v26, v26, v12

    .line 169
    aget v2, v2, v20

    sub-int v27, v27, v2

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v36

    goto/16 :goto_4

    :cond_5
    move-object/from16 v36, v2

    add-int v19, v19, v11

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v21

    move/from16 v12, v33

    move/from16 v4, v34

    goto/16 :goto_1

    :cond_6
    move-object/from16 v21, v1

    move-object/from16 v36, v2

    move/from16 v34, v4

    move/from16 v33, v12

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v11, :cond_c

    neg-int v2, v0

    mul-int v3, v2, v11

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_7
    if-gt v2, v0, :cond_9

    move-object/from16 v37, v9

    const/4 v9, 0x0

    .line 180
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int v26, v17, v1

    add-int v17, v2, v0

    .line 182
    aget-object v27, v10, v17

    .line 184
    aget v17, v6, v26

    aput v17, v27, v9

    .line 185
    aget v9, v7, v26

    const/16 v16, 0x1

    aput v9, v27, v16

    .line 186
    aget v9, v8, v26

    aput v9, v27, v20

    .line 188
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v9, v13, v9

    .line 190
    aget v28, v6, v26

    mul-int v28, v28, v9

    add-int v4, v4, v28

    .line 191
    aget v28, v7, v26

    mul-int v28, v28, v9

    add-int v12, v12, v28

    .line 192
    aget v26, v8, v26

    mul-int v26, v26, v9

    add-int v15, v15, v26

    if-lez v2, :cond_7

    const/4 v9, 0x0

    .line 195
    aget v17, v27, v9

    add-int v18, v18, v17

    const/16 v16, 0x1

    .line 196
    aget v17, v27, v16

    add-int v19, v19, v17

    .line 197
    aget v17, v27, v20

    add-int v22, v22, v17

    :goto_8
    move/from16 v9, v34

    goto :goto_9

    :cond_7
    const/4 v9, 0x0

    const/16 v16, 0x1

    .line 199
    aget v26, v27, v9

    add-int v23, v23, v26

    .line 200
    aget v9, v27, v16

    add-int v24, v24, v9

    .line 201
    aget v9, v27, v20

    add-int v25, v25, v9

    goto :goto_8

    :goto_9
    if-ge v2, v9, :cond_8

    add-int/2addr v3, v11

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v34, v9

    move-object/from16 v9, v37

    goto :goto_7

    :cond_9
    move-object/from16 v37, v9

    move/from16 v9, v34

    move/from16 v26, v19

    move/from16 v27, v22

    move/from16 v2, v33

    const/4 v3, 0x0

    move/from16 v19, v0

    move/from16 v22, v18

    move/from16 v18, v15

    move v15, v12

    move v12, v4

    move v4, v1

    :goto_a
    if-ge v3, v2, :cond_b

    const/high16 v28, -0x1000000

    .line 213
    aget v29, v14, v4

    and-int v28, v28, v29

    aget v29, v36, v12

    shl-int/lit8 v29, v29, 0x10

    or-int v28, v28, v29

    aget v29, v36, v15

    shl-int/lit8 v29, v29, 0x8

    or-int v28, v28, v29

    aget v29, v36, v18

    or-int v28, v28, v29

    aput v28, v14, v4

    sub-int v12, v12, v23

    sub-int v15, v15, v24

    sub-int v18, v18, v25

    sub-int v28, v19, v0

    add-int v28, v28, v5

    .line 220
    rem-int v28, v28, v5

    aget-object v28, v10, v28

    const/16 v17, 0x0

    .line 222
    aget v29, v28, v17

    sub-int v23, v23, v29

    const/16 v16, 0x1

    .line 223
    aget v29, v28, v16

    sub-int v24, v24, v29

    .line 224
    aget v29, v28, v20

    sub-int v25, v25, v29

    if-nez v1, :cond_a

    add-int v0, v3, v13

    .line 227
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, v11

    aput v0, v37, v3

    .line 229
    :cond_a
    aget v0, v37, v3

    add-int/2addr v0, v1

    .line 231
    aget v29, v6, v0

    const/16 v17, 0x0

    aput v29, v28, v17

    .line 232
    aget v29, v7, v0

    const/16 v16, 0x1

    aput v29, v28, v16

    .line 233
    aget v0, v8, v0

    aput v0, v28, v20

    .line 235
    aget v0, v28, v17

    add-int v22, v22, v0

    .line 236
    aget v0, v28, v16

    add-int v26, v26, v0

    .line 237
    aget v0, v28, v20

    add-int v27, v27, v0

    add-int v12, v12, v22

    add-int v15, v15, v26

    add-int v18, v18, v27

    add-int/lit8 v19, v19, 0x1

    .line 243
    rem-int v19, v19, v5

    .line 244
    aget-object v0, v10, v19

    const/16 v17, 0x0

    .line 246
    aget v28, v0, v17

    add-int v23, v23, v28

    const/16 v16, 0x1

    .line 247
    aget v28, v0, v16

    add-int v24, v24, v28

    .line 248
    aget v28, v0, v20

    add-int v25, v25, v28

    .line 250
    aget v28, v0, v17

    sub-int v22, v22, v28

    .line 251
    aget v28, v0, v16

    sub-int v26, v26, v28

    .line 252
    aget v0, v0, v20

    sub-int v27, v27, v0

    add-int/2addr v4, v11

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, p2

    goto/16 :goto_a

    :cond_b
    const/16 v16, 0x1

    const/16 v17, 0x0

    add-int/lit8 v1, v1, 0x1

    move/from16 v33, v2

    move/from16 v34, v9

    move-object/from16 v9, v37

    move/from16 v0, p2

    goto/16 :goto_6

    :cond_c
    move/from16 v2, v33

    const-string v0, "pix"

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v14

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, v21

    move-object v4, v14

    move v6, v11

    move v9, v11

    move v10, v2

    .line 259
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v21
.end method
