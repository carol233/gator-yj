.class public Lorg/sipdroid/sipua/phone/SlidingCardManager;
.super Ljava/lang/Object;
.source "SlidingCardManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/SlidingCardManager"

.field static final SLIDE_DOWN_HINT_TOP_LANDSCAPE:I = 0xa0

.field static final SLIDE_UP_HINT_TOP_LANDSCAPE:I = 0x58


# instance fields
.field first:Z

.field height:I

.field private mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

.field private mCallEndedState:Z

.field private mCardAtTop:Z

.field private mCardPreferredX:I

.field private mCardPreferredY:I

.field private mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mPhone:Lorg/sipdroid/sipua/phone/Phone;

.field private mSlideDown:Landroid/view/ViewGroup;

.field private mSlideDownHint:Landroid/widget/TextView;

.field private mSlideInProgress:Z

.field private mSlideUp:Landroid/view/ViewGroup;

.field private mSlideUpHint:Landroid/widget/TextView;

.field private mTempLocation:[I

.field mTouchDownTime:J

.field private mTouchDownY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideInProgress:Z

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTempLocation:[I

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->first:Z

    .line 113
    return-void
.end method

.method private abortSlide()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideInProgress:Z

    .line 592
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredX:I

    iget v2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lorg/sipdroid/sipua/phone/CallCard;->update(IIII)V

    .line 593
    return-void
.end method

.method private finishSuccessfulSlide()V
    .locals 2

    .prologue
    .line 516
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideInProgress:Z

    .line 529
    const/4 v0, 0x0

    .line 533
    .local v0, "phoneStateAboutToChange":Z
    iget-boolean v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardAtTop:Z

    if-eqz v1, :cond_1

    .line 537
    iget-object v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->reject()V

    .line 541
    const/4 v0, 0x1

    .line 566
    :goto_0
    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->updateCardPreferredPosition()V

    .line 568
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->updateCardSlideHints()V

    .line 573
    iget-object v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 575
    :cond_0
    return-void

    .line 547
    :cond_1
    iget-object v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->answer()V

    .line 551
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 600
    const-string v0, "PHONE/SlidingCardManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void
.end method

.method private setSlideHints(II)V
    .locals 4
    .param p1, "upHintResId"    # I
    .param p2, "downHintResId"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 329
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideUp:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideUpHint:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideDown:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 333
    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideDownHint:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 334
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 329
    goto :goto_0

    :cond_3
    move v1, v2

    .line 332
    goto :goto_1
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    .line 150
    return-void
.end method

.method handleCallCardTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v7, 0x3e8

    .line 347
    iget-object v5, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v5}, Lorg/sipdroid/sipua/ui/InCallScreen;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    :cond_0
    const-string v5, "PHONE/SlidingCardManager"

    const-string v6, "handleCallCardTouchEvent: InCallScreen gone; ignoring touch..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    :pswitch_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 357
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    .line 358
    .local v3, "xAbsolute":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 360
    .local v4, "yAbsolute":I
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->isSlideInProgress()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 362
    .local v1, "now":J
    iget-wide v5, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTouchDownTime:J

    sub-long v5, v1, v5

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    sget-boolean v5, Lorg/sipdroid/sipua/ui/InCallScreen;->pactive:Z

    if-nez v5, :cond_2

    sget-wide v5, Lorg/sipdroid/sipua/ui/InCallScreen;->pactivetime:J

    sub-long v5, v1, v5

    cmp-long v5, v5, v7

    if-gez v5, :cond_3

    .line 364
    :cond_2
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->abortSlide()V

    goto :goto_0

    .line 366
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 378
    :pswitch_1
    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->stopSliding(I)V

    goto :goto_0

    .line 372
    :pswitch_2
    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->updateWhileSliding(I)V

    goto :goto_0

    .line 387
    :pswitch_3
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->abortSlide()V

    goto :goto_0

    .line 391
    .end local v1    # "now":J
    :cond_4
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 394
    :pswitch_4
    invoke-virtual {p0, v3, v4}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->startSliding(II)V

    goto :goto_0

    .line 366
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 391
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public init(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/ui/InCallScreen;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;
    .param p2, "inCallScreen"    # Lorg/sipdroid/sipua/ui/InCallScreen;
    .param p3, "mainFrame"    # Landroid/view/ViewGroup;

    .prologue
    .line 126
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mPhone:Lorg/sipdroid/sipua/phone/Phone;

    .line 127
    iput-object p2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    .line 128
    iput-object p3, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    .line 131
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideUp:Landroid/view/ViewGroup;

    .line 132
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideUpHint:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideDown:Landroid/view/ViewGroup;

    .line 134
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mInCallScreen:Lorg/sipdroid/sipua/ui/InCallScreen;

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideDownHint:Landroid/widget/TextView;

    .line 136
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/sipua/phone/CallCard;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    .line 137
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    invoke-virtual {v0, p0}, Lorg/sipdroid/sipua/phone/CallCard;->setSlidingCardManager(Lorg/sipdroid/sipua/phone/SlidingCardManager;)V

    .line 138
    return-void
.end method

.method public isSlideInProgress()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideInProgress:Z

    return v0
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->first:Z

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->first:Z

    .line 609
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->showPopup()V

    .line 611
    :cond_0
    return-void
.end method

.method setPhone(Lorg/sipdroid/sipua/phone/Phone;)V
    .locals 0
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mPhone:Lorg/sipdroid/sipua/phone/Phone;

    .line 142
    return-void
.end method

.method public showPopup()V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->updateCardPreferredPosition()V

    .line 165
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->updateCardSlideHints()V

    .line 167
    return-void
.end method

.method startSliding(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 416
    iget-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallEndedState:Z

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideInProgress:Z

    .line 422
    iput p2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTouchDownY:I

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTouchDownTime:J

    goto :goto_0
.end method

.method stopSliding(I)V
    .locals 4
    .param p1, "y"    # I

    .prologue
    .line 467
    iget v2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTouchDownY:I

    sub-int v1, p1, v2

    .line 477
    .local v1, "totalSlideAmount":I
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    iget v3, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    sub-int v0, v2, v3

    .line 484
    .local v0, "slideDistanceRequired":I
    add-int/lit8 v0, v0, -0x1e

    .line 490
    iget-boolean v2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardAtTop:Z

    if-nez v2, :cond_0

    neg-int v1, v1

    .line 492
    :cond_0
    if-lt v1, v0, :cond_1

    .line 495
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->finishSuccessfulSlide()V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->abortSlide()V

    goto :goto_0
.end method

.method public updateCardPreferredPosition()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 196
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_0

    .line 268
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    iget-object v9, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTempLocation:[I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 220
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTempLocation:[I

    aget v2, v8, v7

    .line 221
    .local v2, "mainFrameX":I
    const/4 v3, 0x0

    .line 226
    .local v3, "mainFrameY":I
    const/4 v5, 0x0

    .line 230
    .local v5, "popupTopPosY":I
    iget v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    if-nez v8, :cond_1

    .line 231
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    invoke-virtual {v8}, Lorg/sipdroid/sipua/phone/CallCard;->getHeight()I

    move-result v8

    iput v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    .line 233
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideUp:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 236
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 237
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideUp:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideDown:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .restart local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 241
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideDown:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    add-int/lit8 v8, v8, 0xa

    iput v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    .line 244
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x0

    iget v9, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    sub-int v4, v8, v9

    .line 246
    .local v4, "popupBottomPosY":I
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-eqz v8, :cond_4

    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v8}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v8

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    if-eq v8, v9, :cond_4

    .line 250
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v8}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v8

    sget-object v9, Lorg/sipdroid/sipua/phone/Call$State;->INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

    if-ne v8, v9, :cond_2

    move v0, v6

    .line 251
    .local v0, "hasRingingCall":Z
    :goto_1
    if-nez v0, :cond_3

    :goto_2
    iput-boolean v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardAtTop:Z

    .line 252
    iput-boolean v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallEndedState:Z

    .line 259
    .end local v0    # "hasRingingCall":Z
    :goto_3
    iput v2, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredX:I

    .line 260
    iget-boolean v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardAtTop:Z

    if-eqz v6, :cond_5

    :goto_4
    iput v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredY:I

    .line 267
    iget-object v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredX:I

    iget v8, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredY:I

    invoke-virtual {v6, v7, v8, v10, v10}, Lorg/sipdroid/sipua/phone/CallCard;->update(IIII)V

    goto :goto_0

    :cond_2
    move v0, v7

    .line 250
    goto :goto_1

    .restart local v0    # "hasRingingCall":Z
    :cond_3
    move v6, v7

    .line 251
    goto :goto_2

    .line 256
    .end local v0    # "hasRingingCall":Z
    :cond_4
    iput-boolean v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardAtTop:Z

    .line 257
    iput-boolean v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallEndedState:Z

    goto :goto_3

    :cond_5
    move v7, v4

    .line 260
    goto :goto_4
.end method

.method public updateCardSlideHints()V
    .locals 5

    .prologue
    .line 282
    iget-boolean v3, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mSlideInProgress:Z

    if-eqz v3, :cond_0

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_0
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-eqz v3, :cond_1

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v3}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v3

    sget-object v4, Lorg/sipdroid/sipua/phone/Call$State;->INCOMING:Lorg/sipdroid/sipua/phone/Call$State;

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 296
    .local v0, "hasRingingCall":Z
    :goto_1
    const/4 v2, 0x0

    .line 297
    .local v2, "slideUpHint":I
    const/4 v1, 0x0

    .line 298
    .local v1, "slideDownHint":I
    if-eqz v0, :cond_2

    .line 299
    const v2, 0x7f060086

    .line 303
    :goto_2
    invoke-direct {p0, v2, v1}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->setSlideHints(II)V

    goto :goto_0

    .line 294
    .end local v0    # "hasRingingCall":Z
    .end local v1    # "slideDownHint":I
    .end local v2    # "slideUpHint":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 301
    .restart local v0    # "hasRingingCall":Z
    .restart local v1    # "slideDownHint":I
    .restart local v2    # "slideUpHint":I
    :cond_2
    const v1, 0x7f060085

    goto :goto_2
.end method

.method updateWhileSliding(I)V
    .locals 9
    .param p1, "y"    # I

    .prologue
    const/4 v8, -0x1

    .line 431
    iget v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTouchDownY:I

    sub-int v5, p1, v6

    .line 438
    .local v5, "totalSlideAmount":I
    iget-object v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    iget-object v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTempLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 439
    iget-object v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mTempLocation:[I

    const/4 v7, 0x0

    aget v0, v6, v7

    .line 440
    .local v0, "mainFrameX":I
    const/4 v1, 0x0

    .line 444
    .local v1, "mainFrameY":I
    const/4 v4, 0x0

    .line 448
    .local v4, "popupTopPosY":I
    iget-object v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x0

    iget v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->height:I

    sub-int v3, v6, v7

    .line 451
    .local v3, "popupBottomPosY":I
    iget v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredY:I

    add-int v2, v6, v5

    .line 455
    .local v2, "newCardTop":I
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 459
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget v7, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager;->mCardPreferredX:I

    invoke-virtual {v6, v7, v2, v8, v8}, Lorg/sipdroid/sipua/phone/CallCard;->update(IIII)V

    .line 460
    return-void

    .line 456
    :cond_1
    if-le v2, v3, :cond_0

    move v2, v3

    goto :goto_0
.end method
