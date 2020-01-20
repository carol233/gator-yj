.class Lorg/sipdroid/sipua/ui/VideoCamera$1;
.super Ljava/lang/Thread;
.source "VideoCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/VideoCamera;->startVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/VideoCamera;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/VideoCamera;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 453
    const/16 v14, 0x578

    .line 454
    .local v14, "frame_size":I
    const/16 v34, 0x586

    move/from16 v0, v34

    new-array v7, v0, [B

    .line 455
    .local v7, "buffer":[B
    const/16 v34, 0xc

    const/16 v35, 0x4

    aput-byte v35, v7, v34

    .line 456
    new-instance v26, Lorg/sipdroid/net/RtpPacket;

    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-direct {v0, v7, v1}, Lorg/sipdroid/net/RtpPacket;-><init>([BI)V

    .line 457
    .local v26, "rtp_packet":Lorg/sipdroid/net/RtpPacket;
    const/16 v27, 0x0

    .line 458
    .local v27, "seqn":I
    const/16 v25, 0x0

    .local v25, "number":I
    const/16 v20, 0x0

    .local v20, "len":I
    const/4 v15, 0x0

    .local v15, "head":I
    const/16 v16, 0x0

    .local v16, "lasthead":I
    const/16 v17, 0x0

    .local v17, "lasthead2":I
    const/4 v8, 0x0

    .local v8, "cnt":I
    const/16 v31, 0x0

    .line 459
    .local v31, "stable":I
    const-wide/16 v18, 0x0

    .line 460
    .local v18, "lasttime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->videoQualityHigh:Z

    move/from16 v34, v0

    if-eqz v34, :cond_2

    const-wide v5, 0x40e5f90000000000L    # 45000.0

    .line 461
    .local v5, "avgrate":D
    :goto_0
    const-wide/high16 v34, 0x4034000000000000L    # 20.0

    div-double v3, v5, v34

    .line 463
    .local v3, "avglen":D
    const/4 v13, 0x0

    .line 465
    .local v13, "fis":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->receiver:Landroid/net/LocalSocket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 472
    const/16 v34, 0x67

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setPayloadType(I)V

    .line 473
    :goto_1
    sget-object v34, Lorg/sipdroid/sipua/ui/Receiver;->listener_video:Lorg/sipdroid/sipua/ui/SipdroidListener;

    if-eqz v34, :cond_0

    invoke-static {}, Lorg/sipdroid/sipua/ui/VideoCamera;->videoValid()Z

    move-result v34

    if-eqz v34, :cond_0

    .line 474
    const/16 v23, -0x1

    .line 476
    .local v23, "num":I
    add-int/lit8 v34, v25, 0xe

    sub-int v35, v14, v25

    :try_start_1
    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v13, v7, v0, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v23

    .line 481
    if-gez v23, :cond_3

    .line 483
    const-wide/16 v34, 0x14

    :try_start_2
    invoke-static/range {v34 .. v35}, Lorg/sipdroid/sipua/ui/VideoCamera$1;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v11

    .line 570
    .end local v23    # "num":I
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lorg/sipdroid/net/SipdroidSocket;->close()V

    .line 572
    :cond_1
    const/16 v34, 0x0

    :try_start_3
    move/from16 v0, v34

    invoke-virtual {v13, v7, v0, v14}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v34

    if-gtz v34, :cond_1

    .line 575
    :goto_3
    return-void

    .line 460
    .end local v3    # "avglen":D
    .end local v5    # "avgrate":D
    .end local v13    # "fis":Ljava/io/InputStream;
    :cond_2
    const-wide v5, 0x40d7700000000000L    # 24000.0

    goto :goto_0

    .line 466
    .restart local v3    # "avglen":D
    .restart local v5    # "avgrate":D
    .restart local v13    # "fis":Ljava/io/InputStream;
    :catch_1
    move-exception v12

    .line 468
    .local v12, "e1":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lorg/sipdroid/net/RtpSocket;->getDatagramSocket()Lorg/sipdroid/net/SipdroidSocket;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lorg/sipdroid/net/SipdroidSocket;->close()V

    goto :goto_3

    .line 477
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v23    # "num":I
    :catch_2
    move-exception v11

    .line 479
    .local v11, "e":Ljava/io/IOException;
    goto :goto_2

    .line 489
    .end local v11    # "e":Ljava/io/IOException;
    :cond_3
    add-int v25, v25, v23

    .line 490
    add-int v15, v15, v23

    .line 492
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v21

    .line 493
    .local v21, "now":J
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v34

    add-int v34, v34, v15

    move/from16 v0, v16

    move/from16 v1, v34

    if-eq v0, v1, :cond_6

    add-int/lit8 v31, v31, 0x1

    const/16 v34, 0x5

    move/from16 v0, v31

    move/from16 v1, v34

    if-lt v0, v1, :cond_6

    sub-long v34, v21, v18

    const-wide/16 v36, 0x2bc

    cmp-long v34, v34, v36

    if-lez v34, :cond_6

    .line 494
    if-eqz v8, :cond_4

    if-eqz v20, :cond_4

    .line 495
    div-int v34, v20, v8

    move/from16 v0, v34

    int-to-double v3, v0

    .line 496
    :cond_4
    const-wide/16 v34, 0x0

    cmp-long v34, v18, v34

    if-eqz v34, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    int-to-double v0, v8

    move-wide/from16 v35, v0

    const-wide v37, 0x408f400000000000L    # 1000.0

    mul-double v35, v35, v37

    sub-long v37, v21, v18

    move-wide/from16 v0, v37

    long-to-double v0, v0

    move-wide/from16 v37, v0

    div-double v35, v35, v37

    move-wide/from16 v0, v35

    double-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput v0, v1, Lorg/sipdroid/sipua/ui/VideoCamera;->fps:I

    .line 498
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v34

    add-int v34, v34, v15

    sub-int v34, v34, v17

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0x408f400000000000L    # 1000.0

    mul-double v34, v34, v36

    sub-long v36, v21, v18

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    div-double v5, v34, v36

    .line 500
    :cond_5
    move-wide/from16 v18, v21

    .line 501
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v34

    add-int v16, v15, v34

    .line 502
    move/from16 v17, v15

    .line 503
    const/16 v31, 0x0

    move/from16 v8, v31

    move/from16 v20, v31

    .line 510
    :cond_6
    const/16 v23, 0xe

    :goto_4
    add-int/lit8 v34, v25, 0xe

    add-int/lit8 v34, v34, -0x3

    move/from16 v0, v23

    move/from16 v1, v34

    if-gt v0, v1, :cond_7

    .line 511
    aget-byte v34, v7, v23

    if-nez v34, :cond_a

    add-int/lit8 v34, v23, 0x1

    aget-byte v34, v7, v34

    if-nez v34, :cond_a

    add-int/lit8 v34, v23, 0x2

    aget-byte v34, v7, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xfc

    move/from16 v34, v0

    const/16 v35, 0x80

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_a

    .line 514
    :cond_7
    add-int/lit8 v34, v25, 0xe

    add-int/lit8 v34, v34, -0x3

    move/from16 v0, v23

    move/from16 v1, v34

    if-le v0, v1, :cond_b

    .line 515
    const/16 v23, 0x0

    .line 516
    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setMarker(Z)V

    .line 522
    :goto_5
    add-int/lit8 v28, v27, 0x1

    .end local v27    # "seqn":I
    .local v28, "seqn":I
    invoke-virtual/range {v26 .. v27}, Lorg/sipdroid/net/RtpPacket;->setSequenceNumber(I)V

    .line 523
    sub-int v34, v25, v23

    add-int/lit8 v34, v34, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setPayloadLength(I)V

    .line 524
    const/16 v34, 0xa

    move/from16 v0, v28

    move/from16 v1, v34

    if-le v0, v1, :cond_8

    .line 525
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->rtp_socket:Lorg/sipdroid/net/RtpSocket;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpSocket;->send(Lorg/sipdroid/net/RtpPacket;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 526
    sub-int v34, v25, v23

    add-int v20, v20, v34

    .line 532
    :cond_8
    if-lez v23, :cond_10

    .line 533
    add-int/lit8 v23, v23, -0x2

    .line 534
    const/16 v9, 0xe

    .line 535
    .local v9, "dest":I
    add-int/lit8 v34, v25, 0xe

    sub-int v29, v34, v23

    .line 536
    .local v29, "src":I
    if-lez v23, :cond_9

    aget-byte v34, v7, v29

    if-nez v34, :cond_9

    .line 537
    add-int/lit8 v29, v29, 0x1

    .line 538
    add-int/lit8 v23, v23, -0x1

    .line 540
    :cond_9
    move/from16 v25, v23

    move v10, v9

    .end local v9    # "dest":I
    .local v10, "dest":I
    move/from16 v30, v29

    .end local v29    # "src":I
    .local v30, "src":I
    move/from16 v24, v23

    .line 541
    .end local v23    # "num":I
    .local v24, "num":I
    :goto_6
    add-int/lit8 v23, v24, -0x1

    .end local v24    # "num":I
    .restart local v23    # "num":I
    if-lez v24, :cond_c

    .line 542
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v29, v30, 0x1

    .end local v30    # "src":I
    .restart local v29    # "src":I
    aget-byte v34, v7, v30

    aput-byte v34, v7, v10

    move v10, v9

    .end local v9    # "dest":I
    .restart local v10    # "dest":I
    move/from16 v30, v29

    .end local v29    # "src":I
    .restart local v30    # "src":I
    move/from16 v24, v23

    .end local v23    # "num":I
    .restart local v24    # "num":I
    goto :goto_6

    .line 505
    .end local v10    # "dest":I
    .end local v21    # "now":J
    .end local v24    # "num":I
    .end local v28    # "seqn":I
    .end local v30    # "src":I
    .restart local v23    # "num":I
    .restart local v27    # "seqn":I
    :catch_3
    move-exception v12

    .line 507
    .restart local v12    # "e1":Ljava/io/IOException;
    goto/16 :goto_2

    .line 510
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v21    # "now":J
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_4

    .line 518
    :cond_b
    add-int/lit8 v34, v25, 0xe

    sub-int v23, v34, v23

    .line 519
    const/16 v34, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/sipdroid/net/RtpPacket;->setMarker(Z)V

    goto :goto_5

    .line 527
    .end local v27    # "seqn":I
    .restart local v28    # "seqn":I
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/io/IOException;
    move/from16 v27, v28

    .line 529
    .end local v28    # "seqn":I
    .restart local v27    # "seqn":I
    goto/16 :goto_2

    .line 543
    .end local v11    # "e":Ljava/io/IOException;
    .end local v27    # "seqn":I
    .restart local v10    # "dest":I
    .restart local v28    # "seqn":I
    .restart local v30    # "src":I
    :cond_c
    const/16 v34, 0xc

    const/16 v35, 0x4

    aput-byte v35, v7, v34

    .line 545
    add-int/lit8 v8, v8, 0x1

    .line 547
    const-wide/16 v34, 0x0

    cmpl-double v34, v5, v34

    if-eqz v34, :cond_d

    .line 548
    div-double v34, v3, v5

    const-wide v36, 0x408f400000000000L    # 1000.0

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    :try_start_6
    invoke-static/range {v34 .. v35}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 552
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    const-wide/16 v36, 0x5a

    mul-long v34, v34, v36

    move-object/from16 v0, v26

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/net/RtpPacket;->setTimestamp(J)V

    .line 557
    .end local v10    # "dest":I
    .end local v30    # "src":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera;->change:Z

    move/from16 v34, v0

    if-eqz v34, :cond_11

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/ui/VideoCamera$1;->this$0:Lorg/sipdroid/sipua/ui/VideoCamera;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lorg/sipdroid/sipua/ui/VideoCamera;->change:Z

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    .line 562
    .local v32, "time":J
    :cond_e
    const/16 v34, 0xe

    :try_start_7
    move/from16 v0, v34

    invoke-virtual {v13, v7, v0, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v34

    if-lez v34, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-wide v34

    sub-long v34, v34, v32

    const-wide/16 v36, 0xbb8

    cmp-long v34, v34, v36

    if-ltz v34, :cond_e

    .line 566
    :cond_f
    :goto_8
    const/16 v25, 0x0

    .line 567
    const/16 v34, 0xc

    const/16 v35, 0x0

    aput-byte v35, v7, v34

    move/from16 v27, v28

    .line 568
    .end local v28    # "seqn":I
    .restart local v27    # "seqn":I
    goto/16 :goto_1

    .line 549
    .end local v27    # "seqn":I
    .end local v32    # "time":J
    .restart local v10    # "dest":I
    .restart local v28    # "seqn":I
    .restart local v30    # "src":I
    :catch_5
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    move/from16 v27, v28

    .line 550
    .end local v28    # "seqn":I
    .restart local v27    # "seqn":I
    goto/16 :goto_2

    .line 554
    .end local v10    # "dest":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v27    # "seqn":I
    .end local v30    # "src":I
    .restart local v28    # "seqn":I
    :cond_10
    const/16 v25, 0x0

    .line 555
    const/16 v34, 0xc

    const/16 v35, 0x0

    aput-byte v35, v7, v34

    goto :goto_7

    .line 573
    .end local v21    # "now":J
    .end local v23    # "num":I
    .end local v28    # "seqn":I
    .restart local v27    # "seqn":I
    :catch_6
    move-exception v34

    goto/16 :goto_3

    .line 564
    .end local v27    # "seqn":I
    .restart local v21    # "now":J
    .restart local v23    # "num":I
    .restart local v28    # "seqn":I
    .restart local v32    # "time":J
    :catch_7
    move-exception v34

    goto :goto_8

    .end local v32    # "time":J
    :cond_11
    move/from16 v27, v28

    .end local v28    # "seqn":I
    .restart local v27    # "seqn":I
    goto/16 :goto_1
.end method
