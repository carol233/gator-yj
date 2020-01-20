.class Lorg/videolan/vlc/gui/PreferencesActivity$10;
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
    .line 205
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$10;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 209
    iget-object v0, p0, Lorg/videolan/vlc/gui/PreferencesActivity$10;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/PreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00b3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    const/4 v0, 0x1

    return v0
.end method
