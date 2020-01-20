.class public Lorg/zoolu/sip/message/Message;
.super Lorg/zoolu/sip/message/BaseMessage;
.source "Message.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/zoolu/sip/message/BaseMessage;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/UdpPacket;)V
    .locals 0
    .param p1, "packet"    # Lorg/zoolu/net/UdpPacket;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;-><init>(Lorg/zoolu/net/UdpPacket;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/zoolu/sip/message/BaseMessage;-><init>(Lorg/zoolu/sip/message/BaseMessage;)V

    .line 72
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "buff"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/zoolu/sip/message/BaseMessage;-><init>([BII)V

    .line 62
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lorg/zoolu/sip/message/Message;

    invoke-direct {v0, p0}, Lorg/zoolu/sip/message/Message;-><init>(Lorg/zoolu/sip/message/Message;)V

    return-object v0
.end method

.method public getAllowEventsHeader()Lorg/zoolu/sip/header/AllowEventsHeader;
    .locals 2

    .prologue
    .line 195
    const-string v1, "Allow-Events"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/Message;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 196
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 198
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/AllowEventsHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/AllowEventsHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getEventHeader()Lorg/zoolu/sip/header/EventHeader;
    .locals 2

    .prologue
    .line 172
    const-string v1, "Event"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/Message;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 173
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 174
    const/4 v1, 0x0

    .line 175
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/EventHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/EventHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getReferToHeader()Lorg/zoolu/sip/header/ReferToHeader;
    .locals 2

    .prologue
    .line 126
    const-string v1, "Refer-To"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/Message;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 127
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 129
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ReferToHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ReferToHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getReferredByHeader()Lorg/zoolu/sip/header/ReferredByHeader;
    .locals 2

    .prologue
    .line 149
    const-string v1, "Referred-By"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/Message;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 150
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 151
    const/4 v1, 0x0

    .line 152
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/ReferredByHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/ReferredByHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public getSubscriptionStateHeader()Lorg/zoolu/sip/header/SubscriptionStateHeader;
    .locals 2

    .prologue
    .line 218
    const-string v1, "Subscription-State"

    invoke-virtual {p0, v1}, Lorg/zoolu/sip/message/Message;->getHeader(Ljava/lang/String;)Lorg/zoolu/sip/header/Header;

    move-result-object v0

    .line 219
    .local v0, "h":Lorg/zoolu/sip/header/Header;
    if-nez v0, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 221
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/zoolu/sip/header/SubscriptionStateHeader;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/header/SubscriptionStateHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    goto :goto_0
.end method

.method public hasAllowEventsHeader()Z
    .locals 1

    .prologue
    .line 190
    const-string v0, "Allow-Events"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasEventHeader()Z
    .locals 1

    .prologue
    .line 167
    const-string v0, "Event"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReferToHeader()Z
    .locals 1

    .prologue
    .line 121
    const-string v0, "Refer-To"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasReferredByHeader()Z
    .locals 1

    .prologue
    .line 144
    const-string v0, "Refer-To"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSubscriptionStateHeader()Z
    .locals 1

    .prologue
    .line 213
    const-string v0, "Subscription-State"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->hasHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMessage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v0, "MESSAGE"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotify()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v0, "NOTIFY"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPublish()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "PUBLISH"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRefer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 92
    const-string v0, "REFER"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSubscribe()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "SUBSCRIBE"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->isRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAllowEventsHeader()V
    .locals 1

    .prologue
    .line 208
    const-string v0, "Allow-Events"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->removeHeader(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public removeEventHeader()V
    .locals 1

    .prologue
    .line 185
    const-string v0, "Event"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->removeHeader(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public removeReferToHeader()V
    .locals 1

    .prologue
    .line 139
    const-string v0, "Refer-To"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->removeHeader(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public removeReferredByHeader()V
    .locals 1

    .prologue
    .line 162
    const-string v0, "Referred-By"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->removeHeader(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public removeSubscriptionStateHeader()V
    .locals 1

    .prologue
    .line 231
    const-string v0, "Subscription-State"

    invoke-virtual {p0, v0}, Lorg/zoolu/sip/message/Message;->removeHeader(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public setAllowEventsHeader(Lorg/zoolu/sip/header/AllowEventsHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/AllowEventsHeader;

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 204
    return-void
.end method

.method public setEventHeader(Lorg/zoolu/sip/header/EventHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/EventHeader;

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 181
    return-void
.end method

.method public setReferToHeader(Lorg/zoolu/sip/header/ReferToHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/ReferToHeader;

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 135
    return-void
.end method

.method public setReferredByHeader(Lorg/zoolu/sip/header/ReferredByHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/ReferredByHeader;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 158
    return-void
.end method

.method public setSubscriptionStateHeader(Lorg/zoolu/sip/header/SubscriptionStateHeader;)V
    .locals 0
    .param p1, "h"    # Lorg/zoolu/sip/header/SubscriptionStateHeader;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 227
    return-void
.end method
