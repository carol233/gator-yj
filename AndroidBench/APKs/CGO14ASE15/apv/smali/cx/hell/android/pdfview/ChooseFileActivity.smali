.class public Lcx/hell/android/pdfview/ChooseFileActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ChooseFileActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final PREF_HOME:Ljava/lang/String; = "Home"

.field private static final PREF_TAG:Ljava/lang/String; = "ChooseFileActivity"

.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"

.field private static final recentIds:[I


# instance fields
.field private aboutMenuItem:Landroid/view/MenuItem;

.field private currentPath:Ljava/lang/String;

.field private deleteContextMenuItem:Landroid/view/MenuItem;

.field private dirsFirst:Ljava/lang/Boolean;

.field private fileFilter:Ljava/io/FileFilter;

.field private fileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcx/hell/android/pdfview/FileListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private fileListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcx/hell/android/pdfview/FileListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private filesListView:Landroid/widget/ListView;

.field private history:Ljava/lang/Boolean;

.field private light:Ljava/lang/Boolean;

.field private optionsMenuItem:Landroid/view/MenuItem;

.field private pathTextView:Landroid/widget/TextView;

.field private recent:Lcx/hell/android/pdfview/Recent;

.field private removeContextMenuItem:Landroid/view/MenuItem;

.field private setAsHomeContextMenuItem:Landroid/view/MenuItem;

.field private setAsHomeMenuItem:Landroid/view/MenuItem;

.field private showExtension:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcx/hell/android/pdfview/ChooseFileActivity;->recentIds:[I

    .line 37
    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x7f090007
        0x7f090008
        0x7f090009
        0x7f09000a
        0x7f09000b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 52
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->pathTextView:Landroid/widget/TextView;

    .line 53
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    .line 54
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileFilter:Ljava/io/FileFilter;

    .line 55
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    .line 56
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    .line 57
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    .line 59
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    .line 60
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeMenuItem:Landroid/view/MenuItem;

    .line 61
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    .line 62
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->deleteContextMenuItem:Landroid/view/MenuItem;

    .line 63
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->removeContextMenuItem:Landroid/view/MenuItem;

    .line 64
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeContextMenuItem:Landroid/view/MenuItem;

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->dirsFirst:Ljava/lang/Boolean;

    .line 67
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->showExtension:Ljava/lang/Boolean;

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->history:Ljava/lang/Boolean;

    .line 70
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->light:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcx/hell/android/pdfview/ChooseFileActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1()[I
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcx/hell/android/pdfview/ChooseFileActivity;->recentIds:[I

    return-object v0
.end method

.method static synthetic access$2(Lcx/hell/android/pdfview/ChooseFileActivity;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->dirsFirst:Ljava/lang/Boolean;

    return-object v0
.end method

.method private getHome()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 218
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "defaultHome":Ljava/lang/String;
    const-string v3, "ChooseFileActivity"

    invoke-virtual {p0, v3, v5}, Lcx/hell/android/pdfview/ChooseFileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "Home"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "pathFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private isHome(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 333
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, "pathFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->getHome()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "homeFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 338
    :goto_0
    return v3

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private update()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v7, 0x0

    .line 144
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->pathTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6}, Landroid/widget/ArrayAdapter;->clear()V

    .line 149
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->history:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcx/hell/android/pdfview/ChooseFileActivity;->isHome(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 150
    new-instance v6, Lcx/hell/android/pdfview/Recent;

    invoke-direct {v6, p0}, Lcx/hell/android/pdfview/Recent;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    .line 152
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    invoke-virtual {v6}, Lcx/hell/android/pdfview/Recent;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    sget-object v6, Lcx/hell/android/pdfview/ChooseFileActivity;->recentIds:[I

    array-length v6, v6

    if-lt v4, v6, :cond_3

    .line 163
    .end local v4    # "i":I
    :cond_0
    :goto_1
    new-instance v1, Lcx/hell/android/pdfview/FileListEntry;

    const/4 v6, 0x1

    .line 164
    invoke-virtual {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070010

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-direct {v1, v6, v8}, Lcx/hell/android/pdfview/FileListEntry;-><init>(ILjava/lang/String;)V

    .line 165
    .local v1, "entry":Lcx/hell/android/pdfview/FileListEntry;
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 167
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 168
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 169
    .local v5, "upFolder":Ljava/io/File;
    new-instance v1, Lcx/hell/android/pdfview/FileListEntry;

    .line 170
    .end local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    const-string v6, ".."

    .line 169
    invoke-direct {v1, v7, v10, v5, v6}, Lcx/hell/android/pdfview/FileListEntry;-><init>(IILjava/io/File;Ljava/lang/String;)V

    .line 171
    .restart local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 174
    .end local v5    # "upFolder":Ljava/io/File;
    :cond_1
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileFilter:Ljava/io/FileFilter;

    invoke-virtual {v6, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 176
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    .line 178
    :try_start_0
    new-instance v6, Lcx/hell/android/pdfview/ChooseFileActivity$3;

    invoke-direct {v6, p0}, Lcx/hell/android/pdfview/ChooseFileActivity$3;-><init>(Lcx/hell/android/pdfview/ChooseFileActivity;)V

    invoke-static {v3, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    array-length v8, v3

    move v6, v7

    :goto_2
    if-lt v6, v8, :cond_5

    .line 205
    :cond_2
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 206
    return-void

    .line 153
    .end local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    .end local v3    # "files":[Ljava/io/File;
    .restart local v4    # "i":I
    :cond_3
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    invoke-virtual {v6, v4}, Lcx/hell/android/pdfview/Recent;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, "file":Ljava/io/File;
    new-instance v1, Lcx/hell/android/pdfview/FileListEntry;

    const/4 v6, 0x2

    iget-object v8, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->showExtension:Ljava/lang/Boolean;

    invoke-direct {v1, v6, v4, v2, v8}, Lcx/hell/android/pdfview/FileListEntry;-><init>(IILjava/io/File;Ljava/lang/Boolean;)V

    .line 156
    .restart local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    iget-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 160
    .end local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "i":I
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    goto :goto_1

    .line 195
    .restart local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    .restart local v3    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to sort file list "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for path "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 199
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    aget-object v2, v3, v6

    .line 200
    .restart local v2    # "file":Ljava/io/File;
    new-instance v1, Lcx/hell/android/pdfview/FileListEntry;

    .end local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    iget-object v9, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->showExtension:Ljava/lang/Boolean;

    invoke-direct {v1, v7, v10, v2, v9}, Lcx/hell/android/pdfview/FileListEntry;-><init>(IILjava/io/File;Ljava/lang/Boolean;)V

    .line 201
    .restart local v1    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    iget-object v9, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v9, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 199
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 307
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v1, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 308
    .local v1, "position":I
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->deleteContextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v2, :cond_1

    .line 309
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/pdfview/FileListEntry;

    .line 310
    .local v0, "entry":Lcx/hell/android/pdfview/FileListEntry;
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v2

    if-nez v2, :cond_0

    .line 311
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 313
    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->update()V

    .line 315
    :cond_0
    const/4 v2, 0x1

    .line 328
    .end local v0    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    :goto_0
    return v2

    .line 317
    :cond_1
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->removeContextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v2, :cond_3

    .line 318
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/pdfview/FileListEntry;

    .line 319
    .restart local v0    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 320
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getRecentNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Lcx/hell/android/pdfview/Recent;->remove(I)Ljava/lang/Object;

    .line 321
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->recent:Lcx/hell/android/pdfview/Recent;

    invoke-virtual {v2}, Lcx/hell/android/pdfview/Recent;->commit()V

    .line 322
    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->update()V

    .line 328
    .end local v0    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 325
    :cond_3
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeContextMenuItem:Landroid/view/MenuItem;

    if-ne p1, v2, :cond_2

    .line 326
    invoke-virtual {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHome()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "victor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->light:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const v0, 0x103000c

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->setTheme(I)V

    .line 80
    :cond_0
    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->getHome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    .line 82
    new-instance v0, Lcx/hell/android/pdfview/ChooseFileActivity$1;

    invoke-direct {v0, p0}, Lcx/hell/android/pdfview/ChooseFileActivity$1;-><init>(Lcx/hell/android/pdfview/ChooseFileActivity;)V

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileFilter:Ljava/io/FileFilter;

    .line 88
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f090002

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->pathTextView:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    .line 92
    move-object v5, p0

    .line 93
    .local v5, "activity":Landroid/app/Activity;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Lcx/hell/android/pdfview/ChooseFileActivity$2;

    .line 95
    const v3, 0x7f030002

    iget-object v4, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcx/hell/android/pdfview/ChooseFileActivity$2;-><init>(Lcx/hell/android/pdfview/ChooseFileActivity;Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;)V

    .line 94
    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    .line 134
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 138
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 346
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->filesListView:Landroid/widget/ListView;

    if-ne p2, v2, :cond_0

    move-object v1, p3

    .line 347
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 349
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v2, :cond_1

    .line 364
    .end local v1    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_0
    :goto_0
    return-void

    .line 352
    .restart local v1    # "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    :cond_1
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/pdfview/FileListEntry;

    .line 354
    .local v0, "entry":Lcx/hell/android/pdfview/FileListEntry;
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 355
    const v2, 0x7f07000f

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeContextMenuItem:Landroid/view/MenuItem;

    goto :goto_0

    .line 357
    :cond_2
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 358
    const v2, 0x7f070036

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->removeContextMenuItem:Landroid/view/MenuItem;

    goto :goto_0

    .line 360
    :cond_3
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    const v2, 0x7f070037

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->deleteContextMenuItem:Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 282
    const v0, 0x7f07000f

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeMenuItem:Landroid/view/MenuItem;

    .line 283
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeMenuItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 284
    const v0, 0x7f070014

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    .line 285
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 286
    const-string v0, "About"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    .line 287
    iget-object v0, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 288
    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 235
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->fileList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/pdfview/FileListEntry;

    .line 238
    .local v0, "clickedEntry":Lcx/hell/android/pdfview/FileListEntry;
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 239
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->getHome()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "clickedFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 254
    :goto_1
    return-void

    .line 242
    .end local v1    # "clickedFile":Ljava/io/File;
    :cond_0
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getFile()Ljava/io/File;

    move-result-object v1

    .restart local v1    # "clickedFile":Ljava/io/File;
    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    .line 250
    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->update()V

    goto :goto_1

    .line 252
    :cond_2
    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/ChooseFileActivity;->pdfView(Ljava/io/File;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 264
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->aboutMenuItem:Landroid/view/MenuItem;

    if-ne p1, v2, :cond_0

    .line 265
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcx/hell/android/pdfview/AboutPDFViewActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 270
    :cond_0
    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHomeMenuItem:Landroid/view/MenuItem;

    if-ne p1, v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->setAsHome()V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v1, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->optionsMenuItem:Landroid/view/MenuItem;

    if-ne p1, v1, :cond_2

    .line 275
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcx/hell/android/pdfview/Options;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/ChooseFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 277
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 293
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 295
    invoke-static {p0}, Lcx/hell/android/pdfview/Options;->setOrientation(Landroid/app/Activity;)Z

    .line 296
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    .local v0, "options":Landroid/content/SharedPreferences;
    const-string v1, "dirsFirst"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->dirsFirst:Ljava/lang/Boolean;

    .line 298
    const-string v1, "showExtension"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->showExtension:Ljava/lang/Boolean;

    .line 299
    const-string v1, "history"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->history:Ljava/lang/Boolean;

    .line 301
    invoke-direct {p0}, Lcx/hell/android/pdfview/ChooseFileActivity;->update()V

    .line 302
    return-void
.end method

.method public pdfView(Ljava/io/File;)V
    .locals 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 209
    const-string v1, "cx.hell.android.pdfview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post intent to open file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-class v1, Lcx/hell/android/pdfview/OpenFileActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/ChooseFileActivity;->startActivity(Landroid/content/Intent;)V

    .line 215
    return-void
.end method

.method public setAsHome()V
    .locals 3

    .prologue
    .line 257
    const-string v1, "ChooseFileActivity"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcx/hell/android/pdfview/ChooseFileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 258
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Home"

    iget-object v2, p0, Lcx/hell/android/pdfview/ChooseFileActivity;->currentPath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method
