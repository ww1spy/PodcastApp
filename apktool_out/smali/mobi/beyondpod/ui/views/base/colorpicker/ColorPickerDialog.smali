.class public Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;
.super Landroid/app/DialogFragment;
.source "ColorPickerDialog.java"

# interfaces
.implements Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;


# static fields
.field protected static final KEY_COLORS:Ljava/lang/String; = "colors"

.field protected static final KEY_COLUMNS:Ljava/lang/String; = "columns"

.field protected static final KEY_SELECTED_COLOR:Ljava/lang/String; = "selected_color"

.field protected static final KEY_TITLE_ID:Ljava/lang/String; = "title_id"


# instance fields
.field protected mAlertDialog:Landroid/app/AlertDialog;

.field protected mColors:[I

.field protected mColumns:I

.field protected mListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

.field private mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

.field private mProgress:Landroid/widget/ProgressBar;

.field protected mSelectedColor:I

.field protected mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const v0, 0x7f100112

    .line 31
    iput v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mTitleResId:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    return-void
.end method

.method private refreshPalette()V
    .locals 3

    .line 155
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    iget v2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-virtual {v0, v1, v2}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->drawPalette([II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColors()[I
    .locals 1

    .line 161
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    return-object v0
.end method

.method public getSelectedColor()I
    .locals 1

    .line 165
    iget v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    return v0
.end method

.method public onColorSelected(I)V
    .locals 2

    .line 98
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    .line 105
    invoke-interface {v0, p1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;->onColorSelected(I)V

    .line 108
    :cond_1
    iget v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq p1, v0, :cond_2

    .line 109
    iput p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 111
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    iget v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-virtual {p1, v0, v1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->drawPalette([II)V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 64
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "columns"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColumns:I

    .line 65
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "colors"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    .line 66
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selected_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "colors"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    const-string v0, "selected_color"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 77
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x102000d

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const v1, 0x7f090098

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    iput-object v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    .line 82
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    iget v2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColumns:I

    invoke-virtual {v1, v2, p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->init(ILmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V

    .line 84
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->showPaletteView()V

    .line 88
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mTitleResId:I

    .line 89
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 93
    iget-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "colors"

    .line 171
    iget-object v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "selected_color"

    .line 172
    iget v1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public setArguments(I[III)V
    .locals 2

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title_id"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "columns"

    .line 48
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "colors"

    .line 49
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "selected_color"

    .line 50
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public setColors([I)V
    .locals 1

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    if-eq v0, p1, :cond_0

    .line 142
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    .line 143
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->refreshPalette()V

    :cond_0
    return-void
.end method

.method public setColors([II)V
    .locals 1

    .line 133
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq v0, p2, :cond_1

    .line 134
    :cond_0
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mColors:[I

    .line 135
    iput p2, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 136
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->refreshPalette()V

    :cond_1
    return-void
.end method

.method public setOnColorSelectedListener(Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mListener:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerSwatch$OnColorSelectedListener;

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 148
    iget v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    if-eq v0, p1, :cond_0

    .line 149
    iput p1, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mSelectedColor:I

    .line 150
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->refreshPalette()V

    :cond_0
    return-void
.end method

.method public showPaletteView()V
    .locals 2

    .line 118
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 120
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->refreshPalette()V

    .line 121
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showProgressBarView()V
    .locals 2

    .line 126
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerDialog;->mPalette:Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmobi/beyondpod/ui/views/base/colorpicker/ColorPickerPalette;->setVisibility(I)V

    :cond_0
    return-void
.end method
