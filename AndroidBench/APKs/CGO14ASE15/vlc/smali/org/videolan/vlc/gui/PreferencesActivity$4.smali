.class Lorg/videolan/vlc/gui/PreferencesActivity$4;
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
    .line 106
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$4;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/videolan/vlc/gui/PreferencesActivity$4;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->access$000(Lorg/videolan/vlc/gui/PreferencesActivity;Landroid/content/Context;)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
