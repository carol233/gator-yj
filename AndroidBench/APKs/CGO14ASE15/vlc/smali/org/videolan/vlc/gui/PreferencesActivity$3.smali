.class Lorg/videolan/vlc/gui/PreferencesActivity$3;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 94
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$3;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 97
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 98
    .local v0, "checkboxHS":Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lorg/videolan/vlc/AudioServiceController;->getInstance()Lorg/videolan/vlc/AudioServiceController;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/AudioServiceController;->detectHeadset(Z)V

    .line 99
    const/4 v1, 0x1

    return v1
.end method
