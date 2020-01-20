.class Lorg/videolan/vlc/AudioService$2;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/AudioService;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/AudioService;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 280
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "action":Ljava/lang/String;
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 282
    .local v2, "state":I
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    if-nez v4, :cond_1

    .line 283
    const-string v4, "VLC/AudioService"

    const-string v5, "Intent received, but VLC is not loaded, skipping."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Lorg/videolan/vlc/AudioService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 289
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    .line 295
    :cond_2
    const-string v4, "org.videolan.vlc.remote."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-nez v4, :cond_3

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lorg/videolan/vlc/gui/MainActivity;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 297
    .local v1, "iVlc":Landroid/content/Intent;
    const-string v4, "from_notification"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const/high16 v4, 0x30000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 305
    .end local v1    # "iVlc":Landroid/content/Intent;
    :cond_3
    const-string v4, "org.videolan.vlc.remote.PlayPause"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 306
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 307
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$200(Lorg/videolan/vlc/AudioService;)V

    .line 329
    :cond_4
    :goto_1
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$800(Lorg/videolan/vlc/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 330
    const-string v4, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 331
    const-string v4, "VLC/AudioService"

    const-string v5, "Headset Removed."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 333
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$200(Lorg/videolan/vlc/AudioService;)V

    .line 345
    :cond_5
    :goto_2
    const-string v4, "org.videolan.vlc.SleepIntent"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$500(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_0

    .line 308
    :cond_6
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 309
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$300(Lorg/videolan/vlc/AudioService;)V

    goto :goto_1

    .line 310
    :cond_7
    const-string v4, "org.videolan.vlc.remote.Play"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 311
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 312
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$300(Lorg/videolan/vlc/AudioService;)V

    goto :goto_1

    .line 313
    :cond_8
    const-string v4, "org.videolan.vlc.remote.Pause"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 314
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 315
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$200(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_1

    .line 316
    :cond_9
    const-string v4, "org.videolan.vlc.remote.Backward"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 317
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$400(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_1

    .line 318
    :cond_a
    const-string v4, "org.videolan.vlc.remote.Stop"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 319
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$500(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_1

    .line 320
    :cond_b
    const-string v4, "org.videolan.vlc.remote.Forward"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 321
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$600(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_1

    .line 322
    :cond_c
    const-string v4, "org.videolan.vlc.remote.LastPlaylist"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 323
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$700(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_1

    .line 335
    :cond_d
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v2, :cond_5

    .line 336
    const-string v4, "VLC/AudioService"

    const-string v5, "Headset Inserted."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$000(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/LibVLC;

    move-result-object v4

    invoke-virtual {v4}, Lorg/videolan/vlc/LibVLC;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$100(Lorg/videolan/vlc/AudioService;)Lorg/videolan/vlc/Media;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 338
    iget-object v4, p0, Lorg/videolan/vlc/AudioService$2;->this$0:Lorg/videolan/vlc/AudioService;

    invoke-static {v4}, Lorg/videolan/vlc/AudioService;->access$300(Lorg/videolan/vlc/AudioService;)V

    goto/16 :goto_2
.end method
