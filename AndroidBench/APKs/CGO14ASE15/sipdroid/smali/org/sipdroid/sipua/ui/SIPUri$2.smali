.class Lorg/sipdroid/sipua/ui/SIPUri$2;
.super Ljava/lang/Object;
.source "SIPUri.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/SIPUri;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/SIPUri;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/SIPUri;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/SIPUri$2;->this$0:Lorg/sipdroid/sipua/ui/SIPUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 112
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/SIPUri$2;->this$0:Lorg/sipdroid/sipua/ui/SIPUri;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/SIPUri;->finish()V

    .line 113
    return-void
.end method
