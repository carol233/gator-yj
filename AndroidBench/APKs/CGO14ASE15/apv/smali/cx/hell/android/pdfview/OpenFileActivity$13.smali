.class Lcx/hell/android/pdfview/OpenFileActivity$13;
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


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$13;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    iput-object p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$13;->val$d:Landroid/app/Dialog;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 799
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$13;->val$d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 800
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$13;->this$0:Lcx/hell/android/pdfview/OpenFileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$14(Lcx/hell/android/pdfview/OpenFileActivity;I)V

    .line 801
    return-void
.end method
