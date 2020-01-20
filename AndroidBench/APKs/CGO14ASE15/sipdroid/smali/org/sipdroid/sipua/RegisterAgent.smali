.class public Lorg/sipdroid/sipua/RegisterAgent;
.super Ljava/lang/Object;
.source "RegisterAgent.java"

# interfaces
.implements Lorg/zoolu/sip/transaction/TransactionClientListener;
.implements Lorg/zoolu/sip/dialog/SubscriberDialogListener;


# static fields
.field public static final DEREGISTERING:I = 0x4

.field static final MAX_ATTEMPTS:I = 0x3

.field public static final REGISTERED:I = 0x3

.field public static final REGISTERING:I = 0x2

.field public static final UNDEFINED:I = 0x0

.field public static final UNREGISTERED:I = 0x1


# instance fields
.field public CurrentState:I

.field public final SUBSCRIPTION_EXPIRES:I

.field alreadySubscribed:Z

.field attempts:I

.field contact:Lorg/zoolu/sip/address/NameAddress;

.field currentSubscribeMessage:Lorg/zoolu/sip/message/Message;

.field expire_time:I

.field icsi:Ljava/lang/String;

.field listener:Lorg/sipdroid/sipua/RegisterAgentListener;

.field log:Lorg/zoolu/tools/Log;

.field loop:Z

.field next_nonce:Ljava/lang/String;

.field passwd:Ljava/lang/String;

.field pub:Ljava/lang/Boolean;

.field qop:Ljava/lang/String;

.field qvalue:Ljava/lang/String;

.field realm:Ljava/lang/String;

.field sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

.field sip_provider:Lorg/zoolu/sip/provider/SipProvider;

.field subattempts:I

.field t:Lorg/zoolu/sip/transaction/TransactionClient;

.field target:Lorg/zoolu/sip/address/NameAddress;

.field user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/sipdroid/sipua/RegisterAgentListener;Lorg/sipdroid/sipua/UserAgentProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "target_url"    # Ljava/lang/String;
    .param p3, "contact_url"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "realm"    # Ljava/lang/String;
    .param p6, "passwd"    # Ljava/lang/String;
    .param p7, "listener"    # Lorg/sipdroid/sipua/RegisterAgentListener;
    .param p8, "user_profile"    # Lorg/sipdroid/sipua/UserAgentProfile;
    .param p9, "qvalue"    # Ljava/lang/String;
    .param p10, "icsi"    # Ljava/lang/String;
    .param p11, "pub"    # Ljava/lang/Boolean;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->alreadySubscribed:Z

    .line 127
    const v0, 0x2cec0

    iput v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->SUBSCRIPTION_EXPIRES:I

    .line 138
    invoke-direct {p0, p1, p2, p3, p7}, Lorg/sipdroid/sipua/RegisterAgent;->init(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/sipdroid/sipua/RegisterAgentListener;)V

    .line 141
    iput-object p4, p0, Lorg/sipdroid/sipua/RegisterAgent;->username:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lorg/sipdroid/sipua/RegisterAgent;->realm:Ljava/lang/String;

    .line 143
    iput-object p6, p0, Lorg/sipdroid/sipua/RegisterAgent;->passwd:Ljava/lang/String;

    .line 144
    iput-object p8, p0, Lorg/sipdroid/sipua/RegisterAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    .line 147
    iput-object p9, p0, Lorg/sipdroid/sipua/RegisterAgent;->qvalue:Ljava/lang/String;

    .line 148
    iput-object p10, p0, Lorg/sipdroid/sipua/RegisterAgent;->icsi:Ljava/lang/String;

    .line 150
    iput-object p11, p0, Lorg/sipdroid/sipua/RegisterAgent;->pub:Ljava/lang/Boolean;

    .line 151
    return-void
.end method

