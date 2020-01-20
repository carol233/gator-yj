.class Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;
.super Landroid/os/Handler;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/VideoCamera;


# direct methods
.method private constructor <init>(Lorg/sipdroid/sipua/ui/VideoCamera;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/sipdroid/sipua/ui/VideoCamera;Lorg/sipdroid/sipua/ui/VideoCamera$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/sipdroid/sipua/ui/VideoCamera;
    .param p2, "x1"    # Lorg/sipdroid/sipua/ui/VideoCamera$1;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;-><init>(Lorg/sipdroid/sipua/ui/VideoCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 106
    .local v12, "now":J
    sget-object v23, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lorg/sipdroid/sipua/phone/Call;->base:J

    move-wide/from16 v23, v0

    sub-long v3, v12, v23

    .line 108
    .local v3, "delta":J
    const-wide/16 v23, 0x1f4

    add-long v23, v23, v3

    const-wide/16 v25, 0x3e8

    div-long v19, v23, v25

    .line 109
    .local v19, "seconds":J
    const-wide/16 v23, 0x3c

    div-long v9, v19, v23

    .line 110
    .local v9, "minutes":J
    const-wide/16 v23, 0x3c

    div-long v5, v9, v23

    .line 111
    .local v5, "hours":J
    const-wide/16 v23, 0x3c

    mul-long v23, v23, v5

    sub-long v15, v9, v23

    .line 112
    .local v15, "remainderMinutes":J
    const-wide/16 v23, 0x3c

    mul-long v23, v23, v9

    sub-long v17, v19, v23

    .line 114
    .local v17, "remainderSeconds":J
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    .line 115
    .local v21, "secondsString":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    .line 116
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 118
    :cond_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 119
    .local v11, "minutesString":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 120
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 122
    :cond_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 123
    .local v22, "text":Ljava/lang/String;
    const-wide/16 v23, 0x0

    cmp-long v23, v5, v23

    if-lez v23, :cond_3

    .line 124
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "hoursString":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 126
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 128
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 130
    .end local v7    # "hoursString":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/VideoCamera;->access$100(Lorg/sipdroid/sipua/ui/VideoCamera;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->fps:I

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/VideoCamera;->access$200(Lorg/sipdroid/sipua/ui/VideoCamera;)Landroid/widget/TextView;

    move-result-object v24

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->fps:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    const-string v23, "h"

    :goto_0
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "fps"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/VideoView;->getBufferPercentage()I

    move-result v2

    .local v2, "buffering":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoFrame:Landroid/widget/VideoView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v14

    .line 134
    .local v14, "pos":I
    const/16 v23, 0x64

    move/from16 v0, v23

    if-eq v2, v0, :cond_5

    if-eqz v2, :cond_5

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->mMediaController:Landroid/widget/MediaController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/MediaController;->show()V

    .line 137
    :cond_5
    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/VideoCamera;->access$300(Lorg/sipdroid/sipua/ui/VideoCamera;)Z

    move-result v23

    if-nez v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lorg/sipdroid/sipua/ui/VideoPreview;->setVisibility(I)V

    .line 138
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->obuffering:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-eq v0, v2, :cond_7

    const/16 v23, 0x64

    move/from16 v0, v23

    if-eq v2, v0, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->opos:I

    move/from16 v23, v0

    if-nez v23, :cond_9

    if-lez v14, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 139
    new-instance v8, Lorg/sipdroid/net/RtpPacket;

    const/16 v23, 0xc

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    .line 140
    .local v8, "keepalive":Lorg/sipdroid/net/RtpPacket;
    const/16 v23, 0x7d

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/sipdroid/net/RtpPacket;->setPayloadType(I)V

    .line 142
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v8    # "keepalive":Lorg/sipdroid/net/RtpPacket;
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput v2, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->obuffering:I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput v14, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->opos:I

    .line 155
    .end local v2    # "buffering":I
    .end local v14    # "pos":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->mVideoPreview:Lorg/sipdroid/sipua/ui/VideoPreview;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/VideoPreview;->invalidate()V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$MainHandler;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lorg/sipdroid/sipua/ui/VideoCamera;->access$500(Lorg/sipdroid/sipua/ui/VideoCamera;)Landroid/os/Handler;

    move-result-object v23

    invoke-static {}, Lorg/sipdroid/sipua/ui/VideoCamera;->access$400()I

    move-result v24

    const-wide/16 v25, 0x3e8

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void

    .line 131
    :cond_b
    const-string v23, "l"

    goto/16 :goto_0

    .line 143
    .restart local v2    # "buffering":I
    .restart local v8    # "keepalive":Lorg/sipdroid/net/RtpPacket;
    .restart local v14    # "pos":I
    :catch_0
    move-exception v23

    goto :goto_1
.end method
