.class public Lorg/videolan/android/ui/GridFragment;
.super Landroid/support/v4/app/Fragment;
.source "GridFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_GRID_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field mGrid:Landroid/widget/GridView;

.field mGridContainer:Landroid/view/View;

.field mGridShown:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Lorg/videolan/android/ui/GridFragment$1;

    invoke-direct {v0, p0}, Lorg/videolan/android/ui/GridFragment$1;-><init>(Lorg/videolan/android/ui/GridFragment;)V

    iput-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 54
    new-instance v0, Lorg/videolan/android/ui/GridFragment$2;

    invoke-direct {v0, p0}, Lorg/videolan/android/ui/GridFragment$2;-><init>(Lorg/videolan/android/ui/GridFragment;)V

    iput-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 71
    return-void
.end method

.method private ensureGrid()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 341
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    if-eqz v3, :cond_0

    .line 394
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 345
    .local v2, "root":Landroid/view/View;
    if-nez v2, :cond_1

    .line 346
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Content view not yet created"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 348
    :cond_1
    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_4

    .line 349
    check-cast v2, Landroid/widget/GridView;

    .end local v2    # "root":Landroid/view/View;
    iput-object v2, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    .line 380
    :cond_2
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/videolan/android/ui/GridFragment;->mGridShown:Z

    .line 381
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lorg/videolan/android/ui/GridFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 382
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 383
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 384
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 385
    invoke-virtual {p0, v0}, Lorg/videolan/android/ui/GridFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 393
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lorg/videolan/android/ui/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 351
    .restart local v2    # "root":Landroid/view/View;
    :cond_4
    const v3, 0xff0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 353
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 354
    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyView:Landroid/view/View;

    .line 358
    :goto_3
    const v3, 0xff0002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    .line 360
    const v3, 0xff0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    .line 361
    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 362
    .local v1, "rawGridView":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/GridView;

    if-nez v3, :cond_7

    .line 363
    if-nez v1, :cond_6

    .line 364
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Your content must have a GridView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 356
    .end local v1    # "rawGridView":Landroid/view/View;
    :cond_5
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 368
    .restart local v1    # "rawGridView":Landroid/view/View;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Content has view with id attribute \'android.R.id.list\' that is not a GridView class"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 372
    :cond_7
    check-cast v1, Landroid/widget/GridView;

    .end local v1    # "rawGridView":Landroid/view/View;
    iput-object v1, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    .line 373
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 374
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto :goto_1

    .line 375
    :cond_8
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 376
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v4, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 389
    .end local v2    # "root":Landroid/view/View;
    :cond_9
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 390
    invoke-direct {p0, v5, v5}, Lorg/videolan/android/ui/GridFragment;->setGridShown(ZZ)V

    goto/16 :goto_2
.end method

.method private setGridShown(ZZ)V
    .locals 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const v5, 0x10a0001

    const/high16 v4, 0x10a0000

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 297
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 298
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iget-boolean v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridShown:Z

    if-ne v0, p1, :cond_1

    .line 331
    :goto_0
    return-void

    .line 305
    :cond_1
    iput-boolean p1, p0, Lorg/videolan/android/ui/GridFragment;->mGridShown:Z

    .line 306
    if-eqz p1, :cond_3

    .line 307
    if-eqz p2, :cond_2

    .line 308
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 310
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 316
    :goto_1
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 314
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 319
    :cond_3
    if-eqz p2, :cond_4

    .line 320
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 328
    :goto_2
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 325
    :cond_4
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 326
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_2
.end method


# virtual methods
.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 234
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 225
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 226
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 218
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v11, 0x11

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 92
    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 94
    .local v0, "context":Landroid/content/Context;
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 98
    .local v5, "root":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v3, "pframe":Landroid/widget/LinearLayout;
    const v7, 0xff0002

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 100
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 104
    new-instance v4, Landroid/widget/ProgressBar;

    const/4 v7, 0x0

    const v8, 0x101007a

    invoke-direct {v4, v0, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    .local v4, "progress":Landroid/widget/ProgressBar;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "gframe":Landroid/widget/FrameLayout;
    const v7, 0xff0003

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 119
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .local v6, "tv":Landroid/widget/TextView;
    const v7, 0xff0001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setId(I)V

    .line 121
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 122
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    new-instance v2, Landroid/widget/GridView;

    invoke-direct {v2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, "gv":Landroid/widget/GridView;
    const v7, 0x102000a

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->setId(I)V

    .line 128
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/GridView;->setDrawSelectorOnTop(Z)V

    .line 129
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    return-object v5
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/videolan/android/ui/GridFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iput-object v2, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/android/ui/GridFragment;->mGridShown:Z

    .line 163
    iput-object v2, p0, Lorg/videolan/android/ui/GridFragment;->mGridContainer:Landroid/view/View;

    iput-object v2, p0, Lorg/videolan/android/ui/GridFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyView:Landroid/view/View;

    .line 164
    iput-object v2, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 165
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 166
    return-void
.end method

.method public onGridItemClick(Landroid/widget/GridView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "gv"    # Landroid/widget/GridView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 184
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 153
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 243
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 244
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be used with a custom content view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/videolan/android/ui/GridFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 252
    :cond_1
    iput-object p1, p0, Lorg/videolan/android/ui/GridFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 253
    return-void
.end method

.method public setGridShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/videolan/android/ui/GridFragment;->setGridShown(ZZ)V

    .line 274
    return-void
.end method

.method public setGridShownNoAnimation(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/videolan/android/ui/GridFragment;->setGridShown(ZZ)V

    .line 282
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 190
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    move v0, v1

    .line 191
    .local v0, "hadAdapter":Z
    :goto_0
    iput-object p1, p0, Lorg/videolan/android/ui/GridFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 192
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    if-eqz v3, :cond_1

    .line 193
    iget-object v3, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 194
    iget-boolean v3, p0, Lorg/videolan/android/ui/GridFragment;->mGridShown:Z

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Lorg/videolan/android/ui/GridFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/videolan/android/ui/GridFragment;->setGridShown(ZZ)V

    .line 200
    :cond_1
    return-void

    .end local v0    # "hadAdapter":Z
    :cond_2
    move v0, v2

    .line 190
    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 209
    invoke-direct {p0}, Lorg/videolan/android/ui/GridFragment;->ensureGrid()V

    .line 210
    iget-object v0, p0, Lorg/videolan/android/ui/GridFragment;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setSelection(I)V

    .line 211
    return-void
.end method