.method private generateRequestWithProxyAuthorizationheader(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z
    .locals 10
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v5, 0x0

    .line 531
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->hasProxyAuthenticateHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getProxyAuthenticateHeader()Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 534
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getProxyAuthenticateHeader()Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->realm:Ljava/lang/String;

    iput-object v1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getProxyAuthenticateHeader()Lorg/zoolu/sip/header/ProxyAuthenticateHeader;

    move-result-object v3

    .line 536
    .local v3, "pah":Lorg/zoolu/sip/header/ProxyAuthenticateHeader;
    invoke-virtual {v3}, Lorg/zoolu/sip/header/ProxyAuthenticateHeader;->getQopOptionsParam()Ljava/lang/String;

    move-result-object v9

    .line 538
    .local v9, "qop_options":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: qop-options: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    .line 540
    if-eqz v9, :cond_0

    const-string v0, "auth"

    :goto_0
    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->qop:Ljava/lang/String;

    .line 542
    new-instance v0, Lorg/zoolu/sip/authentication/DigestAuthentication;

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getTransactionMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->qop:Ljava/lang/String;

    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->username:Ljava/lang/String;

    iget-object v7, p0, Lorg/sipdroid/sipua/RegisterAgent;->passwd:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lorg/zoolu/sip/authentication/DigestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getProxyAuthorizationHeader()Lorg/zoolu/sip/header/ProxyAuthorizationHeader;

    move-result-object v8

    .line 546
    .local v8, "ah":Lorg/zoolu/sip/header/ProxyAuthorizationHeader;
    invoke-virtual {p2, v8}, Lorg/zoolu/sip/message/Message;->setProxyAuthorizationHeader(Lorg/zoolu/sip/header/ProxyAuthorizationHeader;)V

    .line 548
    const/4 v0, 0x1

    .line 550
    .end local v3    # "pah":Lorg/zoolu/sip/header/ProxyAuthenticateHeader;
    .end local v8    # "ah":Lorg/zoolu/sip/header/ProxyAuthorizationHeader;
    .end local v9    # "qop_options":Ljava/lang/String;
    :goto_1
    return v0

    .restart local v3    # "pah":Lorg/zoolu/sip/header/ProxyAuthenticateHeader;
    .restart local v9    # "qop_options":Ljava/lang/String;
    :cond_0
    move-object v0, v5

    .line 540
    goto :goto_0

    .line 550
    .end local v3    # "pah":Lorg/zoolu/sip/header/ProxyAuthenticateHeader;
    .end local v9    # "qop_options":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private generateRequestWithWwwAuthorizationheader(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z
    .locals 10
    .param p1, "resp"    # Lorg/zoolu/sip/message/Message;
    .param p2, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v5, 0x0

    .line 555
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->hasWwwAuthenticateHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getWwwAuthenticateHeader()Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 558
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getWwwAuthenticateHeader()Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    move-result-object v1

    invoke-virtual {v1}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;->getRealmParam()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->realm:Ljava/lang/String;

    iput-object v1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    .line 559
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getWwwAuthenticateHeader()Lorg/zoolu/sip/header/WwwAuthenticateHeader;

    move-result-object v3

    .line 560
    .local v3, "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    invoke-virtual {v3}, Lorg/zoolu/sip/header/WwwAuthenticateHeader;->getQopOptionsParam()Ljava/lang/String;

    move-result-object v9

    .line 562
    .local v9, "qop_options":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG: qop-options: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    .line 564
    if-eqz v9, :cond_0

    const-string v0, "auth"

    :goto_0
    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->qop:Ljava/lang/String;

    .line 566
    new-instance v0, Lorg/zoolu/sip/authentication/DigestAuthentication;

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getTransactionMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->qop:Ljava/lang/String;

    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->username:Ljava/lang/String;

    iget-object v7, p0, Lorg/sipdroid/sipua/RegisterAgent;->passwd:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lorg/zoolu/sip/authentication/DigestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getAuthorizationHeader()Lorg/zoolu/sip/header/AuthorizationHeader;

    move-result-object v8

    .line 570
    .local v8, "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    invoke-virtual {p2, v8}, Lorg/zoolu/sip/message/Message;->setAuthorizationHeader(Lorg/zoolu/sip/header/AuthorizationHeader;)V

    .line 571
    const/4 v0, 0x1

    .line 573
    .end local v3    # "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .end local v8    # "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    .end local v9    # "qop_options":Ljava/lang/String;
    :goto_1
    return v0

    .restart local v3    # "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .restart local v9    # "qop_options":Ljava/lang/String;
    :cond_0
    move-object v0, v5

    .line 564
    goto :goto_0

    .line 573
    .end local v3    # "wah":Lorg/zoolu/sip/header/WwwAuthenticateHeader;
    .end local v9    # "qop_options":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleAuthentication(ILorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z
    .locals 1
    .param p1, "respCode"    # I
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;
    .param p3, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 578
    sparse-switch p1, :sswitch_data_0

    .line 584
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 580
    :sswitch_0
    invoke-direct {p0, p2, p3}, Lorg/sipdroid/sipua/RegisterAgent;->generateRequestWithProxyAuthorizationheader(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z

    move-result v0

    goto :goto_0

    .line 582
    :sswitch_1
    invoke-direct {p0, p2, p3}, Lorg/sipdroid/sipua/RegisterAgent;->generateRequestWithWwwAuthorizationheader(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z

    move-result v0

    goto :goto_0

    .line 578
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private init(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/sipdroid/sipua/RegisterAgentListener;)V
    .locals 2
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "target_url"    # Ljava/lang/String;
    .param p3, "contact_url"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/sipdroid/sipua/RegisterAgentListener;

    .prologue
    const/4 v1, 0x0

    .line 162
    iput-object p4, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    .line 163
    iput-object p1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    .line 164
    invoke-virtual {p1}, Lorg/zoolu/sip/provider/SipProvider;->getLog()Lorg/zoolu/tools/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->log:Lorg/zoolu/tools/Log;

    .line 165
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v0, p2}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    .line 166
    new-instance v0, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v0, p3}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    .line 167
    sget v0, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    iput v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->expire_time:I

    .line 170
    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->username:Ljava/lang/String;

    .line 171
    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->realm:Ljava/lang/String;

    .line 172
    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->passwd:Ljava/lang/String;

    .line 173
    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->next_nonce:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->qop:Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->attempts:I

    .line 176
    return-void
.end method

.method private processAuthenticationResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;I)Z
    .locals 6
    .param p1, "transaction"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;
    .param p3, "respCode"    # I

    .prologue
    .line 590
    iget v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->attempts:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 591
    iget v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->attempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->attempts:I

    .line 592
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getRequestMessage()Lorg/zoolu/sip/message/Message;

    move-result-object v1

    .line 593
    .local v1, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/sip/header/CSeqHeader;->incSequenceNumber()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/zoolu/sip/message/Message;->setCSeqHeader(Lorg/zoolu/sip/header/CSeqHeader;)V

    .line 594
    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v2

    .line 595
    .local v2, "vh":Lorg/zoolu/sip/header/ViaHeader;
    invoke-static {}, Lorg/zoolu/sip/provider/SipProvider;->pickBranch()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "newbranch":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/zoolu/sip/header/ViaHeader;->setBranch(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v1}, Lorg/zoolu/sip/message/Message;->removeViaHeader()V

    .line 598
    invoke-virtual {v1, v2}, Lorg/zoolu/sip/message/Message;->addViaHeader(Lorg/zoolu/sip/header/ViaHeader;)V

    .line 600
    invoke-direct {p0, p3, p2, v1}, Lorg/sipdroid/sipua/RegisterAgent;->handleAuthentication(ILorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    new-instance v3, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    const/16 v5, 0x7530

    invoke-direct {v3, v4, v1, p0, v5}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;I)V

    iput-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    .line 603
    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {v3}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    .line 604
    const/4 v3, 0x1

    .line 607
    .end local v0    # "newbranch":Ljava/lang/String;
    .end local v1    # "req":Lorg/zoolu/sip/message/Message;
    .end local v2    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method delayStartMWI()V
    .locals 3

    .prologue
    .line 326
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 327
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    .line 328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/sipdroid/sipua/RegisterAgent$1;

    invoke-direct {v1, p0}, Lorg/sipdroid/sipua/RegisterAgent$1;-><init>(Lorg/sipdroid/sipua/RegisterAgent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 340
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 342
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method getSubscribeMessage(Z)Lorg/zoolu/sip/message/Message;
    .locals 10
    .param p1, "current"    # Z

    .prologue
    .line 284
    const/4 v7, 0x0

    .line 288
    .local v7, "empty":Ljava/lang/String;
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 291
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    new-instance v0, Lorg/zoolu/sip/dialog/SubscriberDialog;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    const-string v2, "message-summary"

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/zoolu/sip/dialog/SubscriberDialog;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/dialog/SubscriberDialogListener;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    .line 294
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v2, "NOTIFY"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z

    .line 296
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    new-instance v1, Lorg/zoolu/sip/provider/TransactionIdentifier;

    const-string v2, "NOTIFY"

    invoke-direct {v1, v2}, Lorg/zoolu/sip/provider/TransactionIdentifier;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    .line 298
    if-eqz p1, :cond_1

    .line 299
    iget-object v9, p0, Lorg/sipdroid/sipua/RegisterAgent;->currentSubscribeMessage:Lorg/zoolu/sip/message/Message;

    .line 300
    .local v9, "req":Lorg/zoolu/sip/message/Message;
    invoke-virtual {v9}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/CSeqHeader;->incSequenceNumber()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/message/Message;->setCSeqHeader(Lorg/zoolu/sip/header/CSeqHeader;)V

    .line 307
    :goto_0
    new-instance v0, Lorg/zoolu/sip/header/ExpiresHeader;

    const v1, 0x2cec0

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(I)V

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/message/Message;->setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V

    .line 308
    new-instance v0, Lorg/zoolu/sip/header/AcceptHeader;

    const-string v1, "application/simple-message-summary"

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/AcceptHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lorg/zoolu/sip/message/Message;->setHeader(Lorg/zoolu/sip/header/Header;)V

    .line 309
    iput-object v9, p0, Lorg/sipdroid/sipua/RegisterAgent;->currentSubscribeMessage:Lorg/zoolu/sip/message/Message;

    .line 310
    return-object v9

    .line 291
    .end local v9    # "req":Lorg/zoolu/sip/message/Message;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    invoke-virtual {v1}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    new-instance v4, Lorg/zoolu/sip/address/NameAddress;

    iget-object v5, p0, Lorg/sipdroid/sipua/RegisterAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v5}, Lorg/zoolu/sip/dialog/SubscriberDialog;->getEvent()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v6}, Lorg/zoolu/sip/dialog/SubscriberDialog;->getId()Ljava/lang/String;

    move-result-object v6

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lorg/zoolu/sip/message/MessageFactory;->createSubscribeRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/SipURL;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v9

    .restart local v9    # "req":Lorg/zoolu/sip/message/Message;
    goto :goto_0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/sipdroid/sipua/RegisterAgent;->stopMWI()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    .line 156
    return-void
