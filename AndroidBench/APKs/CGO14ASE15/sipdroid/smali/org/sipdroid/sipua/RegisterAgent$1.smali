.class Lorg/sipdroid/sipua/RegisterAgent$1;
.super Ljava/lang/Object;
.source "RegisterAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/RegisterAgent;->delayStartMWI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/RegisterAgent;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/RegisterAgent;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/sipdroid/sipua/RegisterAgent$1;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 332
    .local v0, "o":Ljava/lang/Object;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    const-wide/16 v1, 0x2710

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 334
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    :goto_0
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent$1;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    invoke-virtual {v1}, Lorg/sipdroid/sipua/RegisterAgent;->startMWI()V

    .line 338
    return-void

    .line 334
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 335
    :catch_0
    move-exception v1

    goto :goto_0
.end method
