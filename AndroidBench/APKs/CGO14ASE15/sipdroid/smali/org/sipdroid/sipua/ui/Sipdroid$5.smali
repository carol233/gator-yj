.class Lorg/sipdroid/sipua/ui/Sipdroid$5;
.super Ljava/lang/Object;
.source "Sipdroid.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 228
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$5;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "myIntent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$5;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    invoke-virtual {v1, v0}, Lorg/sipdroid/sipua/ui/Sipdroid;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method
