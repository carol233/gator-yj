.class public Lorg/zoolu/sip/provider/MethodIdentifier;
.super Lorg/zoolu/sip/provider/Identifier;
.source "MethodIdentifier.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/provider/MethodIdentifier;)V
    .locals 0
    .param p1, "i"    # Lorg/zoolu/sip/provider/MethodIdentifier;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Lorg/zoolu/sip/provider/Identifier;)V

    .line 38
    return-void
.end method
