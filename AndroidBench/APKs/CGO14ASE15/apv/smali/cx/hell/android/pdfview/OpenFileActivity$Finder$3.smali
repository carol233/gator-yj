.class Lcx/hell/android/pdfview/OpenFileActivity$Finder$3;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity$Finder;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$3;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    .line 1165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$3;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$5(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1168
    return-void
.end method
