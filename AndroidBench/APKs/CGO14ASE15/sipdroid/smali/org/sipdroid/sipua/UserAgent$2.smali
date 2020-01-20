.class Lorg/sipdroid/sipua/UserAgent$2;
.super Ljava/lang/Thread;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/UserAgent;->callTransfer(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/UserAgent;

.field final synthetic val$delay_time:I

.field final synthetic val$target_url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 928
    iput-object p1, p0, Lorg/sipdroid/sipua/UserAgent$2;->this$0:Lorg/sipdroid/sipua/UserAgent;

    iput-object p2, p0, Lorg/sipdroid/sipua/UserAgent$2;->val$target_url:Ljava/lang/String;

    iput p3, p0, Lorg/sipdroid/sipua/UserAgent$2;->val$delay_time:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 930
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent$2;->this$0:Lorg/sipdroid/sipua/UserAgent;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent$2;->val$target_url:Ljava/lang/String;

    iget v2, p0, Lorg/sipdroid/sipua/UserAgent$2;->val$delay_time:I

    invoke-static {v0, v1, v2}, Lorg/sipdroid/sipua/UserAgent;->access$100(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;I)V

    .line 931
    return-void
.end method
