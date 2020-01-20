.class public Lorg/videolan/vlc/gui/CompatErrorActivity;
.super Landroid/app/Activity;
.source "CompatErrorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/CompatErrorActivity$AsyncHttpRequest;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/CompatErrorActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v3, 0x7f03002e

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/CompatErrorActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lorg/videolan/vlc/Util;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/CompatErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "runtimeError"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/CompatErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/CompatErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    const v3, 0x7f060082

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/CompatErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "tvo":Landroid/widget/TextView;
    const v3, 0x7f0b006b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 48
    .end local v2    # "tvo":Landroid/widget/TextView;
    :cond_0
    const v3, 0x7f060083

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/CompatErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 49
    .local v1, "tv":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/CompatErrorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method
