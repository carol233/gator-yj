.class Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;
.super Lorg/videolan/vlc/WeakHandler;
.source "HistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/HistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryEventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/videolan/vlc/WeakHandler",
        "<",
        "Lorg/videolan/vlc/gui/HistoryAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/HistoryAdapter;)V
    .locals 0
    .param p1, "owner"    # Lorg/videolan/vlc/gui/HistoryAdapter;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/videolan/vlc/WeakHandler;-><init>(Ljava/lang/Object;)V

    .line 149
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/HistoryAdapter$HistoryEventHandler;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/HistoryAdapter;

    .line 154
    .local v0, "adapater":Lorg/videolan/vlc/gui/HistoryAdapter;
    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "item_uri"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "item_uri":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "item_index"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "item_index":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "event"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 160
    :pswitch_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lorg/videolan/vlc/gui/HistoryAdapter;->updateEvent(Ljava/lang/Boolean;Ljava/lang/String;I)V

    goto :goto_0

    .line 163
    :pswitch_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lorg/videolan/vlc/gui/HistoryAdapter;->updateEvent(Ljava/lang/Boolean;Ljava/lang/String;I)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
