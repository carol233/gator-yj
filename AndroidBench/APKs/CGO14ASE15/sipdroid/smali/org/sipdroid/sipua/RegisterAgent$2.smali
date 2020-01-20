.class Lorg/sipdroid/sipua/RegisterAgent$2;
.super Ljava/lang/Object;
.source "RegisterAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/RegisterAgent;->onDlgSubscriptionSuccess(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/RegisterAgent;

.field final synthetic val$expires:I


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/RegisterAgent;I)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    iput p2, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->val$expires:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 363
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    iget-object v1, v0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :try_start_1
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    iget-object v0, v0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    iget v2, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->val$expires:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 365
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    :try_start_2
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/sipdroid/sipua/RegisterAgent;->alreadySubscribed:Z

    .line 367
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    const/4 v1, 0x0

    iput v1, v0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    .line 368
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent$2;->this$0:Lorg/sipdroid/sipua/RegisterAgent;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/RegisterAgent;->startMWI()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 371
    :goto_0
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0
.end method
