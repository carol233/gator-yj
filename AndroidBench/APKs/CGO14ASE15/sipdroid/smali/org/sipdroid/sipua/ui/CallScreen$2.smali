.class Lorg/sipdroid/sipua/ui/CallScreen$2;
.super Ljava/lang/Thread;
.source "CallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/CallScreen;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/CallScreen;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/CallScreen;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 232
    new-instance v3, Lorg/sipdroid/net/RtpPacket;

    const/16 v5, 0xc

    new-array v5, v5, [B

    invoke-direct {v3, v5, v10}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    .line 233
    .local v3, "keepalive":Lorg/sipdroid/net/RtpPacket;
    new-instance v4, Lorg/sipdroid/net/RtpPacket;

    const/16 v5, 0x3e8

    new-array v5, v5, [B

    invoke-direct {v4, v5, v10}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    .line 236
    .local v4, "videopacket":Lorg/sipdroid/net/RtpPacket;
    :try_start_0
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    if-nez v5, :cond_2

    .line 237
    :cond_0
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    new-instance v6, Lorg/sipdroid/net/RtpSocket;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    new-instance v8, Lorg/sipdroid/net/SipdroidSocket;

    iget-object v9, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v9, v9, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sipdroid/sipua/SipdroidEngine;->getLocalVideo()I

    move-result v9

    invoke-direct {v8, v9}, Lorg/sipdroid/net/SipdroidSocket;-><init>(I)V

    iput-object v8, v7, Lorg/sipdroid/sipua/ui/CallScreen;->socket:Lorg/sipdroid/net/SipdroidSocket;

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v7, v7, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v7

    invoke-virtual {v7}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteAddr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    iget-object v9, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v9, v9, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v9

    invoke-virtual {v9}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteVideo()I

    move-result v9

    invoke-direct {v6, v8, v7, v9}, Lorg/sipdroid/net/RtpSocket;-><init>(Lorg/sipdroid/net/SipdroidSocket;Ljava/net/InetAddress;I)V

    iput-object v6, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    .line 240
    const-wide/16 v5, 0xbb8

    invoke-static {v5, v6}, Lorg/sipdroid/sipua/ui/CallScreen$2;->sleep(J)V

    .line 243
    :goto_0
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v5}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v5

    const/16 v6, 0x3a98

    invoke-virtual {v5, v6}, Lorg/sipdroid/net/SipdroidSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/16 v5, 0x7e

    invoke-virtual {v3, v5}, Lorg/sipdroid/net/RtpPacket;->setPayloadType(I)V

    .line 250
    :try_start_1
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v5, v3}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v5, v4}, Lorg/sipdroid/net/RtpSocket;->receive(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 265
    :goto_1
    invoke-virtual {v4}, Lorg/sipdroid/net/RtpPacket;->getPayloadLength()I

    move-result v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_1

    .line 266
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 267
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->intent:Landroid/content/Intent;

    const-string v6, "justplay"

    invoke-virtual {v5, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 274
    :goto_2
    return-void

    .line 242
    :cond_2
    :try_start_3
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v6}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v6

    iput-object v6, v5, Lorg/sipdroid/sipua/ui/CallScreen;->socket:Lorg/sipdroid/net/SipdroidSocket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_2

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e1":Ljava/lang/Exception;
    goto :goto_2

    .line 257
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v5}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sipdroid/net/SipdroidSocket;->disconnect()V

    .line 260
    :try_start_4
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    invoke-virtual {v5, v3}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 261
    :catch_3
    move-exception v1

    .line 262
    .local v1, "e1":Ljava/io/IOException;
    goto :goto_2

    .line 270
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/io/IOException;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    const-class v6, Lorg/sipdroid/sipua/ui/VideoCamera;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v2, "i":Landroid/content/Intent;
    const-string v5, "justplay"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 272
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/CallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/CallScreen;

    invoke-virtual {v5, v2}, Lorg/sipdroid/sipua/ui/CallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method
