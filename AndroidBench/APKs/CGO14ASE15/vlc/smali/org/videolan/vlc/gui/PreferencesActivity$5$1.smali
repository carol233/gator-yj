.class Lorg/videolan/vlc/gui/PreferencesActivity$5$1;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/PreferencesActivity$5;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/videolan/vlc/gui/PreferencesActivity$5;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/PreferencesActivity$5;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$5$1;->this$1:Lorg/videolan/vlc/gui/PreferencesActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lorg/videolan/vlc/gui/PreferencesActivity$5$1;->this$1:Lorg/videolan/vlc/gui/PreferencesActivity$5;

    iget-object v1, v1, Lorg/videolan/vlc/gui/PreferencesActivity$5;->this$0:Lorg/videolan/vlc/gui/PreferencesActivity;

    invoke-virtual {v1}, Lorg/videolan/vlc/gui/PreferencesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 130
    .local v0, "db":Lorg/videolan/vlc/DatabaseManager;
    invoke-virtual {v0}, Lorg/videolan/vlc/DatabaseManager;->clearSearchhistory()V

    .line 131
    return-void
.end method
