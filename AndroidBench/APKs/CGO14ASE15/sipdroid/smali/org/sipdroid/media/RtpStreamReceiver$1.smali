.class final Lorg/sipdroid/media/RtpStreamReceiver$1;
.super Ljava/lang/Thread;
.source "RtpStreamReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/media/RtpStreamReceiver;->setStreamVolume(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flags:I

.field final synthetic val$stream:I

.field final synthetic val$vol:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .prologue
    .line 295
    iput p1, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$stream:I

    iput p2, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$vol:I

    iput p3, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 297
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 298
    .local v0, "am":Landroid/media/AudioManager;
    iget v1, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$stream:I

    iget v2, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$vol:I

    iget v3, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$flags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 299
    iget v1, p0, Lorg/sipdroid/media/RtpStreamReceiver$1;->val$stream:I

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->stream()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lorg/sipdroid/media/RtpStreamReceiver;->restored:Z

    .line 300
    :cond_0
    return-void
.end method
