.class public Lorg/videolan/vlc/gui/MainActivity;
.super Lcom/actionbarsherlock/app/SherlockFragmentActivity;
.source "MainActivity.java"


# static fields
.field protected static final ACTION_HIDE_PROGRESSBAR:Ljava/lang/String; = "org.videolan.vlc.gui.HideProgressBar"

.field protected static final ACTION_SHOW_PROGRESSBAR:Ljava/lang/String; = "org.videolan.vlc.gui.ShowProgressBar"

.field protected static final ACTION_SHOW_TEXTINFO:Ljava/lang/String; = "org.videolan.vlc.gui.ShowTextInfo"

.field private static final ACTIVITY_RESULT_PREFERENCES:I = 0x1

.field private static final PREF_FIRST_RUN:Ljava/lang/String; = "first_run"

.field private static final PREF_SHOW_INFO:Ljava/lang/String; = "show_info"

.field public static final TAG:Ljava/lang/String; = "VLC/MainActivity"


# instance fields
.field private mActionBar:Lcom/actionbarsherlock/app/ActionBar;

.field private mAudioController:Lorg/videolan/vlc/AudioServiceController;

.field private mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

.field private mCurrentFragment:Ljava/lang/String;

.field private mFirstRun:Z

.field private mInfoLayout:Landroid/view/View;

.field private mInfoProgress:Landroid/widget/ProgressBar;

.field private mInfoText:Landroid/widget/TextView;

.field private mMenu:Lcom/slidingmenu/lib/SlidingMenu;

.field private mScanNeeded:Z

.field private mSettings:Landroid/content/SharedPreferences;

.field private mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

.field private mVersionNumber:I

.field private final messageReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mScanNeeded:Z

    .line 575
    new-instance v0, Lorg/videolan/vlc/gui/MainActivity$4;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/MainActivity$4;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/MainActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lorg/videolan/vlc/gui/MainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/gui/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    return v0
.end method

