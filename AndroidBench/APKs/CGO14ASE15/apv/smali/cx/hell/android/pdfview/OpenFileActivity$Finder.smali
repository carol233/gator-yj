.class Lcx/hell/android/pdfview/OpenFileActivity$Finder;
.super Ljava/lang/Object;
.source "OpenFileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcx/hell/android/pdfview/OpenFileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Finder"
.end annotation


# instance fields
.field private cancelled:Z

.field private dialog:Landroid/app/AlertDialog;

.field private forward:Z

.field private pageCount:I

.field private parent:Lcx/hell/android/pdfview/OpenFileActivity;

.field private startingPage:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcx/hell/android/pdfview/OpenFileActivity;Z)V
    .locals 2
    .param p1, "parent"    # Lcx/hell/android/pdfview/OpenFileActivity;
    .param p2, "forward"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    .line 1076
    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dialog:Landroid/app/AlertDialog;

    .line 1080
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->cancelled:Z

    .line 1086
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    .line 1087
    iput-boolean p2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->forward:Z

    .line 1088
    invoke-static {p1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$0(Lcx/hell/android/pdfview/OpenFileActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->text:Ljava/lang/String;

    .line 1089
    invoke-static {p1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v0

    invoke-virtual {v0}, Lcx/hell/android/lib/pagesview/PagesView;->getPageCount()I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    .line 1090
    invoke-static {p1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$2(Lcx/hell/android/pdfview/OpenFileActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1091
    if-eqz p2, :cond_0

    .line 1092
    invoke-static {p1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$2(Lcx/hell/android/pdfview/OpenFileActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->startingPage:I

    .line 1099
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-static {p1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$2(Lcx/hell/android/pdfview/OpenFileActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->startingPage:I

    goto :goto_0

    .line 1097
    :cond_1
    invoke-static {p1}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v0

    invoke-virtual {v0}, Lcx/hell/android/lib/pagesview/PagesView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->startingPage:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Lcx/hell/android/pdfview/OpenFileActivity;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->startingPage:I

    return v0
.end method

.method static synthetic access$3(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    return v0
.end method

.method static synthetic access$4(Lcx/hell/android/pdfview/OpenFileActivity$Finder;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1076
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$5(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)Z
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->forward:Z

    return v0
.end method

.method private createDialog()V
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder$1;-><init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)V

    invoke-virtual {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1155
    return-void
.end method

.method private findOnPage(I)Ljava/util/List;
    .locals 3
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcx/hell/android/lib/pagesview/FindResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_0
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v0}, Lcx/hell/android/pdfview/OpenFileActivity;->access$3(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pdf/PDF;

    move-result-object v0

    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->text:Ljava/lang/String;

    iget-object v2, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-static {v2}, Lcx/hell/android/pdfview/OpenFileActivity;->access$1(Lcx/hell/android/pdfview/OpenFileActivity;)Lcx/hell/android/lib/pagesview/PagesView;

    move-result-object v2

    invoke-virtual {v2}, Lcx/hell/android/lib/pagesview/PagesView;->getPageRotation()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcx/hell/android/lib/pdf/PDF;->find(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private showFindResults(Ljava/util/List;I)V
    .locals 2
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcx/hell/android/lib/pagesview/FindResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1188
    .local p1, "findResults":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/FindResult;>;"
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;

    invoke-direct {v1, p0, p1, p2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder$5;-><init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;Ljava/util/List;I)V

    invoke-virtual {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1200
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 3

    .prologue
    .line 1172
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dialog:Landroid/app/AlertDialog;

    .line 1173
    .local v0, "dialog":Landroid/app/AlertDialog;
    iget-object v1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    new-instance v2, Lcx/hell/android/pdfview/OpenFileActivity$Finder$4;

    invoke-direct {v2, p0, v0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder$4;-><init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Lcx/hell/android/pdfview/OpenFileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1178
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1180
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCancel("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->cancelled:Z

    .line 1182
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1184
    const-string v0, "cx.hell.android.pdfview"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->cancelled:Z

    .line 1186
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1104
    const/4 v2, -0x1

    .line 1105
    .local v2, "page":I
    invoke-direct {p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->createDialog()V

    .line 1106
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->showDialog()V

    .line 1107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    if-lt v1, v3, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dismissDialog()V

    .line 1125
    :goto_1
    return-void

    .line 1108
    :cond_0
    iget-boolean v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->cancelled:Z

    if-eqz v3, :cond_1

    .line 1109
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dismissDialog()V

    goto :goto_1

    .line 1112
    :cond_1
    iget v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->startingPage:I

    iget v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    add-int/2addr v4, v3

    iget-boolean v3, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->forward:Z

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    add-int/2addr v3, v4

    iget v4, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->pageCount:I

    rem-int v2, v3, v4

    .line 1113
    const-string v3, "cx.hell.android.pdfview"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "searching on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {p0, v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->updateDialog(I)V

    .line 1115
    invoke-direct {p0, v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->findOnPage(I)Ljava/util/List;

    move-result-object v0

    .line 1116
    .local v0, "findResults":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/FindResult;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1117
    const-string v3, "cx.hell.android.pdfview"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "found something at page "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " results"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dismissDialog()V

    .line 1119
    invoke-direct {p0, v0, v2}, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->showFindResults(Ljava/util/List;I)V

    goto :goto_1

    .line 1112
    .end local v0    # "findResults":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/FindResult;>;"
    :cond_2
    neg-int v3, v1

    goto :goto_2

    .line 1107
    .restart local v0    # "findResults":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/lib/pagesview/FindResult;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1101
    iput-object p1, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->dialog:Landroid/app/AlertDialog;

    .line 1102
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 1165
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$Finder$3;

    invoke-direct {v1, p0}, Lcx/hell/android/pdfview/OpenFileActivity$Finder$3;-><init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;)V

    invoke-virtual {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1170
    return-void
.end method

.method public updateDialog(I)V
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 1157
    iget-object v0, p0, Lcx/hell/android/pdfview/OpenFileActivity$Finder;->parent:Lcx/hell/android/pdfview/OpenFileActivity;

    new-instance v1, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;

    invoke-direct {v1, p0, p1}, Lcx/hell/android/pdfview/OpenFileActivity$Finder$2;-><init>(Lcx/hell/android/pdfview/OpenFileActivity$Finder;I)V

    invoke-virtual {v0, v1}, Lcx/hell/android/pdfview/OpenFileActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1163
    return-void
.end method
