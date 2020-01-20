.class public Lorg/videolan/vlc/gui/DebugLogActivity;
.super Landroid/app/Activity;
.source "DebugLogActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DebugLogActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/DebugLogActivity;
    .param p1, "x1"    # Lorg/videolan/vlc/LibVLC;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/DebugLogActivity;->updateTextView(Lorg/videolan/vlc/LibVLC;)V

    return-void
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/DebugLogActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/DebugLogActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/videolan/vlc/gui/DebugLogActivity;->copyTextToClipboard()V

    return-void
.end method

.method private copyTextToClipboard()V
    .locals 2

    .prologue
    .line 96
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 97
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    const v1, 0x7f06006e

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method private updateTextView(Lorg/videolan/vlc/LibVLC;)V
    .locals 2
    .param p1, "instance"    # Lorg/videolan/vlc/LibVLC;

    .prologue
    .line 101
    const v1, 0x7f06006e

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lorg/videolan/vlc/LibVLC;->getBufferContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v6, 0x7f030025

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->setContentView(I)V

    .line 44
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 47
    .local v3, "instance":Lorg/videolan/vlc/LibVLC;
    const v6, 0x7f06006a

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 48
    .local v4, "startLog":Landroid/widget/Button;
    const v6, 0x7f06006b

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 50
    .local v5, "stopLog":Landroid/widget/Button;
    invoke-virtual {v3}, Lorg/videolan/vlc/LibVLC;->isDebugBuffering()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 51
    invoke-virtual {v3}, Lorg/videolan/vlc/LibVLC;->isDebugBuffering()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$1;

    invoke-direct {v6, p0, v3, v4, v5}, Lorg/videolan/vlc/gui/DebugLogActivity$1;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$2;

    invoke-direct {v6, p0, v3, v5, v4}, Lorg/videolan/vlc/gui/DebugLogActivity$2;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;Landroid/widget/Button;Landroid/widget/Button;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v6, 0x7f06006c

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 72
    .local v0, "clearLog":Landroid/widget/Button;
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$3;

    invoke-direct {v6, p0, v3}, Lorg/videolan/vlc/gui/DebugLogActivity$3;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;Lorg/videolan/vlc/LibVLC;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0, v3}, Lorg/videolan/vlc/gui/DebugLogActivity;->updateTextView(Lorg/videolan/vlc/LibVLC;)V

    .line 82
    const v6, 0x7f06006d

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 83
    .local v1, "copyToClipboard":Landroid/widget/Button;
    const v6, 0x7f06006e

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/DebugLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 84
    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    :cond_0
    new-instance v6, Lorg/videolan/vlc/gui/DebugLogActivity$4;

    invoke-direct {v6, p0}, Lorg/videolan/vlc/gui/DebugLogActivity$4;-><init>(Lorg/videolan/vlc/gui/DebugLogActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .end local v0    # "clearLog":Landroid/widget/Button;
    .end local v1    # "copyToClipboard":Landroid/widget/Button;
    .end local v3    # "instance":Lorg/videolan/vlc/LibVLC;
    .end local v4    # "startLog":Landroid/widget/Button;
    .end local v5    # "stopLog":Landroid/widget/Button;
    :goto_1
    return-void

    .line 45
    :catch_0
    move-exception v2

    .local v2, "e":Lorg/videolan/vlc/LibVlcException;
    goto :goto_1

    .line 50
    .end local v2    # "e":Lorg/videolan/vlc/LibVlcException;
    .restart local v3    # "instance":Lorg/videolan/vlc/LibVLC;
    .restart local v4    # "startLog":Landroid/widget/Button;
    .restart local v5    # "stopLog":Landroid/widget/Button;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method