.method static synthetic access$500(Lorg/videolan/vlc/gui/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    return v0
.end method

.method static synthetic access$600(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lorg/videolan/vlc/gui/MainActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lorg/videolan/vlc/gui/MainActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/MainActivity;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoLayout:Landroid/view/View;

    return-object v0
.end method

.method private changeMenuOffset()V
    .locals 5

    .prologue
    .line 284
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 285
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 287
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-static {v3}, Lorg/videolan/vlc/Util;->convertPxToDp(I)I

    move-result v3

    add-int/lit16 v0, v3, -0xd0

    .line 288
    .local v0, "behindOffset_dp":I
    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-static {v0}, Lorg/videolan/vlc/Util;->convertDpToPx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 289
    return-void
.end method

.method public static clearTextInfo(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 626
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p0, v0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->sendTextInfo(Landroid/content/Context;Ljava/lang/String;II)V

    .line 627
    return-void
.end method

.method private getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v1, p1}, Lorg/videolan/vlc/gui/SidebarAdapter;->fetchFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 424
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/SidebarAdapter;->lockSemaphore()V

    .line 425
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v1, p1}, Lorg/videolan/vlc/gui/SidebarAdapter;->isFragmentAdded(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f06007b

    invoke-virtual {v1, v2, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 430
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v1, p1}, Lorg/videolan/vlc/gui/SidebarAdapter;->setFragmentAdded(Ljava/lang/String;)V

    .line 432
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/SidebarAdapter;->unlockSemaphore()V

    .line 434
    return-object v0
.end method

.method public static hideProgressBar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 607
    if-nez p0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 609
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.HideProgressBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onOpenMRL()V
    .locals 4

    .prologue
    .line 630
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 632
    .local v1, "input":Landroid/widget/EditText;
    const v2, 0x7f0b0068

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 633
    const v2, 0x7f0b0069

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 635
    const v2, 0x7f0b0066

    new-instance v3, Lorg/videolan/vlc/gui/MainActivity$5;

    invoke-direct {v3, p0, v1}, Lorg/videolan/vlc/gui/MainActivity$5;-><init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    const v2, 0x7f0b0011

    new-instance v3, Lorg/videolan/vlc/gui/MainActivity$6;

    invoke-direct {v3, p0}, Lorg/videolan/vlc/gui/MainActivity$6;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 665
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 666
    return-void
.end method

.method private reloadPreferences()V
    .locals 3

    .prologue
    .line 539
    const-string v1, "MainActivity"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 540
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string v1, "fragment"

    const-string v2, "video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    .line 541
    return-void
.end method

.method public static sendTextInfo(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "max"    # I

    .prologue
    .line 615
    if-nez p0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 617
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 618
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ShowTextInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v1, "info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v1, "progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    const-string v1, "max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showInfoDialog()V
    .locals 3

    .prologue
    .line 544
    new-instance v0, Landroid/app/Dialog;

    const v2, 0x7f0c0059

    invoke-direct {v0, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 545
    .local v0, "infoDialog":Landroid/app/Dialog;
    const v2, 0x7f030029

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 546
    const v2, 0x7f060073

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 547
    .local v1, "okButton":Landroid/widget/Button;
    new-instance v2, Lorg/videolan/vlc/gui/MainActivity$3;

    invoke-direct {v2, p0, v0}, Lorg/videolan/vlc/gui/MainActivity$3;-><init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 565
    return-void
.end method

.method public static showProgressBar(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 599
    if-nez p0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 602
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.videolan.vlc.gui.ShowProgressBar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 531
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    if-ne p1, v1, :cond_0

    .line 533
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 534
    invoke-static {p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;Z)V

    .line 536
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 402
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 416
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    const-string v2, "directories"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/DirectoryViewFragment;

    .line 410
    .local v0, "directoryView":Lorg/videolan/vlc/gui/DirectoryViewFragment;
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->isRootDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    invoke-virtual {v0}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->showParentDirectory()V

    goto :goto_0

    .line 415
    .end local v0    # "directoryView":Lorg/videolan/vlc/gui/DirectoryViewFragment;
    :cond_1
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 453
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->changeMenuOffset()V

    .line 454
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-static {}, Lorg/videolan/vlc/Util;->hasCompatibleCPU()Z

    move-result v10

    if-nez v10, :cond_0

    .line 109
    const-string v10, "VLC/MainActivity"

    invoke-static {}, Lorg/videolan/vlc/Util;->getErrorMsg()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lorg/videolan/vlc/gui/CompatErrorActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v5, "i":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->finish()V

    .line 113
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 281
    .end local v5    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v7, 0x0

    .line 120
    .local v7, "pinfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 124
    :goto_1
    if-eqz v7, :cond_1

    .line 125
    iget v10, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    .line 128
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    .line 131
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v11, "first_run"

    const/4 v12, -0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget v11, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    if-eq v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    .line 132
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    if-eqz v10, :cond_2

    .line 133
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "first_run"

    iget v11, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    :try_start_1
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;
    :try_end_1
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const-wide/16 v10, 0x5

    invoke-virtual {p0, v10, v11}, Lorg/videolan/vlc/gui/MainActivity;->requestWindowFeature(J)V

    .line 160
    const v10, 0x7f030038

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/MainActivity;->setContentView(I)V

    .line 161
    const v10, 0x7f06009d

    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/slidingmenu/lib/SlidingMenu;

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    .line 162
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->changeMenuOffset()V

    .line 164
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f03002c

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 165
    .local v9, "v_main":Landroid/view/View;
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v10, v9}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(Landroid/view/View;)V

    .line 167
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f030036

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 168
    .local v8, "sidebar":Landroid/view/View;
    const v10, 0x102000a

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 169
    .local v6, "listView":Landroid/widget/ListView;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 170
    new-instance v10, Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-direct {v10}, Lorg/videolan/vlc/gui/SidebarAdapter;-><init>()V

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    .line 171
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v10, v8}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 175
    const v10, 0x7f06007c

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoLayout:Landroid/view/View;

    .line 176
    const v10, 0x7f06007d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoProgress:Landroid/widget/ProgressBar;

    .line 177
    const v10, 0x7f06007e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mInfoText:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    .line 181
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 182
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-virtual {v10, v11, v12}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayOptions(II)V

    .line 183
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mActionBar:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 186
    invoke-static {}, Lorg/videolan/vlc/Util;->isHoneycombOrLater()Z

    move-result v10

    if-eqz v10, :cond_6

    const v10, 0x102002c

    :goto_3
    invoke-virtual {p0, v10}, Lorg/videolan/vlc/gui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 188
    .local v4, "home":Landroid/widget/ImageView;
    if-eqz v4, :cond_3

    .line 189
    const/16 v10, 0x14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 192
    :cond_3
    new-instance v10, Lorg/videolan/vlc/gui/MainActivity$1;

    invoke-direct {v10, p0, v6}, Lorg/videolan/vlc/gui/MainActivity$1;-><init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/widget/ListView;)V

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 245
    new-instance v10, Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-direct {v10}, Lorg/videolan/vlc/widget/AudioMiniPlayer;-><init>()V

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    .line 246
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v10

    iput-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    .line 247
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    iget-object v11, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    invoke-virtual {v10, v11}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->setAudioPlayerControl(Lorg/videolan/vlc/interfaces/IAudioPlayerControl;)V

    .line 248
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-virtual {v10}, Lorg/videolan/vlc/widget/AudioMiniPlayer;->update()V

    .line 250
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    const v11, 0x7f06007f

    iget-object v12, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-virtual {v10, v11, v12}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 255
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mSettings:Landroid/content/SharedPreferences;

    const-string v11, "show_info"

    const/4 v12, -0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget v11, p0, Lorg/videolan/vlc/gui/MainActivity;->mVersionNumber:I

    if-eq v10, v11, :cond_7

    .line 256
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->showInfoDialog()V

    .line 273
    :cond_4
    :goto_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v10, "org.videolan.vlc.gui.ShowProgressBar"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v10, "org.videolan.vlc.gui.HideProgressBar"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v10, "org.videolan.vlc.gui.ShowTextInfo"

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v10, p0, Lorg/videolan/vlc/gui/MainActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v10, v2}, Lorg/videolan/vlc/gui/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->reloadPreferences()V

    goto/16 :goto_0

    .line 121
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "home":Landroid/widget/ImageView;
    .end local v6    # "listView":Landroid/widget/ListView;
    .end local v8    # "sidebar":Landroid/view/View;
    .end local v9    # "v_main":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "VLC/MainActivity"

    const-string v11, "package info not found."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 131
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 141
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Lorg/videolan/vlc/LibVlcException;
    invoke-virtual {v0}, Lorg/videolan/vlc/LibVlcException;->printStackTrace()V

    .line 143
    new-instance v5, Landroid/content/Intent;

    const-class v10, Lorg/videolan/vlc/gui/CompatErrorActivity;

    invoke-direct {v5, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .restart local v5    # "i":Landroid/content/Intent;
    const-string v10, "runtimeError"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    const-string v10, "message"

    const-string v11, "LibVLC failed to initialize (LibVlcException)"

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->finish()V

    .line 148
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 186
    .end local v0    # "e":Lorg/videolan/vlc/LibVlcException;
    .end local v5    # "i":Landroid/content/Intent;
    .restart local v6    # "listView":Landroid/widget/ListView;
    .restart local v8    # "sidebar":Landroid/view/View;
    .restart local v9    # "v_main":Landroid/view/View;
    :cond_6
    const v10, 0x7f06000f

    goto/16 :goto_3

    .line 257
    .restart local v4    # "home":Landroid/widget/ImageView;
    :cond_7
    iget-boolean v10, p0, Lorg/videolan/vlc/gui/MainActivity;->mFirstRun:Z

    if-eqz v10, :cond_4

    .line 263
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 264
    .local v3, "handler":Landroid/os/Handler;
    new-instance v10, Lorg/videolan/vlc/gui/MainActivity$2;

    invoke-direct {v10, p0}, Lorg/videolan/vlc/gui/MainActivity$2;-><init>(Lorg/videolan/vlc/gui/MainActivity;)V

    const-wide/16 v11, 0x1f4

    invoke-virtual {v3, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Lcom/actionbarsherlock/view/Menu;

    .prologue
    .line 445
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 446
    .local v0, "inflater":Lcom/actionbarsherlock/view/MenuInflater;
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 447
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onDestroy()V

    .line 389
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->messageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 473
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 526
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v4

    return v4

    .line 476
    :sswitch_0
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f06007b

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 477
    .local v0, "current":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 479
    instance-of v5, v0, Lorg/videolan/vlc/interfaces/ISortable;

    if-eqz v5, :cond_0

    .line 480
    check-cast v0, Lorg/videolan/vlc/interfaces/ISortable;

    .end local v0    # "current":Landroid/support/v4/app/Fragment;
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v5

    const v6, 0x7f0600bd

    if-ne v5, v6, :cond_1

    const/4 v4, 0x0

    :cond_1
    invoke-interface {v0, v4}, Lorg/videolan/vlc/interfaces/ISortable;->sortBy(I)V

    goto :goto_0

    .line 486
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/videolan/vlc/gui/AboutActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 491
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 492
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v3, v4}, Lorg/videolan/vlc/gui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 497
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_3
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    const-string v6, "directories"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lorg/videolan/vlc/gui/DirectoryViewFragment;

    .line 499
    .local v1, "directoryView":Lorg/videolan/vlc/gui/DirectoryViewFragment;
    invoke-virtual {v1}, Lorg/videolan/vlc/gui/DirectoryViewFragment;->refresh()V

    goto :goto_0

    .line 501
    .end local v1    # "directoryView":Lorg/videolan/vlc/gui/DirectoryViewFragment;
    :cond_2
    iget-object v5, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    const-string v6, "history"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 502
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lorg/videolan/vlc/gui/HistoryFragment;

    invoke-virtual {v4}, Lorg/videolan/vlc/gui/HistoryFragment;->refresh()V

    goto :goto_0

    .line 504
    :cond_3
    invoke-static {p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;Z)V

    goto :goto_0

    .line 508
    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "org.videolan.vlc.remote.LastPlaylist"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/gui/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 513
    .end local v2    # "i":Landroid/content/Intent;
    :sswitch_5
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->onOpenMRL()V

    goto :goto_0

    .line 516
    :sswitch_6
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->onSearchRequested()Z

    goto/16 :goto_0

    .line 520
    :sswitch_7
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 521
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/SlidingMenu;->showContent()V

    goto/16 :goto_0

    .line 523
    :cond_4
    iget-object v4, p0, Lorg/videolan/vlc/gui/MainActivity;->mMenu:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    goto/16 :goto_0

    .line 473
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_7
        0x7f0600ba -> :sswitch_6
        0x7f0600bb -> :sswitch_5
        0x7f0600bd -> :sswitch_0
        0x7f0600be -> :sswitch_0
        0x7f0600bf -> :sswitch_4
        0x7f0600c0 -> :sswitch_3
        0x7f0600c1 -> :sswitch_2
        0x7f0600c2 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 369
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onPause()V

    .line 372
    invoke-static {p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->isWorking()Z

    move-result v1

    iput-boolean v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mScanNeeded:Z

    .line 374
    invoke-static {p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/vlc/MediaLibrary;->stop()V

    .line 376
    const-string v1, "MainActivity"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/videolan/vlc/gui/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 377
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "fragment"

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/AudioServiceController;->removeAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V

    .line 381
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 382
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 395
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onRestart()V

    .line 397
    invoke-direct {p0}, Lorg/videolan/vlc/gui/MainActivity;->reloadPreferences()V

    .line 398
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResume()V

    .line 294
    iget-object v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioController:Lorg/videolan/vlc/AudioServiceController;

    iget-object v1, p0, Lorg/videolan/vlc/gui/MainActivity;->mAudioPlayer:Lorg/videolan/vlc/widget/AudioMiniPlayer;

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/AudioServiceController;->addAudioPlayer(Lorg/videolan/vlc/interfaces/IAudioPlayer;)V

    .line 295
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 298
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_notification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lorg/videolan/vlc/gui/MainActivity;->mScanNeeded:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-static {p0}, Lorg/videolan/vlc/MediaLibrary;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/MediaLibrary;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/MediaLibrary;->loadMediaItems(Landroid/content/Context;)V

    .line 304
    :cond_1
    return-void
.end method

.method protected onResumeFragments()V
    .locals 10

    .prologue
    .line 308
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->onResumeFragments()V

    .line 311
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f06007b

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 313
    .local v0, "current":Landroid/support/v4/app/Fragment;
    const/4 v2, 0x0

    .line 314
    .local v2, "found":Z
    if-eqz v0, :cond_3

    .line 315
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 316
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    iget-object v7, v7, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 317
    const/4 v2, 0x1

    .line 325
    .end local v6    # "i":I
    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v7}, Lorg/videolan/vlc/gui/SidebarAdapter;->lockSemaphore()V

    .line 331
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 332
    sget-object v7, Lorg/videolan/vlc/gui/SidebarAdapter;->entries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;

    iget-object v4, v7, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    .line 333
    .local v4, "fragmentTag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 334
    .local v3, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v3, :cond_1

    .line 335
    const-string v7, "VLC/MainActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring automatically recreated fragment \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v7, v4, v3}, Lorg/videolan/vlc/gui/SidebarAdapter;->restoreFragment(Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 331
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 315
    .end local v3    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v4    # "fragmentTag":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 322
    .end local v6    # "i":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 339
    .restart local v6    # "i":I
    :cond_4
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mSidebarAdapter:Lorg/videolan/vlc/gui/SidebarAdapter;

    invoke-virtual {v7}, Lorg/videolan/vlc/gui/SidebarAdapter;->unlockSemaphore()V

    .line 353
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v2, :cond_7

    .line 354
    :cond_5
    const-string v7, "VLC/MainActivity"

    const-string v8, "Reloading displayed fragment"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lorg/videolan/vlc/gui/MainActivity;->mCurrentFragment:Ljava/lang/String;

    invoke-direct {p0, v7}, Lorg/videolan/vlc/gui/MainActivity;->getFragment(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 356
    .local v1, "ff":Landroid/support/v4/app/Fragment;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v5

    .line 357
    .local v5, "ft":Landroid/support/v4/app/FragmentTransaction;
    if-eqz v0, :cond_6

    .line 358
    invoke-virtual {v5, v0}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 359
    :cond_6
    invoke-virtual {v5, v1}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 360
    invoke-virtual {v5}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 362
    .end local v1    # "ff":Landroid/support/v4/app/Fragment;
    .end local v5    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_7
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/gui/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/gui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 460
    const/4 v1, 0x0

    return v1
.end method

.method public searchClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/MainActivity;->onSearchRequested()Z

    .line 573
    return-void
.end method
