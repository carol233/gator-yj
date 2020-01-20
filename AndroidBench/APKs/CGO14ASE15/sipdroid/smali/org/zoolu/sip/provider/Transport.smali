.class interface abstract Lorg/zoolu/sip/provider/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# virtual methods
.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract halt()V
.end method

.method public abstract sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/net/IpAddress;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
