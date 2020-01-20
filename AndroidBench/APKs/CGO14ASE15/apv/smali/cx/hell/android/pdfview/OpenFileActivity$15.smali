.class Lcx/hell/android/pdfview/OpenFileActivity$15;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity;->showFindDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/pdfview/OpenFileActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$15;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    iput-object p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$15;->val$dialog:Landroid/app/Dialog;

    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 910
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$15;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$16(Lcx/hell/android/pdfview/OpenFileActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$15;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v1, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->access$17(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 913
    return-void
.end method
