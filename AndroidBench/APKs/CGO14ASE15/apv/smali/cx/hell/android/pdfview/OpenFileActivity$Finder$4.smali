.class Lcx/hell/android/pdfview/OpenFileActivity$Finder$4;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dismissDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$4;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    iput-object p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$4;->val$dialog:Landroid/app/AlertDialog;

    .line 1173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1176
    return-void
.end method
