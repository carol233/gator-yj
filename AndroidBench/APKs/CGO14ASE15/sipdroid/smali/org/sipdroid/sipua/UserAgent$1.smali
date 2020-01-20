.class Lorg/sipdroid/sipua/UserAgent$1;
.super Ljava/lang/Thread;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/UserAgent;->reInvite(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/UserAgent;

.field final synthetic val$contact_url:Ljava/lang/String;

.field final synthetic val$delay_time:I

.field final synthetic val$new_sdp:Lorg/zoolu/sdp/SessionDescriptor;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;Lorg/zoolu/sdp/SessionDescriptor;I)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lorg/sipdroid/sipua/UserAgent$1;->this$0:Lorg/sipdroid/sipua/UserAgent;

    iput-object p2, p0, Lorg/sipdroid/sipua/UserAgent$1;->val$contact_url:Ljava/lang/String;

    iput-object p3, p0, Lorg/sipdroid/sipua/UserAgent$1;->val$new_sdp:Lorg/zoolu/sdp/SessionDescriptor;

    iput p4, p0, Lorg/sipdroid/sipua/UserAgent$1;->val$delay_time:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 899
    iget-object v0, p0, Lorg/sipdroid/sipua/UserAgent$1;->this$0:Lorg/sipdroid/sipua/UserAgent;

    iget-object v1, p0, Lorg/sipdroid/sipua/UserAgent$1;->val$contact_url:Ljava/lang/String;

    iget-object v2, p0, Lorg/sipdroid/sipua/UserAgent$1;->val$new_sdp:Lorg/zoolu/sdp/SessionDescriptor;

    invoke-virtual {v2}, Lorg/zoolu/sdp/SessionDescriptor;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/sipdroid/sipua/UserAgent$1;->val$delay_time:I

    invoke-static {v0, v1, v2, v3}, Lorg/sipdroid/sipua/UserAgent;->access$000(Lorg/sipdroid/sipua/UserAgent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 900
    return-void
.end method
