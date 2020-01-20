.class public Lcx/hell/android/lib/pagesview/PagesView;
.super Landroid/view/View;
.source "PagesView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcx/hell/android/lib/pagesview/OnImageRenderedListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final MAX_TILE_PIXELS:I = 0x38400

.field private static final MAX_TILE_WIDTH:I = 0x280

.field private static final MIN_TILE_HEIGHT:I = 0x80

.field private static final MIN_TILE_WIDTH:I = 0x100

.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"


# instance fields
.field private actions:Lcx/hell/android/pdfview/Actions;

.field private activity:Landroid/app/Activity;

.field private bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

.field private colorMode:I

.field private currentPage:I

.field private doubleTapAction:I

.field private downX:F

.field private downY:F

.field private eink:Z

.field private findMode:Z

.field private findResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcx/hell/android/lib/pagesview/FindResult;",
            ">;"
        }
    .end annotation
.end field

.field private findResultsPaint1:Landroid/graphics/Paint;

.field private findResultsPaint2:Landroid/graphics/Paint;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private height:I

.field private lastControlsUseMillis:J

.field private lastX:F

.field private lastY:F

.field private left:I

.field private leftToRestore:I

.field private lockedVertically:Z

.field private marginX:I

.field private marginY:I

.field private maxExcursionY:F

