.class Lorg/videolan/vlc/gui/BrowserActivity$3;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/BrowserActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/BrowserActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$3;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/BrowserActivity$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/Util;->addCustomDirectory(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lorg/videolan/vlc/gui/BrowserActivity$3;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/BrowserActivity;->refresh()V

    .line 195
    return-void
.end method
