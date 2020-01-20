.class Lcx/hell/android/lib/pagesview/PagesView$1;
.super Ljava/lang/Object;
.source "PagesView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/lib/pagesview/PagesView;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/lib/pagesview/PagesView;


# direct methods
.method constructor <init>(Lcx/hell/android/lib/pagesview/PagesView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView$1;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 229
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView$1;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v0}, Lcx/hell/android/lib/pagesview/PagesView;->access$0(Lcx/hell/android/lib/pagesview/PagesView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/4 p3, 0x0

    .line 232
    :cond_0
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView$1;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v0, p3, p4}, Lcx/hell/android/lib/pagesview/PagesView;->access$1(Lcx/hell/android/lib/pagesview/PagesView;FF)V

    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 245
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method
