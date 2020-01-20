.class public Lorg/sipdroid/sipua/ui/InCallScreen;
.super Lorg/sipdroid/sipua/ui/CallScreen;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final PROXIMITY_THRESHOLD:F = 5.0f

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static pactive:Z

.field public static pactivetime:J

.field public static started:Z


# instance fields
.field final MSG_ACCEPT:I

.field final MSG_ANSWER:I

.field final MSG_ANSWER_SPEAKER:I

.field final MSG_BACK:I

.field final MSG_POPUP:I

.field final MSG_TICK:I

.field final SCREEN_OFF_TIMEOUT:I

.field ccPhone:Lorg/sipdroid/sipua/phone/Phone;

.field first:Z

.field haptic:I

.field hapticset:Z

.field mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

.field mCodec:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field mDialerDrawer:Landroid/widget/SlidingDrawer;

.field mDigits:Landroid/widget/EditText;

.field mHandler:Landroid/os/Handler;

.field mInCallPanel:Landroid/view/ViewGroup;

.field mMainFrame:Landroid/view/ViewGroup;

.field mStats:Landroid/widget/TextView;

.field oldtimeout:I

.field proximitySensor:Landroid/hardware/Sensor;

.field running:Z

.field sensorManager:Landroid/hardware/SensorManager;

