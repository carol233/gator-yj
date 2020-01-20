.class public Lorg/sipdroid/sipua/phone/CallCard;
.super Landroid/widget/FrameLayout;
.source "CallCard.java"

# interfaces
.implements Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/CallCard$1;
    }
.end annotation


# static fields
.field static final CALLCARD_SIDE_MARGIN_LANDSCAPE:I = 0x32

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/CallCard"

.field static final MAIN_CALLCARD_MIN_HEIGHT_LANDSCAPE:I = 0xc8

.field static final TITLE_TEXT_SIZE_LANDSCAPE:F = 22.0f


# instance fields
.field public mElapsedTime:Landroid/widget/Chronometer;

.field private mLabel:Landroid/widget/TextView;

.field private mLowerTitle:Landroid/widget/TextView;

.field private mLowerTitleIcon:Landroid/widget/ImageView;

.field private mLowerTitleViewGroup:Landroid/view/ViewGroup;

.field private mMainCallCard:Landroid/view/ViewGroup;

.field private mMenuButtonHint:Landroid/widget/TextView;

.field private mName:Landroid/widget/TextView;

.field private mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

.field private mOtherCallOnHoldName:Landroid/widget/TextView;

.field private mOtherCallOnHoldStatus:Landroid/widget/TextView;

.field private mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

.field private mOtherCallOngoingName:Landroid/widget/TextView;

.field private mOtherCallOngoingStatus:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

.field private mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

.field private mTextColorConnected:I

.field private mTextColorEnded:I

.field private mTextColorOnHold:I

.field private mUpperTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v1, 0x7f030000

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 126
    new-instance v1, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v1}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v1, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    .line 127
    return-void
.end method

