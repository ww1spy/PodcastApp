.class public Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImportOPMLFragment.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImportOPMLFragment"


# instance fields
.field private _FileNames:Landroid/widget/Spinner;

.field _FilesToImport:[Ljava/io/File;

.field private _ImportButton:Landroid/widget/Button;

.field private _Message:Landroid/widget/TextView;

.field private _OnImportListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 91
    new-instance v0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;

    invoke-direct {v0, p0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$2;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_OnImportListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;)Landroid/widget/Spinner;
    .locals 0

    .line 43
    iget-object p0, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FileNames:Landroid/widget/Spinner;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p2, 0x7f0c0078

    const/4 p3, 0x0

    .line 55
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090155

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_ImportButton:Landroid/widget/Button;

    const p2, 0x7f0901b4

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_Message:Landroid/widget/TextView;

    const p2, 0x7f090156

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FileNames:Landroid/widget/Spinner;

    .line 61
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_Message:Landroid/widget/TextView;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f1002ac

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 61
    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_ImportButton:Landroid/widget/Button;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_OnImportListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->beyondPodPublicStorageRootPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$1;

    invoke-direct {p3, p0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment$1;-><init>(Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;)V

    invoke-virtual {p2, p3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FilesToImport:[Ljava/io/File;

    .line 75
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FilesToImport:[Ljava/io/File;

    array-length p2, p2

    new-array p2, p2, [Ljava/lang/String;

    move p3, v3

    .line 76
    :goto_0
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FilesToImport:[Ljava/io/File;

    array-length v1, v1

    if-eq p3, v1, :cond_0

    .line 78
    iget-object v1, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FilesToImport:[Ljava/io/File;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 81
    :cond_0
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {p3, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p2, 0x1090009

    .line 83
    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 84
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FileNames:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    iget-object p2, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_ImportButton:Landroid/widget/Button;

    iget-object p3, p0, Lmobi/beyondpod/ui/views/impexp/ImportOPMLFragment;->_FilesToImport:[Ljava/io/File;

    array-length p3, p3

    if-lez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p1
.end method
