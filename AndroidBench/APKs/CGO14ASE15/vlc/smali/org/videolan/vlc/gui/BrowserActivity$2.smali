.class Lorg/videolan/vlc/gui/BrowserActivity$2;
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


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/BrowserActivity;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lorg/videolan/vlc/gui/BrowserActivity$2;->this$0:Lorg/videolan/vlc/gui/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "x"    # Landroid/content/DialogInterface;
    .param p2, "y"    # I

    .prologue
    .line 188
    return-void
.end method
