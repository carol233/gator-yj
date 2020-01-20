.class Lorg/sipdroid/sipua/ui/InCallScreen$2;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/InCallScreen;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/InCallScreen;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    .line 242
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v1, v3, :cond_0

    .line 245
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->answer()V

    goto :goto_0

    .line 248
    :pswitch_1
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v1, v3, :cond_0

    .line 249
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->answer()V

    .line 250
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/sipdroid/sipua/SipdroidEngine;->speaker(I)I

    goto :goto_0

    .line 254
    :pswitch_2
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->moveBack()V

    goto :goto_0

    .line 257
    :pswitch_3
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mCodec:Landroid/widget/TextView;

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->getCodec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    .line 259
    sget v1, Lorg/sipdroid/media/RtpStreamReceiver;->timeout:I

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mStats:Landroid/widget/TextView;

    const-string v2, "no data"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_1
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mStats:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_1
    sget v1, Lorg/sipdroid/media/RtpStreamSender;->m:I

    if-le v1, v3, :cond_2

    .line 262
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mStats:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->loss:F

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%loss, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%lost, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%late (>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v4, v4, 0xfa

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mStats:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->lost:F

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%lost, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->late:F

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->good:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%late (>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->jitter:I

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    mul-int/lit16 v4, v4, 0xfa

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    sget v4, Lorg/sipdroid/media/RtpStreamReceiver;->mu:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 272
    :cond_3
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mStats:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 275
    :pswitch_4
    sget-object v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    if-eqz v1, :cond_0

    sget-object v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mSlidingCardManager:Lorg/sipdroid/sipua/phone/SlidingCardManager;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/phone/SlidingCardManager;->showPopup()V

    goto/16 :goto_0

    .line 278
    :pswitch_5
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lorg/sipdroid/sipua/ui/InCallScreen;->setScreenBacklight(F)V

    .line 279
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v6, v2}, Landroid/view/Window;->setFlags(II)V

    .line 281
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_4

    .line 282
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->close()V

    .line 283
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v6}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 285
    :cond_4
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/ui/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-boolean v1, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->hapticset:Z

    if-eqz v1, :cond_0

    .line 287
    const-string v1, "haptic_feedback_enabled"

    iget-object v2, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget v2, v2, Lorg/sipdroid/sipua/ui/InCallScreen;->haptic:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$2;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iput-boolean v6, v1, Lorg/sipdroid/sipua/ui/InCallScreen;->hapticset:Z

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
