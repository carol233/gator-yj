.class public Lorg/zoolu/tools/Timer;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Lorg/zoolu/tools/InnerTimerListener;


# static fields
.field public static SINGLE_THREAD:Z


# instance fields
.field active:Z

.field label:Ljava/lang/String;

.field listener:Lorg/zoolu/tools/TimerListener;

.field time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lorg/zoolu/tools/Timer;->SINGLE_THREAD:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V
    .locals 0
    .param p1, "t_msec"    # J
    .param p3, "t_label"    # Ljava/lang/String;
    .param p4, "t_listener"    # Lorg/zoolu/tools/TimerListener;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/zoolu/tools/Timer;->init(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    .line 83
    return-void
.end method

.method public constructor <init>(JLorg/zoolu/tools/TimerListener;)V
    .locals 1
    .param p1, "t_msec"    # J
    .param p3, "t_listener"    # Lorg/zoolu/tools/TimerListener;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/zoolu/tools/Timer;->init(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/zoolu/tools/Timer;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/zoolu/tools/Timer;->time:J

    return-wide v0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/tools/Timer;->active:Z

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/tools/Timer;->listener:Lorg/zoolu/tools/TimerListener;

    .line 113
    return-void
.end method

.method init(JLjava/lang/String;Lorg/zoolu/tools/TimerListener;)V
    .locals 1
    .param p1, "t_msec"    # J
    .param p3, "t_label"    # Ljava/lang/String;
    .param p4, "t_listener"    # Lorg/zoolu/tools/TimerListener;

    .prologue
    .line 45
    iput-object p4, p0, Lorg/zoolu/tools/Timer;->listener:Lorg/zoolu/tools/TimerListener;

    .line 46
    iput-wide p1, p0, Lorg/zoolu/tools/Timer;->time:J

    .line 47
    iput-object p3, p0, Lorg/zoolu/tools/Timer;->label:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/tools/Timer;->active:Z

    .line 49
    return-void
.end method

.method public onInnerTimeout()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lorg/zoolu/tools/Timer;->active:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/tools/Timer;->listener:Lorg/zoolu/tools/TimerListener;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/zoolu/tools/Timer;->listener:Lorg/zoolu/tools/TimerListener;

    invoke-interface {v0, p0}, Lorg/zoolu/tools/TimerListener;->onTimeout(Lorg/zoolu/tools/Timer;)V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/tools/Timer;->listener:Lorg/zoolu/tools/TimerListener;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/tools/Timer;->active:Z

    .line 130
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/tools/Timer;->active:Z

    .line 118
    sget-boolean v0, Lorg/zoolu/tools/Timer;->SINGLE_THREAD:Z

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Lorg/zoolu/tools/InnerTimerST;

    iget-wide v1, p0, Lorg/zoolu/tools/Timer;->time:J

    invoke-direct {v0, v1, v2, p0}, Lorg/zoolu/tools/InnerTimerST;-><init>(JLorg/zoolu/tools/InnerTimerListener;)V

    .line 122
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lorg/zoolu/tools/InnerTimer;

    iget-wide v1, p0, Lorg/zoolu/tools/Timer;->time:J

    invoke-direct {v0, v1, v2, p0}, Lorg/zoolu/tools/InnerTimer;-><init>(JLorg/zoolu/tools/InnerTimerListener;)V

    goto :goto_0
.end method
