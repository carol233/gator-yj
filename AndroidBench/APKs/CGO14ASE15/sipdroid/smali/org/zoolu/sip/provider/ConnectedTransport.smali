.class interface abstract Lorg/zoolu/sip/provider/ConnectedTransport;
.super Ljava/lang/Object;
.source "ConnectedTransport.java"

# interfaces
.implements Lorg/zoolu/sip/provider/Transport;


# virtual methods
.method public abstract getLastTimeMillis()J
.end method

.method public abstract getRemoteAddress()Lorg/zoolu/net/IpAddress;
.end method

.method public abstract getRemotePort()I
.end method

.method public abstract sendMessage(Lorg/zoolu/sip/message/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
