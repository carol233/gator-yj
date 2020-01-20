.class Lcx/hell/android/pdfview/OpenFileActivity$12;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity;->showGotoPageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/pdfview/OpenFileActivity;

.field private final synthetic val$d:Landroid/app/Dialog;

.field private final synthetic val$pagecount:I


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    iput-object p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->val$d:Landroid/app/Dialog;

    iput p3, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->val$pagecount:I

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 780
    const/4 v0, -0x1

    .line 782
    .local v0, "pageNumber":I
    :try_start_0
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$13(Lcx/hell/android/pdfview/OpenFileActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 786
    :goto_0
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->val$d:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 787
    if-ltz v0, :cond_0

    iget v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->val$pagecount:I

    if-ge v0, v1, :cond_0

    .line 788
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->access$14(Lcx/hell/android/pdfview/OpenFileActivity;I)V

    .line 793
    :goto_1
    return-void

    .line 791
    :cond_0
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$12;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    const-string v2, "Invalid page number"

    invoke-static {v1, v2}, Lcx/hell/android/pdfview/OpenFileActivity;->access$15(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 783
    :catch_0
    move-exception v1

    goto :goto_0
.end method
