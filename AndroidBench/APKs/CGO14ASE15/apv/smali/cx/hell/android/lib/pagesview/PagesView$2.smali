.class Lcx/hell/android/lib/pagesview/PagesView$2;
.super Ljava/lang/Object;
.source "PagesView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


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

.field private final synthetic val$openFileActivity:Lcx/hell/android/pdfview/OpenFileActivity;

.field private final synthetic val$pagesView:Lcx/hell/android/lib/pagesview/PagesView;


# direct methods
.method constructor <init>(Lcx/hell/android/lib/pagesview/PagesView;Lcx/hell/android/pdfview/OpenFileActivity;Lcx/hell/android/lib/pagesview/PagesView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    iput-object p2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->val$openFileActivity:Lcx/hell/android/pdfview/OpenFileActivity;

    iput-object p3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->val$pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 257
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$2(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 282
    :goto_0
    return v2

    .line 259
    :pswitch_0
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$3(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v5, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v5}, Lcx/hell/android/lib/pagesview/PagesView;->access$4(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v5

    invoke-static {v4, v5}, Lcx/hell/android/lib/pagesview/PagesView;->access$5(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 261
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v5, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v5}, Lcx/hell/android/lib/pagesview/PagesView;->access$6(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v5

    iget-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v6}, Lcx/hell/android/lib/pagesview/PagesView;->access$3(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v6

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v6}, Lcx/hell/android/lib/pagesview/PagesView;->access$7(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v4, v5}, Lcx/hell/android/lib/pagesview/PagesView;->access$8(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 262
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v5, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v5}, Lcx/hell/android/lib/pagesview/PagesView;->access$3(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v5

    invoke-static {v4, v5}, Lcx/hell/android/lib/pagesview/PagesView;->access$9(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 263
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v4}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 264
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v4, v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$10(Lcx/hell/android/lib/pagesview/PagesView;I)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$11(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v0

    .line 268
    .local v0, "oldLeft":I
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$7(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v1

    .line 269
    .local v1, "oldZoom":I
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$11(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v6}, Lcx/hell/android/lib/pagesview/PagesView;->access$12(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$5(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 270
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$6(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v6}, Lcx/hell/android/lib/pagesview/PagesView;->access$13(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$8(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 271
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3, v7}, Lcx/hell/android/lib/pagesview/PagesView;->zoom(F)V

    .line 272
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3, v1}, Lcx/hell/android/lib/pagesview/PagesView;->access$10(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 273
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3, v0}, Lcx/hell/android/lib/pagesview/PagesView;->access$14(Lcx/hell/android/lib/pagesview/PagesView;I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "oldLeft":I
    .end local v1    # "oldZoom":I
    :pswitch_1
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$11(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v6}, Lcx/hell/android/lib/pagesview/PagesView;->access$12(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$5(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 278
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v3}, Lcx/hell/android/lib/pagesview/PagesView;->access$6(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v6}, Lcx/hell/android/lib/pagesview/PagesView;->access$13(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$8(Lcx/hell/android/lib/pagesview/PagesView;I)V

    .line 279
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3, v7}, Lcx/hell/android/lib/pagesview/PagesView;->zoom(F)V

    goto/16 :goto_0

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v2}, Lcx/hell/android/lib/pagesview/PagesView;->access$15(Lcx/hell/android/lib/pagesview/PagesView;)J

    move-result-wide v2

    const-wide/16 v4, 0x258

    add-long/2addr v2, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v1

    .line 296
    :cond_1
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v2}, Lcx/hell/android/lib/pagesview/PagesView;->access$16(Lcx/hell/android/lib/pagesview/PagesView;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 297
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->val$openFileActivity:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-virtual {v2}, Lcx/hell/android/pdfview/OpenFileActivity;->showZoom()V

    .line 298
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->val$pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v2}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 301
    :cond_2
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v2}, Lcx/hell/android/lib/pagesview/PagesView;->access$17(Lcx/hell/android/lib/pagesview/PagesView;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 302
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v2}, Lcx/hell/android/lib/pagesview/PagesView;->access$17(Lcx/hell/android/lib/pagesview/PagesView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 306
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x5

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_3
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v1}, Lcx/hell/android/lib/pagesview/PagesView;->access$18(Lcx/hell/android/lib/pagesview/PagesView;)Lcx/hell/android/pdfview/Actions;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView$2;->this$0:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-static {v4}, Lcx/hell/android/lib/pagesview/PagesView;->access$13(Lcx/hell/android/lib/pagesview/PagesView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    const v1, 0xf4244

    :goto_1
    invoke-virtual {v3, v1}, Lcx/hell/android/pdfview/Actions;->getAction(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    move-result v1

    goto :goto_0

    :cond_4
    const v1, 0xf4245

    goto :goto_1
.end method
