.class public Lcom/jstun/core/header/MessageHeaderParsingException;
.super Lcom/jstun/core/header/MessageHeaderException;
.source "MessageHeaderParsingException.java"


# static fields
.field private static final serialVersionUID:J = 0x3130373737363036L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mesg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/jstun/core/header/MessageHeaderException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method
