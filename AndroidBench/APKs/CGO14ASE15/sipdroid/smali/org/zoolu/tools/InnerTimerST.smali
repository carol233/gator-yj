.class Lorg/zoolu/tools/InnerTimerST;
.super Ljava/util/TimerTask;
.source "InnerTimerST.java"


# static fields
.field static single_timer:Ljava/util/Timer;


# instance fields
.field listener:Lorg/zoolu/tools/InnerTimerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lorg/zoolu/tools/InnerTimerST;->single_timer:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(JLorg/zoolu/tools/InnerTimerListener;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "listener"    # Lorg/zoolu/tools/InnerTimerListener;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 37
    iput-object p3, p0, Lorg/zoolu/tools/InnerTimerST;->listener:Lorg/zoolu/tools/InnerTimerListener;

    .line 38
    sget-object v0, Lorg/zoolu/tools/InnerTimerST;->single_timer:Ljava/util/Timer;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 39
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/zoolu/tools/InnerTimerST;->listener:Lorg/zoolu/tools/InnerTimerListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/zoolu/tools/InnerTimerST;->listener:Lorg/zoolu/tools/InnerTimerListener;

    invoke-interface {v0}, Lorg/zoolu/tools/InnerTimerListener;->onInnerTimeout()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/tools/InnerTimerST;->listener:Lorg/zoolu/tools/InnerTimerListener;

    .line 46
    :cond_0
    return-void
.end method