.end method

.method public isRegistered()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDlgNotify(Lorg/zoolu/sip/dialog/SubscriberDialog;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 15
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/SubscriberDialog;
    .param p2, "target"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "notifier"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p5, "state"    # Ljava/lang/String;
    .param p6, "content_type"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 403
    sget-object v12, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "MWI_enabled"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    new-instance v4, Lorg/zoolu/tools/Parser;

    move-object/from16 v0, p7

    invoke-direct {v4, v0}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 406
    .local v4, "p":Lorg/zoolu/tools/Parser;
    const/4 v12, 0x3

    new-array v6, v12, [C

    fill-array-data v6, :array_0

    .line 407
    .local v6, "propertysep":[C
    const/4 v12, 0x1

    new-array v9, v12, [C

    const/4 v12, 0x0

    const/16 v13, 0x2f

    aput-char v13, v9, v12

    .line 408
    .local v9, "vmailsep":[C
    const/4 v12, 0x3

    new-array v10, v12, [C

    fill-array-data v10, :array_1

    .line 409
    .local v10, "vmboxsep":[C
    const/4 v8, 0x0

    .line 410
    .local v8, "vmaccount":Ljava/lang/String;
    const/4 v11, 0x0

    .line 411
    .local v11, "voicemail":Z
    const/4 v3, 0x0

    .line 412
    .local v3, "nummsg":I
    :cond_2
    :goto_1
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->hasMore()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 413
    invoke-virtual {v4, v6}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v5

    .line 414
    .local v5, "property":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipChar()Lorg/zoolu/tools/Parser;

    .line 415
    invoke-virtual {v4}, Lorg/zoolu/tools/Parser;->skipWSP()Lorg/zoolu/tools/Parser;

    .line 416
    sget-object v12, Lorg/zoolu/tools/Parser;->CRLF:[C

    invoke-virtual {v4, v12}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v7

    .line 417
    .local v7, "value":Ljava/lang/String;
    const-string v12, "Messages-Waiting"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "yes"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 418
    const/4 v11, 0x1

    goto :goto_1

    .line 419
    :cond_3
    const-string v12, "Voice-Message"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 420
    new-instance v1, Lorg/zoolu/tools/Parser;

    invoke-direct {v1, v7}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "np":Lorg/zoolu/tools/Parser;
    invoke-virtual {v1, v9}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "num":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 423
    goto :goto_1

    .end local v1    # "np":Lorg/zoolu/tools/Parser;
    .end local v2    # "num":Ljava/lang/String;
    :cond_4
    const-string v12, "Message-Account"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 424
    new-instance v1, Lorg/zoolu/tools/Parser;

    invoke-direct {v1, v7}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .line 426
    .restart local v1    # "np":Lorg/zoolu/tools/Parser;
    invoke-virtual {v1, v10}, Lorg/zoolu/tools/Parser;->getWord([C)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 429
    .end local v1    # "np":Lorg/zoolu/tools/Parser;
    .end local v5    # "property":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    invoke-interface {v12, p0, v11, v3, v8}, Lorg/sipdroid/sipua/RegisterAgentListener;->onMWIUpdate(Lorg/sipdroid/sipua/RegisterAgent;ZILjava/lang/String;)V

    goto :goto_0

    .line 406
    :array_0
    .array-data 2
        0x3as
        0xds
        0xas
    .end array-data

    .line 408
    nop

    :array_1
    .array-data 2
        0x40s
        0xds
        0xas
    .end array-data
.end method

.method public onDlgSubscribeTimeout(Lorg/zoolu/sip/dialog/SubscriberDialog;)V
    .locals 0
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/SubscriberDialog;

    .prologue
    .line 390
    invoke-virtual {p0}, Lorg/sipdroid/sipua/RegisterAgent;->delayStartMWI()V

    .line 391
    return-void
.end method

.method public onDlgSubscriptionFailure(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/SubscriberDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 379
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/RegisterAgent;->getSubscribeMessage(Z)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 380
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    invoke-direct {p0, p2, p4, v0}, Lorg/sipdroid/sipua/RegisterAgent;->handleAuthentication(ILorg/zoolu/sip/message/Message;Lorg/zoolu/sip/message/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 381
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    .line 382
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v1, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe(Lorg/zoolu/sip/message/Message;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/RegisterAgent;->delayStartMWI()V

    goto :goto_0
.end method

.method public onDlgSubscriptionSuccess(Lorg/zoolu/sip/dialog/SubscriberDialog;ILjava/lang/String;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/SubscriberDialog;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 350
    iget-boolean v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->alreadySubscribed:Z

    if-eqz v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->alreadySubscribed:Z

    .line 354
    invoke-virtual {p4}, Lorg/zoolu/sip/message/Message;->hasExpiresHeader()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    invoke-virtual {p4}, Lorg/zoolu/sip/message/Message;->getExpiresHeader()Lorg/zoolu/sip/header/ExpiresHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/ExpiresHeader;->getDeltaSeconds()I

    move-result v0

    .local v0, "expires":I
    if-eqz v0, :cond_0

    .line 360
    :goto_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/sipdroid/sipua/RegisterAgent$2;

    invoke-direct {v2, p0, v0}, Lorg/sipdroid/sipua/RegisterAgent$2;-><init>(Lorg/sipdroid/sipua/RegisterAgent;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 373
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 358
    .end local v0    # "expires":I
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_2
    const v0, 0x2cec0

    .restart local v0    # "expires":I
    goto :goto_1
.end method

.method public onDlgSubscriptionTerminated(Lorg/zoolu/sip/dialog/SubscriberDialog;)V
    .locals 1
    .param p1, "dialog"    # Lorg/zoolu/sip/dialog/SubscriberDialog;

    .prologue
    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->alreadySubscribed:Z

    .line 396
    invoke-virtual {p0}, Lorg/sipdroid/sipua/RegisterAgent;->startMWI()V

    .line 397
    return-void
.end method

.method public onTransFailureResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 7
    .param p1, "transaction"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v6, 0x1

    .line 497
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "REGISTER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 498
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v2

    .line 499
    .local v2, "status":Lorg/zoolu/sip/header/StatusLine;
    invoke-virtual {v2}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v0

    .line 500
    .local v0, "code":I
    invoke-direct {p0, p1, p2, v0}, Lorg/sipdroid/sipua/RegisterAgent;->processAuthenticationResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "result":Ljava/lang/String;
    iget v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 507
    iput v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 508
    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v5, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    invoke-interface {v3, p0, v4, v5, v1}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationFailure(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    .line 512
    const/16 v3, 0x3e8

    invoke-static {v3}, Lorg/sipdroid/sipua/ui/Receiver;->reRegister(I)V

    .line 524
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registration failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    .line 527
    .end local v0    # "code":I
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "status":Lorg/zoolu/sip/header/StatusLine;
    :cond_1
    return-void

    .line 517
    .restart local v0    # "code":I
    .restart local v1    # "result":Ljava/lang/String;
    .restart local v2    # "status":Lorg/zoolu/sip/header/StatusLine;
    :cond_2
    iput v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 518
    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v3, :cond_0

    .line 520
    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v5, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    invoke-interface {v3, p0, v4, v5, v1}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationSuccess(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTransProvisionalResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 0
    .param p1, "transaction"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 439
    return-void
.end method

.method public onTransSuccessResponse(Lorg/zoolu/sip/transaction/TransactionClient;Lorg/zoolu/sip/message/Message;)V
    .locals 9
    .param p1, "transaction"    # Lorg/zoolu/sip/transaction/TransactionClient;
    .param p2, "resp"    # Lorg/zoolu/sip/message/Message;

    .prologue
    const/4 v8, 0x1

    .line 445
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v6

    const-string v7, "REGISTER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 447
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasAuthenticationInfoHeader()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 449
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getAuthenticationInfoHeader()Lorg/zoolu/sip/header/AuthenticationInfoHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/header/AuthenticationInfoHeader;->getNextnonceParam()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->next_nonce:Ljava/lang/String;

    .line 453
    :cond_0
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getStatusLine()Lorg/zoolu/sip/header/StatusLine;

    move-result-object v5

    .line 454
    .local v5, "status":Lorg/zoolu/sip/header/StatusLine;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lorg/zoolu/sip/header/StatusLine;->getCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/zoolu/sip/header/StatusLine;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 457
    .local v2, "expires":I
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasExpiresHeader()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 459
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getExpiresHeader()Lorg/zoolu/sip/header/ExpiresHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/header/ExpiresHeader;->getDeltaSeconds()I

    move-result v2

    .line 472
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registration success: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v8}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    .line 474
    iget v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 476
    const/4 v6, 0x3

    iput v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 477
    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v6, :cond_2

    .line 479
    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v7, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v8, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    invoke-interface {v6, p0, v7, v8, v4}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationSuccess(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    .line 480
    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Receiver;->reRegister(I)V

    .line 492
    .end local v2    # "expires":I
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "status":Lorg/zoolu/sip/header/StatusLine;
    :cond_2
    :goto_0
    return-void

    .line 461
    .restart local v2    # "expires":I
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "status":Lorg/zoolu/sip/header/StatusLine;
    :cond_3
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->hasContactHeader()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 463
    invoke-virtual {p2}, Lorg/zoolu/sip/message/Message;->getContacts()Lorg/zoolu/sip/header/MultipleHeader;

    move-result-object v6

    invoke-virtual {v6}, Lorg/zoolu/sip/header/MultipleHeader;->getHeaders()Ljava/util/Vector;

    move-result-object v0

    .line 464
    .local v0, "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 465
    new-instance v7, Lorg/zoolu/sip/header/ContactHeader;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/zoolu/sip/header/Header;

    invoke-direct {v7, v6}, Lorg/zoolu/sip/header/ContactHeader;-><init>(Lorg/zoolu/sip/header/Header;)V

    invoke-virtual {v7}, Lorg/zoolu/sip/header/ContactHeader;->getExpires()I

    move-result v1

    .line 467
    .local v1, "exp_i":I
    if-lez v1, :cond_5

    if-eqz v2, :cond_4

    if-ge v1, v2, :cond_5

    .line 468
    :cond_4
    move v2, v1

    .line 464
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 485
    .end local v0    # "contacts":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sip/header/Header;>;"
    .end local v1    # "exp_i":I
    .end local v3    # "i":I
    :cond_6
    iput v8, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 486
    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v6, :cond_2

    .line 488
    iget-object v6, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v7, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v8, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    invoke-interface {v6, p0, v7, v8, v4}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationSuccess(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V
    .locals 5
    .param p1, "transaction"    # Lorg/zoolu/sip/transaction/TransactionClient;

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 612
    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    invoke-virtual {p1}, Lorg/zoolu/sip/transaction/TransactionClient;->getTransactionMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "REGISTER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "Registration failure: No response from server."

    invoke-virtual {p0, v0, v3}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    .line 620
    iget v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 622
    iput v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 624
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    const-string v3, "Timeout"

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationFailure(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    .line 628
    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->reRegister(I)V

    goto :goto_0

    .line 633
    :cond_2
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->pub:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 636
    iput v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 637
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    const-string v3, "Timeout"

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationFailure(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    .line 641
    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->reRegister(I)V

    goto :goto_0

    .line 644
    :cond_3
    iput v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 645
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    const-string v3, "Timeout"

    invoke-interface {v0, p0, v1, v2, v3}, Lorg/sipdroid/sipua/RegisterAgentListener;->onUaRegistrationSuccess(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V

    goto :goto_0
.end method

.method printException(Ljava/lang/Exception;I)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 667
    return-void
.end method

.method printLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 658
    return-void
.end method

.method public register()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->expire_time:I

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/RegisterAgent;->register(I)Z

    move-result v0

    return v0
.end method

.method public register(I)Z
    .locals 10
    .param p1, "expire_time"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 192
    iput v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->attempts:I

    .line 193
    if-lez p1, :cond_5

    .line 198
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-ne v1, v4, :cond_1

    .line 199
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {v1}, Lorg/zoolu/sip/transaction/TransactionClient;->terminate()V

    .line 200
    :cond_0
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/RegisterAgent;->onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V

    .line 202
    :cond_1
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-eq v1, v9, :cond_3

    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-eq v1, v3, :cond_3

    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-eqz v1, :cond_3

    .line 262
    :cond_2
    :goto_0
    return v0

    .line 206
    :cond_3
    iput p1, p0, Lorg/sipdroid/sipua/RegisterAgent;->expire_time:I

    .line 207
    iput v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 227
    :goto_1
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    iget-object v2, p0, Lorg/sipdroid/sipua/RegisterAgent;->target:Lorg/zoolu/sip/address/NameAddress;

    new-instance v3, Lorg/zoolu/sip/address/NameAddress;

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-object v4, v4, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->qvalue:Ljava/lang/String;

    iget-object v5, p0, Lorg/sipdroid/sipua/RegisterAgent;->icsi:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/zoolu/sip/message/MessageFactory;->createRegisterRequest(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/zoolu/sip/message/Message;

    move-result-object v7

    .line 230
    .local v7, "req":Lorg/zoolu/sip/message/Message;
    new-instance v0, Lorg/zoolu/sip/header/ExpiresHeader;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/sip/header/ExpiresHeader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/zoolu/sip/message/Message;->setExpiresHeader(Lorg/zoolu/sip/header/ExpiresHeader;)V

    .line 234
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->next_nonce:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 236
    new-instance v6, Lorg/zoolu/sip/header/AuthorizationHeader;

    const-string v0, "Digest"

    invoke-direct {v6, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;-><init>(Ljava/lang/String;)V

    .line 238
    .local v6, "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->username:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;->addUsernameParam(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->realm:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;->addRealmParam(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->next_nonce:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;->addNonceParam(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v7}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;->addUriParam(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->qop:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/zoolu/sip/header/AuthorizationHeader;->addQopParam(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lorg/zoolu/sip/authentication/DigestAuthentication;

    const-string v1, "REGISTER"

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->passwd:Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/zoolu/sip/authentication/DigestAuthentication;-><init>(Ljava/lang/String;Lorg/zoolu/sip/header/AuthorizationHeader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/sip/authentication/DigestAuthentication;->getResponse()Ljava/lang/String;

    move-result-object v8

    .line 245
    .local v8, "response":Ljava/lang/String;
    invoke-virtual {v6, v8}, Lorg/zoolu/sip/header/AuthorizationHeader;->addResponseParam(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v7, v6}, Lorg/zoolu/sip/message/Message;->setAuthorizationHeader(Lorg/zoolu/sip/header/AuthorizationHeader;)V

    .line 249
    .end local v6    # "ah":Lorg/zoolu/sip/header/AuthorizationHeader;
    .end local v8    # "response":Ljava/lang/String;
    :cond_4
    if-lez p1, :cond_9

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering contact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (it expires in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secs)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    .line 259
    :goto_2
    new-instance v0, Lorg/zoolu/sip/transaction/TransactionClient;

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sip_provider:Lorg/zoolu/sip/provider/SipProvider;

    const/16 v2, 0x7530

    invoke-direct {v0, v1, v7, p0, v2}, Lorg/zoolu/sip/transaction/TransactionClient;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/transaction/TransactionClientListener;I)V

    iput-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    .line 260
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {v0}, Lorg/zoolu/sip/transaction/TransactionClient;->request()V

    move v0, v9

    .line 262
    goto/16 :goto_0

    .line 211
    .end local v7    # "req":Lorg/zoolu/sip/message/Message;
    :cond_5
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-ne v1, v2, :cond_7

    .line 212
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {v1}, Lorg/zoolu/sip/transaction/TransactionClient;->terminate()V

    .line 213
    :cond_6
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->t:Lorg/zoolu/sip/transaction/TransactionClient;

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/RegisterAgent;->onTransTimeout(Lorg/zoolu/sip/transaction/TransactionClient;)V

    .line 215
    :cond_7
    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-eq v1, v3, :cond_8

    iget v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    if-nez v1, :cond_2

    .line 222
    :cond_8
    const/4 p1, 0x0

    .line 223
    iput v4, p0, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    goto/16 :goto_1

    .line 256
    .restart local v7    # "req":Lorg/zoolu/sip/message/Message;
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering contact "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->contact:Lorg/zoolu/sip/address/NameAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lorg/sipdroid/sipua/RegisterAgent;->printLog(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public startMWI()V
    .locals 4

    .prologue
    .line 316
    iget-boolean v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->alreadySubscribed:Z

    if-eqz v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/RegisterAgent;->getSubscribeMessage(Z)Lorg/zoolu/sip/message/Message;

    move-result-object v0

    .line 319
    .local v0, "req":Lorg/zoolu/sip/message/Message;
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "MWI_enabled"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v1, v0}, Lorg/zoolu/sip/dialog/SubscriberDialog;->subscribe(Lorg/zoolu/sip/message/Message;)V

    goto :goto_0
.end method

.method public stopMWI()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 273
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    if-eqz v0, :cond_0

    .line 274
    iget-object v1, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    iput-object v3, p0, Lorg/sipdroid/sipua/RegisterAgent;->sd:Lorg/zoolu/sip/dialog/SubscriberDialog;

    .line 279
    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/sipdroid/sipua/RegisterAgent;->listener:Lorg/sipdroid/sipua/RegisterAgentListener;

    invoke-interface {v0, p0, v2, v2, v3}, Lorg/sipdroid/sipua/RegisterAgentListener;->onMWIUpdate(Lorg/sipdroid/sipua/RegisterAgent;ZILjava/lang/String;)V

    .line 280
    :cond_1
    return-void

    .line 276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregister()Z
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/sipdroid/sipua/RegisterAgent;->stopMWI()V

    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/RegisterAgent;->register(I)Z

    move-result v0

    return v0
.end method
