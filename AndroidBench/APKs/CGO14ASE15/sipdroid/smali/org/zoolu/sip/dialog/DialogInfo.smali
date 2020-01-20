.class public Lorg/zoolu/sip/dialog/DialogInfo;
.super Ljava/lang/Object;
.source "DialogInfo.java"


# instance fields
.field call_id:Ljava/lang/String;

.field local_contact:Lorg/zoolu/sip/address/NameAddress;

.field local_cseq:J

.field local_name:Lorg/zoolu/sip/address/NameAddress;

.field local_tag:Ljava/lang/String;

.field remote_contact:Lorg/zoolu/sip/address/NameAddress;

.field remote_cseq:J

.field remote_name:Lorg/zoolu/sip/address/NameAddress;

.field remote_tag:Ljava/lang/String;

.field route:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/address/NameAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_name:Lorg/zoolu/sip/address/NameAddress;

    .line 93
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    .line 94
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_contact:Lorg/zoolu/sip/address/NameAddress;

    .line 95
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_contact:Lorg/zoolu/sip/address/NameAddress;

    .line 96
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->call_id:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_tag:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_tag:Ljava/lang/String;

    .line 99
    iput-wide v1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_cseq:J

    .line 100
    iput-wide v1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_cseq:J

    .line 101
    iput-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->route:Ljava/util/Vector;

    .line 102
    return-void
.end method


# virtual methods
.method public getCallID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->call_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalCSeq()J
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_cseq:J

    return-wide v0
.end method

.method public getLocalContact()Lorg/zoolu/sip/address/NameAddress;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_contact:Lorg/zoolu/sip/address/NameAddress;

    return-object v0
.end method

.method public getLocalName()Lorg/zoolu/sip/address/NameAddress;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_name:Lorg/zoolu/sip/address/NameAddress;

    return-object v0
.end method

.method public getLocalTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteCSeq()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_cseq:J

    return-wide v0
.end method

.method public getRemoteContact()Lorg/zoolu/sip/address/NameAddress;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_contact:Lorg/zoolu/sip/address/NameAddress;

    return-object v0
.end method

.method public getRemoteName()Lorg/zoolu/sip/address/NameAddress;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    return-object v0
.end method

.method public getRemoteTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/address/NameAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->route:Ljava/util/Vector;

    return-object v0
.end method

.method public incLocalCSeq()V
    .locals 4

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_cseq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_cseq:J

    .line 183
    return-void
.end method

.method public incRemoteCSeq()V
    .locals 4

    .prologue
    .line 197
    iget-wide v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_cseq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_cseq:J

    .line 198
    return-void
.end method

.method public setCallID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->call_id:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setLocalCSeq(J)V
    .locals 0
    .param p1, "cseq"    # J

    .prologue
    .line 177
    iput-wide p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_cseq:J

    .line 178
    return-void
.end method

.method public setLocalContact(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 0
    .param p1, "name_address"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_contact:Lorg/zoolu/sip/address/NameAddress;

    .line 129
    return-void
.end method

.method public setLocalName(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 0
    .param p1, "url"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_name:Lorg/zoolu/sip/address/NameAddress;

    .line 109
    return-void
.end method

.method public setLocalTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->local_tag:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setRemoteCSeq(J)V
    .locals 0
    .param p1, "cseq"    # J

    .prologue
    .line 192
    iput-wide p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_cseq:J

    .line 193
    return-void
.end method

.method public setRemoteContact(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 0
    .param p1, "name_address"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_contact:Lorg/zoolu/sip/address/NameAddress;

    .line 139
    return-void
.end method

.method public setRemoteName(Lorg/zoolu/sip/address/NameAddress;)V
    .locals 0
    .param p1, "url"    # Lorg/zoolu/sip/address/NameAddress;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_name:Lorg/zoolu/sip/address/NameAddress;

    .line 119
    return-void
.end method

.method public setRemoteTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->remote_tag:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setRoute(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lorg/zoolu/sip/address/NameAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "r":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/address/NameAddress;>;"
    iput-object p1, p0, Lorg/zoolu/sip/dialog/DialogInfo;->route:Ljava/util/Vector;

    .line 209
    return-void
.end method
