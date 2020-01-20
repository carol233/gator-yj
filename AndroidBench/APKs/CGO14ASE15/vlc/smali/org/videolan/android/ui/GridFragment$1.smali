.class Lorg/videolan/android/ui/GridFragment$1;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/android/ui/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/android/ui/GridFragment;


# direct methods
.method constructor <init>(Lorg/videolan/android/ui/GridFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lorg/videolan/android/ui/GridFragment$1;->this$0:Lorg/videolan/android/ui/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment$1;->this$0:Lorg/videolan/android/ui/GridFragment;

    iget-object v0, v0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/videolan/android/ui/GridFragment$1;->this$0:Lorg/videolan/android/ui/GridFragment;

    iget-object v1, v1, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->focusableViewAvailable(Landroid/view/View;)V

    .line 51
    return-void
.end method
