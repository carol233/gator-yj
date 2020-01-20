.class public Lorg/videolan/vlc/gui/AboutActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;
    }
.end annotation


# static fields
.field private static final CURRENT_TAB_ID:Ljava/lang/String; = "tabid"

.field private static final CURRENT_TAB_TAG:Ljava/lang/String; = "tabtag"

.field public static final TAG:Ljava/lang/String; = "VLC/AboutActivity"


# instance fields
.field private mCurrentTabTag:Ljava/lang/String;

.field private mLicenceFragment:Lorg/videolan/vlc/gui/AboutLicenceFragment;

.field private mMainFragment:Lorg/videolan/vlc/gui/AboutMainFragment;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 44
    return-void
.end method

.method private displayVersionName()V
    .locals 3

    .prologue
    .line 132
    invoke-static {p0}, Lorg/videolan/vlc/gui/AboutActivity;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "versionName":Ljava/lang/String;
    const v2, 0x7f060016

    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    .local v0, "tv":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method private getFragmentFromTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "main"

    if-ne p1, v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/videolan/vlc/gui/AboutActivity;->mMainFragment:Lorg/videolan/vlc/gui/AboutMainFragment;

    .line 128
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/AboutActivity;->mLicenceFragment:Lorg/videolan/vlc/gui/AboutLicenceFragment;

    goto :goto_0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 138
    const-string v2, ""

    .line 141
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 142
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 146
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x1020011

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/high16 v6, 0x7f030000

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/AboutActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lorg/videolan/vlc/gui/AboutActivity;->displayVersionName()V

    .line 69
    new-instance v6, Lorg/videolan/vlc/gui/AboutMainFragment;

    invoke-direct {v6}, Lorg/videolan/vlc/gui/AboutMainFragment;-><init>()V

    iput-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mMainFragment:Lorg/videolan/vlc/gui/AboutMainFragment;

    .line 70
    new-instance v6, Lorg/videolan/vlc/gui/AboutLicenceFragment;

    invoke-direct {v6}, Lorg/videolan/vlc/gui/AboutLicenceFragment;-><init>()V

    iput-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mLicenceFragment:Lorg/videolan/vlc/gui/AboutLicenceFragment;

    .line 71
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 72
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mMainFragment:Lorg/videolan/vlc/gui/AboutMainFragment;

    invoke-virtual {v1, v7, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mLicenceFragment:Lorg/videolan/vlc/gui/AboutLicenceFragment;

    invoke-virtual {v1, v7, v6}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 74
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    new-instance v0, Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;

    invoke-direct {v0, p0, p0}, Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;-><init>(Lorg/videolan/vlc/gui/AboutActivity;Landroid/content/Context;)V

    .line 77
    .local v0, "dcf":Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;
    const v6, 0x7f060017

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    .line 78
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 79
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "main"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 80
    .local v4, "tab_main":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v4, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 81
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 82
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 83
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "licence"

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 84
    .local v3, "tab_licence":Landroid/widget/TabHost$TabSpec;
    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 85
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0077

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 86
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 88
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 89
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 90
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v6, 0x1

    const/high16 v7, 0x41900000    # 18.0f

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x4001ae147ae147aeL    # 2.21

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 97
    const-string v6, "main"

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/AboutActivity;->onTabChanged(Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget-object v6, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    const-string v7, "tabid"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 100
    const-string v6, "tabtag"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/AboutActivity;->onTabChanged(Ljava/lang/String;)V

    .line 102
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    const-string v0, "tabtag"

    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutActivity;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "tabid"

    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "newTag"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutActivity;->mCurrentTabTag:Ljava/lang/String;

    .line 112
    .local v1, "oldTag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/AboutActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 113
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    const-string v2, "main"

    if-ne v1, v2, :cond_1

    const-string v2, "licence"

    if-ne p1, v2, :cond_1

    .line 114
    const v2, 0x7f040002

    const v3, 0x7f040004

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 118
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/AboutActivity;->getFragmentFromTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 119
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/AboutActivity;->getFragmentFromTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 120
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 121
    iput-object p1, p0, Lorg/videolan/vlc/gui/AboutActivity;->mCurrentTabTag:Ljava/lang/String;

    .line 122
    return-void

    .line 115
    :cond_1
    const-string v2, "main"

    if-ne p1, v2, :cond_0

    const-string v2, "licence"

    if-ne v1, v2, :cond_0

    .line 116
    const v2, 0x7f040001

    const v3, 0x7f040005

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method
