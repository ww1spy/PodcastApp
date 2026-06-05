.class public Lmobi/beyondpod/ui/views/FileViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "FileViewActivity.java"


# static fields
.field private static final MENU_EMAIL_SUPPORT:I = 0x1

.field private static final MENU_SCROLL_TO_END:I = 0x0

.field private static final MENU_TRUNCATE_LOG:I = 0x2


# instance fields
.field private _CurrentFile:Ljava/lang/String;

.field private _EditText:Landroid/widget/TextView;

.field private _textScroller:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmobi/beyondpod/ui/views/FileViewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 49
    iget-object p0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lmobi/beyondpod/ui/views/FileViewActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 49
    iget-object p0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_textScroller:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private scrollToEnd()V
    .locals 2

    .line 141
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_textScroller:Landroid/widget/ScrollView;

    new-instance v1, Lmobi/beyondpod/ui/views/FileViewActivity$1;

    invoke-direct {v1, p0}, Lmobi/beyondpod/ui/views/FileViewActivity$1;-><init>(Lmobi/beyondpod/ui/views/FileViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x2

    .line 61
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/FileViewActivity;->supportRequestWindowFeature(I)Z

    .line 62
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    const v0, 0x7f0c0069

    .line 65
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/FileViewActivity;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/FileViewActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 69
    invoke-virtual {v0, v1, v1}, Landroid/support/v7/app/ActionBar;->setDisplayOptions(II)V

    .line 70
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, -0xbbbbbc

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0900d0

    .line 73
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_textScroller:Landroid/widget/ScrollView;

    const v0, 0x7f090281

    .line 74
    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/FileViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 77
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 79
    iget-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    if-nez p1, :cond_3

    .line 86
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/FileViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    .line 93
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/beyondpod/ui/views/FileViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1000

    .line 99
    new-array v2, v2, [B

    .line 100
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 113
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 114
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 116
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v2, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "scrollToEnd"

    .line 119
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/FileViewActivity;->scrollToEnd()V

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v3, v2, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 126
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was not found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :catch_1
    :cond_2
    :goto_1
    const-string v0, "title"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "title"

    .line 134
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmobi/beyondpod/ui/views/FileViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .line 167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 180
    :pswitch_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->truncateLogFile(Ljava/io/File;)V

    .line 181
    iget-object p1, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_EditText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v1

    :pswitch_1
    const-string v3, "support@beyondpod.mobi"

    const-string v4, "BeyondPod Log File"

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmobi/beyondpod/rsscore/helpers/CoreHelper;->dumpEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nIMPORTANT! If you are sending a log for an issue you have previously reported, please include a bit of background about the issue or a reference (BeyondPod forum user name, twitter handle, support ticket number etc.) so we can match this log to the issue you reported."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    const/4 v7, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lmobi/beyondpod/ui/commands/CommandManager;->cmdSendEMail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    goto :goto_0

    .line 170
    :pswitch_2
    invoke-direct {p0}, Lmobi/beyondpod/ui/views/FileViewActivity;->scrollToEnd()V

    :goto_0
    const/4 p1, 0x0

    return p1

    .line 185
    :cond_0
    invoke-virtual {p0}, Lmobi/beyondpod/ui/views/FileViewActivity;->finish()V

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 153
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const-string v0, "View Bottom"

    const/4 v1, 0x0

    .line 155
    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v0, "Email Support"

    const/4 v2, 0x1

    .line 156
    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 158
    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->logFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lmobi/beyondpod/rsscore/Configuration;->syncLogFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmobi/beyondpod/ui/views/FileViewActivity;->_CurrentFile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Truncate Log File"

    const/4 v3, 0x2

    .line 159
    invoke-interface {p1, v1, v3, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return v2
.end method
