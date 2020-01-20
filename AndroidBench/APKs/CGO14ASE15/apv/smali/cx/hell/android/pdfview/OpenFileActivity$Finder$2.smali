.class Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity$Finder;->updateDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    iput p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;->val$page:I

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1159
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v1

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Lcx/hell/android/pdfview/OpenFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%1$d"

    iget v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;->val$page:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%2$d"

    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v3}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$3(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v1}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$5(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1161
    return-void
.end method
