.class Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity$Finder;->showFindResults(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

.field private final synthetic val$findResults:Ljava/util/List;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    iput-object p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->val$findResults:Ljava/util/List;

    iput p3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->val$page:I

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1190
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$6(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1191
    .local v0, "fn":I
    :goto_0
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v2

    iget v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->val$page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcx/hell/android/pdfview/OpenFileActivity;->access$4(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/Integer;)V

    .line 1192
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcx/hell/android/pdfview/OpenFileActivity;->access$5(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/Integer;)V

    .line 1193
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v2

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v2

    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->val$findResults:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcx/hell/android/lib/pagesview/PagesView;->setFindResults(Ljava/util/List;)V

    .line 1194
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v2

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcx/hell/android/lib/pagesview/PagesView;->setFindMode(Z)V

    .line 1195
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v2

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToFindResult(I)V

    .line 1196
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v2

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity;->access$6(Lcx/hell/android/pdfview/OpenFileActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1197
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v1

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v1

    invoke-virtual {v1}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1198
    return-void

    .line 1190
    .end local v0    # "fn":I
    :cond_0
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;->val$findResults:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method
