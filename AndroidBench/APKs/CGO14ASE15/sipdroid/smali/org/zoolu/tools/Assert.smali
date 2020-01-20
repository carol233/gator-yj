.class public Lorg/zoolu/tools/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isFalse(Z)V
    .locals 1
    .param p0, "exp"    # Z

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    const-string v0, "Assertion failed"

    invoke-static {v0}, Lorg/zoolu/tools/Assert;->onError(Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public static final isFalse(ZLjava/lang/String;)V
    .locals 2
    .param p0, "exp"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 64
    if-eqz p0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assertion failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/zoolu/tools/Assert;->onError(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public static final isTrue(Z)V
    .locals 1
    .param p0, "exp"    # Z

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const-string v0, "Assertion failed"

    invoke-static {v0}, Lorg/zoolu/tools/Assert;->onError(Ljava/lang/String;)V

    .line 39
    :cond_0
    return-void
.end method

.method public static final isTrue(ZLjava/lang/String;)V
    .locals 2
    .param p0, "exp"    # Z
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assertion failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/zoolu/tools/Assert;->onError(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method private static onError(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    new-instance v0, Lorg/zoolu/tools/AssertException;

    invoke-direct {v0, p0}, Lorg/zoolu/tools/AssertException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
