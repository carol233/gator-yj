.class Lcx/hell/android/lib/pagesview/PagesView$3$1;
.super Ljava/lang/Object;
.source "PagesView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/lib/pagesview/PagesView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcx/hell/android/lib/pagesview/PagesView$3;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcx/hell/android/lib/pagesview/PagesView$3;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView$3$1;->this$1:Lcx/hell/android/lib/pagesview/PagesView$3;

    iput-object p2, p0, Lcx/hell/android/lib/pagesview/PagesView$3$1;->val$activity:Landroid/app/Activity;

    .line 1068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1070
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView$3$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1071
    return-void
.end method
