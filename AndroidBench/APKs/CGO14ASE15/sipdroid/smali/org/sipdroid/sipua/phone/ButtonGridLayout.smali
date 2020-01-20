.class public Lorg/sipdroid/sipua/phone/ButtonGridLayout;
.super Landroid/view/ViewGroup;
.source "ButtonGridLayout.java"


# instance fields
.field private final mColumns:I

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mColumns:I

    .line 32
    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingBottom:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingLeft:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingRight:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingTop:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mColumns:I

    .line 32
    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingBottom:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingLeft:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingRight:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingTop:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mColumns:I

    .line 32
    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingBottom:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingLeft:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingRight:I

    iput v1, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingTop:I

    .line 44
    return-void
.end method

.method private getRows()I
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget v15, v0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingTop:I

    .line 49
    .local v15, "y":I
    invoke-direct/range {p0 .. p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getRows()I

    move-result v11

    .line 50
    .local v11, "rows":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 51
    .local v6, "child0":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingTop:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingBottom:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int v16, v18, v11

    .line 52
    .local v16, "yInc":I
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingLeft:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingRight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v13, v18, 0x3

    .line 53
    .local v13, "xInc":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 54
    .local v8, "childWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 55
    .local v7, "childHeight":I
    sub-int v18, v13, v8

    div-int/lit8 v14, v18, 0x2

    .line 56
    .local v14, "xOffset":I
    sub-int v18, v16, v7

    div-int/lit8 v17, v18, 0x2

    .line 58
    .local v17, "yOffset":I
    const/4 v10, 0x0

    .local v10, "row":I
    :goto_0
    if-ge v10, v11, :cond_2

    .line 59
    move-object/from16 v0, p0

    iget v12, v0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingLeft:I

    .line 60
    .local v12, "x":I
    const/4 v9, 0x0

    .local v9, "col":I
    :goto_1
    const/16 v18, 0x3

    move/from16 v0, v18

    if-ge v9, v0, :cond_0

    .line 61
    mul-int/lit8 v18, v10, 0x3

    add-int v4, v18, v9

    .line 62
    .local v4, "cell":I
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildCount()I

    move-result v18

    move/from16 v0, v18

    if-lt v4, v0, :cond_1

    .line 71
    .end local v4    # "cell":I
    :cond_0
    add-int v15, v15, v16

    .line 58
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 65
    .restart local v4    # "cell":I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 66
    .local v5, "child":Landroid/view/View;
    add-int v18, v12, v14

    add-int v19, v15, v17

    add-int v20, v12, v14

    add-int v20, v20, v8

    add-int v21, v15, v17

    add-int v21, v21, v7

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 69
    add-int/2addr v12, v13

    .line 60
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 73
    .end local v4    # "cell":I
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "col":I
    .end local v12    # "x":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v8, 0x0

    .line 81
    iget v6, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingLeft:I

    iget v7, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingRight:I

    add-int v5, v6, v7

    .line 82
    .local v5, "width":I
    iget v6, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingTop:I

    iget v7, p0, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->mPaddingBottom:I

    add-int v3, v6, v7

    .line 85
    .local v3, "height":I
    invoke-virtual {p0, v8}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v8, v8}, Landroid/view/View;->measure(II)V

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 88
    .local v2, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 90
    .local v1, "childHeight":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 91
    invoke-virtual {p0, v8}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Landroid/view/View;->measure(II)V

    .line 90
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    :cond_0
    mul-int/lit8 v6, v2, 0x3

    add-int/2addr v5, v6

    .line 95
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->getRows()I

    move-result v6

    mul-int/2addr v6, v1

    add-int/2addr v3, v6

    .line 97
    invoke-static {v5, p1}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v5

    .line 98
    invoke-static {v3, p2}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->resolveSize(II)I

    move-result v3

    .line 99
    invoke-virtual {p0, v5, v3}, Lorg/sipdroid/sipua/phone/ButtonGridLayout;->setMeasuredDimension(II)V

    .line 100
    return-void
.end method
