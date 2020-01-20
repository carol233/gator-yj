.class Lorg/sipdroid/sipua/ui/VideoPreview;
.super Landroid/view/SurfaceView;
.source "VideoPreview.java"


# static fields
.field public static DONT_CARE:F


# instance fields
.field private mAspectRatio:F

.field private mHorizontalTileSize:I

.field private mVerticalTileSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lorg/sipdroid/sipua/ui/VideoPreview;->DONT_CARE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 31
    iput v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mHorizontalTileSize:I

    .line 32
    iput v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mVerticalTileSize:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mHorizontalTileSize:I

    .line 32
    iput v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mVerticalTileSize:I

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mHorizontalTileSize:I

    .line 32
    iput v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mVerticalTileSize:I

    .line 49
    return-void
.end method

.method private roundUpToTile(III)I
    .locals 1
    .param p1, "dimension"    # I
    .param p2, "tileSize"    # I
    .param p3, "maxDimension"    # I

    .prologue
    .line 101
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 75
    iget v5, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    sget v6, Lorg/sipdroid/sipua/ui/VideoPreview;->DONT_CARE:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 76
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 77
    .local v4, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 79
    .local v2, "heightSpecSize":I
    move v3, v4

    .line 80
    .local v3, "width":I
    move v1, v2

    .line 82
    .local v1, "height":I
    if-lez v3, :cond_2

    if-lez v1, :cond_2

    .line 83
    int-to-float v5, v3

    int-to-float v6, v1

    div-float v0, v5, v6

    .line 84
    .local v0, "defaultRatio":F
    iget v5, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_1

    .line 86
    int-to-float v5, v3

    iget v6, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 90
    :cond_0
    :goto_0
    iget v5, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v3, v5, v4}, Lorg/sipdroid/sipua/ui/VideoPreview;->roundUpToTile(III)I

    move-result v3

    .line 91
    iget v5, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mVerticalTileSize:I

    invoke-direct {p0, v1, v5, v2}, Lorg/sipdroid/sipua/ui/VideoPreview;->roundUpToTile(III)I

    move-result v1

    .line 92
    const-string v5, "VideoPreview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ar "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " setting size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x78

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, v3, v1}, Lorg/sipdroid/sipua/ui/VideoPreview;->setMeasuredDimension(II)V

    .line 98
    .end local v0    # "defaultRatio":F
    .end local v1    # "height":I
    .end local v2    # "heightSpecSize":I
    .end local v3    # "width":I
    .end local v4    # "widthSpecSize":I
    :goto_1
    return-void

    .line 87
    .restart local v0    # "defaultRatio":F
    .restart local v1    # "height":I
    .restart local v2    # "heightSpecSize":I
    .restart local v3    # "width":I
    .restart local v4    # "widthSpecSize":I
    :cond_1
    iget v5, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 88
    int-to-float v5, v1

    iget v6, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    goto :goto_0

    .line 97
    .end local v0    # "defaultRatio":F
    .end local v1    # "height":I
    .end local v2    # "heightSpecSize":I
    .end local v3    # "width":I
    .end local v4    # "widthSpecSize":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_1
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 66
    iget v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 67
    iput p1, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mAspectRatio:F

    .line 68
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoPreview;->requestLayout()V

    .line 69
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoPreview;->invalidate()V

    .line 71
    :cond_0
    return-void
.end method

.method public setAspectRatio(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 62
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/VideoPreview;->setAspectRatio(F)V

    .line 63
    return-void
.end method

.method public setTileSize(II)V
    .locals 1
    .param p1, "horizontalTileSize"    # I
    .param p2, "verticalTileSize"    # I

    .prologue
    .line 52
    iget v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mHorizontalTileSize:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mVerticalTileSize:I

    if-eq v0, p2, :cond_1

    .line 54
    :cond_0
    iput p1, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mHorizontalTileSize:I

    .line 55
    iput p2, p0, Lorg/sipdroid/sipua/ui/VideoPreview;->mVerticalTileSize:I

    .line 56
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoPreview;->requestLayout()V

    .line 57
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/VideoPreview;->invalidate()V

    .line 59
    :cond_1
    return-void
.end method
