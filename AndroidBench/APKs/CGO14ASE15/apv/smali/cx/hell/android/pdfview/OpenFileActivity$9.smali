.class Lcx/hell/android/pdfview/OpenFileActivity$9;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$9;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 500
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$9;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v0}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v0

    invoke-virtual {v0}, Lcx/hell/android/lib/pagesview/PagesView;->zoomFit()V

    .line 501
    const/4 v0, 0x1

    return v0
.end method
