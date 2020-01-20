.class Lorg/zoolu/tools/InnerTimer;
.super Ljava/lang/Thread;
.source "InnerTimer.java"


# instance fields
.field listener:Lorg/zoolu/tools/InnerTimerListener;

.field timeout:J


# direct methods
.method public constructor <init>(JLorg/zoolu/tools/InnerTimerListener;)V
    .locals 0
    .param p1, "timeout"    # J
    .param p3, "listener"    # Lorg/zoolu/tools/InnerTimerListener;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 32
    iput-wide p1, p0, Lorg/zoolu/tools/InnerTimer;->timeout:J

    .line 33
    iput-object p3, p0, Lorg/zoolu/tools/InnerTimer;->listener:Lorg/zoolu/tools/InnerTimerListener;

    .line 34
    invoke-virtual {p0}, Lorg/zoolu/tools/InnerTimer;->start()V

    .line 35
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lorg/zoolu/tools/InnerTimer;->listener:Lorg/zoolu/tools/InnerTimerListener;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-wide v1, p0, Lorg/zoolu/tools/InnerTimer;->timeout:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    iget-object v1, p0, Lorg/zoolu/tools/InnerTimer;->listener:Lorg/zoolu/tools/InnerTimerListener;

    invoke-interface {v1}, Lorg/zoolu/tools/InnerTimerListener;->onInnerTimeout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/zoolu/tools/InnerTimer;->listener:Lorg/zoolu/tools/InnerTimerListener;

    .line 48
    :cond_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
