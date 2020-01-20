.class public Lorg/videolan/vlc/VLCApplication;
.super Landroid/app/Application;
.source "VLCApplication.java"


# static fields
.field public static final SLEEP_INTENT:Ljava/lang/String; = "org.videolan.vlc.SleepIntent"

.field public static final TAG:Ljava/lang/String; = "VLC/VLCApplication"

.field private static instance:Lorg/videolan/vlc/VLCApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    return-object v0
.end method

.method public static getAppResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    invoke-virtual {v0}, Lorg/videolan/vlc/VLCApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 6

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 43
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 44
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "set_locale"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 48
    const-string v4, "zh-TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    .line 55
    .local v1, "locale":Ljava/util/Locale;
    :goto_0
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 56
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 57
    .local v0, "config":Landroid/content/res/Configuration;
    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 58
    invoke-virtual {p0}, Lorg/videolan/vlc/VLCApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lorg/videolan/vlc/VLCApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 62
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_0
    sput-object p0, Lorg/videolan/vlc/VLCApplication;->instance:Lorg/videolan/vlc/VLCApplication;

    .line 63
    return-void

    .line 50
    :cond_1
    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 53
    .end local v1    # "locale":Ljava/util/Locale;
    :cond_2
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 71
    const-string v0, "VLC/VLCApplication"

    const-string v1, "System is running low on memory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lorg/videolan/vlc/BitmapCache;->getInstance()Lorg/videolan/vlc/BitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/BitmapCache;->clear()V

    .line 74
    return-void
.end method