.method private getCallFailedString(Lorg/sipdroid/sipua/phone/Call;)Ljava/lang/String;
    .locals 3
    .param p1, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    .line 633
    const v0, 0x7f060081

    .line 635
    .local v0, "resID":I
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 636
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    .line 638
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTitleForCallCard(Lorg/sipdroid/sipua/phone/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    .line 483
    const/4 v1, 0x0

    .line 484
    .local v1, "retVal":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v2

    .line 485
    .local v2, "state":Lorg/sipdroid/sipua/phone/Call$State;
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 489
    .local v0, "context":Landroid/content/Context;
    sget-object v3, Lorg/sipdroid/sipua/phone/CallCard$1;->$SwitchMap$org$sipdroid$sipua$phone$Call$State:[I

    invoke-virtual {v2}, Lorg/sipdroid/sipua/phone/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 521
    :goto_0
    :pswitch_0
    return-object v1

    .line 496
    :pswitch_1
    const v3, 0x7f06007f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 497
    goto :goto_0

    .line 500
    :pswitch_2
    const v3, 0x7f060083

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 503
    goto :goto_0

    .line 507
    :pswitch_3
    const v3, 0x7f06007e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    goto :goto_0

    .line 512
    :pswitch_4
    const v3, 0x7f060080

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    goto :goto_0

    .line 516
    :pswitch_5
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/phone/CallCard;->getCallFailedString(Lorg/sipdroid/sipua/phone/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 989
    const-string v0, "PHONE/CallCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallCard "

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

    .line 990
    return-void
.end method

.method private setMainCallCardBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 919
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 920
    return-void
.end method

.method private setOnHoldInfoAreaBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 933
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 934
    return-void
.end method

.method private setOngoingInfoAreaBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 926
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 927
    return-void
.end method

.method private setSideMargins(Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "margin"    # I

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 980
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 981
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 982
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 983
    return-void
.end method

.method private static final showCachedImage(Landroid/widget/ImageView;Lorg/sipdroid/sipua/phone/CallerInfo;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;

    .prologue
    .line 880
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 886
    :goto_0
    const/4 v0, 0x1

    .line 888
    :goto_1
    return v0

    .line 884
    :cond_0
    const v0, 0x7f020088

    invoke-static {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showCallConnected()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method private showCallConnecting()V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method private showCallEnded()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method private showCallIncoming()V
    .locals 0

    .prologue
    .line 649
    return-void
.end method

.method private showCallOnhold()V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "resource"    # I

    .prologue
    .line 893
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 894
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 899
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    return-void
.end method

.method private updateCardTitleWidgets(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V
    .locals 7
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;
    .param p2, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 422
    invoke-virtual {p2}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v1

    .line 430
    .local v1, "state":Lorg/sipdroid/sipua/phone/Call$State;
    invoke-direct {p0, p2}, Lorg/sipdroid/sipua/phone/CallCard;->getTitleForCallCard(Lorg/sipdroid/sipua/phone/Call;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "cardTitle":Ljava/lang/String;
    sget-object v2, Lorg/sipdroid/sipua/phone/Call$State;->ACTIVE:Lorg/sipdroid/sipua/phone/Call$State;

    if-ne v1, v2, :cond_1

    .line 438
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 439
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleIcon:Landroid/widget/ImageView;

    const v3, 0x7f02005c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 440
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    iget v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorConnected:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 442
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    iget v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorConnected:I

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 443
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    iget-wide v3, p2, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-virtual {v2, v3, v4}, Landroid/widget/Chronometer;->setBase(J)V

    .line 444
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    .line 445
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    sget-object v2, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    if-ne v1, v2, :cond_3

    .line 455
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 456
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleIcon:Landroid/widget/ImageView;

    const v3, 0x7f02005a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    iget v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    iget v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorEnded:I

    invoke-virtual {v2, v3}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 460
    iget-wide v2, p2, Lorg/sipdroid/sipua/phone/Call;->base:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 461
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    iget-wide v3, p2, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-virtual {v2, v3, v4}, Landroid/widget/Chronometer;->setBase(J)V

    .line 462
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    .line 463
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    .line 466
    :goto_1
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    :cond_2
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v6}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1

    .line 469
    :cond_3
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 471
    sget-object v2, Lorg/sipdroid/sipua/phone/Call$State;->HOLDING:Lorg/sipdroid/sipua/phone/Call$State;

    if-eq v1, v2, :cond_0

    .line 472
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v2, v6}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDisplayForPerson(Lorg/sipdroid/sipua/phone/CallerInfo;ZZLorg/sipdroid/sipua/phone/Call;)V
    .locals 11
    .param p1, "info"    # Lorg/sipdroid/sipua/phone/CallerInfo;
    .param p2, "isPrivateNumber"    # Z
    .param p3, "isTemporary"    # Z
    .param p4, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    const v2, 0x7f060084

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 679
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lorg/sipdroid/sipua/phone/CallerInfo;)V

    .line 680
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 683
    const/4 v8, 0x0

    .line 684
    .local v8, "displayNumber":Ljava/lang/String;
    const/4 v9, 0x0

    .line 685
    .local v9, "label":Ljava/lang/String;
    const/4 v6, 0x0

    .line 687
    .local v6, "personUri":Landroid/net/Uri;
    if-eqz p1, :cond_4

    .line 701
    iget-object v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 714
    .local v10, "name":Ljava/lang/String;
    :goto_0
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 720
    :goto_1
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 733
    if-eqz p3, :cond_5

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_5

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 743
    :cond_1
    :goto_2
    if-eqz v8, :cond_7

    .line 744
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    :goto_3
    if-eqz v9, :cond_8

    .line 752
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    :goto_4
    return-void

    .line 707
    .end local v10    # "name":Ljava/lang/String;
    :cond_2
    iget-object v10, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    .restart local v10    # "name":Ljava/lang/String;
    goto :goto_0

    .line 710
    .end local v10    # "name":Ljava/lang/String;
    :cond_3
    iget-object v10, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    .line 711
    .restart local v10    # "name":Ljava/lang/String;
    iget-object v8, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 712
    iget-object v9, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneLabel:Ljava/lang/String;

    goto :goto_0

    .line 717
    .end local v10    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "name":Ljava/lang/String;
    goto :goto_1

    .line 735
    :cond_5
    if-eqz p1, :cond_6

    iget v0, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->photoResource:I

    if-eqz v0, :cond_6

    .line 736
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v2, p1, Lorg/sipdroid/sipua/phone/CallerInfo;->photoResource:I

    invoke-static {v0, v2}, Lorg/sipdroid/sipua/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 737
    :cond_6
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lorg/sipdroid/sipua/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lorg/sipdroid/sipua/phone/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    move-object v0, p1

    move-object v2, p0

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lorg/sipdroid/sipua/phone/CallerInfo;ILorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto :goto_2

    .line 748
    :cond_7
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 756
    :cond_8
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private updateForegroundCall(Lorg/sipdroid/sipua/phone/Phone;)V
    .locals 3
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;

    .prologue
    .line 207
    invoke-interface {p1}, Lorg/sipdroid/sipua/phone/Phone;->getForegroundCall()Lorg/sipdroid/sipua/phone/Call;

    move-result-object v1

    .line 208
    .local v1, "fgCall":Lorg/sipdroid/sipua/phone/Call;
    invoke-interface {p1}, Lorg/sipdroid/sipua/phone/Phone;->getBackgroundCall()Lorg/sipdroid/sipua/phone/Call;

    move-result-object v0

    .line 210
    .local v0, "bgCall":Lorg/sipdroid/sipua/phone/Call;
    invoke-virtual {v1}, Lorg/sipdroid/sipua/phone/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/sipdroid/sipua/phone/Call;->hasConnections()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    move-object v1, v0

    .line 221
    const/4 v0, 0x0

    .line 224
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/sipdroid/sipua/phone/CallCard;->displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 225
    invoke-virtual {p0, p1, v0}, Lorg/sipdroid/sipua/phone/CallCard;->displayOnHoldCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/sipdroid/sipua/phone/CallCard;->displayOngoingCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 227
    return-void
.end method

.method private updatePhotoForCallState(Lorg/sipdroid/sipua/phone/Call;)V
    .locals 12
    .param p1, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 772
    const/4 v5, 0x0

    .line 776
    .local v5, "photoImageResource":I
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v6

    .line 777
    .local v6, "state":Lorg/sipdroid/sipua/phone/Call$State;
    sget-object v7, Lorg/sipdroid/sipua/phone/CallCard$1;->$SwitchMap$org$sipdroid$sipua$phone$Call$State:[I

    invoke-virtual {v6}, Lorg/sipdroid/sipua/phone/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 820
    const/4 v2, 0x0

    .line 822
    .local v2, "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Call;->getEarliestConnection()Lorg/sipdroid/sipua/phone/Connection;

    move-result-object v3

    .line 823
    .local v3, "conn":Lorg/sipdroid/sipua/phone/Connection;
    if-eqz v3, :cond_0

    .line 824
    invoke-virtual {v3}, Lorg/sipdroid/sipua/phone/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    .line 825
    .local v4, "o":Ljava/lang/Object;
    instance-of v7, v4, Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v7, :cond_5

    move-object v2, v4

    .line 826
    check-cast v2, Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 833
    .end local v4    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 834
    iget v5, v2, Lorg/sipdroid/sipua/phone/CallerInfo;->photoResource:I

    .line 848
    :cond_1
    if-nez v5, :cond_6

    .line 850
    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v2}, Lorg/sipdroid/sipua/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lorg/sipdroid/sipua/phone/CallerInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v7

    if-ne v7, v11, :cond_2

    .line 852
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget-object v9, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2, v7, v8, v9, v10}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 854
    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 866
    .end local v2    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    .end local v3    # "conn":Lorg/sipdroid/sipua/phone/Connection;
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 868
    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v5}, Lorg/sipdroid/sipua/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 870
    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v11}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 872
    :cond_3
    :goto_2
    return-void

    .line 782
    :pswitch_0
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Call;->getEarliestConnection()Lorg/sipdroid/sipua/phone/Connection;

    move-result-object v0

    .line 785
    .local v0, "c":Lorg/sipdroid/sipua/phone/Connection;
    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Connection;->getDisconnectCause()Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    move-result-object v1

    .line 787
    .local v1, "cause":Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
    sget-object v7, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->BUSY:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    if-eq v1, v7, :cond_4

    sget-object v7, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->CONGESTION:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    if-ne v1, v7, :cond_2

    .line 789
    :cond_4
    const v5, 0x7f020083

    goto :goto_1

    .line 800
    .end local v0    # "c":Lorg/sipdroid/sipua/phone/Connection;
    .end local v1    # "cause":Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
    :pswitch_1
    const v5, 0x7f020085

    .line 801
    goto :goto_1

    .line 827
    .restart local v2    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    .restart local v3    # "conn":Lorg/sipdroid/sipua/phone/Connection;
    .restart local v4    # "o":Ljava/lang/Object;
    :cond_5
    instance-of v7, v4, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    if-eqz v7, :cond_0

    .line 828
    check-cast v4, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    .end local v4    # "o":Ljava/lang/Object;
    iget-object v2, v4, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    goto :goto_0

    .line 859
    :cond_6
    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v5}, Lorg/sipdroid/sipua/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 860
    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v7, v10}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_2

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateRingingCall(Lorg/sipdroid/sipua/phone/Phone;)V
    .locals 3
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;

    .prologue
    .line 232
    invoke-interface {p1}, Lorg/sipdroid/sipua/phone/Phone;->getRingingCall()Lorg/sipdroid/sipua/phone/Call;

    move-result-object v2

    .line 233
    .local v2, "ringingCall":Lorg/sipdroid/sipua/phone/Call;
    invoke-interface {p1}, Lorg/sipdroid/sipua/phone/Phone;->getForegroundCall()Lorg/sipdroid/sipua/phone/Call;

    move-result-object v1

    .line 234
    .local v1, "fgCall":Lorg/sipdroid/sipua/phone/Call;
    invoke-interface {p1}, Lorg/sipdroid/sipua/phone/Phone;->getBackgroundCall()Lorg/sipdroid/sipua/phone/Call;

    move-result-object v0

    .line 236
    .local v0, "bgCall":Lorg/sipdroid/sipua/phone/Call;
    invoke-virtual {p0, p1, v2}, Lorg/sipdroid/sipua/phone/CallCard;->displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 237
    invoke-virtual {p0, p1, v0}, Lorg/sipdroid/sipua/phone/CallCard;->displayOnHoldCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 238
    invoke-virtual {p0, p1, v1}, Lorg/sipdroid/sipua/phone/CallCard;->displayOngoingCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 239
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 907
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v0, p1}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->handleCallCardTouchEvent(Landroid/view/MotionEvent;)V

    .line 908
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V
    .locals 12
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;
    .param p2, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    .line 249
    invoke-virtual {p2}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v8

    .line 250
    .local v8, "state":Lorg/sipdroid/sipua/phone/Call$State;
    const/4 v0, 0x0

    .line 253
    .local v0, "callCardBackgroundResid":I
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const/4 v5, 0x1

    .line 255
    .local v5, "landscapeMode":Z
    :goto_0
    sget-object v9, Lorg/sipdroid/sipua/phone/CallCard$1;->$SwitchMap$org$sipdroid$sipua$phone$Call$State:[I

    invoke-virtual {v8}, Lorg/sipdroid/sipua/phone/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 310
    const-string v9, "PHONE/CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_1
    invoke-direct {p0, p1, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updateCardTitleWidgets(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 319
    invoke-virtual {p2}, Lorg/sipdroid/sipua/phone/Call;->getEarliestConnection()Lorg/sipdroid/sipua/phone/Connection;

    move-result-object v2

    .line 321
    .local v2, "conn":Lorg/sipdroid/sipua/phone/Connection;
    const/4 v4, 0x0

    .line 323
    .local v4, "isPrivateNumber":Z
    if-nez v2, :cond_6

    .line 329
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v9, v4, v10, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updateDisplayForPerson(Lorg/sipdroid/sipua/phone/CallerInfo;ZZLorg/sipdroid/sipua/phone/Call;)V

    .line 377
    :goto_2
    invoke-direct {p0, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updatePhotoForCallState(Lorg/sipdroid/sipua/phone/Call;)V

    .line 380
    invoke-direct {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->setMainCallCardBackgroundResource(I)V

    .line 382
    return-void

    .line 253
    .end local v2    # "conn":Lorg/sipdroid/sipua/phone/Connection;
    .end local v4    # "isPrivateNumber":Z
    .end local v5    # "landscapeMode":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 257
    .restart local v5    # "landscapeMode":Z
    :pswitch_0
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallCard;->showCallConnected()V

    .line 259
    if-eqz v5, :cond_1

    const v0, 0x7f020075

    .line 265
    :goto_3
    goto :goto_1

    .line 259
    :cond_1
    const v0, 0x7f020076

    goto :goto_3

    .line 268
    :pswitch_1
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallCard;->showCallOnhold()V

    .line 270
    if-eqz v5, :cond_2

    const v0, 0x7f02007b

    .line 273
    :goto_4
    goto :goto_1

    .line 270
    :cond_2
    const v0, 0x7f02007c

    goto :goto_4

    .line 276
    :pswitch_2
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->reset()V

    .line 277
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallCard;->showCallEnded()V

    .line 279
    if-eqz v5, :cond_3

    const v0, 0x7f020078

    .line 283
    :goto_5
    goto :goto_1

    .line 279
    :cond_3
    const v0, 0x7f020079

    goto :goto_5

    .line 287
    :pswitch_3
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallCard;->showCallConnecting()V

    .line 289
    if-eqz v5, :cond_4

    const v0, 0x7f02007e

    .line 293
    :goto_6
    goto :goto_1

    .line 289
    :cond_4
    const v0, 0x7f02007f

    goto :goto_6

    .line 297
    :pswitch_4
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallCard;->showCallIncoming()V

    .line 299
    if-eqz v5, :cond_5

    const v0, 0x7f02007e

    .line 302
    :goto_7
    goto :goto_1

    .line 299
    :cond_5
    const v0, 0x7f02007f

    goto :goto_7

    .line 306
    :pswitch_5
    const-string v9, "PHONE/CallCard"

    const-string v10, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    .restart local v2    # "conn":Lorg/sipdroid/sipua/phone/Connection;
    .restart local v4    # "isPrivateNumber":Z
    :cond_6
    const/4 v7, 0x1

    .line 336
    .local v7, "runQuery":Z
    invoke-virtual {v2}, Lorg/sipdroid/sipua/phone/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v6

    .line 337
    .local v6, "o":Ljava/lang/Object;
    instance-of v9, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_7

    .line 338
    iget-object v10, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    move-object v9, v6

    check-cast v9, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    iget-object v9, v9, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-virtual {v10, v9}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lorg/sipdroid/sipua/phone/CallerInfo;)Z

    move-result v7

    .line 344
    :goto_8
    if-eqz v7, :cond_9

    .line 346
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v2, p0, p2}, Lorg/sipdroid/sipua/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lorg/sipdroid/sipua/phone/Connection;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 348
    .local v3, "info":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    iget-object v10, v3, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    iget-boolean v9, v3, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_9
    invoke-direct {p0, v10, v4, v9, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updateDisplayForPerson(Lorg/sipdroid/sipua/phone/CallerInfo;ZZLorg/sipdroid/sipua/phone/Call;)V

    goto :goto_2

    .line 341
    .end local v3    # "info":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    :cond_7
    iget-object v9, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhotoTracker:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v9, v2}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lorg/sipdroid/sipua/phone/Connection;)Z

    move-result v7

    goto :goto_8

    .line 348
    .restart local v3    # "info":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    :cond_8
    const/4 v9, 0x0

    goto :goto_9

    .line 354
    .end local v3    # "info":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    :cond_9
    instance-of v9, v6, Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v9, :cond_a

    move-object v1, v6

    .line 355
    check-cast v1, Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 357
    .local v1, "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {p0, v1, v9, v10, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updateDisplayForPerson(Lorg/sipdroid/sipua/phone/CallerInfo;ZZLorg/sipdroid/sipua/phone/Call;)V

    goto/16 :goto_2

    .line 358
    .end local v1    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    :cond_a
    instance-of v9, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    if-eqz v9, :cond_b

    .line 359
    check-cast v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    .end local v6    # "o":Ljava/lang/Object;
    iget-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 361
    .restart local v1    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v1, v9, v10, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updateDisplayForPerson(Lorg/sipdroid/sipua/phone/CallerInfo;ZZLorg/sipdroid/sipua/phone/Call;)V

    goto/16 :goto_2

    .line 363
    .end local v1    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    .restart local v6    # "o":Ljava/lang/Object;
    :cond_b
    const-string v9, "PHONE/CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public displayOnHoldCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V
    .locals 6
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;
    .param p2, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    const/16 v5, 0x8

    .line 533
    if-nez p2, :cond_0

    .line 534
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 575
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p2}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v2

    .line 539
    .local v2, "state":Lorg/sipdroid/sipua/phone/Call$State;
    sget-object v3, Lorg/sipdroid/sipua/phone/CallCard$1;->$SwitchMap$org$sipdroid$sipua$phone$Call$State:[I

    invoke-virtual {v2}, Lorg/sipdroid/sipua/phone/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 572
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 551
    :pswitch_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    invoke-static {v3, p2, p0, v4}, Lorg/sipdroid/sipua/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lorg/sipdroid/sipua/phone/Call;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 553
    .local v0, "info":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v0, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/sipdroid/sipua/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    const v3, 0x7f02007a

    invoke-direct {p0, v3}, Lorg/sipdroid/sipua/phone/CallCard;->setOnHoldInfoAreaBackgroundResource(I)V

    .line 561
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    iget v4, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorOnHold:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldStatus:Landroid/widget/TextView;

    iget v4, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorOnHold:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public displayOngoingCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V
    .locals 6
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;
    .param p2, "call"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    const/16 v5, 0x8

    .line 586
    if-nez p2, :cond_0

    .line 587
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    :goto_0
    return-void

    .line 591
    :cond_0
    invoke-virtual {p2}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v2

    .line 592
    .local v2, "state":Lorg/sipdroid/sipua/phone/Call$State;
    sget-object v3, Lorg/sipdroid/sipua/phone/CallCard$1;->$SwitchMap$org$sipdroid$sipua$phone$Call$State:[I

    invoke-virtual {v2}, Lorg/sipdroid/sipua/phone/Call$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 626
    :pswitch_0
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 605
    :pswitch_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    invoke-static {v3, p2, p0, v4}, Lorg/sipdroid/sipua/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lorg/sipdroid/sipua/phone/Call;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 607
    .local v0, "info":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v0, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/sipdroid/sipua/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const v3, 0x7f020074

    invoke-direct {p0, v3}, Lorg/sipdroid/sipua/phone/CallCard;->setOngoingInfoAreaBackgroundResource(I)V

    .line 615
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    iget v4, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorConnected:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 616
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingStatus:Landroid/widget/TextView;

    iget v4, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorConnected:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 618
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getMenuButtonHint()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 143
    const/high16 v0, 0x7f080000

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    .line 144
    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    .line 145
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    .line 148
    const v0, 0x7f080001

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleViewGroup:Landroid/view/ViewGroup;

    .line 150
    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitle:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLowerTitleIcon:Landroid/widget/ImageView;

    .line 152
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    .line 155
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorConnected:I

    .line 156
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorEnded:I

    .line 157
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mTextColorOnHold:I

    .line 160
    const v0, 0x7f08000d

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 161
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 166
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingName:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingStatus:Landroid/widget/TextView;

    .line 168
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldName:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldStatus:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mMenuButtonHint:Landroid/widget/TextView;

    .line 173
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "iView"    # Landroid/widget/ImageView;
    .param p4, "imagePresent"    # Z

    .prologue
    .line 412
    if-eqz p2, :cond_0

    .line 413
    check-cast p2, Lorg/sipdroid/sipua/phone/Call;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lorg/sipdroid/sipua/phone/CallCard;->updatePhotoForCallState(Lorg/sipdroid/sipua/phone/Call;)V

    .line 415
    :cond_0
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lorg/sipdroid/sipua/phone/CallerInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;

    .prologue
    const/4 v2, 0x0

    .line 391
    instance-of v1, p2, Lorg/sipdroid/sipua/phone/Call;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 396
    check-cast v0, Lorg/sipdroid/sipua/phone/Call;

    .line 397
    .local v0, "call":Lorg/sipdroid/sipua/phone/Call;
    invoke-direct {p0, p3, v2, v2, v0}, Lorg/sipdroid/sipua/phone/CallCard;->updateDisplayForPerson(Lorg/sipdroid/sipua/phone/CallerInfo;ZZLorg/sipdroid/sipua/phone/Call;)V

    .line 398
    invoke-direct {p0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->updatePhotoForCallState(Lorg/sipdroid/sipua/phone/Call;)V

    .line 404
    .end local v0    # "call":Lorg/sipdroid/sipua/phone/Call;
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 402
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p3, v1}, Lorg/sipdroid/sipua/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallCard;->showCallConnected()V

    .line 134
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public setSlidingCardManager(Lorg/sipdroid/sipua/phone/SlidingCardManager;)V
    .locals 0
    .param p1, "slidingCardManager"    # Lorg/sipdroid/sipua/phone/SlidingCardManager;

    .prologue
    .line 912
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/CallCard;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    .line 913
    return-void
.end method

.method public update(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0, p2, v0, v0}, Lorg/sipdroid/sipua/phone/CallCard;->setPadding(IIII)V

    .line 109
    return-void
.end method

.method public updateForLandscapeMode()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 956
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 961
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mMainCallCard:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/sipua/phone/CallCard;->setSideMargins(Landroid/view/ViewGroup;I)V

    .line 962
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOngoingInfoArea:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/sipua/phone/CallCard;->setSideMargins(Landroid/view/ViewGroup;I)V

    .line 963
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mOtherCallOnHoldInfoArea:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v2}, Lorg/sipdroid/sipua/phone/CallCard;->setSideMargins(Landroid/view/ViewGroup;I)V

    .line 966
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallCard;->mUpperTitle:Landroid/widget/TextView;

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 967
    return-void
.end method

.method updateState(Lorg/sipdroid/sipua/phone/Phone;)V
    .locals 4
    .param p1, "phone"    # Lorg/sipdroid/sipua/phone/Phone;

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/sipdroid/sipua/phone/Phone;->getState()Lorg/sipdroid/sipua/phone/Phone$State;

    move-result-object v0

    .line 183
    .local v0, "state":Lorg/sipdroid/sipua/phone/Phone$State;
    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$State;->RINGING:Lorg/sipdroid/sipua/phone/Phone$State;

    if-ne v0, v1, :cond_0

    .line 186
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/phone/CallCard;->updateRingingCall(Lorg/sipdroid/sipua/phone/Phone;)V

    .line 202
    :goto_0
    return-void

    .line 187
    :cond_0
    sget-object v1, Lorg/sipdroid/sipua/phone/Phone$State;->OFFHOOK:Lorg/sipdroid/sipua/phone/Phone$State;

    if-ne v0, v1, :cond_1

    .line 190
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/phone/CallCard;->updateForegroundCall(Lorg/sipdroid/sipua/phone/Phone;)V

    goto :goto_0

    .line 199
    :cond_1
    const-string v1, "PHONE/CallCard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallCard updateState: overall Phone state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/phone/CallCard;->updateForegroundCall(Lorg/sipdroid/sipua/phone/Phone;)V

    goto :goto_0
.end method
