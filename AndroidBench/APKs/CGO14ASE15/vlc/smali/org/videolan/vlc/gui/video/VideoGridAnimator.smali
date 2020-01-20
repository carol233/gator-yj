.class public Lorg/videolan/vlc/gui/video/VideoGridAnimator;
.super Ljava/lang/Object;
.source "VideoGridAnimator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/VideoGridAnimator"


# instance fields
.field private isAnimating:Z

.field private mAnimationsRunning:I

.field private final mGridView:Landroid/widget/GridView;

.field mHCL:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mLastNItems:I

.field final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/GridView;)V
    .locals 2
    .param p1, "gridview"    # Landroid/widget/GridView;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->isAnimating:Z

    .line 44
    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I

    .line 62
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator$1;-><init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mHCL:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 75
    new-instance v0, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/video/VideoGridAnimator$2;-><init>(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->r:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;

    .line 48
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mHCL:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->isAnimating:Z

    return v0
.end method

.method static synthetic access$002(Lorg/videolan/vlc/gui/video/VideoGridAnimator;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->isAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/video/VideoGridAnimator;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;

    .prologue
    .line 37
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mLastNItems:I

    return v0
.end method

.method static synthetic access$202(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)I
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mLastNItems:I

    return p1
.end method

.method static synthetic access$312(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I

    return v0
.end method

.method static synthetic access$320(Lorg/videolan/vlc/gui/video/VideoGridAnimator;I)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/video/VideoGridAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I

    return v0
.end method


# virtual methods
.method public animate()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->isAnimating:Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mLastNItems:I

    .line 54
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method

.method public isAnimationDone()Z
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->mAnimationsRunning:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(FLandroid/view/View;)V
    .locals 5
    .param p1, "alpha"    # F
    .param p2, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 137
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 138
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 157
    .end local p2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 139
    .restart local p2    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v1, p2

    .line 143
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/videolan/vlc/gui/video/VideoGridAnimator;->setAlpha(FLandroid/view/View;)V

    move-object v1, p2

    .line 144
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    mul-float v2, p1, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 147
    .end local v0    # "i":I
    :cond_3
    instance-of v1, p2, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    move-object v1, p2

    .line 149
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    mul-float v2, p1, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_4
    move-object v1, p2

    .line 150
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast p2, Landroid/widget/ImageView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    mul-float v2, p1, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 152
    .restart local p2    # "view":Landroid/view/View;
    :cond_5
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 154
    check-cast v1, Landroid/widget/TextView;

    move-object v2, p2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    mul-float v3, p1, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    move-object v1, p2

    .line 155
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    mul-float v2, p1, v4

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_0
.end method
