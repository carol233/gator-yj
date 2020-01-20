.class public Lcom/jstun/core/attribute/MessageAttributeParsingException;
.super Lcom/jstun/core/attribute/MessageAttributeException;
.source "MessageAttributeParsingException.java"


# static fields
.field private static final serialVersionUID:J = 0x2d38323530393035L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mesg"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/jstun/core/attribute/MessageAttributeException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method
