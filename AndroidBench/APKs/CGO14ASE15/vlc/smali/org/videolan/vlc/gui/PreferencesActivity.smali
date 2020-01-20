.class public Lorg/videolan/vlc/gui/PreferencesActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final LAST_MEDIA:Ljava/lang/String; = "LastMedia"

.field public static final NAME:Ljava/lang/String; = "VlcSharedPreferences"

.field public static final RESULT_RESCAN:I = 0x2

.field public static final TAG:Ljava/lang/String; = "VLC/PreferencesActivity"

.field public static final VIDEO_RESUME_TIME:Ljava/lang/String; = "VideoResumeTime"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/PreferencesActivity;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/PreferencesActivity;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/PreferencesActivity;->restartService(Landroid/content/Context;)V

    return-void
.end method

.method private restartService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/videolan/vlc/AudioService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, "service":Landroid/content/Intent;
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 248
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 249
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const/high16 v14, 0x7f050000

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->addPreferencesFromResource(I)V

    .line 65
    const-string v14, "directories"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 66
    .local v9, "directoriesPref":Landroid/preference/Preference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$1;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$1;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v9, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string v14, "screen_orientation"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 80
    .local v11, "screenOrientationPref":Landroid/preference/ListPreference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$2;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$2;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v11, v14}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    const-string v14, "enable_headset_detection"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 93
    .local v3, "checkboxHS":Landroid/preference/CheckBoxPreference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$3;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$3;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v3, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 104
    const-string v14, "enable_steal_remote_control"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 105
    .local v4, "checkboxStealRC":Landroid/preference/Preference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$4;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$4;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v4, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 115
    const-string v14, "clear_history"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 116
    .local v6, "clearHistoryPref":Landroid/preference/Preference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$5;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$5;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v6, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    const-string v14, "clear_media_db"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 141
    .local v7, "clearMediaPref":Landroid/preference/Preference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$6;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$6;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v7, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 152
    const-string v14, "enable_verbose_mode"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 153
    .local v5, "checkboxVerbosity":Landroid/preference/CheckBoxPreference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$7;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$7;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v5, v14}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    const-string v14, "debug_logs"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 172
    .local v8, "debugLogsPref":Landroid/preference/Preference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$8;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$8;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    const-string v14, "quit_app"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 184
    .local v10, "quitAppPref":Landroid/preference/Preference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$9;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$9;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v10, v14}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    const-string v14, "aout"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 195
    .local v2, "aoutPref":Landroid/preference/ListPreference;
    invoke-static {}, Lorg/videolan/vlc/Util;->isGingerbreadOrLater()Z

    move-result v14

    if-eqz v14, :cond_1

    const v0, 0x7f0e0005

    .line 196
    .local v0, "aoutEntriesId":I
    :goto_0
    invoke-static {}, Lorg/videolan/vlc/Util;->isGingerbreadOrLater()Z

    move-result v14

    if-eqz v14, :cond_2

    const v1, 0x7f0e0007

    .line 197
    .local v1, "aoutEntriesIdValues":I
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 198
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 199
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    .line 200
    invoke-static {}, Lorg/videolan/vlc/Util;->isGingerbreadOrLater()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "2"

    :goto_2
    invoke-virtual {v2, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 204
    :cond_0
    const-string v14, "set_locale"

    invoke-virtual {p0, v14}, Lorg/videolan/vlc/gui/PreferencesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/EditTextPreference;

    .line 205
    .local v12, "setLocalePref":Landroid/preference/EditTextPreference;
    new-instance v14, Lorg/videolan/vlc/gui/PreferencesActivity$10;

    invoke-direct {v14, p0}, Lorg/videolan/vlc/gui/PreferencesActivity$10;-><init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 215
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 216
    .local v13, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v13, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 217
    return-void

    .line 195
    .end local v0    # "aoutEntriesId":I
    .end local v1    # "aoutEntriesIdValues":I
    .end local v12    # "setLocalePref":Landroid/preference/EditTextPreference;
    .end local v13    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_1
    const v0, 0x7f0e0004

    goto :goto_0

    .line 196
    .restart local v0    # "aoutEntriesId":I
    :cond_2
    const v1, 0x7f0e0006

    goto :goto_1

    .line 200
    .restart local v1    # "aoutEntriesIdValues":I
    :cond_3
    const-string v14, "0"

    goto :goto_2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 238
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 239
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->unbindAudioService(Landroid/content/Context;)V

    .line 240
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 233
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/videolan/vlc/AudioServiceController;->bindAudioService(Landroid/content/Context;)V

    .line 234
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 221
    const-string v0, "enable_iomx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "subtitles_text_encoding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aout"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "enable_time_stretching_audio"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "chroma_format"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->restart()V

    .line 228
    :cond_1
    return-void
.end method
