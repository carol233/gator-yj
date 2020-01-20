.class Lcx/hell/android/pdfview/ChooseFileActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "ChooseFileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcx/hell/android/pdfview/ChooseFileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcx/hell/android/pdfview/FileListEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcx/hell/android/pdfview/ChooseFileActivity;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcx/hell/android/pdfview/ChooseFileActivity;Landroid/content/Context;ILjava/util/List;Landroid/app/Activity;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 1
    .local p4, "$anonymous2":Ljava/util/List;, "Ljava/util/List<Lcx/hell/android/pdfview/FileListEntry;>;"
    iput-object p1, p0, Lcx/hell/android/pdfview/ChooseFileActivity$2;->this$0:Lcx/hell/android/pdfview/ChooseFileActivity;

    iput-object p5, p0, Lcx/hell/android/pdfview/ChooseFileActivity$2;->val$activity:Landroid/app/Activity;

    .line 94
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 99
    if-nez p2, :cond_1

    .line 100
    iget-object v5, p0, Lcx/hell/android/pdfview/ChooseFileActivity$2;->val$activity:Landroid/app/Activity;

    const v9, 0x7f030002

    const/4 v10, 0x0

    invoke-static {v5, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 106
    .local v4, "v":Landroid/view/View;
    :goto_0
    iget-object v5, p0, Lcx/hell/android/pdfview/ChooseFileActivity$2;->this$0:Lcx/hell/android/pdfview/ChooseFileActivity;

    invoke-static {v5}, Lcx/hell/android/pdfview/ChooseFileActivity;->access$0(Lcx/hell/android/pdfview/ChooseFileActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcx/hell/android/pdfview/FileListEntry;

    .line 108
    .local v0, "entry":Lcx/hell/android/pdfview/FileListEntry;
    const v5, 0x7f090006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 109
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_2

    move v5, v6

    .line 108
    :goto_1
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 111
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->isUpFolder()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    .line 110
    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const v5, 0x7f090005

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 113
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v5

    if-nez v5, :cond_4

    .line 114
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->isUpFolder()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    .line 112
    :goto_3
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getRecentNumber()I

    move-result v2

    .line 119
    .local v2, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    invoke-static {}, Lcx/hell/android/pdfview/ChooseFileActivity;->access$1()[I

    move-result-object v5

    array-length v5, v5

    if-lt v1, v5, :cond_5

    .line 124
    const v5, 0x7f09000c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    .line 128
    invoke-virtual {v0}, Lcx/hell/android/pdfview/FileListEntry;->getType()I

    move-result v7

    if-ne v7, v8, :cond_0

    move v6, v8

    .line 127
    :cond_0
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 131
    return-object v4

    .line 103
    .end local v0    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    .end local v1    # "i":I
    .end local v2    # "r":I
    .end local v3    # "tv":Landroid/widget/TextView;
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    move-object v4, p2

    .restart local v4    # "v":Landroid/view/View;
    goto :goto_0

    .restart local v0    # "entry":Lcx/hell/android/pdfview/FileListEntry;
    :cond_2
    move v5, v7

    .line 109
    goto :goto_1

    :cond_3
    move v5, v7

    .line 111
    goto :goto_2

    :cond_4
    move v5, v7

    .line 115
    goto :goto_3

    .line 120
    .restart local v1    # "i":I
    .restart local v2    # "r":I
    :cond_5
    invoke-static {}, Lcx/hell/android/pdfview/ChooseFileActivity;->access$1()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 121
    if-ne v1, v2, :cond_6

    move v5, v6

    .line 120
    :goto_5
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v5, v7

    .line 121
    goto :goto_5
.end method
