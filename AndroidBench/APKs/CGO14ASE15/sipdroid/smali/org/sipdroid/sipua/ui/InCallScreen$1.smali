.class Lorg/sipdroid/sipua/ui/InCallScreen$1;
.super Ljava/lang/Thread;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/InCallScreen;->onResume()V
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
    .line 198
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v7, 0x1

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "len":I
    const/4 v2, 0x0

    .line 204
    .local v2, "tg":Landroid/media/ToneGenerator;
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    invoke-virtual {v5}, Lorg/sipdroid/sipua/ui/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dtmf_tone"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 206
    new-instance v2, Landroid/media/ToneGenerator;

    .end local v2    # "tg":Landroid/media/ToneGenerator;
    const/4 v5, 0x0

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getEarGain()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v2, v5, v6}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 208
    .restart local v2    # "tg":Landroid/media/ToneGenerator;
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-boolean v5, v5, Lorg/sipdroid/sipua/ui/InCallScreen;->running:Z

    if-nez v5, :cond_2

    .line 209
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/sipdroid/sipua/ui/InCallScreen;->t:Ljava/lang/Thread;

    .line 234
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->release()V

    .line 235
    :cond_1
    return-void

    .line 212
    :cond_2
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/InCallScreen;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-eq v0, v5, :cond_7

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 214
    .local v3, "time":J
    if-eqz v2, :cond_3

    invoke-static {}, Lorg/sipdroid/sipua/ui/InCallScreen;->access$000()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 215
    :cond_3
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v5

    iget-object v6, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/InCallScreen;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "len":I
    .local v1, "len":I
    invoke-interface {v6, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    const/16 v7, 0xfa

    invoke-virtual {v5, v6, v7}, Lorg/sipdroid/sipua/SipdroidEngine;->info(CI)V

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sub-long v3, v8, v5

    .line 218
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_4

    :try_start_0
    invoke-static {v3, v4}, Lorg/sipdroid/sipua/ui/InCallScreen$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 221
    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 223
    :cond_5
    :try_start_1
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-boolean v5, v5, Lorg/sipdroid/sipua/ui/InCallScreen;->running:Z

    if-eqz v5, :cond_6

    const-wide/16 v5, 0xfa

    invoke-static {v5, v6}, Lorg/sipdroid/sipua/ui/InCallScreen$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    move v0, v1

    .line 225
    .end local v1    # "len":I
    .restart local v0    # "len":I
    goto :goto_0

    .line 224
    .end local v0    # "len":I
    .restart local v1    # "len":I
    :catch_0
    move-exception v5

    move v0, v1

    .line 226
    .end local v1    # "len":I
    .restart local v0    # "len":I
    goto/16 :goto_0

    .line 228
    .end local v3    # "time":J
    :cond_7
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/InCallScreen$1;->this$0:Lorg/sipdroid/sipua/ui/InCallScreen;

    iget-object v5, v5, Lorg/sipdroid/sipua/ui/InCallScreen;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    const-wide/16 v5, 0x3e8

    :try_start_2
    invoke-static {v5, v6}, Lorg/sipdroid/sipua/ui/InCallScreen$1;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 231
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 219
    .end local v0    # "len":I
    .restart local v1    # "len":I
    .restart local v3    # "time":J
    :catch_2
    move-exception v5

    goto :goto_1
.end method
