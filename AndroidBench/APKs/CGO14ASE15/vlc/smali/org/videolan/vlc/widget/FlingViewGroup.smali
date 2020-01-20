.class public Lorg/videolan/vlc/widget/FlingViewGroup;
.super Landroid/view/ViewGroup;
.source "FlingViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/FlingViewGroup"

.field private static final TOUCH_STATE_MOVE:I = 0x0

.field private static final TOUCH_STATE_REST:I = 0x1


# instance fields
.field private mCurrentView:I

.field private mInterceptTouchState:I

.field private mLastInterceptDownY:F

.field private mLastX:F

.field private final mMaximumVelocity:I

.field private final mScroller:Landroid/widget/Scroller;

.field private final mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 41
    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    .line 42
    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    .line 52
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    .line 57
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 58
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mMaximumVelocity:I

    .line 60
    return-void
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 217
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v0

    .line 218
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 219
    .local v1, "whichScreen":I
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    .line 220
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollTo(II)V

    .line 102
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->postInvalidate()V

    .line 104
    :cond_0
    return-void
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return v4

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 120
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 122
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 144
    :cond_2
    :goto_1
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    if-nez v2, :cond_5

    :goto_2
    move v4, v3

    goto :goto_0

    .line 124
    :pswitch_0
    iput v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastInterceptDownY:F

    .line 126
    iget-object v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_3
    iput v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    .line 128
    iput v3, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    goto :goto_1

    :cond_3
    move v2, v4

    .line 126
    goto :goto_3

    .line 131
    :pswitch_1
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    if-eqz v2, :cond_0

    .line 133
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastInterceptDownY:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 134
    iput v4, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    .line 135
    :cond_4
    iget v2, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 136
    iput v4, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mTouchState:I

    goto :goto_1

    .line 140
    :pswitch_2
    iput v3, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mInterceptTouchState:I

    goto :goto_1

    :cond_5
    move v3, v4

    .line 144
    goto :goto_2

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 66
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v3

    .line 67
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 68
    invoke-virtual {p0, v4}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 71
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 73
    add-int/2addr v1, v2

    .line 67
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 84
    .local v2, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 86
    .local v3, "widthMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_0

    .line 87
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "can only be used in EXACTLY mode."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v0

    .line 91
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 92
    invoke-virtual {p0, v1}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget v4, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    mul-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollTo(II)V

    .line 96
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    .line 210
    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    if-eqz v1, :cond_0

    .line 211
    int-to-float v1, p1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 212
    .local v0, "progress":F
    iget-object v1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v1, v0}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onSwitching(F)V

    .line 214
    .end local v0    # "progress":F
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v9, 0x3e8

    const/4 v7, 0x0

    .line 149
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 204
    :goto_0
    return v7

    .line 152
    :cond_0
    iget-object v8, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 154
    :cond_1
    iget-object v8, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 159
    .local v6, "x":F
    packed-switch v0, :pswitch_data_0

    .line 204
    :cond_2
    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    .line 161
    :pswitch_0
    iget-object v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_3

    .line 162
    iget-object v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 163
    :cond_3
    iput v6, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    goto :goto_1

    .line 166
    :pswitch_1
    iget v8, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    sub-float/2addr v8, v6

    float-to-int v2, v8

    .line 167
    .local v2, "delta":I
    iput v6, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mLastX:F

    .line 168
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v3

    .line 169
    .local v3, "scrollX":I
    if-gez v2, :cond_4

    .line 170
    if-lez v3, :cond_2

    .line 171
    neg-int v8, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8, v7}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollBy(II)V

    goto :goto_1

    .line 173
    :cond_4
    if-lez v2, :cond_2

    .line 174
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v9

    sub-int v1, v8, v9

    .line 176
    .local v1, "availableToScroll":I
    if-lez v1, :cond_2

    .line 177
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p0, v8, v7}, Lorg/videolan/vlc/widget/FlingViewGroup;->scrollBy(II)V

    goto :goto_1

    .line 183
    .end local v1    # "availableToScroll":I
    .end local v2    # "delta":I
    .end local v3    # "scrollX":I
    :pswitch_2
    iget-object v4, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 184
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    iget v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v9, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 185
    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v5, v7

    .line 187
    .local v5, "velocityX":I
    if-le v5, v9, :cond_5

    iget v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    if-lez v7, :cond_5

    .line 188
    iget v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    .line 196
    :goto_2
    iget-object v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_2

    .line 197
    iget-object v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->recycle()V

    .line 198
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 189
    :cond_5
    const/16 v7, -0x3e8

    if-ge v5, v7, :cond_6

    iget v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_6

    .line 191
    iget v7, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToScreen(I)V

    goto :goto_2

    .line 193
    :cond_6
    invoke-direct {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->snapToDestination()V

    goto :goto_2

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnViewSwitchedListener(Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .prologue
    .line 233
    iput-object p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    .line 234
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 111
    iput p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 112
    return-void
.end method

.method public snapToScreen(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 223
    iput p1, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mCurrentView:I

    .line 224
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 225
    .local v3, "delta":I
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 226
    invoke-virtual {p0}, Lorg/videolan/vlc/widget/FlingViewGroup;->invalidate()V

    .line 227
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/videolan/vlc/widget/FlingViewGroup;->mViewSwitchListener:Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;

    invoke-interface {v0, p1}, Lorg/videolan/vlc/widget/FlingViewGroup$ViewSwitchListener;->onSwitched(I)V

    .line 230
    :cond_0
    return-void
.end method
