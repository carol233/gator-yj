.class Lorg/sipdroid/sipua/ui/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Settings;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Settings;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v5, 0x0

    .line 453
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sdcard/Sipdroid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Settings;->access$200(Lorg/sipdroid/sipua/ui/Settings;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Settings;->access$000(Lorg/sipdroid/sipua/ui/Settings;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, "profile":Ljava/io/File;
    const/4 v1, 0x0

    .line 456
    .local v1, "rv":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 459
    :cond_0
    if-eqz v1, :cond_1

    .line 460
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v2

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    const v4, 0x7f060067

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v2

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Settings$3;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    const v4, 0x7f060066

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
