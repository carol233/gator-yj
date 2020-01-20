.class Lorg/sipdroid/sipua/ui/Caller$1;
.super Ljava/lang/Thread;
.source "Caller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Caller;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Caller;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$n:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Caller;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Caller$1;->this$0:Lorg/sipdroid/sipua/ui/Caller;

    iput-object p2, p0, Lorg/sipdroid/sipua/ui/Caller$1;->val$n:Ljava/lang/String;

    iput-object p3, p0, Lorg/sipdroid/sipua/ui/Caller$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 204
    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "sipdroid"

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Caller$1;->val$n:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Caller$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 211
    return-void

    .line 205
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