.field private maxRealPageSize:[F

.field private mtDebounce:J

.field private mtDistanceStart:F

.field private mtLastDistance:F

.field private mtZoomActive:Z

.field private mtZoomValue:F

.field private nook2:Z

.field private pageSizes:[[I

.field pageWithVolume:Z

.field private pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

.field prevLeft:I

.field prevTop:I

.field private realDocumentSize:[F

.field private rotation:I

.field private scaling0:F

.field private scroller:Landroid/widget/Scroller;

.field private showZoomOnScroll:Z

.field step:F

.field private top:I

.field private verticalScrollLock:Z

.field private volumeDownIsDown:Z

.field private volumeUpIsDown:Z

.field private width:I

.field private zoomLayout:Landroid/widget/LinearLayout;

.field private zoomLevel:I

.field private zoomToRestore:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 197
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    .line 62
    const/16 v2, 0xa

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    .line 65
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    .line 72
    const v2, 0x3fb4fdf4    # 1.414f

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->step:F

    .line 75
    iput-boolean v7, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageWithVolume:Z

    .line 77
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->activity:Landroid/app/Activity;

    .line 82
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    .line 86
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastControlsUseMillis:J

    .line 90
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxRealPageSize:[F

    .line 91
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->realDocumentSize:[F

    .line 96
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    .line 101
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    .line 107
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 113
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 119
    const/16 v2, 0x3e8

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 124
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    .line 131
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    .line 142
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->findMode:Z

    .line 147
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    .line 152
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    .line 157
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    .line 162
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    .line 167
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    .line 174
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->eink:Z

    .line 175
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->showZoomOnScroll:Z

    .line 176
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeUpIsDown:Z

    .line 177
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeDownIsDown:Z

    .line 178
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->gestureDetector:Landroid/view/GestureDetector;

    .line 179
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    .line 181
    iput-boolean v7, p0, Lcx/hell/android/lib/pagesview/PagesView;->verticalScrollLock:Z

    .line 182
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->lockedVertically:Z

    .line 183
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downX:F

    .line 184
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downY:F

    .line 185
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastX:F

    .line 186
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastY:F

    .line 187
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxExcursionY:F

    .line 188
    const/4 v2, 0x2

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->doubleTapAction:I

    .line 189
    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    .line 191
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->actions:Lcx/hell/android/pdfview/Actions;

    .line 192
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->nook2:Z

    .line 193
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLayout:Landroid/widget/LinearLayout;

    .line 412
    const/4 v2, -0x1

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->prevTop:I

    .line 413
    const/4 v2, -0x1

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->prevLeft:I

    .line 198
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->activity:Landroid/app/Activity;

    .line 199
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->actions:Lcx/hell/android/pdfview/Actions;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastControlsUseMillis:J

    .line 201
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    .line 202
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 203
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 204
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 205
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 206
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    .line 207
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    const/16 v3, 0xd0

    const/16 v4, 0xc5

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 208
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 211
    invoke-virtual {p0, p0}, Lcx/hell/android/lib/pagesview/PagesView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 212
    invoke-virtual {p0, p0}, Lcx/hell/android/lib/pagesview/PagesView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 213
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    .line 215
    iput-boolean v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    .line 216
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtDebounce:J

    .line 218
    iput-object v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    .line 220
    new-instance v2, Landroid/view/GestureDetector;

    .line 221
    new-instance v3, Lcx/hell/android/lib/pagesview/PagesView$1;

    invoke-direct {v3, p0}, Lcx/hell/android/lib/pagesview/PagesView$1;-><init>(Lcx/hell/android/lib/pagesview/PagesView;)V

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 220
    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->gestureDetector:Landroid/view/GestureDetector;

    move-object v0, p1

    .line 252
    check-cast v0, Lcx/hell/android/pdfview/OpenFileActivity;

    .line 253
    .local v0, "openFileActivity":Lcx/hell/android/pdfview/OpenFileActivity;
    move-object v1, p0

    .line 255
    .local v1, "pagesView":Lcx/hell/android/lib/pagesview/PagesView;
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v3, Lcx/hell/android/lib/pagesview/PagesView$2;

    invoke-direct {v3, p0, v0, v1}, Lcx/hell/android/lib/pagesview/PagesView$2;-><init>(Lcx/hell/android/lib/pagesview/PagesView;Lcx/hell/android/pdfview/OpenFileActivity;Lcx/hell/android/lib/pagesview/PagesView;)V

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 315
    return-void

    .line 90
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 91
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$0(Lcx/hell/android/lib/pagesview/PagesView;)Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->lockedVertically:Z

    return v0
.end method

.method static synthetic access$1(Lcx/hell/android/lib/pagesview/PagesView;FF)V
    .locals 0

    .prologue
    .line 1282
    invoke-direct {p0, p1, p2}, Lcx/hell/android/lib/pagesview/PagesView;->doFling(FF)V

    return-void
.end method

.method static synthetic access$10(Lcx/hell/android/lib/pagesview/PagesView;I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    return-void
.end method

.method static synthetic access$11(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    return v0
.end method

.method static synthetic access$12(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    return v0
.end method

.method static synthetic access$13(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    return v0
.end method

.method static synthetic access$14(Lcx/hell/android/lib/pagesview/PagesView;I)V
    .locals 0

    .prologue
    .line 190
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->leftToRestore:I

    return-void
.end method

.method static synthetic access$15(Lcx/hell/android/lib/pagesview/PagesView;)J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtDebounce:J

    return-wide v0
.end method

.method static synthetic access$16(Lcx/hell/android/lib/pagesview/PagesView;)Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->showZoomOnScroll:Z

    return v0
.end method

.method static synthetic access$17(Lcx/hell/android/lib/pagesview/PagesView;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$18(Lcx/hell/android/lib/pagesview/PagesView;)Lcx/hell/android/pdfview/Actions;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->actions:Lcx/hell/android/pdfview/Actions;

    return-object v0
.end method

.method static synthetic access$2(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->doubleTapAction:I

    return v0
.end method

.method static synthetic access$3(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    return v0
.end method

.method static synthetic access$4(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->leftToRestore:I

    return v0
.end method

.method static synthetic access$5(Lcx/hell/android/lib/pagesview/PagesView;I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    return-void
.end method

.method static synthetic access$6(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    return v0
.end method

.method static synthetic access$7(Lcx/hell/android/lib/pagesview/PagesView;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    return v0
.end method

.method static synthetic access$8(Lcx/hell/android/lib/pagesview/PagesView;I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    return-void
.end method

.method static synthetic access$9(Lcx/hell/android/lib/pagesview/PagesView;I)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    return-void
.end method

.method private adjustPosition(IIII)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "screenDim"    # I
    .param p3, "margin"    # I
    .param p4, "docDim"    # I

    .prologue
    .line 1446
    invoke-direct {p0, p2, p3, p4}, Lcx/hell/android/lib/pagesview/PagesView;->getLowerBound(III)I

    move-result v1

    .line 1447
    .local v1, "min":I
    invoke-direct {p0, p2, p3, p4}, Lcx/hell/android/lib/pagesview/PagesView;->getUpperBound(III)I

    move-result v0

    .line 1449
    .local v0, "max":I
    if-ge p1, v1, :cond_0

    .line 1454
    .end local v1    # "min":I
    :goto_0
    return v1

    .line 1451
    .restart local v1    # "min":I
    :cond_0
    if-ge v0, p1, :cond_1

    move v1, v0

    .line 1452
    goto :goto_0

    :cond_1
    move v1, p1

    .line 1454
    goto :goto_0
.end method

.method private distance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 796
    invoke-static {p1, v4}, Lcx/hell/android/pdfview/AndroidReflections;->getMotionEventX(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v5}, Lcx/hell/android/pdfview/AndroidReflections;->getMotionEventX(Landroid/view/MotionEvent;I)F

    move-result v3

    sub-float v0, v2, v3

    .line 797
    .local v0, "dx":F
    invoke-static {p1, v4}, Lcx/hell/android/pdfview/AndroidReflections;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v2

    invoke-static {p1, v5}, Lcx/hell/android/pdfview/AndroidReflections;->getMotionEventY(Landroid/view/MotionEvent;I)F

    move-result v3

    sub-float v1, v2, v3

    .line 798
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private doFling(FF)V
    .locals 16
    .param p1, "vx"    # F
    .param p2, "vy"    # F

    .prologue
    .line 1283
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    move/from16 v10, p1

    .line 1284
    .local v10, "avx":F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    move/from16 v11, p2

    .line 1286
    .local v11, "avy":F
    :goto_1
    float-to-double v1, v10

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    float-to-double v14, v11

    mul-double/2addr v3, v14

    cmpg-double v1, v1, v3

    if-gez v1, :cond_3

    .line 1287
    const/16 p1, 0x0

    .line 1293
    :cond_0
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginX()F

    move-result v1

    float-to-int v12, v1

    .line 1294
    .local v12, "marginX":I
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginY()F

    move-result v1

    float-to-int v13, v1

    .line 1295
    .local v13, "marginY":I
    move-object/from16 v0, p0

    iget v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    .line 1296
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMaxPageWidth()I

    move-result v3

    .line 1295
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v3}, Lcx/hell/android/lib/pagesview/PagesView;->getLowerBound(III)I

    move-result v2

    add-int v6, v1, v2

    .line 1297
    .local v6, "minx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    .line 1298
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMaxPageWidth()I

    move-result v3

    .line 1297
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v12, v3}, Lcx/hell/android/lib/pagesview/PagesView;->getUpperBound(III)I

    move-result v2

    add-int v7, v1, v2

    .line 1299
    .local v7, "maxx":I
    move-object/from16 v0, p0

    iget v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    .line 1300
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentDocumentHeight()I

    move-result v3

    .line 1299
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v3}, Lcx/hell/android/lib/pagesview/PagesView;->getLowerBound(III)I

    move-result v2

    add-int v8, v1, v2

    .line 1301
    .local v8, "miny":I
    move-object/from16 v0, p0

    iget v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v1, v1, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    .line 1302
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentDocumentHeight()I

    move-result v3

    .line 1301
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v3}, Lcx/hell/android/lib/pagesview/PagesView;->getUpperBound(III)I

    move-result v2

    add-int v9, v1, v2

    .line 1304
    .local v9, "maxy":I
    new-instance v1, Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    .line 1305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1306
    move/from16 v0, p1

    neg-float v4, v0

    float-to-int v4, v4

    move/from16 v0, p2

    neg-float v5, v0

    float-to-int v5, v5

    .line 1305
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1310
    return-void

    .line 1283
    .end local v6    # "minx":I
    .end local v7    # "maxx":I
    .end local v8    # "miny":I
    .end local v9    # "maxy":I
    .end local v10    # "avx":F
    .end local v11    # "avy":F
    .end local v12    # "marginX":I
    .end local v13    # "marginY":I
    :cond_1
    move/from16 v0, p1

    neg-float v10, v0

    goto/16 :goto_0

    .line 1284
    .restart local v10    # "avx":F
    :cond_2
    move/from16 v0, p2

    neg-float v11, v0

    goto/16 :goto_1

    .line 1289
    .restart local v11    # "avy":F
    :cond_3
    float-to-double v1, v11

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    float-to-double v14, v10

    mul-double/2addr v3, v14

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 1290
    const/16 p2, 0x0

    goto/16 :goto_2
.end method

.method private doScroll(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1313
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 1314
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1315
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1316
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "src"    # Landroid/graphics/Rect;
    .param p4, "dst"    # Landroid/graphics/Rect;

    .prologue
    .line 702
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->colorMode:I

    if-eqz v1, :cond_0

    .line 703
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 705
    .local v0, "paint":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    new-instance v2, Landroid/graphics/ColorMatrix;

    .line 706
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->colorMode:I

    invoke-static {v3}, Lcx/hell/android/pdfview/Options;->getColorModeMatrix(I)[F

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 704
    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 707
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 712
    .end local v0    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-void

    .line 710
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawFindResults(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 721
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->findMode:Z

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "drawFindResults but not in find results mode"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 722
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 723
    :cond_1
    const-string v1, "cx.hell.android.pdfview"

    const-string v2, "nothing found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_2
    return-void

    .line 726
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcx/hell/android/lib/pagesview/FindResult;

    .line 727
    .local v7, "findResult":Lcx/hell/android/lib/pagesview/FindResult;
    iget-object v1, v7, Lcx/hell/android/lib/pagesview/FindResult;->markers:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcx/hell/android/lib/pagesview/FindResult;->markers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 728
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "illegal FindResult: find result must have at least one marker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 729
    :cond_6
    iget-object v1, v7, Lcx/hell/android/lib/pagesview/FindResult;->markers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 730
    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/graphics/Rect;>;"
    const/4 v14, 0x0

    .line 731
    .local v14, "r":Landroid/graphics/Rect;
    iget v1, v7, Lcx/hell/android/lib/pagesview/FindResult;->page:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getPagePositionOnScreen(I)Landroid/graphics/Point;

    move-result-object v11

    .line 732
    .local v11, "pagePosition":Landroid/graphics/Point;
    iget v1, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v1

    .line 733
    .local v12, "pagex":F
    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-float v13, v1

    .line 734
    .local v13, "pagey":F
    move-object/from16 v0, p0

    iget v1, v0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const v2, 0x3a83126f    # 0.001f

    mul-float v15, v1, v2

    .line 735
    .local v15, "z":F
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 736
    const/4 v9, 0x5

    .line 737
    .local v9, "marg":I
    const/4 v10, 0x2

    .line 738
    .local v10, "offs":I
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "r":Landroid/graphics/Rect;
    check-cast v14, Landroid/graphics/Rect;

    .line 740
    .restart local v14    # "r":Landroid/graphics/Rect;
    iget v1, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v12

    int-to-float v2, v9

    sub-float/2addr v1, v2

    int-to-float v2, v10

    add-float/2addr v2, v1

    iget v1, v14, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v13

    int-to-float v3, v9

    sub-float/2addr v1, v3

    int-to-float v3, v10

    add-float/2addr v3, v1

    .line 741
    iget v1, v14, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v12

    int-to-float v4, v9

    add-float/2addr v1, v4

    int-to-float v4, v10

    add-float/2addr v4, v1

    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v13

    int-to-float v5, v9

    add-float/2addr v1, v5

    int-to-float v5, v10

    add-float/2addr v5, v1

    .line 742
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint1:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 739
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 744
    iget v1, v14, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v12

    int-to-float v2, v9

    sub-float v2, v1, v2

    iget v1, v14, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v13

    int-to-float v3, v9

    sub-float v3, v1, v3

    .line 745
    iget v1, v14, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v12

    int-to-float v4, v9

    add-float/2addr v4, v1

    iget v1, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v15

    add-float/2addr v1, v13

    int-to-float v5, v9

    add-float/2addr v5, v1

    .line 746
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->findResultsPaint2:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    .line 743
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawPages(Landroid/graphics/Canvas;)V
    .locals 44
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 541
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->eink:Z

    if-eqz v6, :cond_0

    .line 542
    const/4 v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 545
    :cond_0
    new-instance v34, Landroid/graphics/Rect;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Rect;-><init>()V

    .line 546
    .local v34, "src":Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 547
    .local v22, "dst":Landroid/graphics/Rect;
    const/16 v28, 0x0

    .line 548
    .local v28, "pageWidth":I
    const/16 v27, 0x0

    .line 552
    .local v27, "pageHeight":I
    new-instance v40, Ljava/util/LinkedList;

    invoke-direct/range {v40 .. v40}, Ljava/util/LinkedList;-><init>()V

    .line 553
    .local v40, "visibleTiles":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcx/hell/android/lib/pagesview/Tile;>;"
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginX()F

    move-result v19

    .line 554
    .local v19, "currentMarginX":F
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginY()F

    move-result v20

    .line 556
    .local v20, "currentMarginY":F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    if-eqz v6, :cond_2

    .line 557
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 558
    const/4 v6, 0x5

    move-object/from16 v0, p0

    iput v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 560
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v0, v6

    move/from16 v26, v0

    .line 562
    .local v26, "pageCount":I
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v7, v7, 0x2

    sub-int v38, v6, v7

    .line 563
    .local v38, "viewx0":I
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v7, v7, 0x2

    sub-int v39, v6, v7

    .line 571
    .local v39, "viewy0":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    if-eqz v6, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    div-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v17, v0

    .line 573
    .local v17, "adjScreenWidth":I
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v17, 0x2

    sub-int v15, v6, v7

    .line 574
    .local v15, "adjScreenLeft":I
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    div-float/2addr v6, v7

    float-to-int v14, v6

    .line 575
    .local v14, "adjScreenHeight":I
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v14, 0x2

    sub-int v16, v6, v7

    .line 576
    .local v16, "adjScreenTop":I
    const/high16 v33, 0x3f800000    # 1.0f

    .line 577
    .local v33, "renderAhead":F
    const-string v6, "cx.hell.android.pdfview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "adj:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    move/from16 v21, v20

    .line 604
    .local v21, "currpageoff":F
    const/4 v6, -0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    .line 606
    const/16 v31, 0x0

    .line 607
    .local v31, "pagey0":F
    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v35, v0

    .line 609
    .local v35, "tileSizes":[I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    .line 694
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Lcx/hell/android/lib/pagesview/PagesProvider;->setVisibleTiles(Ljava/util/Collection;)V

    .line 696
    .end local v14    # "adjScreenHeight":I
    .end local v15    # "adjScreenLeft":I
    .end local v16    # "adjScreenTop":I
    .end local v17    # "adjScreenWidth":I
    .end local v21    # "currpageoff":F
    .end local v23    # "i":I
    .end local v26    # "pageCount":I
    .end local v31    # "pagey0":F
    .end local v33    # "renderAhead":F
    .end local v35    # "tileSizes":[I
    .end local v38    # "viewx0":I
    .end local v39    # "viewy0":I
    :cond_2
    return-void

    .line 583
    .restart local v26    # "pageCount":I
    .restart local v38    # "viewx0":I
    .restart local v39    # "viewy0":I
    :cond_3
    move/from16 v24, v38

    .line 584
    .local v24, "oldviewx0":I
    move/from16 v25, v39

    .line 586
    .local v25, "oldviewy0":I
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    move/from16 v0, v19

    float-to-int v7, v0

    .line 587
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMaxPageWidth()I

    move-result v8

    .line 586
    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-direct {v0, v1, v6, v7, v8}, Lcx/hell/android/lib/pagesview/PagesView;->adjustPosition(IIII)I

    move-result v38

    .line 588
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    move/from16 v0, v20

    float-to-int v7, v0

    .line 589
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentDocumentHeight()I

    move-result v8

    .line 588
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v1, v6, v7, v8}, Lcx/hell/android/lib/pagesview/PagesView;->adjustPosition(IIII)I

    move-result v39

    .line 591
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    sub-int v7, v38, v24

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 592
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    sub-int v7, v39, v25

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iput v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 594
    move-object/from16 v0, p0

    iget v0, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    move/from16 v17, v0

    .line 595
    .restart local v17    # "adjScreenWidth":I
    const/4 v15, 0x0

    .line 596
    .restart local v15    # "adjScreenLeft":I
    move-object/from16 v0, p0

    iget v14, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    .line 597
    .restart local v14    # "adjScreenHeight":I
    const/16 v16, 0x0

    .line 599
    .restart local v16    # "adjScreenTop":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    invoke-virtual {v6}, Lcx/hell/android/lib/pagesview/PagesProvider;->getRenderAhead()F

    move-result v33

    .restart local v33    # "renderAhead":F
    goto :goto_0

    .line 612
    .end local v24    # "oldviewx0":I
    .end local v25    # "oldviewy0":I
    .restart local v21    # "currpageoff":F
    .restart local v23    # "i":I
    .restart local v31    # "pagey0":F
    .restart local v35    # "tileSizes":[I
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageWidth(I)I

    move-result v28

    .line 613
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v27, v0

    .line 615
    move/from16 v29, v19

    .line 616
    .local v29, "pagex0":F
    move/from16 v0, v28

    int-to-float v6, v0

    add-float v6, v6, v19

    float-to-int v6, v6

    int-to-float v0, v6

    move/from16 v30, v0

    .line 617
    .local v30, "pagex1":F
    move/from16 v31, v21

    .line 618
    move/from16 v0, v27

    int-to-float v6, v0

    add-float v6, v6, v21

    float-to-int v6, v6

    int-to-float v0, v6

    move/from16 v32, v0

    .line 621
    .local v32, "pagey1":F
    move/from16 v0, v29

    float-to-int v6, v0

    move/from16 v0, v31

    float-to-int v7, v0

    move/from16 v0, v30

    float-to-int v8, v0

    move/from16 v0, v32

    float-to-int v9, v0

    .line 622
    add-int v10, v38, v15

    .line 623
    add-int v11, v39, v16

    .line 624
    add-int v12, v38, v15

    add-int v12, v12, v17

    .line 625
    add-int v13, v39, v16

    int-to-float v0, v14

    move/from16 v43, v0

    mul-float v43, v43, v33

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    add-int v13, v13, v43

    move-object/from16 v5, p0

    .line 620
    invoke-direct/range {v5 .. v13}, Lcx/hell/android/lib/pagesview/PagesView;->rectsintersect(IIIIIIII)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 628
    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 630
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    .line 633
    :cond_5
    move/from16 v0, v29

    float-to-int v6, v0

    sub-int v6, v6, v38

    sub-int v41, v6, v15

    .line 634
    .local v41, "x":I
    move/from16 v0, v31

    float-to-int v6, v0

    sub-int v6, v6, v39

    sub-int v42, v6, v16

    .line 636
    .local v42, "y":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcx/hell/android/lib/pagesview/PagesView;->getGoodTileSizes([III)V

    .line 638
    const/16 v36, 0x0

    .local v36, "tileix":I
    :goto_2
    const/4 v6, 0x0

    aget v6, v35, v6

    add-int v6, v6, v28

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aget v7, v35, v7

    div-int/2addr v6, v7

    move/from16 v0, v36

    if-lt v0, v6, :cond_7

    .line 692
    .end local v36    # "tileix":I
    .end local v41    # "x":I
    .end local v42    # "y":I
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v6

    add-float v6, v6, v20

    add-float v21, v21, v6

    .line 609
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_1

    .line 639
    .restart local v36    # "tileix":I
    .restart local v41    # "x":I
    .restart local v42    # "y":I
    :cond_7
    const/16 v37, 0x0

    .local v37, "tileiy":I
    :goto_3
    const/4 v6, 0x1

    aget v6, v35, v6

    add-int v6, v6, v27

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    aget v7, v35, v7

    div-int/2addr v6, v7

    move/from16 v0, v37

    if-lt v0, v6, :cond_8

    .line 638
    add-int/lit8 v36, v36, 0x1

    goto :goto_2

    .line 641
    :cond_8
    const/4 v6, 0x0

    aget v6, v35, v6

    mul-int v6, v6, v36

    add-int v6, v6, v41

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 642
    const/4 v6, 0x1

    aget v6, v35, v6

    mul-int v6, v6, v37

    add-int v6, v6, v42

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 643
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->left:I

    const/4 v7, 0x0

    aget v7, v35, v7

    add-int/2addr v6, v7

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 644
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x1

    aget v7, v35, v7

    add-int/2addr v6, v7

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 646
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 647
    int-to-float v8, v14

    mul-float v8, v8, v33

    float-to-int v8, v8

    .line 646
    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v6, v7, v1, v8}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 649
    new-instance v5, Lcx/hell/android/lib/pagesview/Tile;

    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    mul-float/2addr v6, v7

    float-to-int v7, v6

    .line 650
    const/4 v6, 0x0

    aget v6, v35, v6

    mul-int v8, v36, v6

    const/4 v6, 0x1

    aget v6, v35, v6

    mul-int v9, v37, v6

    move-object/from16 v0, p0

    iget v10, v0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    .line 651
    const/4 v6, 0x0

    aget v11, v35, v6

    const/4 v6, 0x1

    aget v12, v35, v6

    move/from16 v6, v23

    .line 649
    invoke-direct/range {v5 .. v12}, Lcx/hell/android/lib/pagesview/Tile;-><init>(IIIIIII)V

    .line 653
    .local v5, "tile":Lcx/hell/android/lib/pagesview/Tile;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v6, v7, v1, v14}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 656
    move-object/from16 v0, p0

    iget-object v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    invoke-virtual {v6, v5}, Lcx/hell/android/lib/pagesview/PagesProvider;->getPageBitmap(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 657
    .local v18, "b":Landroid/graphics/Bitmap;
    if-eqz v18, :cond_c

    .line 659
    const/4 v6, 0x0

    move-object/from16 v0, v34

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 660
    const/4 v6, 0x0

    move-object/from16 v0, v34

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 661
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object/from16 v0, v34

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 662
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, v34

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 664
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int v7, v41, v28

    if-le v6, v7, :cond_9

    .line 665
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-int v7, v41, v28

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move-object/from16 v0, v22

    iget v7, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v34

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 666
    add-int v6, v41, v28

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 669
    :cond_9
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v42, v27

    if-le v6, v7, :cond_a

    .line 670
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-int v7, v42, v27

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move-object/from16 v0, v22

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v34

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 671
    add-int v6, v42, v27

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 674
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    if-eqz v6, :cond_b

    .line 675
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->left:I

    div-int/lit8 v7, v17, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 676
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v7, v17, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 677
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->top:I

    div-int/lit8 v7, v14, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 678
    move-object/from16 v0, v22

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v7, v14, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object/from16 v0, v22

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 681
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v34

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 684
    .end local v18    # "b":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    if-nez v6, :cond_d

    .line 685
    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v5    # "tile":Lcx/hell/android/lib/pagesview/Tile;
    :cond_d
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_3
.end method

.method private getCurrentDocumentHeight()I
    .locals 4

    .prologue
    .line 443
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->realDocumentSize:[F

    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    aget v0, v2, v1

    .line 445
    .local v0, "realheight":F
    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v1

    .line 446
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-direct {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginY()F

    move-result v3

    mul-float/2addr v2, v3

    .line 445
    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 443
    .end local v0    # "realheight":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCurrentMarginX()F
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v0

    return v0
.end method

.method private getCurrentMarginY()F
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v0

    return v0
.end method

.method private getCurrentMaxPageWidth()I
    .locals 3

    .prologue
    .line 427
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxRealPageSize:[F

    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    aget v0, v2, v1

    .line 428
    .local v0, "realpagewidth":F
    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 427
    .end local v0    # "realpagewidth":F
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getCurrentPageHeight(I)F
    .locals 4
    .param p1, "pageno"    # I

    .prologue
    .line 468
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v3, v2, p1

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    aget v2, v3, v2

    int-to-float v1, v2

    .line 469
    .local v1, "realpageheight":F
    invoke-direct {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v0

    .line 470
    .local v0, "currentpageheight":F
    return v0

    .line 468
    .end local v0    # "currentpageheight":F
    .end local v1    # "realpageheight":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentPageWidth(I)I
    .locals 4
    .param p1, "pageno"    # I

    .prologue
    .line 454
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v3, v2, p1

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    aget v2, v3, v2

    int-to-float v1, v2

    .line 455
    .local v1, "realpagewidth":F
    invoke-direct {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v0

    .line 456
    .local v0, "currentpagewidth":F
    float-to-int v2, v0

    return v2

    .line 454
    .end local v0    # "currentpagewidth":F
    .end local v1    # "realpagewidth":F
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getGoodTileSize(III)I
    .locals 3
    .param p1, "pageSize"    # I
    .param p2, "minSize"    # I
    .param p3, "maxSize"    # I

    .prologue
    const/4 v1, 0x2

    .line 1408
    if-gt p1, v1, :cond_1

    move p1, v1

    .line 1417
    .end local p1    # "pageSize":I
    :cond_0
    :goto_0
    return p1

    .line 1410
    .restart local p1    # "pageSize":I
    :cond_1
    if-le p1, p3, :cond_0

    .line 1412
    add-int v2, p1, p3

    add-int/lit8 v2, v2, -0x1

    div-int v0, v2, p3

    .line 1413
    .local v0, "numInPageSize":I
    add-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    div-int v1, v2, v0

    .line 1414
    .local v1, "proposedSize":I
    if-ge v1, p2, :cond_2

    move p1, p2

    .line 1415
    goto :goto_0

    :cond_2
    move p1, v1

    .line 1417
    goto :goto_0
.end method

.method private getGoodTileSizes([III)V
    .locals 4
    .param p1, "sizes"    # [I
    .param p2, "pageWidth"    # I
    .param p3, "pageHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 1403
    const/16 v0, 0x100

    const/16 v1, 0x280

    invoke-direct {p0, p2, v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getGoodTileSize(III)I

    move-result v0

    aput v0, p1, v3

    .line 1404
    const/4 v0, 0x1

    const/16 v1, 0x80

    const v2, 0x38400

    aget v3, p1, v3

    div-int/2addr v2, v3

    invoke-direct {p0, p3, v1, v2}, Lcx/hell/android/lib/pagesview/PagesView;->getGoodTileSize(III)I

    move-result v1

    aput v1, p1, v0

    .line 1405
    return-void
.end method

.method private getLowerBound(III)I
    .locals 1
    .param p1, "screenDim"    # I
    .param p2, "margin"    # I
    .param p3, "docDim"    # I

    .prologue
    .line 1424
    if-gt p3, p1, :cond_0

    .line 1426
    add-int v0, p2, p3

    sub-int/2addr v0, p1

    .line 1430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPagePositionInDocumentWithZoom(I)Landroid/graphics/Point;
    .locals 8
    .param p1, "page"    # I

    .prologue
    .line 485
    invoke-direct {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginX()F

    move-result v2

    .line 486
    .local v2, "marginX":F
    invoke-direct {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginY()F

    move-result v3

    .line 487
    .local v3, "marginY":F
    move v1, v2

    .line 488
    .local v1, "left":F
    const/4 v4, 0x0

    .line 489
    .local v4, "top":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 492
    add-int/lit8 v5, p1, 0x1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    .line 494
    new-instance v5, Landroid/graphics/Point;

    float-to-int v6, v1

    float-to-int v7, v4

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 490
    :cond_0
    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v5

    add-float/2addr v4, v5

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPagePositionOnScreen(I)Landroid/graphics/Point;
    .locals 6
    .param p1, "page"    # I

    .prologue
    .line 511
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "page must be >= 0: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_0
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v2, v2

    if-lt p1, v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "page number too big: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_1
    invoke-direct {p0, p1}, Lcx/hell/android/lib/pagesview/PagesView;->getPagePositionInDocumentWithZoom(I)Landroid/graphics/Point;

    move-result-object v0

    .line 515
    .local v0, "pagePositionInDocument":Landroid/graphics/Point;
    invoke-direct {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getScreenPositionOverDocument()Landroid/graphics/Point;

    move-result-object v1

    .line 517
    .local v1, "screenPositionInDocument":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Point;

    .line 518
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    .line 519
    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    .line 517
    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getScreenPositionOverDocument()Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 501
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 502
    .local v1, "top":F
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 503
    .local v0, "left":F
    new-instance v2, Landroid/graphics/Point;

    float-to-int v3, v0

    float-to-int v4, v1

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private getUpperBound(III)I
    .locals 1
    .param p1, "screenDim"    # I
    .param p2, "margin"    # I
    .param p3, "docDim"    # I

    .prologue
    .line 1435
    if-gt p3, p1, :cond_0

    .line 1441
    .end local p2    # "margin":I
    :goto_0
    return p2

    .restart local p2    # "margin":I
    :cond_0
    mul-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p3

    sub-int p2, v0, p1

    goto :goto_0
.end method

.method private rectsintersect(IIIIIIII)Z
    .locals 1
    .param p1, "r1x0"    # I
    .param p2, "r1y0"    # I
    .param p3, "r1x1"    # I
    .param p4, "r1y1"    # I
    .param p5, "r2x0"    # I
    .param p6, "r2y0"    # I
    .param p7, "r2x1"    # I
    .param p8, "r2y1"    # I

    .prologue
    .line 974
    if-lt p3, p5, :cond_0

    .line 975
    if-gt p1, p7, :cond_0

    .line 976
    if-lt p4, p6, :cond_0

    .line 977
    if-le p2, p8, :cond_1

    .line 973
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private scale(F)F
    .locals 2
    .param p1, "unscaled"    # F

    .prologue
    .line 460
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    return v0
.end method

.method private unlocksVerticalLock(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 778
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 779
    .local v0, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 781
    .local v1, "dy":F
    float-to-double v3, v1

    const-wide/high16 v5, 0x3fd0000000000000L    # 0.25

    float-to-double v7, v0

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_0

    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxExcursionY:F

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL    # 0.8

    float-to-double v7, v0

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_2

    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 530
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 531
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->activity:Landroid/app/Activity;

    check-cast v0, Lcx/hell/android/pdfview/OpenFileActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->showPageNumber(Z)V

    .line 532
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->postInvalidate()V

    goto :goto_0
.end method

.method public doAction(I)Z
    .locals 4
    .param p1, "action"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1478
    invoke-static {p1}, Lcx/hell/android/pdfview/Actions;->getZoomValue(I)F

    move-result v0

    .line 1479
    .local v0, "zoomValue":F
    const/4 v3, 0x0

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    .line 1480
    invoke-virtual {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->zoom(F)V

    .line 1505
    :goto_0
    return v1

    .line 1483
    :cond_0
    packed-switch p1, :pswitch_data_0

    move v1, v2

    .line 1505
    goto :goto_0

    .line 1485
    :pswitch_0
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToPage(IZ)V

    goto :goto_0

    .line 1488
    :pswitch_1
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToPage(IZ)V

    goto :goto_0

    .line 1491
    :pswitch_2
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToPage(I)V

    goto :goto_0

    .line 1494
    :pswitch_3
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToPage(I)V

    goto :goto_0

    .line 1497
    :pswitch_4
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    add-int/2addr v2, v3

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1498
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    goto :goto_0

    .line 1501
    :pswitch_5
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x10

    sub-int/2addr v2, v3

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1502
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    goto :goto_0

    .line 1483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCurrentAbsoluteZoom()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 1240
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    return v0
.end method

.method public getFindMode()Z
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->findMode:Z

    return v0
.end method

.method public getFindResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcx/hell/android/lib/pagesview/FindResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1279
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v0, v0

    return v0
.end method

.method public getPageRotation()I
    .locals 1

    .prologue
    .line 1258
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    return v0
.end method

.method public goToBookmark()V
    .locals 3

    .prologue
    .line 360
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->absoluteZoomLevel:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    if-ltz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 363
    :cond_0
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 364
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 375
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->absoluteZoomLevel:F

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 368
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->rotation:I

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    .line 369
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    invoke-direct {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getPagePositionInDocumentWithZoom(I)Landroid/graphics/Point;

    move-result-object v0

    .line 370
    .local v0, "pos":Landroid/graphics/Point;
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v1, v1, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    .line 371
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 372
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    invoke-direct {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageWidth(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v2, v2, Lcx/hell/android/pdfview/BookmarkEntry;->offsetX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 416
    iget-boolean v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->nook2:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-static {}, Lcx/hell/android/lib/pagesview/N2EpdController;->setGL16Mode()V

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Lcx/hell/android/lib/pagesview/PagesView;->drawPages(Landroid/graphics/Canvas;)V

    .line 420
    iget-boolean v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->findMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcx/hell/android/lib/pagesview/PagesView;->drawFindResults(Landroid/graphics/Canvas;)V

    .line 421
    :cond_1
    return-void
.end method

.method public onImagesRendered(Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 986
    .local p1, "renderedTiles":Ljava/util/Map;, "Ljava/util/Map<Lcx/hell/android/lib/pagesview/Tile;Landroid/graphics/Bitmap;>;"
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 988
    .local v23, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    move-object/from16 v0, p0

    iget v3, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int v7, v2, v3

    .line 989
    .local v7, "viewx0":I
    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    move-object/from16 v0, p0

    iget v3, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v2, v3

    .line 991
    .local v8, "viewy0":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v0, v2

    move/from16 v16, v0

    .line 992
    .local v16, "pageCount":I
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginX()F

    move-result v12

    .line 993
    .local v12, "currentMarginX":F
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginY()F

    move-result v13

    .line 995
    .local v13, "currentMarginY":F
    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    float-to-int v3, v12

    .line 996
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMaxPageWidth()I

    move-result v4

    .line 995
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->adjustPosition(IIII)I

    move-result v7

    .line 997
    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    float-to-int v3, v13

    .line 998
    invoke-direct/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentDocumentHeight()I

    move-result v4

    .line 997
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2, v3, v4}, Lcx/hell/android/lib/pagesview/PagesView;->adjustPosition(IIII)I

    move-result v8

    .line 1000
    move v14, v13

    .line 1001
    .local v14, "currpageoff":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    invoke-virtual {v2}, Lcx/hell/android/lib/pagesview/PagesProvider;->getRenderAhead()F

    move-result v24

    .line 1005
    .local v24, "renderAhead":F
    const/16 v21, 0x0

    .line 1012
    .local v21, "pagey0":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 1052
    const-string v2, "cx.hell.android.pdfview"

    const-string v3, "New bitmap does not require redraw"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_1
    return-void

    .line 1015
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageWidth(I)I

    move-result v18

    .line 1016
    .local v18, "pageWidth":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v17, v0

    .line 1018
    .local v17, "pageHeight":I
    move/from16 v19, v12

    .line 1019
    .local v19, "pagex0":F
    move/from16 v0, v18

    int-to-float v2, v0

    add-float/2addr v2, v12

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v20, v0

    .line 1020
    .local v20, "pagex1":F
    move/from16 v21, v14

    .line 1021
    move/from16 v0, v17

    int-to-float v2, v0

    add-float/2addr v2, v14

    float-to-int v2, v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 1024
    .local v22, "pagey1":F
    move/from16 v0, v19

    float-to-int v3, v0

    move/from16 v0, v21

    float-to-int v4, v0

    move/from16 v0, v20

    float-to-int v5, v0

    move/from16 v0, v22

    float-to-int v6, v0

    .line 1025
    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    add-int v9, v7, v2

    .line 1026
    move-object/from16 v0, p0

    iget v2, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    add-int v10, v8, v2

    move-object/from16 v2, p0

    .line 1023
    invoke-direct/range {v2 .. v10}, Lcx/hell/android/lib/pagesview/PagesView;->rectsintersect(IIIIIIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1029
    int-to-float v2, v7

    sub-float v26, v19, v2

    .line 1030
    .local v26, "x":F
    int-to-float v2, v8

    sub-float v27, v21, v2

    .line 1032
    .local v27, "y":F
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1050
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v2

    add-float/2addr v2, v13

    add-float/2addr v14, v2

    .line 1012
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1032
    .restart local v26    # "x":F
    .restart local v27    # "y":F
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcx/hell/android/lib/pagesview/Tile;

    .line 1033
    .local v25, "tile":Lcx/hell/android/lib/pagesview/Tile;
    invoke-virtual/range {v25 .. v25}, Lcx/hell/android/lib/pagesview/Tile;->getPage()I

    move-result v3

    if-ne v3, v15, :cond_1

    .line 1034
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Bitmap;

    .line 1036
    .local v11, "b":Landroid/graphics/Bitmap;
    invoke-virtual/range {v25 .. v25}, Lcx/hell/android/lib/pagesview/Tile;->getX()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v26

    float-to-int v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1037
    invoke-virtual/range {v25 .. v25}, Lcx/hell/android/lib/pagesview/Tile;->getY()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v27

    float-to-int v3, v3

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1038
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1039
    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, v23

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1041
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    move-object/from16 v0, p0

    iget v6, v0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    int-to-float v6, v6

    mul-float v6, v6, v24

    float-to-int v6, v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    const-string v2, "cx.hell.android.pdfview"

    const-string v3, "New bitmap forces redraw"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcx/hell/android/lib/pagesview/PagesView;->postInvalidate()V

    goto/16 :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 880
    iget-boolean v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageWithVolume:Z

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 882
    packed-switch p2, :pswitch_data_0

    .line 892
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 893
    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->actions:Lcx/hell/android/pdfview/Actions;

    invoke-virtual {v3, p2}, Lcx/hell/android/pdfview/Actions;->getAction(I)I

    move-result v0

    .line 895
    .local v0, "action":I
    sparse-switch p2, :sswitch_data_0

    .line 956
    .end local v0    # "action":I
    :cond_1
    :goto_0
    return v1

    .line 884
    :pswitch_0
    iput-boolean v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeUpIsDown:Z

    move v1, v2

    .line 885
    goto :goto_0

    .line 887
    :pswitch_1
    iput-boolean v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeDownIsDown:Z

    move v1, v2

    .line 888
    goto :goto_0

    .line 897
    .restart local v0    # "action":I
    :sswitch_0
    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->activity:Landroid/app/Activity;

    check-cast v1, Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-virtual {v1}, Lcx/hell/android/pdfview/OpenFileActivity;->showFindDialog()V

    move v1, v2

    .line 898
    goto :goto_0

    .line 900
    :sswitch_1
    if-eqz v0, :cond_1

    .line 902
    iget-boolean v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeDownIsDown:Z

    if-nez v1, :cond_2

    .line 907
    invoke-virtual {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    .line 909
    :cond_2
    iput-boolean v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeDownIsDown:Z

    move v1, v2

    .line 910
    goto :goto_0

    .line 912
    :sswitch_2
    if-eqz v0, :cond_1

    .line 914
    iget-boolean v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageWithVolume:Z

    if-eqz v3, :cond_1

    .line 916
    iget-boolean v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeUpIsDown:Z

    if-nez v1, :cond_3

    .line 917
    invoke-virtual {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    .line 919
    :cond_3
    iput-boolean v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->volumeUpIsDown:Z

    move v1, v2

    .line 920
    goto :goto_0

    .line 929
    :sswitch_3
    invoke-virtual {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    move v1, v2

    .line 930
    goto :goto_0

    .line 934
    :sswitch_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    move v1, v2

    .line 935
    goto :goto_0

    .line 938
    :sswitch_5
    invoke-virtual {p0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->doAction(I)Z

    move v1, v2

    .line 939
    goto :goto_0

    .line 941
    :sswitch_6
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    sub-int/2addr v1, v3

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 942
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    move v1, v2

    .line 943
    goto :goto_0

    .line 945
    :sswitch_7
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 946
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    move v1, v2

    .line 947
    goto :goto_0

    .line 949
    :sswitch_8
    const v1, 0x3f68ba2e

    invoke-virtual {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->zoom(F)V

    move v1, v2

    .line 950
    goto :goto_0

    .line 952
    :sswitch_9
    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {p0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->zoom(F)V

    move v1, v2

    .line 953
    goto :goto_0

    .line 882
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 895
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x24 -> :sswitch_6
        0x26 -> :sswitch_5
        0x27 -> :sswitch_4
        0x28 -> :sswitch_7
        0x2b -> :sswitch_8
        0x2c -> :sswitch_9
        0x3e -> :sswitch_5
        0x43 -> :sswitch_4
        0x54 -> :sswitch_0
        0x5c -> :sswitch_3
        0x5d -> :sswitch_3
        0x5e -> :sswitch_3
        0x5f -> :sswitch_3
    .end sparse-switch
.end method

.method public onRenderingException(Lcx/hell/android/lib/pagesview/RenderingException;)V
    .locals 3
    .param p1, "reason"    # Lcx/hell/android/lib/pagesview/RenderingException;

    .prologue
    .line 1061
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->activity:Landroid/app/Activity;

    .line 1062
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcx/hell/android/lib/pagesview/RenderingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Lcx/hell/android/lib/pagesview/PagesView$3;

    invoke-direct {v2, p0, v0, v1}, Lcx/hell/android/lib/pagesview/PagesView$3;-><init>(Lcx/hell/android/lib/pagesview/PagesView;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->post(Ljava/lang/Runnable;)Z

    .line 1082
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 346
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    .line 347
    iput p2, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    .line 348
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 350
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    int-to-float v0, v0

    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v1, v1, v3

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 351
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v2, v2, v3

    aget v2, v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 349
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    .line 353
    :cond_0
    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 354
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->goToBookmark()V

    .line 356
    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v9, 0x41200000    # 10.0f

    const v8, 0x3dcccccd    # 0.1f

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastControlsUseMillis:J

    .line 808
    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 810
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 811
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downX:F

    .line 812
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downY:F

    .line 813
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downX:F

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastX:F

    .line 814
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->downY:F

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastY:F

    .line 815
    iget-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->verticalScrollLock:Z

    iput-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lockedVertically:Z

    .line 816
    const/4 v4, 0x0

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxExcursionY:F

    .line 817
    const/4 v4, 0x0

    iput-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->scroller:Landroid/widget/Scroller;

    .line 873
    :cond_0
    :goto_0
    return v6

    .line 819
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x105

    if-ne v4, v5, :cond_2

    .line 820
    invoke-static {p2}, Lcx/hell/android/pdfview/AndroidReflections;->getMotionEventPointerCount(Landroid/view/MotionEvent;)I

    move-result v4

    if-lt v4, v7, :cond_2

    .line 821
    invoke-direct {p0, p2}, Lcx/hell/android/lib/pagesview/PagesView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 822
    .local v0, "d":F
    cmpl-float v4, v0, v10

    if-lez v4, :cond_0

    .line 823
    iput-boolean v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    .line 824
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    .line 825
    invoke-direct {p0, p2}, Lcx/hell/android/lib/pagesview/PagesView;->distance(Landroid/view/MotionEvent;)F

    move-result v4

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtDistanceStart:F

    .line 826
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtDistanceStart:F

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtLastDistance:F

    goto :goto_0

    .line 829
    .end local v0    # "d":F
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_9

    .line 830
    iget-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    if-eqz v4, :cond_5

    invoke-static {p2}, Lcx/hell/android/pdfview/AndroidReflections;->getMotionEventPointerCount(Landroid/view/MotionEvent;)I

    move-result v4

    if-lt v4, v7, :cond_5

    .line 831
    invoke-direct {p0, p2}, Lcx/hell/android/lib/pagesview/PagesView;->distance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 832
    .restart local v0    # "d":F
    cmpl-float v4, v0, v10

    if-lez v4, :cond_0

    .line 833
    const v4, 0x3f19999a    # 0.6f

    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtLastDistance:F

    mul-float/2addr v4, v5

    const v5, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v0

    add-float v0, v4, v5

    .line 834
    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtLastDistance:F

    .line 835
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtDistanceStart:F

    div-float v4, v0, v4

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    .line 836
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_4

    .line 837
    iput v8, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    .line 840
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    goto :goto_0

    .line 838
    :cond_4
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    cmpl-float v4, v4, v9

    if-lez v4, :cond_3

    .line 839
    iput v9, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    goto :goto_1

    .line 844
    .end local v0    # "d":F
    :cond_5
    iget-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lockedVertically:Z

    if-eqz v4, :cond_6

    invoke-direct {p0, p2}, Lcx/hell/android/lib/pagesview/PagesView;->unlocksVerticalLock(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 845
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lockedVertically:Z

    .line 847
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastX:F

    sub-float v1, v4, v5

    .line 848
    .local v1, "dx":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastY:F

    sub-float v2, v4, v5

    .line 850
    .local v2, "dy":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->downY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 852
    .local v3, "excursionY":F
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxExcursionY:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_7

    .line 853
    iput v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxExcursionY:F

    .line 855
    :cond_7
    iget-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lockedVertically:Z

    if-eqz v4, :cond_8

    .line 856
    const/4 v1, 0x0

    .line 858
    :cond_8
    neg-float v4, v1

    float-to-int v4, v4

    neg-float v5, v2

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcx/hell/android/lib/pagesview/PagesView;->doScroll(II)V

    .line 860
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastX:F

    .line 861
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->lastY:F

    goto/16 :goto_0

    .line 864
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    .end local v3    # "excursionY":F
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v6, :cond_a

    .line 865
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x106

    if-ne v4, v5, :cond_0

    .line 866
    :cond_a
    iget-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    if-eqz v4, :cond_0

    .line 867
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtDebounce:J

    .line 868
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomActive:Z

    .line 869
    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->mtZoomValue:F

    invoke-virtual {p0, v4}, Lcx/hell/android/lib/pagesview/PagesView;->zoom(F)V

    goto/16 :goto_0
.end method

.method public pagePosition(I)F
    .locals 4
    .param p1, "page"    # I

    .prologue
    .line 1089
    const/4 v1, 0x0

    .line 1091
    .local v1, "top":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_1

    .line 1095
    if-lez p1, :cond_0

    .line 1096
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    int-to-float v2, v2

    invoke-direct {p0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v2

    int-to-float v3, p1

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 1098
    :cond_0
    return v1

    .line 1092
    :cond_1
    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v2

    add-float/2addr v1, v2

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized rotate(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1179
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    .line 1180
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    monitor-exit p0

    return-void

    .line 1179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scrollToFindResult(I)V
    .locals 8
    .param p1, "n"    # I

    .prologue
    .line 1219
    iget-object v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1220
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1221
    .local v0, "center":Landroid/graphics/Rect;
    iget-object v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcx/hell/android/lib/pagesview/FindResult;

    .line 1223
    .local v1, "findResult":Lcx/hell/android/lib/pagesview/FindResult;
    iget-object v5, v1, Lcx/hell/android/lib/pagesview/FindResult;->markers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1227
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {p0, v5}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v3

    .line 1228
    .local v3, "x":F
    iget v5, v1, Lcx/hell/android/lib/pagesview/FindResult;->page:I

    invoke-virtual {p0, v5}, Lcx/hell/android/lib/pagesview/PagesView;->pagePosition(I)F

    move-result v5

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcx/hell/android/lib/pagesview/PagesView;->scale(F)F

    move-result v6

    add-float v4, v5, v6

    .line 1230
    .local v4, "y":F
    invoke-direct {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentMarginX()F

    move-result v5

    add-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 1231
    float-to-int v5, v4

    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    goto :goto_0

    .line 1223
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1224
    .local v2, "marker":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method public declared-synchronized scrollToPage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 1085
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToPage(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit p0

    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scrollToPage(IZ)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "positionAtTop"    # Z

    .prologue
    .line 1109
    monitor-enter p0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1112
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    .line 1113
    :try_start_0
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, p1}, Lcx/hell/android/lib/pagesview/PagesView;->pagePosition(I)F

    move-result v2

    add-float v0, v1, v2

    .line 1119
    .local v0, "top":F
    :goto_1
    float-to-int v1, v0

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1120
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    .line 1121
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    monitor-exit p0

    return-void

    .line 1110
    .end local v0    # "top":F
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getPageCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->getPageCount()I

    move-result v1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    .line 1116
    :cond_2
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    invoke-virtual {p0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->pagePosition(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0, p1}, Lcx/hell/android/lib/pagesview/PagesView;->pagePosition(I)F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-float v0, v1, v2

    .restart local v0    # "top":F
    goto :goto_1

    .line 1109
    .end local v0    # "top":F
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setActions(Lcx/hell/android/pdfview/Actions;)V
    .locals 0
    .param p1, "actions"    # Lcx/hell/android/pdfview/Actions;

    .prologue
    .line 1510
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->actions:Lcx/hell/android/pdfview/Actions;

    .line 1511
    return-void
.end method

.method public setColorMode(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .prologue
    .line 1388
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->colorMode:I

    .line 1389
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1390
    return-void
.end method

.method public setDoubleTap(I)V
    .locals 0
    .param p1, "doubleTapAction"    # I

    .prologue
    .line 1474
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->doubleTapAction:I

    .line 1475
    return-void
.end method

.method public setEink(Z)V
    .locals 0
    .param p1, "eink"    # Z

    .prologue
    .line 1514
    iput-boolean p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->eink:Z

    .line 1515
    return-void
.end method

.method public declared-synchronized setFindMode(Z)V
    .locals 1
    .param p1, "m"    # Z

    .prologue
    .line 1188
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->findMode:Z

    if-eq v0, p1, :cond_0

    .line 1189
    iput-boolean p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->findMode:Z

    .line 1190
    if-nez p1, :cond_0

    .line 1191
    const/4 v0, 0x0

    iput-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    :cond_0
    monitor-exit p0

    return-void

    .line 1188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFindResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcx/hell/android/lib/pagesview/FindResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1272
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/FindResult;>;"
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->findResults:Ljava/util/List;

    .line 1273
    return-void
.end method

.method public setNook2(Z)V
    .locals 0
    .param p1, "nook2"    # Z

    .prologue
    .line 1518
    iput-boolean p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->nook2:Z

    .line 1519
    return-void
.end method

.method public setPageWithVolume(Z)V
    .locals 0
    .param p1, "pageWithVolume"    # Z

    .prologue
    .line 1398
    iput-boolean p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageWithVolume:Z

    .line 1399
    return-void
.end method

.method public setPagesProvider(Lcx/hell/android/lib/pagesview/PagesProvider;)V
    .locals 7
    .param p1, "pagesProvider"    # Lcx/hell/android/lib/pagesview/PagesProvider;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 378
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    .line 379
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    if-eqz v2, :cond_4

    .line 380
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    invoke-virtual {v2}, Lcx/hell/android/lib/pagesview/PagesProvider;->getPageSizes()[[I

    move-result-object v2

    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    .line 382
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxRealPageSize:[F

    aput v3, v2, v5

    .line 383
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxRealPageSize:[F

    aput v3, v2, v6

    .line 384
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->realDocumentSize:[F

    aput v3, v2, v5

    .line 385
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->realDocumentSize:[F

    aput v3, v2, v6

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 394
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    if-lez v2, :cond_0

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    if-lez v2, :cond_0

    .line 396
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v3, v3, v5

    aget v3, v3, v6

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 397
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    int-to-float v3, v3

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v4, v4, v5

    aget v4, v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 395
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    .line 398
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 399
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 404
    .end local v0    # "i":I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pagesProvider:Lcx/hell/android/lib/pagesview/PagesProvider;

    invoke-virtual {v2, p0}, Lcx/hell/android/lib/pagesview/PagesProvider;->setOnImageRenderedListener(Lcx/hell/android/lib/pagesview/OnImageRenderedListener;)V

    .line 405
    return-void

    .line 388
    .restart local v0    # "i":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_2
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v2, v2, v0

    aget v2, v2, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxRealPageSize:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 390
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->maxRealPageSize:[F

    iget-object v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    int-to-float v3, v3

    aput v3, v2, v1

    .line 391
    :cond_3
    iget-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->realDocumentSize:[F

    aget v3, v2, v1

    iget-object v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    aget-object v4, v4, v0

    aget v4, v4, v1

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v2, v1

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    goto :goto_1
.end method

.method public setRotation(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 1374
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    if-ne v0, p1, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1376
    :cond_0
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    .line 1377
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rotation changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    goto :goto_0
.end method

.method public setShowZoomOnScroll(Z)V
    .locals 0
    .param p1, "showZoomOnScroll"    # Z

    .prologue
    .line 1522
    iput-boolean p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->showZoomOnScroll:Z

    .line 1523
    return-void
.end method

.method public setSideMargins(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 1464
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    .line 1465
    return-void
.end method

.method public setStartBookmark(Lcx/hell/android/pdfview/Bookmark;Ljava/lang/String;)V
    .locals 2
    .param p1, "b"    # Lcx/hell/android/pdfview/Bookmark;
    .param p2, "bookmarkName"    # Ljava/lang/String;

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1, p2}, Lcx/hell/android/pdfview/Bookmark;->getLast(Ljava/lang/String;)Lcx/hell/android/pdfview/BookmarkEntry;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    .line 321
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v0, v0, Lcx/hell/android/pdfview/BookmarkEntry;->numberOfPages:I

    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v1, v1

    if-eq v0, v1, :cond_2

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v0, v0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    if-lez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->bookmarkToRestore:Lcx/hell/android/pdfview/BookmarkEntry;

    iget v0, v0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    goto :goto_0
.end method

.method public setTopMargin(I)V
    .locals 3
    .param p1, "margin"    # I

    .prologue
    .line 1468
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    sub-int v0, p1, v1

    .line 1469
    .local v0, "delta":I
    iget v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1470
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginY:I

    .line 1471
    return-void
.end method

.method public setVerticalScrollLock(Z)V
    .locals 0
    .param p1, "verticalScrollLock"    # Z

    .prologue
    .line 1383
    iput-boolean p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->verticalScrollLock:Z

    .line 1384
    return-void
.end method

.method public setZoomIncrement(F)V
    .locals 0
    .param p1, "step"    # F

    .prologue
    .line 1394
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->step:F

    .line 1395
    return-void
.end method

.method public setZoomLayout(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "zoomLayout"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1526
    iput-object p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLayout:Landroid/widget/LinearLayout;

    .line 1527
    return-void
.end method

.method public setZoomLevel(I)V
    .locals 3
    .param p1, "zoomLevel"    # I

    .prologue
    .line 1361
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    if-ne v0, p1, :cond_0

    .line 1367
    :goto_0
    return-void

    .line 1363
    :cond_0
    iput p1, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 1364
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zoom level changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    const/4 v0, 0x0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    .line 1366
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    goto :goto_0
.end method

.method public toBookmarkEntry()Lcx/hell/android/pdfview/BookmarkEntry;
    .locals 7

    .prologue
    .line 1458
    new-instance v0, Lcx/hell/android/pdfview/BookmarkEntry;

    iget-object v1, p0, Lcx/hell/android/lib/pagesview/PagesView;->pageSizes:[[I

    array-length v1, v1

    .line 1459
    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->scaling0:F

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->rotation:I

    .line 1460
    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    iget v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    invoke-direct {p0, v6}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageWidth(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    sub-int/2addr v5, v6

    .line 1458
    invoke-direct/range {v0 .. v5}, Lcx/hell/android/pdfview/BookmarkEntry;-><init>(IIFII)V

    return-object v0
.end method

.method public zoom(F)V
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 1322
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 1323
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 1324
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1325
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zoom level changed to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    const/4 v0, 0x0

    iput v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    .line 1327
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1328
    return-void
.end method

.method public zoomFit()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1346
    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    if-gez v5, :cond_0

    move v0, v4

    .line 1347
    .local v0, "page":I
    :goto_0
    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    iget v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    mul-int/2addr v5, v6

    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageWidth(I)I

    move-result v6

    div-int v2, v5, v6

    .line 1348
    .local v2, "z1":I
    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    iget v6, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageHeight(I)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 1349
    .local v3, "z2":I
    if-ge v3, v2, :cond_1

    .end local v3    # "z2":I
    :goto_1
    iput v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 1350
    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->getPagePositionInDocumentWithZoom(I)Landroid/graphics/Point;

    move-result-object v1

    .line 1351
    .local v1, "pos":Landroid/graphics/Point;
    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 1352
    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    iput v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1353
    iput v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    .line 1354
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1355
    return-void

    .line 1346
    .end local v0    # "page":I
    .end local v1    # "pos":Landroid/graphics/Point;
    .end local v2    # "z1":I
    :cond_0
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    goto :goto_0

    .restart local v0    # "page":I
    .restart local v2    # "z1":I
    .restart local v3    # "z2":I
    :cond_1
    move v3, v2

    .line 1349
    goto :goto_1
.end method

.method public zoomWidth()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1332
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    if-gez v3, :cond_0

    move v0, v2

    .line 1333
    .local v0, "page":I
    :goto_0
    invoke-direct {p0, v0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPageWidth(I)I

    move-result v1

    .line 1334
    .local v1, "pageWidth":I
    if-gtz v1, :cond_1

    .line 1335
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid page "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1332
    .end local v0    # "page":I
    .end local v1    # "pageWidth":I
    :cond_0
    iget v0, p0, Lcx/hell/android/lib/pagesview/PagesView;->currentPage:I

    goto :goto_0

    .line 1337
    .restart local v0    # "page":I
    .restart local v1    # "pageWidth":I
    :cond_1
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    mul-int/2addr v3, v4

    div-int/2addr v3, v1

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->height:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->top:I

    .line 1338
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    iget v4, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    iget v5, p0, Lcx/hell/android/lib/pagesview/PagesView;->marginX:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    div-int/2addr v3, v1

    iput v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomLevel:I

    .line 1339
    iget v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->width:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcx/hell/android/lib/pagesview/PagesView;->left:I

    .line 1340
    iput v2, p0, Lcx/hell/android/lib/pagesview/PagesView;->zoomToRestore:I

    .line 1341
    invoke-virtual {p0}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1342
    return-void
.end method