.field t:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/CallScreen;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->MSG_ANSWER:I

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->MSG_ANSWER_SPEAKER:I

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->MSG_BACK:I

    .line 68
    const/4 v0, 0x4

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->MSG_TICK:I

    .line 69
    const/4 v0, 0x5

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->MSG_POPUP:I

    .line 70
    const/4 v0, 0x6

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->MSG_ACCEPT:I

    .line 72
    const/16 v0, 0x2ee0

    iput v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->SCREEN_OFF_TIMEOUT:I

    .line 158
    iput-object p0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    .line 240
    new-instance v0, Lorg/sipdroid/sipua/ui/InCallScreen$2;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/InCallScreen$2;-><init>(Lorg/sipdroid/sipua/ui/InCallScreen;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public answer()V
    .locals 3

    .prologue
    .line 420
    new-instance v0, Lorg/sipdroid/sipua/ui/InCallScreen$4;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/InCallScreen$4;-><init>(Lorg/sipdroid/sipua/ui/InCallScreen;)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/InCallScreen$4;->start()V

    .line 425
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->ACTIVE:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 427
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/sipdroid/sipua/phone/Call;->base:J

    .line 428
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/sipua/phone/CallCard;->displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 429
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 430
    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->showPopup()V

    .line 433
    :cond_0
    return-void
.end method

.method appendDigit(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 383
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 384
    return-void
.end method

.method public initInCallScreen()V
    .locals 14

    .prologue
    const/16 v13, 0x2a

    const/16 v12, 0x23

    const/16 v11, 0x8

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 302
    const v6, 0x7f08002d

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 303
    const v6, 0x7f08002c

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 304
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030002

    iget-object v8, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 307
    .local v1, "callCardLayout":Landroid/view/View;
    const v6, 0x7f080011

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lorg/sipdroid/sipua/phone/CallCard;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    .line 308
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    invoke-virtual {v6}, Lorg/sipdroid/sipua/phone/CallCard;->reset()V

    .line 310
    new-instance v6, Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-direct {v6}, Lorg/sipdroid/sipua/phone/SlidingCardManager;-><init>()V

    sput-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    .line 311
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    iget-object v8, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, p0, v8}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->init(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/ui/InCallScreen;Landroid/view/ViewGroup;)V

    .line 312
    new-instance v5, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;

    invoke-direct {v5, p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v5, "wanv":Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v5, v6}, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;->setSlidingCardManager(Lorg/sipdroid/sipua/phone/SlidingCardManager;)V

    .line 315
    invoke-virtual {v5, v11}, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;->setVisibility(I)V

    .line 316
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    const v6, 0x7f080032

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mStats:Landroid/widget/TextView;

    .line 320
    const v6, 0x7f080033

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCodec:Landroid/widget/TextView;

    .line 321
    const v6, 0x7f080034

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SlidingDrawer;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 322
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/sipdroid/sipua/phone/CallCard;->displayOnHoldCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 323
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/sipdroid/sipua/phone/CallCard;->displayOngoingCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 324
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v10, :cond_0

    .line 325
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    invoke-virtual {v6}, Lorg/sipdroid/sipua/phone/CallCard;->updateForLandscapeMode()V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x8000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 330
    const v6, 0x7f08002a

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDigits:Landroid/widget/EditText;

    .line 331
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f08001d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x31

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f08001e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f08001f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x33

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080020

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x34

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080021

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080022

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x36

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080023

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x37

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080024

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x38

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080025

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x39

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080027

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x30

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080028

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    const v7, 0x7f080026

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x31

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x33

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x34

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x35

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x36

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x37

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x38

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x39

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    const/16 v7, 0x30

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v8, 0xb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mToneMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 359
    .local v4, "viewId":I
    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 360
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 362
    .end local v0    # "button":Landroid/view/View;
    .end local v4    # "viewId":I
    :cond_1
    return-void
.end method

.method moveBack()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccConn:Lorg/sipdroid/sipua/phone/Connection;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->createHomeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->onStop()V

    .line 156
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 536
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 377
    .local v0, "viewId":I
    sget-object v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    sget-object v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->appendDigit(C)V

    .line 380
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 388
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onCreate(Landroid/os/Bundle;)V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/InCallScreen;->requestWindowFeature(I)Z

    .line 391
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/InCallScreen;->setContentView(I)V

    .line 393
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->initInCallScreen()V

    .line 395
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->sensorManager:Landroid/hardware/SensorManager;

    .line 396
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->proximitySensor:Landroid/hardware/Sensor;

    .line 398
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "archos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/InCallScreen;->setRequestedOrientation(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 489
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 491
    .local v1, "result":Z
    const/16 v2, 0xb

    const v3, 0x7f060073

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 492
    .local v0, "m":Landroid/view/MenuItem;
    const v2, 0x7f020061

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 493
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 437
    sparse-switch p1, :sswitch_data_0

    .line 477
    :cond_0
    sget v2, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 478
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getNumber()C

    move-result v0

    .line 479
    .local v0, "number":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2a

    if-eq v0, v2, :cond_1

    const/16 v2, 0x23

    if-ne v0, v2, :cond_4

    .line 480
    :cond_1
    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/InCallScreen;->appendDigit(C)V

    .line 484
    .end local v0    # "number":C
    :cond_2
    :goto_0
    :sswitch_0
    return v1

    .line 439
    :sswitch_1
    sget v2, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v2, v1, :cond_0

    sget-object v2, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    if-nez v2, :cond_0

    .line 440
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->answer()V

    goto :goto_0

    .line 446
    :sswitch_2
    sget v2, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 448
    :pswitch_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->answer()V

    goto :goto_0

    .line 452
    :pswitch_2
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/sipdroid/sipua/SipdroidEngine;->togglehold()V

    goto :goto_0

    .line 459
    :sswitch_3
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v2}, Landroid/widget/SlidingDrawer;->animateClose()V

    goto :goto_0

    .line 470
    :sswitch_4
    sget v2, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v2, v1, :cond_3

    .line 471
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    goto :goto_0

    .line 474
    :cond_3
    invoke-static {p1, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->adjust(IZ)V

    goto :goto_0

    .line 484
    :cond_4
    invoke-super {p0, p1, p2}, Lorg/sipdroid/sipua/ui/CallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 437
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x5 -> :sswitch_2
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch

    .line 446
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    sparse-switch p1, :sswitch_data_0

    .line 530
    :cond_0
    const-wide/16 v2, 0x0

    sput-wide v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_time:J

    move v0, v1

    .line 531
    :goto_0
    return v0

    .line 520
    :sswitch_0
    invoke-static {p1, v1}, Lorg/sipdroid/media/RtpStreamReceiver;->adjust(IZ)V

    goto :goto_0

    .line 523
    :sswitch_1
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v3, "IDLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lorg/sipdroid/sipua/ui/Receiver;->pstn_time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 525
    :cond_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->reject()V

    goto :goto_0

    .line 517
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 506
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 511
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 508
    :pswitch_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateOpen()V

    .line 509
    const/4 v0, 0x1

    goto :goto_0

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onPause()V

    .line 130
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    packed-switch v0, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->t:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 142
    iput-boolean v4, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->running:Z

    .line 143
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 145
    :cond_1
    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/InCallScreen;->screenOff(Z)V

    .line 146
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v0, v0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v0, v0, Lorg/sipdroid/sipua/phone/CallCard;->mElapsedTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 147
    :cond_2
    return-void

    .line 132
    :pswitch_0
    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->moveTop()V

    goto :goto_0

    .line 135
    :pswitch_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-eqz v0, :cond_3

    .line 136
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/sipua/phone/CallCard;->displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 137
    :cond_3
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    const-wide/16 v0, 0x7d0

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x1388

    goto :goto_1

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 498
    invoke-super {p0, p1}, Lorg/sipdroid/sipua/ui/CallScreen;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 500
    .local v0, "result":Z
    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    sget-boolean v1, Lorg/sipdroid/sipua/ui/InCallScreen;->pactive:Z

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-wide v6, Lorg/sipdroid/sipua/ui/InCallScreen;->pactivetime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    :goto_1
    return v2

    :cond_0
    move v1, v3

    .line 500
    goto :goto_0

    :cond_1
    move v2, v3

    .line 501
    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onResume()V

    .line 164
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eq v0, v5, :cond_1

    .line 188
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 189
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 191
    :cond_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/sipua/phone/CallCard;->displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 192
    :cond_2
    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->showPopup()V

    .line 193
    :cond_3
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 194
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->t:Ljava/lang/Thread;

    if-nez v0, :cond_4

    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDigits:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iput-boolean v4, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->running:Z

    .line 198
    new-instance v0, Lorg/sipdroid/sipua/ui/InCallScreen$1;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/InCallScreen$1;-><init>(Lorg/sipdroid/sipua/ui/InCallScreen;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 238
    :cond_4
    return-void

    .line 166
    :pswitch_1
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->pstn_state:Ljava/lang/String;

    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :cond_5
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_on"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 169
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 170
    :cond_6
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_on_demand"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_demand"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_headset"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-lez v0, :cond_0

    .line 174
    :cond_8
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 177
    :pswitch_2
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 178
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v2}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 179
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    if-gtz v0, :cond_0

    .line 180
    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/InCallScreen;->screenOff(Z)V

    goto/16 :goto_0

    .line 183
    :pswitch_3
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->moveBack()V

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v11, 0x400

    const/4 v10, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 552
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "keepon"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 553
    .local v3, "keepon":Z
    iget-boolean v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->first:Z

    if-eqz v6, :cond_0

    .line 554
    iput-boolean v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->first:Z

    .line 581
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v6, v5

    .line 558
    .local v2, "distance":F
    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_3

    const/high16 v6, 0x40a00000    # 5.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3

    move v0, v4

    .line 559
    .local v0, "active":Z
    :goto_1
    if-eqz v3, :cond_1

    sget v6, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 561
    :cond_1
    const/4 v0, 0x0

    .line 562
    :cond_2
    sput-boolean v0, Lorg/sipdroid/sipua/ui/InCallScreen;->pactive:Z

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sput-wide v6, Lorg/sipdroid/sipua/ui/InCallScreen;->pactivetime:J

    .line 564
    if-nez v0, :cond_4

    .line 565
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v10, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .end local v0    # "active":Z
    :cond_3
    move v0, v5

    .line 558
    goto :goto_1

    .line 568
    .restart local v0    # "active":Z
    :cond_4
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 569
    const v6, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/InCallScreen;->setScreenBacklight(F)V

    .line 570
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 572
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->closeOptionsMenu()V

    .line 573
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v6}, Landroid/widget/SlidingDrawer;->close()V

    .line 574
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 575
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 576
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-boolean v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->hapticset:Z

    if-nez v6, :cond_5

    .line 577
    const-string v6, "haptic_feedback_enabled"

    invoke-static {v1, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->haptic:I

    .line 578
    iput-boolean v4, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->hapticset:Z

    .line 580
    :cond_5
    const-string v4, "haptic_feedback_enabled"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 115
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onStart()V

    .line 116
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v0, :cond_0

    .line 117
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_end_reason:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x7d0

    :goto_0
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 119
    :cond_0
    iput-boolean v3, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->first:Z

    .line 120
    const/4 v0, 0x0

    sput-boolean v0, Lorg/sipdroid/sipua/ui/InCallScreen;->pactive:Z

    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lorg/sipdroid/sipua/ui/InCallScreen;->pactivetime:J

    .line 122
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 123
    sput-boolean v3, Lorg/sipdroid/sipua/ui/InCallScreen;->started:Z

    .line 124
    return-void

    .line 117
    :cond_1
    const-wide/16 v0, 0x1388

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 103
    invoke-super {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->onStop()V

    .line 104
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->finish()V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lorg/sipdroid/sipua/ui/InCallScreen;->started:Z

    .line 111
    return-void
.end method

.method public reject()V
    .locals 3

    .prologue
    .line 403
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    .line 405
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->DISCONNECTED:Lorg/sipdroid/sipua/phone/Call$State;

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/phone/Call;->setState(Lorg/sipdroid/sipua/phone/Call$State;)V

    .line 406
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mCallCard:Lorg/sipdroid/sipua/phone/CallCard;

    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->ccPhone:Lorg/sipdroid/sipua/phone/Phone;

    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/sipua/phone/CallCard;->displayMainCallStatus(Lorg/sipdroid/sipua/phone/Phone;Lorg/sipdroid/sipua/phone/Call;)V

    .line 407
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->close()V

    .line 408
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 409
    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    if-eqz v0, :cond_0

    .line 410
    sget-object v0, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->showPopup()V

    .line 412
    :cond_0
    new-instance v0, Lorg/sipdroid/sipua/ui/InCallScreen$3;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/InCallScreen$3;-><init>(Lorg/sipdroid/sipua/ui/InCallScreen;)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/InCallScreen$3;->start()V

    .line 417
    return-void
.end method

.method screenOff(Z)V
    .locals 4
    .param p1, "off"    # Z

    .prologue
    const/16 v3, 0x2ee0

    const v2, 0xea60

    .line 82
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    .line 87
    iget v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    if-nez v1, :cond_0

    .line 88
    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    .line 89
    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 92
    :cond_2
    iget v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    if-nez v1, :cond_3

    const-string v1, "screen_off_timeout"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 93
    iput v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    .line 94
    :cond_3
    iget v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "screen_off_timeout"

    iget v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen;->oldtimeout:I

    goto :goto_0
.end method

.method setScreenBacklight(F)V
    .locals 2
    .param p1, "a"    # F

    .prologue
    .line 539
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 540
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 541
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 542
    return-void
.end method
