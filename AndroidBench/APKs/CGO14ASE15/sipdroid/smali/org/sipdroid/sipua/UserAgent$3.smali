.class Lorg/sipdroid/sipua/UserAgent$3;
.super Ljava/lang/Thread;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/UserAgent;->automaticAccept(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/UserAgent;

.field final synthetic val$delay_time:I


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/UserAgent;I)V
    .locals 0

    .prologue
    .line 951
    iput-object p1, p0, Lorg/sipdroid/sipua/UserAgent$3;->this$0:Lorg/sipdroid/sipua/UserAgent;

    iput p2, p0, Lorg/sipdroid/sipua/UserAgent$3;->val$delay_time:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent$3;->this$0:Lorg/sipdroid/sipua/UserAgent;

    iget v1, p0, Lorg/sipdroid/sipua/UserAgent$3;->val$delay_time:I

    invoke-static {v0, v1}, Lorg/sipdroid/sipua/UserAgent;->access$200(Lorg/sipdroid/sipua/UserAgent;I)V

    .line 954
    return-void
.end method
