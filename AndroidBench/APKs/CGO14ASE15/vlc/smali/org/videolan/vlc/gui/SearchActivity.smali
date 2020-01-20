.class public Lorg/videolan/vlc/gui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/SearchActivit"


# instance fields
.field private mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

.field private mListHeader:Landroid/widget/LinearLayout;

.field private mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

.field private mSearchText:Landroid/widget/EditText;

.field private final searchTextListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final searchTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 174
    new-instance v0, Lorg/videolan/vlc/gui/SearchActivity$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/SearchActivity$1;-><init>(Lorg/videolan/vlc/gui/SearchActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    .line 224
    new-instance v0, Lorg/videolan/vlc/gui/SearchActivity$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/SearchActivity$2;-><init>(Lorg/videolan/vlc/gui/SearchActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity;->searchTextListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/SearchActivity;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/SearchActivity;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/videolan/vlc/gui/SearchActivity;->search(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/SearchActivity;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/SearchActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/videolan/vlc/gui/SearchActivity;->showSearchHistory()V

    return-void
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/SearchActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/SearchActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    return-object v0
.end method

.method private search(Ljava/lang/CharSequence;I)V
    .locals 16
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "type"    # I

    .prologue
    .line 112
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v11}, Lorg/videolan/vlc/gui/SearchResultAdapter;->clear()V

    .line 113
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\s+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 114
    .local v8, "keys":[Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v11

    invoke-virtual {v11}, Lorg/videolan/vlc/MediaLibrary;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 115
    .local v3, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/videolan/vlc/Media;>;"
    const/4 v10, 0x0

    .line 116
    .local v10, "results":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 117
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/videolan/vlc/Media;

    .line 118
    .local v6, "item":Lorg/videolan/vlc/Media;
    const/4 v11, -0x1

    move/from16 v0, p2

    if-eq v0, v11, :cond_1

    invoke-virtual {v6}, Lorg/videolan/vlc/Media;->getType()I

    move-result v11

    move/from16 v0, p2

    if-eq v0, v11, :cond_1

    .line 116
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v2, 0x1

    .line 121
    .local v2, "add":Z
    invoke-virtual {v6}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 122
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "MRL":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2
    array-length v11, v8

    if-ge v7, v11, :cond_2

    .line 124
    aget-object v11, v8, v7

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    aget-object v11, v8, v7

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 125
    const/4 v2, 0x0

    .line 130
    :cond_2
    if-eqz v2, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v11, v6}, Lorg/videolan/vlc/gui/SearchResultAdapter;->add(Ljava/lang/Object;)V

    .line 132
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 123
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 136
    .end local v1    # "MRL":Ljava/lang/String;
    .end local v2    # "add":Z
    .end local v6    # "item":Lorg/videolan/vlc/Media;
    .end local v7    # "k":I
    .end local v9    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v11}, Lorg/videolan/vlc/gui/SearchResultAdapter;->sort()V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/videolan/vlc/gui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f0d0000

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v10, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "headerText":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/videolan/vlc/gui/SearchActivity;->showListHeader(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/videolan/vlc/gui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    return-void
.end method

.method private showListHeader(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 148
    .local v2, "lv":Landroid/widget/ListView;
    iget-object v3, p0, Lorg/videolan/vlc/gui/SearchActivity;->mListHeader:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 150
    .local v1, "infalter":Landroid/view/LayoutInflater;
    const v3, 0x7f03002b

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lorg/videolan/vlc/gui/SearchActivity;->mListHeader:Landroid/widget/LinearLayout;

    .line 151
    iget-object v3, p0, Lorg/videolan/vlc/gui/SearchActivity;->mListHeader:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 155
    .end local v1    # "infalter":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v3, p0, Lorg/videolan/vlc/gui/SearchActivity;->mListHeader:Landroid/widget/LinearLayout;

    const v4, 0x7f060057

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 156
    .local v0, "headerText":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method private showSearchHistory()V
    .locals 6

    .prologue
    .line 162
    const v5, 0x7f0b0018

    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "headerText":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/SearchActivity;->showListHeader(Ljava/lang/String;)V

    .line 165
    invoke-static {p0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 166
    .local v0, "db":Lorg/videolan/vlc/DatabaseManager;
    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->clear()V

    .line 167
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Lorg/videolan/vlc/DatabaseManager;->getSearchhistory(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .local v2, "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 169
    .local v4, "s":Ljava/lang/String;
    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v5, v4}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 170
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v5}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 171
    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/SearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v4, 0x7f030033

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/SearchActivity;->setContentView(I)V

    .line 68
    new-instance v4, Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-direct {v4, p0}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    .line 69
    new-instance v4, Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-direct {v4, p0}, Lorg/videolan/vlc/gui/SearchResultAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    .line 71
    const v4, 0x7f06009c

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    .line 72
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchActivity;->searchTextListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 73
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    iget-object v5, p0, Lorg/videolan/vlc/gui/SearchActivity;->searchTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 76
    .local v3, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "queryAction":Ljava/lang/String;
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const-string v4, "query"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "query":Ljava/lang/String;
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 87
    .end local v1    # "query":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 88
    return-void

    .line 82
    :cond_0
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lorg/videolan/vlc/gui/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 83
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    const/4 v5, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 84
    invoke-direct {p0}, Lorg/videolan/vlc/gui/SearchActivity;->showSearchHistory()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 202
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 203
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 105
    iget-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/SearchHistoryAdapter;->clear()V

    .line 106
    iget-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/SearchResultAdapter;->clear()V

    .line 107
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 266
    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    .line 267
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 268
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 269
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lorg/videolan/vlc/gui/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 270
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 271
    const/4 v1, 0x1

    .line 274
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 235
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    if-ne v6, v7, :cond_1

    .line 236
    const v6, 0x1020014

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "selection":Ljava/lang/String;
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 239
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 262
    .end local v5    # "selection":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    iget-object v7, p0, Lorg/videolan/vlc/gui/SearchActivity;->mResultAdapter:Lorg/videolan/vlc/gui/SearchResultAdapter;

    if-ne v6, v7, :cond_0

    .line 242
    invoke-static {p0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v2

    .line 243
    .local v2, "db":Lorg/videolan/vlc/DatabaseManager;
    iget-object v6, p0, Lorg/videolan/vlc/gui/SearchActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/videolan/vlc/DatabaseManager;->addSearchhistoryItem(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    add-int/lit8 v7, p3, -0x1

    invoke-interface {v6, v7}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/videolan/vlc/Media;

    .line 247
    .local v4, "item":Lorg/videolan/vlc/Media;
    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getType()I

    move-result v6

    if-nez v6, :cond_2

    .line 248
    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    :goto_1
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 250
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 252
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/Media;

    .line 253
    .local v1, "audioItem":Lorg/videolan/vlc/Media;
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 254
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 256
    .end local v1    # "audioItem":Lorg/videolan/vlc/Media;
    :cond_4
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v6

    invoke-virtual {v4}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lorg/videolan/vlc/AudioServiceController;->load(Ljava/util/List;I)V

    .line 257
    invoke-static {p0}, Lorg/videolan/vlc/gui/audio/AudioPlayerActivity;->start(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 213
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 216
    :pswitch_0
    invoke-static {p0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 217
    .local v0, "db":Lorg/videolan/vlc/DatabaseManager;
    invoke-virtual {v0}, Lorg/videolan/vlc/DatabaseManager;->clearSearchhistory()V

    .line 218
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchActivity;->mHistoryAdapter:Lorg/videolan/vlc/gui/SearchHistoryAdapter;

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/SearchActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 219
    invoke-direct {p0}, Lorg/videolan/vlc/gui/SearchActivity;->showSearchHistory()V

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600c6
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 99
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 93
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 94
    return-void
.end method
