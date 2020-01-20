.class Lorg/videolan/vlc/gui/PreferencesActivity$7;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/PreferencesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/PreferencesActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/PreferencesActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$7;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 158
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v3}, Lorg/videolan/vlc/LibVLC;->changeVerbosity(Z)V
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "enabled"

    .line 165
    .local v2, "newstatus":Ljava/lang/String;
    :goto_0
    const-string v3, "VLC/PreferencesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verbosity mode is now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v2    # "newstatus":Ljava/lang/String;
    :goto_1
    return v6

    .line 159
    .restart local p2    # "newValue":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lorg/videolan/vlc/LibVlcException;
    const-string v3, "VLC/PreferencesActivity"

    const-string v4, "Failed to change logs verbosity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v1}, Lorg/videolan/vlc/LibVlcException;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v1    # "e":Lorg/videolan/vlc/LibVlcException;
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string v2, "disabled"

    goto :goto_0
.end method
