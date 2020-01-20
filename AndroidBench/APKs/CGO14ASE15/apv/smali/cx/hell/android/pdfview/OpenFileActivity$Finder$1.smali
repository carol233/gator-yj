.class Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/OpenFileActivity$Finder;->createDialog()V
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
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1142
    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v4}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v4

    const v5, 0x7f070012

    invoke-virtual {v4, v5}, Lcx/hell/android/pdfview/OpenFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%1$s"

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v6}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$1(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v4}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v4

    const v5, 0x7f070013

    invoke-virtual {v4, v5}, Lcx/hell/android/pdfview/OpenFileActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%1$d"

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v6}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$2(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2$d"

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v6}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$3(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1144
    .local v2, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v4}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1146
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1147
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1148
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1149
    const v5, 0x7f070011

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1150
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1151
    .local v1, "dialog":Landroid/app/AlertDialog;
    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1152
    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;->this$1:Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-static {v4, v1}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->access$4(Lcx/hell/android/pdfview/OpenFileActivity$Finder;Landroid/app/AlertDialog;)V

    .line 1153
    return-void
.end method
