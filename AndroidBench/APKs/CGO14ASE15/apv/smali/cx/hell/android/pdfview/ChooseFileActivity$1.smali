.class Lcx/hell/android/pdfview/ChooseFileActivity$1;
.super Ljava/lang/Object;
.source "ChooseFileActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/ChooseFileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/pdfview/ChooseFileActivity;


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/ChooseFileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/pdfview/ChooseFileActivity$1;->this$0:Lcx/hell/android/pdfview/ChooseFileActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
