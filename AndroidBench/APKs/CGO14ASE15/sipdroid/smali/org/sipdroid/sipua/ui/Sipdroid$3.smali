.class Lorg/sipdroid/sipua/ui/Sipdroid$3;
.super Ljava/lang/Object;
.source "Sipdroid.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Sipdroid;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Sipdroid;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$3;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 211
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Sipdroid$3;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$3;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box2:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/Sipdroid;->call_menu(Landroid/widget/AutoCompleteTextView;)V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
