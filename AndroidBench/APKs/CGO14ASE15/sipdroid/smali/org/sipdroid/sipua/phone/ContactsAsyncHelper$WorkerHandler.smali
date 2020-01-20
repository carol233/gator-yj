.class Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerHandler;
.super Landroid/os/Handler;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;


# direct methods
.method public constructor <init>(Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;

    .line 184
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;

    .line 190
    .local v0, "args":Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 210
    :goto_0
    iget-object v3, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerHandler;->this$0:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 211
    .local v2, "reply":Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 212
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 213
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void

    .line 192
    .end local v2    # "reply":Landroid/os/Message;
    :pswitch_0
    iget-object v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 194
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 195
    iget-object v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 200
    :cond_0
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;->result:Ljava/lang/Object;

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
