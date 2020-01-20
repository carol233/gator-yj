.class public Lorg/sipdroid/sipua/ui/Checkin;
.super Ljava/lang/Object;
.source "Checkin.java"


# static fields
.field static createButton:I

.field static hold:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkin(Z)V
    .locals 6
    .param p0, "in_call"    # Z

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lorg/sipdroid/sipua/ui/Checkin;->hold:J

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lorg/zoolu/tools/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 73
    :cond_0
    const-string v0, "http://sipdroid.googlecode.com/svn/images/checkin"

    invoke-static {v0, p0}, Lorg/sipdroid/sipua/ui/Checkin;->url(Ljava/lang/String;Z)V

    .line 74
    :cond_1
    return-void
.end method

.method static url(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "opt"    # Ljava/lang/String;
    .param p1, "in_call"    # Z

    .prologue
    .line 21
    new-instance v0, Lorg/sipdroid/sipua/ui/Checkin$1;

    invoke-direct {v0, p0, p1}, Lorg/sipdroid/sipua/ui/Checkin$1;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/Checkin$1;->start()V

    .line 68
    return-void
.end method
