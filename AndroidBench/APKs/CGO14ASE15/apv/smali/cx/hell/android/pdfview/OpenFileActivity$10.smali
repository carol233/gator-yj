.class Lcx/hell/android/pdfview/OpenFileActivity$10;
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
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$10;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 506
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$10;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v0}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v0

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$10;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$12(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/pdfview/Actions;

    move-result-object v1

    const v2, 0xf4241

    invoke-virtual {v1, v2}, Lcx/hell/android/pdfview/Actions;->getAction(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    .line 507
    return-void
.end method
