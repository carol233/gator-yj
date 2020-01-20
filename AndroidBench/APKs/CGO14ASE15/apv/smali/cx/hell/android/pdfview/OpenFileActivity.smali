.class public Lcx/hell/android/pdfview/OpenFileActivity;
.super Landroid/app/Activity;
.source "OpenFileActivity.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcx/hell/android/pdfview/OpenFileActivity$Finder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"

.field private static final ZOOM_COLOR_GREEN:I = 0x2

.field private static final ZOOM_COLOR_NORMAL:I = 0x0

.field private static final ZOOM_COLOR_RED:I = 0x1

.field private static final pageNumberAnimations:[I

.field private static final zoomAnimations:[I

.field private static final zoomDownId:[I

.field private static final zoomUpId:[I

.field private static final zoomWidthId:[I


# instance fields
.field private aboutMenuItem:Landroid/view/MenuItem;

.field private actions:Lcx/hell/android/pdfview/Actions;

.field private activityLayout:Landroid/widget/RelativeLayout;

.field private box:I

.field private chooseFileMenuItem:Landroid/view/MenuItem;

.field private clearFindTextMenuItem:Landroid/view/MenuItem;

.field private colorMode:I

.field private currentFindResultNumber:Ljava/lang/Integer;

.field private currentFindResultPage:Ljava/lang/Integer;

.field private eink:Z

.field private fadeStartOffset:I

.field private filePath:Ljava/lang/String;

.field private findButtonsLayout:Landroid/widget/LinearLayout;

.field private findHideButton:Landroid/widget/Button;

.field private findNextButton:Landroid/widget/Button;

.field private findPrevButton:Landroid/widget/Button;

.field private findText:Ljava/lang/String;

.field private findTextInputField:Landroid/widget/EditText;

.field private findTextMenuItem:Landroid/view/MenuItem;

.field private gotoPageMenuItem:Landroid/view/MenuItem;

.field private gravity:[F

.field private gravityAge:J

.field private history:Z

.field private optionsMenuItem:Landroid/view/MenuItem;

.field private pageHandler:Landroid/os/Handler;

.field private pageNumberAnim:Landroid/view/animation/Animation;

.field private pageNumberInputField:Landroid/widget/EditText;

.field private pageNumberTextView:Landroid/widget/TextView;

.field private pageRunnable:Ljava/lang/Runnable;

.field private pagesView:Lcx/hell/android/lib/pagesview/PagesView;

.field private pdf:Lcx/hell/android/lib/pdf/PDF;

.field private pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

.field private prevOrientation:I

.field private rotateLeftMenuItem:Landroid/view/MenuItem;

.field private rotateRightMenuItem:Landroid/view/MenuItem;

.field private sensorManager:Landroid/hardware/SensorManager;

.field public showZoomOnScroll:Z

.field private zoomAnim:Landroid/view/animation/Animation;

.field private zoomDownButton:Landroid/widget/ImageButton;

.field private zoomHandler:Landroid/os/Handler;

.field private zoomLayout:Landroid/widget/LinearLayout;

.field private zoomRunnable:Ljava/lang/Runnable;

.field private zoomUpButton:Landroid/widget/ImageButton;

.field private zoomWidthButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnimations:[I

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnimations:[I

    .line 170
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpId:[I

    .line 173
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownId:[I

    .line 176
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthId:[I

    .line 73
    return-void

    .line 77
    :array_0
    .array-data 4
        0x7f040006
        0x7f040005
        0x7f040004
    .end array-data

    .line 81
    :array_1
    .array-data 4
        0x7f040002
        0x7f040001
        0x7f040000
        0x7f040003
    .end array-data

    .line 170
    :array_2
    .array-data 4
        0x7f020007
        0x7f02002a
        0x7f020015
    .end array-data

    .line 173
    :array_3
    .array-data 4
        0x7f020001
        0x7f020026
        0x7f020011
    .end array-data

    .line 176
    :array_4
    .array-data 4
        0x7f02000d
        0x7f02002f
        0x7f020019
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 86
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    .line 87
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    .line 108
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    .line 109
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->actions:Lcx/hell/android/pdfview/Actions;

    .line 111
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomHandler:Landroid/os/Handler;

    .line 112
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageHandler:Landroid/os/Handler;

    .line 113
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomRunnable:Ljava/lang/Runnable;

    .line 114
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageRunnable:Ljava/lang/Runnable;

    .line 116
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    .line 117
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gotoPageMenuItem:Landroid/view/MenuItem;

    .line 118
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateLeftMenuItem:Landroid/view/MenuItem;

    .line 119
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateRightMenuItem:Landroid/view/MenuItem;

    .line 120
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextMenuItem:Landroid/view/MenuItem;

    .line 121
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->clearFindTextMenuItem:Landroid/view/MenuItem;

    .line 122
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->chooseFileMenuItem:Landroid/view/MenuItem;

    .line 123
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    .line 129
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberInputField:Landroid/widget/EditText;

    .line 130
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextInputField:Landroid/widget/EditText;

    .line 132
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    .line 133
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findPrevButton:Landroid/widget/Button;

    .line 134
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findNextButton:Landroid/widget/Button;

    .line 135
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findHideButton:Landroid/widget/Button;

    .line 137
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    .line 138
    iput-boolean v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->eink:Z

    .line 141
    const-string v0, "/"

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findText:Ljava/lang/String;

    .line 144
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultPage:Ljava/lang/Integer;

    .line 145
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    .line 158
    const/4 v0, 0x2

    iput v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->box:I

    .line 160
    iput-boolean v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->showZoomOnScroll:Z

    .line 162
    const/16 v0, 0x1b58

    iput v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->fadeStartOffset:I

    .line 164
    iput v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->colorMode:I

    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravityAge:J

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->history:Z

    .line 73
    return-void

    .line 179
    :array_0
    .array-data 4
        0x0
        -0x3ee30a3d    # -9.81f
        0x0
    .end array-data
.end method

.method static synthetic access$0(Lcx/hell/android/pdfview/OpenFileActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    return-object v0
.end method

.method static synthetic access$10(Lcx/hell/android/pdfview/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->findNext()V

    return-void
.end method

.method static synthetic access$11(Lcx/hell/android/pdfview/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->findHide()V

    return-void
.end method

.method static synthetic access$12(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/pdfview/Actions;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->actions:Lcx/hell/android/pdfview/Actions;

    return-object v0
.end method

.method static synthetic access$13(Lcx/hell/android/pdfview/OpenFileActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcx/hell/android/pdfview/OpenFileActivity;I)V
    .locals 0

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/OpenFileActivity;->gotoPage(I)V

    return-void
.end method

.method static synthetic access$15(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/OpenFileActivity;->errorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16(Lcx/hell/android/pdfview/OpenFileActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextInputField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$17(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/OpenFileActivity;->findText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcx/hell/android/pdfview/OpenFileActivity;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultPage:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$3(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pdf/PDF;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    return-object v0
.end method

.method static synthetic access$4(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultPage:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$5(Lcx/hell/android/pdfview/OpenFileActivity;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic access$6(Lcx/hell/android/pdfview/OpenFileActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7(Lcx/hell/android/pdfview/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 685
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->fadeZoom()V

    return-void
.end method

.method static synthetic access$8(Lcx/hell/android/pdfview/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->fadePage()V

    return-void
.end method

.method static synthetic access$9(Lcx/hell/android/pdfview/OpenFileActivity;)V
    .locals 0

    .prologue
    .line 1056
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->findPrev()V

    return-void
.end method

.method private clearFind()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultPage:Ljava/lang/Integer;

    .line 747
    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    .line 748
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->setFindMode(Z)V

    .line 749
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    return-void
.end method

.method private errorMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 759
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 760
    return-void
.end method

.method private fadePage()V
    .locals 3

    .prologue
    .line 723
    iget-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->eink:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 724
    :cond_0
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    :goto_0
    return-void

    .line 727
    :cond_1
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 728
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 729
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private fadeZoom()V
    .locals 3

    .prologue
    .line 692
    iget-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->eink:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 693
    :cond_0
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 700
    :goto_0
    return-void

    .line 696
    :cond_1
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 697
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 698
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private find(Z)V
    .locals 4
    .param p1, "forward"    # Z

    .prologue
    .line 1211
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultPage:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 1213
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    .line 1214
    .local v2, "nextResultNum":I
    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3}, Lcx/hell/android/lib/pagesview/PagesView;->getFindResults()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1216
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    .line 1217
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3, v2}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToFindResult(I)V

    .line 1218
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 1227
    .end local v2    # "nextResultNum":I
    :goto_1
    return-void

    .line 1213
    :cond_0
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    .line 1224
    :cond_1
    new-instance v0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;

    invoke-direct {v0, p0, p1}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;Z)V

    .line 1225
    .local v0, "finder":Lcx/hell/android/pdfview/OpenFileActivity$Finder;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1226
    .local v1, "finderThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private findHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1064
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcx/hell/android/lib/pagesview/PagesView;->setFindMode(Z)V

    .line 1065
    :cond_0
    iput-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultNumber:Ljava/lang/Integer;

    .line 1066
    iput-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->currentFindResultPage:Ljava/lang/Integer;

    .line 1067
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1068
    return-void
.end method

.method private findNext()V
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->find(Z)V

    .line 1051
    return-void
.end method

.method private findPrev()V
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->find(Z)V

    .line 1058
    return-void
.end method

.method private findText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1004
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findText("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findText:Ljava/lang/String;

    .line 1006
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->find(Z)V

    .line 1007
    return-void
.end method

.method private getPDF()Lcx/hell/android/lib/pdf/PDF;
    .locals 9

    .prologue
    .line 547
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 548
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 549
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    .line 550
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    iget-boolean v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->history:Z

    if-eqz v6, :cond_0

    .line 552
    new-instance v4, Lcx/hell/android/pdfview/Recent;

    invoke-direct {v4, p0}, Lcx/hell/android/pdfview/Recent;-><init>(Landroid/content/Context;)V

    .line 553
    .local v4, "recent":Lcx/hell/android/pdfview/Recent;
    const/4 v6, 0x0

    iget-object v7, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcx/hell/android/pdfview/Recent;->add(ILjava/lang/Object;)V

    .line 554
    invoke-virtual {v4}, Lcx/hell/android/pdfview/Recent;->commit()V

    .line 556
    .end local v4    # "recent":Lcx/hell/android/pdfview/Recent;
    :cond_0
    new-instance v6, Lcx/hell/android/lib/pdf/PDF;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->box:I

    invoke-direct {v6, v7, v8}, Lcx/hell/android/lib/pdf/PDF;-><init>(Ljava/io/File;I)V

    .line 565
    :goto_0
    return-object v6

    .line 557
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "content"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 558
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 559
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 561
    .local v2, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v6, "r"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 565
    new-instance v6, Lcx/hell/android/lib/pdf/PDF;

    iget v7, p0, Lcx/hell/android/pdfview/OpenFileActivity;->box:I

    invoke-direct {v6, v2, v7}, Lcx/hell/android/lib/pdf/PDF;-><init>(Landroid/os/ParcelFileDescriptor;I)V

    goto :goto_0

    .line 562
    :catch_0
    move-exception v1

    .line 563
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 567
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "don\'t know how to get filename from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private gotoPage(I)V
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 826
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rewind to page "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v0, p1}, Lcx/hell/android/lib/pagesview/PagesView;->scrollToPage(I)V

    .line 829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->showAnimated(Z)V

    .line 831
    :cond_0
    return-void
.end method

.method private saveLastPage()V
    .locals 5

    .prologue
    .line 837
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v2}, Lcx/hell/android/lib/pagesview/PagesView;->toBookmarkEntry()Lcx/hell/android/pdfview/BookmarkEntry;

    move-result-object v1

    .line 838
    .local v1, "entry":Lcx/hell/android/pdfview/BookmarkEntry;
    new-instance v2, Lcx/hell/android/pdfview/Bookmark;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcx/hell/android/pdfview/Bookmark;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcx/hell/android/pdfview/Bookmark;->open()Lcx/hell/android/pdfview/Bookmark;

    move-result-object v0

    .line 839
    .local v0, "b":Lcx/hell/android/pdfview/Bookmark;
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcx/hell/android/pdfview/Bookmark;->setLast(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V

    .line 840
    invoke-virtual {v0}, Lcx/hell/android/pdfview/Bookmark;->close()V

    .line 841
    const-string v2, "cx.hell.android.pdfview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "last page saved for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method private setFindButtonHandlers()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findPrevButton:Landroid/widget/Button;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$3;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$3;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findNextButton:Landroid/widget/Button;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$4;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$4;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findHideButton:Landroid/widget/Button;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$5;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$5;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    return-void
.end method

.method private setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 634
    iget v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->prevOrientation:I

    if-eq p1, v0, :cond_0

    .line 635
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setOrientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-virtual {p0, p1}, Lcx/hell/android/pdfview/OpenFileActivity;->setRequestedOrientation(I)V

    .line 637
    iput p1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->prevOrientation:I

    .line 639
    :cond_0
    return-void
.end method

.method private setZoomButtonHandlers()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownButton:Landroid/widget/ImageButton;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$6;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$6;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 488
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownButton:Landroid/widget/ImageButton;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$7;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$7;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthButton:Landroid/widget/ImageButton;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$8;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$8;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthButton:Landroid/widget/ImageButton;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$9;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$9;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 504
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpButton:Landroid/widget/ImageButton;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$10;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$10;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpButton:Landroid/widget/ImageButton;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$11;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$11;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 515
    return-void
.end method

.method private setZoomLayout(Landroid/content/SharedPreferences;)V
    .locals 13
    .param p1, "options"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v12, -0x2

    const/high16 v11, 0x42a00000    # 80.0f

    const/4 v10, 0x0

    const/high16 v9, 0x42480000    # 50.0f

    .line 927
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 928
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 930
    invoke-static {p1}, Lcx/hell/android/pdfview/Options;->getColorMode(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 931
    .local v0, "colorMode":I
    const/4 v3, 0x0

    .line 933
    .local v3, "mode":I
    const/4 v5, 0x5

    if-ne v0, v5, :cond_3

    .line 934
    const/4 v3, 0x2

    .line 941
    :cond_0
    :goto_0
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    .line 942
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 945
    :cond_1
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    .line 946
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 947
    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownButton:Landroid/widget/ImageButton;

    .line 948
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownId:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 949
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 950
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomDownButton:Landroid/widget/ImageButton;

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v11

    float-to-int v7, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 951
    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthButton:Landroid/widget/ImageButton;

    .line 952
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthId:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 953
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 954
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomWidthButton:Landroid/widget/ImageButton;

    const/high16 v7, 0x42680000    # 58.0f

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 955
    new-instance v5, Landroid/widget/ImageButton;

    invoke-direct {v5, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpButton:Landroid/widget/ImageButton;

    .line 956
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v7, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpId:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 957
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 958
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomUpButton:Landroid/widget/ImageButton;

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v11

    float-to-int v7, v7

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 960
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-static {v5}, Lcx/hell/android/pdfview/AndroidReflections;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 961
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {v4, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 962
    .local v4, "showMenuButton":Landroid/widget/ImageButton;
    const v5, 0x7f02001d

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 963
    invoke-virtual {v4, v10}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 964
    invoke-virtual {p0, v4}, Lcx/hell/android/pdfview/OpenFileActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 965
    new-instance v5, Lcx/hell/android/pdfview/OpenFileActivity$16;

    invoke-direct {v5, p0}, Lcx/hell/android/pdfview/OpenFileActivity$16;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 970
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    iget v6, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 973
    .end local v4    # "showMenuButton":Landroid/widget/ImageButton;
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 976
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v5, 0xe

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 977
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 978
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->setZoomButtonHandlers()V

    .line 979
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    return-void

    .line 936
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/4 v5, 0x6

    if-ne v0, v5, :cond_0

    .line 937
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method private showGotoPageDialog()V
    .locals 14

    .prologue
    const v13, 0x7f070027

    const/4 v12, 0x5

    const/4 v11, 0x2

    .line 766
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 767
    .local v1, "d":Landroid/app/Dialog;
    const v8, 0x7f070003

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setTitle(I)V

    .line 768
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 769
    .local v0, "contents":Landroid/widget/LinearLayout;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 770
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 771
    .local v3, "label":Landroid/widget/TextView;
    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    invoke-virtual {v8}, Lcx/hell/android/pdfview/PDFPagesProvider;->getPageCount()I

    move-result v6

    .line 772
    .local v6, "pagecount":I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Page number from 1 to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberInputField:Landroid/widget/EditText;

    .line 774
    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberInputField:Landroid/widget/EditText;

    invoke-virtual {v8, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 775
    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberInputField:Landroid/widget/EditText;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v10}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPage()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 776
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 777
    .local v2, "goButton":Landroid/widget/Button;
    const v8, 0x7f070004

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setText(I)V

    .line 778
    new-instance v8, Lcx/hell/android/pdfview/OpenFileActivity$12;

    invoke-direct {v8, p0, v1, v6}, Lcx/hell/android/pdfview/OpenFileActivity$12;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 795
    new-instance v5, Landroid/widget/Button;

    invoke-direct {v5, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 796
    .local v5, "page1Button":Landroid/widget/Button;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " 1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 797
    new-instance v8, Lcx/hell/android/pdfview/OpenFileActivity$13;

    invoke-direct {v8, p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity$13;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    new-instance v4, Landroid/widget/Button;

    invoke-direct {v4, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 804
    .local v4, "lastPageButton":Landroid/widget/Button;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 805
    new-instance v8, Lcx/hell/android/pdfview/OpenFileActivity$14;

    invoke-direct {v8, p0, v1, v6}, Lcx/hell/android/pdfview/OpenFileActivity$14;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 811
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 812
    .local v7, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 813
    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 814
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 815
    iput v11, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 816
    invoke-virtual {v0, v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberInputField:Landroid/widget/EditText;

    invoke-virtual {v0, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 819
    invoke-virtual {v0, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    invoke-virtual {v0, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 822
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 823
    return-void
.end method

.method private startPDF(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "options"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v4, 0x0

    .line 518
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getPDF()Lcx/hell/android/lib/pdf/PDF;

    move-result-object v1

    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    .line 519
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {v1}, Lcx/hell/android/lib/pdf/PDF;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 520
    const-string v1, "cx.hell.android.pdfview"

    const-string v2, "Invalid PDF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {v1}, Lcx/hell/android/lib/pdf/PDF;->isInvalidPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "This file needs a password"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 537
    :goto_0
    return-void

    .line 525
    :cond_0
    const-string v1, "Invalid PDF file"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 529
    :cond_1
    invoke-static {p1}, Lcx/hell/android/pdfview/Options;->getColorMode(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->colorMode:I

    .line 530
    new-instance v1, Lcx/hell/android/pdfview/PDFPagesProvider;

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    .line 531
    const-string v3, "omitImages"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 532
    const-string v4, "renderAhead"

    const/4 v5, 0x1

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcx/hell/android/pdfview/PDFPagesProvider;-><init>(Landroid/app/Activity;Lcx/hell/android/lib/pdf/PDF;ZZ)V

    .line 530
    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    .line 533
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    invoke-virtual {v1, v2}, Lcx/hell/android/lib/pagesview/PagesView;->setPagesProvider(Lcx/hell/android/lib/pagesview/PagesProvider;)V

    .line 534
    new-instance v1, Lcx/hell/android/pdfview/Bookmark;

    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcx/hell/android/pdfview/Bookmark;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcx/hell/android/pdfview/Bookmark;->open()Lcx/hell/android/pdfview/Bookmark;

    move-result-object v0

    .line 535
    .local v0, "b":Lcx/hell/android/pdfview/Bookmark;
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcx/hell/android/lib/pagesview/PagesView;->setStartBookmark(Lcx/hell/android/pdfview/Bookmark;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Lcx/hell/android/pdfview/Bookmark;->close()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 659
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 660
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 661
    :cond_0
    iget-boolean v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->eink:Z

    if-nez v1, :cond_1

    .line 662
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->showAnimated(Z)V

    .line 664
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 648
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 649
    .local v0, "action":I
    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 650
    :cond_0
    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->showPageNumber(Z)V

    .line 651
    iget-boolean v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->showZoomOnScroll:Z

    if-eqz v1, :cond_1

    .line 652
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->showZoom()V

    .line 655
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1310
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 891
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConfigurationChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 1012
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_1

    .line 1013
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1014
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcx/hell/android/pdfview/AboutPDFViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 1043
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 1016
    :cond_1
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gotoPageMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_2

    .line 1017
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->showGotoPageDialog()V

    goto :goto_0

    .line 1018
    :cond_2
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateLeftMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_3

    .line 1019
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcx/hell/android/lib/pagesview/PagesView;->rotate(I)V

    goto :goto_0

    .line 1020
    :cond_3
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateRightMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_4

    .line 1021
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v1, v3}, Lcx/hell/android/lib/pagesview/PagesView;->rotate(I)V

    goto :goto_0

    .line 1022
    :cond_4
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_5

    .line 1023
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->showFindDialog()V

    goto :goto_0

    .line 1024
    :cond_5
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->clearFindTextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_6

    .line 1025
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->clearFind()V

    goto :goto_0

    .line 1026
    :cond_6
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->chooseFileMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_7

    .line 1027
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcx/hell/android/pdfview/ChooseFileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1028
    :cond_7
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_0

    .line 1029
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcx/hell/android/pdfview/Options;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const-string v3, "cx.hell.android.pdfview"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onCreate("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {p0}, Lcx/hell/android/pdfview/Options;->setOrientation(Landroid/app/Activity;)Z

    .line 206
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 208
    .local v2, "options":Landroid/content/SharedPreferences;
    const-string v3, "boxType"

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->box:I

    .line 209
    invoke-virtual {p0, v7}, Lcx/hell/android/pdfview/OpenFileActivity;->requestWindowFeature(I)Z

    .line 213
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 214
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 217
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    .line 220
    new-instance v3, Lcx/hell/android/lib/pagesview/PagesView;

    invoke-direct {v3, p0}, Lcx/hell/android/lib/pagesview/PagesView;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    .line 221
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 222
    invoke-direct {p0, v2}, Lcx/hell/android/pdfview/OpenFileActivity;->startPDF(Landroid/content/SharedPreferences;)V

    .line 223
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {v3}, Lcx/hell/android/lib/pdf/PDF;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->finish()V

    .line 269
    :cond_0
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    .line 270
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 273
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findPrevButton:Landroid/widget/Button;

    .line 274
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findPrevButton:Landroid/widget/Button;

    const-string v4, "Prev"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findPrevButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findNextButton:Landroid/widget/Button;

    .line 277
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findNextButton:Landroid/widget/Button;

    const-string v4, "Next"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 279
    new-instance v3, Landroid/widget/Button;

    invoke-direct {v3, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findHideButton:Landroid/widget/Button;

    .line 280
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findHideButton:Landroid/widget/Button;

    const-string v4, "Hide"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findHideButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 282
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->setFindButtonHandlers()V

    .line 283
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 285
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findButtonsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    .line 290
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41000000    # 8.0f

    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 291
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 294
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 295
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 296
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->activityLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Lcx/hell/android/pdfview/OpenFileActivity;->setContentView(Landroid/view/View;)V

    .line 305
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3, v7}, Lcx/hell/android/lib/pagesview/PagesView;->setFocusable(Z)V

    .line 306
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v3, v7}, Lcx/hell/android/lib/pagesview/PagesView;->setFocusableInTouchMode(Z)V

    .line 308
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomHandler:Landroid/os/Handler;

    .line 309
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageHandler:Landroid/os/Handler;

    .line 310
    new-instance v3, Lcx/hell/android/pdfview/OpenFileActivity$1;

    invoke-direct {v3, p0}, Lcx/hell/android/pdfview/OpenFileActivity$1;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomRunnable:Ljava/lang/Runnable;

    .line 315
    new-instance v3, Lcx/hell/android/pdfview/OpenFileActivity$2;

    invoke-direct {v3, p0}, Lcx/hell/android/pdfview/OpenFileActivity$2;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;)V

    iput-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageRunnable:Ljava/lang/Runnable;

    .line 320
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 984
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 986
    const v0, 0x7f070002

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gotoPageMenuItem:Landroid/view/MenuItem;

    .line 987
    const v0, 0x7f070005

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateRightMenuItem:Landroid/view/MenuItem;

    .line 988
    const v0, 0x7f070006

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateLeftMenuItem:Landroid/view/MenuItem;

    .line 989
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v0}, Lcx/hell/android/lib/pagesview/PagesView;->getFindMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const v0, 0x7f07000b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->clearFindTextMenuItem:Landroid/view/MenuItem;

    .line 992
    :cond_0
    const v0, 0x7f07000c

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->chooseFileMenuItem:Landroid/view/MenuItem;

    .line 993
    const v0, 0x7f070014

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    .line 999
    const v0, 0x7f070007

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextMenuItem:Landroid/view/MenuItem;

    .line 1000
    const v0, 0x7f070001

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    .line 1001
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 854
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateOptionsMenu("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const v0, 0x7f070002

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gotoPageMenuItem:Landroid/view/MenuItem;

    .line 857
    const v0, 0x7f070005

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateRightMenuItem:Landroid/view/MenuItem;

    .line 858
    const v0, 0x7f070006

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateLeftMenuItem:Landroid/view/MenuItem;

    .line 859
    const v0, 0x7f07000b

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->clearFindTextMenuItem:Landroid/view/MenuItem;

    .line 860
    const v0, 0x7f07000c

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->chooseFileMenuItem:Landroid/view/MenuItem;

    .line 861
    const v0, 0x7f070014

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    .line 870
    const v0, 0x7f070007

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextMenuItem:Landroid/view/MenuItem;

    .line 871
    const v0, 0x7f070001

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    .line 872
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 452
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 453
    const-string v0, "cx.hell.android.pdfview"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdf:Lcx/hell/android/lib/pdf/PDF;

    invoke-virtual {v0}, Lcx/hell/android/lib/pdf/PDF;->freeMemory()V

    .line 455
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 599
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_1

    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcx/hell/android/pdfview/AboutPDFViewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 602
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 630
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 603
    :cond_1
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gotoPageMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_2

    .line 604
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->showGotoPageDialog()V

    goto :goto_0

    .line 605
    :cond_2
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateLeftMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_3

    .line 606
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcx/hell/android/lib/pagesview/PagesView;->rotate(I)V

    goto :goto_0

    .line 607
    :cond_3
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->rotateRightMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_4

    .line 608
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v1, v3}, Lcx/hell/android/lib/pagesview/PagesView;->rotate(I)V

    goto :goto_0

    .line 609
    :cond_4
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_5

    .line 610
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->showFindDialog()V

    goto :goto_0

    .line 611
    :cond_5
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->clearFindTextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_6

    .line 612
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->clearFind()V

    goto :goto_0

    .line 613
    :cond_6
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->chooseFileMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_7

    .line 614
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcx/hell/android/pdfview/ChooseFileActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 615
    :cond_7
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_0

    .line 616
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcx/hell/android/pdfview/Options;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 329
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->saveLastPage()V

    .line 331
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 333
    const/4 v1, 0x0

    iput-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 334
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 335
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "prevOrientation"

    iget v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->prevOrientation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 336
    const-string v1, "cx.hell.android.pdfview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prevOrientation saved: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->prevOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 883
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 884
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->clearFindTextMenuItem:Landroid/view/MenuItem;

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v1}, Lcx/hell/android/lib/pagesview/PagesView;->getFindMode()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 885
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 345
    iput-object v11, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 347
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 349
    .local v2, "options":Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcx/hell/android/pdfview/Options;->setOrientation(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    const-string v5, "sensor"

    invoke-virtual {p0, v5}, Lcx/hell/android/pdfview/OpenFileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    .line 351
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v5, v10}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 352
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aput v9, v5, v7

    .line 353
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    const v8, -0x3ee30a3d    # -9.81f

    aput v8, v5, v10

    .line 354
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    const/4 v8, 0x2

    aput v9, v5, v8

    .line 355
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravityAge:J

    .line 356
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v8, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    .line 357
    const/4 v9, 0x3

    .line 356
    invoke-virtual {v5, p0, v8, v9}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 358
    const-string v5, "prevOrientation"

    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->prevOrientation:I

    .line 359
    iget v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->prevOrientation:I

    invoke-virtual {p0, v5}, Lcx/hell/android/pdfview/OpenFileActivity;->setRequestedOrientation(I)V

    .line 366
    :cond_0
    :goto_0
    const-string v5, "history"

    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->history:Z

    .line 367
    const-string v5, "eink"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 368
    .local v0, "eink":Z
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v5, v0}, Lcx/hell/android/lib/pagesview/PagesView;->setEink(Z)V

    .line 369
    if-eqz v0, :cond_1

    .line 370
    const v5, 0x103000c

    invoke-virtual {p0, v5}, Lcx/hell/android/pdfview/OpenFileActivity;->setTheme(I)V

    .line 371
    :cond_1
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const-string v8, "nook2"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setNook2(Z)V

    .line 373
    const-string v5, "keepOn"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 374
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 378
    :goto_1
    new-instance v5, Lcx/hell/android/pdfview/Actions;

    invoke-direct {v5, v2}, Lcx/hell/android/pdfview/Actions;-><init>(Landroid/content/SharedPreferences;)V

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->actions:Lcx/hell/android/pdfview/Actions;

    .line 379
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->actions:Lcx/hell/android/pdfview/Actions;

    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setActions(Lcx/hell/android/pdfview/Actions;)V

    .line 381
    invoke-direct {p0, v2}, Lcx/hell/android/pdfview/OpenFileActivity;->setZoomLayout(Landroid/content/SharedPreferences;)V

    .line 383
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setZoomLayout(Landroid/widget/LinearLayout;)V

    .line 385
    const-string v5, "showZoomOnScroll"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->showZoomOnScroll:Z

    .line 386
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    .line 387
    const-string v8, "sideMargins2"

    const-string v9, "0"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 386
    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setSideMargins(I)V

    .line 388
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    .line 389
    const-string v8, "topMargin"

    const-string v9, "0"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 388
    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setTopMargin(I)V

    .line 391
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const-string v8, "doubleTap"

    .line 392
    const-string v9, "2"

    .line 391
    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setDoubleTap(I)V

    .line 394
    const-string v5, "boxType"

    const-string v8, "2"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 395
    .local v1, "newBox":I
    iget v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->box:I

    if-eq v5, v1, :cond_2

    .line 396
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->saveLastPage()V

    .line 397
    iput v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->box:I

    .line 398
    invoke-direct {p0, v2}, Lcx/hell/android/pdfview/OpenFileActivity;->startPDF(Landroid/content/SharedPreferences;)V

    .line 399
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v5}, Lcx/hell/android/lib/pagesview/PagesView;->goToBookmark()V

    .line 402
    :cond_2
    invoke-static {v2}, Lcx/hell/android/pdfview/Options;->getColorMode(Landroid/content/SharedPreferences;)I

    move-result v5

    iput v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->colorMode:I

    .line 403
    const-string v5, "eink"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->eink:Z

    .line 404
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    iget v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->colorMode:I

    invoke-static {v8}, Lcx/hell/android/pdfview/Options;->getBackColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 405
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    iget v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->colorMode:I

    invoke-static {v8}, Lcx/hell/android/pdfview/Options;->getForeColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 406
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    const/high16 v8, 0x100000

    const-string v9, "extraCache"

    invoke-static {v2, v9, v7}, Lcx/hell/android/pdfview/Options;->getIntFromString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v9

    mul-int/2addr v8, v9

    invoke-virtual {v5, v8}, Lcx/hell/android/pdfview/PDFPagesProvider;->setExtraCache(I)V

    .line 407
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    const-string v8, "omitImages"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcx/hell/android/pdfview/PDFPagesProvider;->setOmitImages(Z)V

    .line 408
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    iget v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->colorMode:I

    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setColorMode(I)V

    .line 410
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    const-string v8, "renderAhead"

    invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcx/hell/android/pdfview/PDFPagesProvider;->setRenderAhead(Z)V

    .line 411
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    const-string v8, "verticalScrollLock"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    invoke-virtual {v5, v8}, Lcx/hell/android/lib/pagesview/PagesView;->setVerticalScrollLock(Z)V

    .line 412
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v5}, Lcx/hell/android/lib/pagesview/PagesView;->invalidate()V

    .line 413
    const-string v5, "zoomAnimation"

    const-string v8, "2"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 415
    .local v4, "zoomAnimNumber":I
    const/16 v5, 0x64

    if-ne v4, v5, :cond_5

    .line 416
    iput-object v11, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    .line 420
    :goto_2
    const-string v5, "pageAnimation"

    const-string v8, "3"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 422
    .local v3, "pageNumberAnimNumber":I
    const/16 v5, 0x64

    if-ne v3, v5, :cond_6

    .line 423
    iput-object v11, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    .line 428
    :goto_3
    const-string v5, "fadeSpeed"

    const-string v8, "7"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->fadeStartOffset:I

    .line 430
    const-string v5, "fullscreen"

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 431
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x400

    invoke-virtual {v5, v8}, Landroid/view/Window;->addFlags(I)V

    .line 434
    :goto_4
    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    if-nez v5, :cond_8

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    if-nez v8, :cond_9

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 443
    invoke-virtual {p0, v10}, Lcx/hell/android/pdfview/OpenFileActivity;->showAnimated(Z)V

    .line 444
    return-void

    .line 362
    .end local v0    # "eink":Z
    .end local v1    # "newBox":I
    .end local v3    # "pageNumberAnimNumber":I
    .end local v4    # "zoomAnimNumber":I
    :cond_3
    invoke-virtual {p0, v10}, Lcx/hell/android/pdfview/OpenFileActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 376
    .restart local v0    # "eink":Z
    :cond_4
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x80

    invoke-virtual {v5, v8}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_1

    .line 419
    .restart local v1    # "newBox":I
    .restart local v4    # "zoomAnimNumber":I
    :cond_5
    sget-object v5, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnimations:[I

    aget v5, v5, v4

    .line 418
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    goto :goto_2

    .line 426
    .restart local v3    # "pageNumberAnimNumber":I
    :cond_6
    sget-object v5, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnimations:[I

    aget v5, v5, v3

    .line 425
    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    goto :goto_3

    .line 433
    :cond_7
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v8, 0x400

    invoke-virtual {v5, v8}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_4

    :cond_8
    move v5, v7

    .line 434
    goto :goto_5

    :cond_9
    move v6, v7

    .line 440
    goto :goto_6
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const v10, 0x3f4ccccd    # 0.8f

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1313
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v4, v4, v7

    mul-float/2addr v4, v10

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v3, v7

    .line 1314
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v4, v4, v8

    mul-float/2addr v4, v10

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v3, v8

    .line 1315
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v4, v4, v6

    mul-float/2addr v4, v10

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    aput v4, v3, v6

    .line 1317
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v7

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v4, v4, v7

    mul-float v0, v3, v4

    .line 1318
    .local v0, "sq0":F
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v4, v4, v8

    mul-float v1, v3, v4

    .line 1319
    .local v1, "sq1":F
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v6

    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v4, v4, v6

    mul-float v2, v3, v4

    .line 1321
    .local v2, "sq2":F
    iget-wide v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravityAge:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravityAge:J

    .line 1323
    iget-wide v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravityAge:J

    const-wide/16 v5, 0x4

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 1340
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    add-float v4, v0, v2

    mul-float/2addr v3, v4

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 1329
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v8

    const/high16 v4, 0x40800000    # 4.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1330
    invoke-direct {p0, v8}, Lcx/hell/android/pdfview/OpenFileActivity;->setOrientation(I)V

    goto :goto_0

    .line 1331
    :cond_2
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v8

    const/high16 v4, -0x3f800000    # -4.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 1332
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lcx/hell/android/pdfview/OpenFileActivity;->setOrientation(I)V

    goto :goto_0

    .line 1334
    :cond_3
    const/high16 v3, 0x40400000    # 3.0f

    add-float v4, v1, v2

    mul-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 1335
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v7

    const/high16 v4, 0x40800000    # 4.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1336
    invoke-direct {p0, v7}, Lcx/hell/android/pdfview/OpenFileActivity;->setOrientation(I)V

    goto :goto_0

    .line 1337
    :cond_4
    iget-object v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->gravity:[F

    aget v3, v3, v7

    const/high16 v4, -0x3f800000    # -4.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 1338
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcx/hell/android/pdfview/OpenFileActivity;->setOrientation(I)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 448
    const-string v0, "cx.hell.android.pdfview"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-void
.end method

.method public showAnimated(Z)V
    .locals 1
    .param p1, "alsoZoom"    # Z

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity;->showZoom()V

    .line 739
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity;->showPageNumber(Z)V

    .line 740
    return-void
.end method

.method public showFindDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 899
    const-string v4, "cx.hell.android.pdfview"

    const-string v5, "find dialog..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 901
    .local v1, "dialog":Landroid/app/Dialog;
    const v4, 0x7f070008

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setTitle(I)V

    .line 902
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 903
    .local v0, "contents":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 904
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextInputField:Landroid/widget/EditText;

    .line 905
    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextInputField:Landroid/widget/EditText;

    iget-object v5, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v5}, Lcx/hell/android/lib/pagesview/PagesView;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x50

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setWidth(I)V

    .line 906
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 907
    .local v2, "goButton":Landroid/widget/Button;
    const v4, 0x7f070009

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(I)V

    .line 908
    new-instance v4, Lcx/hell/android/pdfview/OpenFileActivity$15;

    invoke-direct {v4, p0, v1}, Lcx/hell/android/pdfview/OpenFileActivity$15;-><init>(Lcx/hell/android/pdfview/OpenFileActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 916
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 917
    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 918
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 919
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 920
    iget-object v4, p0, Lcx/hell/android/pdfview/OpenFileActivity;->findTextInputField:Landroid/widget/EditText;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 923
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 924
    return-void
.end method

.method public showPageNumber(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 703
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberAnim:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    .line 704
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pagesView:Lcx/hell/android/lib/pagesview/PagesView;

    invoke-virtual {v2}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 710
    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pdfPagesProvider:Lcx/hell/android/pdfview/PDFPagesProvider;

    invoke-virtual {v2}, Lcx/hell/android/pdfview/PDFPagesProvider;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "newText":Ljava/lang/String;
    if-nez p1, :cond_2

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 715
    :cond_2
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->clearAnimation()V

    .line 718
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 719
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->pageRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcx/hell/android/pdfview/OpenFileActivity;->fadeStartOffset:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showZoom()V
    .locals 4

    .prologue
    .line 674
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomAnim:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 683
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 680
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity;->zoomRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcx/hell/android/pdfview/OpenFileActivity;->fadeStartOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
