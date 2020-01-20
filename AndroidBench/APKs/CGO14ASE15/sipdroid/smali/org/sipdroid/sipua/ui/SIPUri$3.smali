.class Lorg/sipdroid/sipua/ui/SIPUri$3;
.super Ljava/lang/Object;
.source "SIPUri.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$fitems:[Ljava/lang/String;

.field final synthetic val$t:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/SIPUri;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->this$0:Lorg/sipdroid/sipua/ui/SIPUri;

    iput-object p2, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->val$fitems:[Ljava/lang/String;

    iput-object p3, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->val$t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->val$fitems:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->this$0:Lorg/sipdroid/sipua/ui/SIPUri;

    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2}, Lorg/sipdroid/sipua/ui/SIPUri;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->this$0:Lorg/sipdroid/sipua/ui/SIPUri;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->val$t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/SIPUri;->call(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->val$t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/PSTN;->callPSTN(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/SIPUri$3;->this$0:Lorg/sipdroid/sipua/ui/SIPUri;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/SIPUri;->finish()V

    goto :goto_0
.end method
