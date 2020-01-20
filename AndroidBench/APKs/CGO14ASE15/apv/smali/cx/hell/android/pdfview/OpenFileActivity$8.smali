.class Lcx/hell/android/pdfview/OpenFileActivity$8;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity;->setZoomButtonHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/pdfview/OpenFileActivity;


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$8;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 495
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$8;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v0}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v0

    invoke-virtual {v0}, Lcx/hell/android/lib/pagesview/PagesView;->zoomWidth()V

    .line 496
    return-void
.end method
