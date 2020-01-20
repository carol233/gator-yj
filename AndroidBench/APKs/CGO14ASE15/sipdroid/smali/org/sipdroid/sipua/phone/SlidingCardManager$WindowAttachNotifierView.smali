.class public Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;
.super Landroid/view/View;
.source "SlidingCardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/SlidingCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowAttachNotifierView"
.end annotation


# instance fields
.field private mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 617
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 618
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 629
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 649
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 653
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 656
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 663
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 667
    return-void
.end method

.method public setSlidingCardManager(Lorg/sipdroid/sipua/phone/SlidingCardManager;)V
    .locals 0
    .param p1, "slidingCardManager"    # Lorg/sipdroid/sipua/phone/SlidingCardManager;

    .prologue
    .line 621
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/SlidingCardManager$WindowAttachNotifierView;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    .line 622
    return-void
.end method
