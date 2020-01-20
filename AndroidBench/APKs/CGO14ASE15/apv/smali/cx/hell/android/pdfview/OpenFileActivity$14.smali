.class Lcx/hell/android/pdfview/OpenFileActivity$14;
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
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$14;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    iput-object p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$14;->val$d:Landroid/app/Dialog;

    iput p3, p0, Lcx/hell/android/pdfview/OpenFileActivity$14;->val$pagecount:I

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 807
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$14;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 808
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$14;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    iget v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$14;->val$pagecount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$14(Lcx/hell/android/pdfview/OpenFileActivity;I)V

    .line 809
    return-void
.end method
