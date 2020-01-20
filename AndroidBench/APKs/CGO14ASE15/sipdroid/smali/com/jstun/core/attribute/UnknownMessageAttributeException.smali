.class public Lcom/jstun/core/attribute/UnknownMessageAttributeException;
.super Lcom/jstun/core/attribute/MessageAttributeParsingException;
.source "UnknownMessageAttributeException.java"


# static fields
.field private static final serialVersionUID:J = 0x4a98860ca5c4a083L


# instance fields
.field private type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)V
    .locals 0
    .param p1, "mesg"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/jstun/core/attribute/MessageAttributeParsingException;-><init>(Ljava/lang/String;)V

    .line 12
    iput-object p2, p0, Lcom/jstun/core/attribute/UnknownMessageAttributeException;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    .line 13
    return-void
.end method


# virtual methods
.method public getType()Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jstun/core/attribute/UnknownMessageAttributeException;->type:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    return-object v0
.end method
