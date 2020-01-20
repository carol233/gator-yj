.class Lcx/hell/android/lib/pagesview/PagesView$3;
.super Ljava/lang/Object;
.source "PagesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/lib/pagesview/PagesView;->onRenderingException(Lcx/hell/android/lib/pagesview/RenderingException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/lib/pagesview/PagesView;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcx/hell/android/lib/pagesview/PagesView;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    iput-object p2, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->val$message:Ljava/lang/String;

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1065
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1066
    const-string v2, "Error"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1067
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1068
    const-string v2, "Ok"

    new-instance v3, Lcx/hell/android/lib/pagesview/PagesView$3$1;

    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lcx/hell/android/lib/pagesview/PagesView$3$1;-><init>(Lcx/hell/android/lib/pagesview/PagesView$3;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1073
    new-instance v2, Lcx/hell/android/lib/pagesview/PagesView$3$2;

    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$3;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, p0, v3}, Lcx/hell/android/lib/pagesview/PagesView$3$2;-><init>(Lcx/hell/android/lib/pagesview/PagesView$3;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1078
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1079
    .local v0, "errorMessageDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1080
    return-void
.end method
