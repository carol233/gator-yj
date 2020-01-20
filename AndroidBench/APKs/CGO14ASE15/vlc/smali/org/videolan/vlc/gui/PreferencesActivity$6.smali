.class Lorg/videolan/vlc/gui/PreferencesActivity$6;
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
    .line 142
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$6;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/videolan/vlc/gui/PreferencesActivity$6;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/PreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/vlc/DatabaseManager;->emptyDatabase()V

    .line 146
    iget-object v0, p0, Lorg/videolan/vlc/gui/PreferencesActivity$6;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {v0}, Lorg/videolan/vlc/gui/PreferencesActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00a0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    const/4 v0, 0x1

    return v0
.end method
