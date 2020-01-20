.class public Lorg/sipdroid/sipua/ui/Activity2;
.super Landroid/app/Activity;
.source "Activity2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, "startActivity":Landroid/content/Intent;
    const-class v1, Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 32
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/Activity2;->startActivity(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Activity2;->finish()V

    .line 35
    return-void
.end method
