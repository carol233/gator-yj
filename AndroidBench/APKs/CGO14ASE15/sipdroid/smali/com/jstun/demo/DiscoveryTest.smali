.class public Lcom/jstun/demo/DiscoveryTest;
.super Ljava/lang/Object;
.source "DiscoveryTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoveryTest"


# instance fields
.field ca:Lcom/jstun/core/attribute/ChangedAddress;

.field public di:Lcom/jstun/demo/DiscoveryInfo;

.field iaddress:Ljava/net/InetAddress;

.field ma:Lcom/jstun/core/attribute/MappedAddress;

.field nodeNatted:Z

.field port:I

.field socketTest1:Ljava/net/DatagramSocket;

.field stunServer:Ljava/lang/String;

.field timeoutInitValue:I


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;Ljava/lang/String;I)V
    .locals 2
    .param p1, "iaddress"    # Ljava/net/InetAddress;
    .param p2, "stunServer"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x12c

    iput v0, p0, Lcom/jstun/demo/DiscoveryTest;->timeoutInitValue:I

    .line 30
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    .line 31
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryTest;->nodeNatted:Z

    .line 33
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    .line 34
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    .line 38
    iput-object p1, p0, Lcom/jstun/demo/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    .line 39
    iput-object p2, p0, Lcom/jstun/demo/DiscoveryTest;->stunServer:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/jstun/demo/DiscoveryTest;->port:I

    .line 41
    return-void
.end method

.method private test1()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/jstun/core/attribute/MessageAttributeParsingException;,
            Lcom/jstun/core/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 66
    .local v8, "timeSinceFirstTransmission":I
    iget v9, p0, Lcom/jstun/demo/DiscoveryTest;->timeoutInitValue:I

    .line 70
    .local v9, "timeout":I
    :goto_0
    :try_start_0
    new-instance v11, Ljava/net/DatagramSocket;

    invoke-direct {v11}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    .line 71
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 72
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->stunServer:Ljava/lang/String;

    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    iget v13, p0, Lcom/jstun/demo/DiscoveryTest;->port:I

    invoke-virtual {v11, v12, v13}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 73
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 75
    new-instance v6, Lcom/jstun/core/header/MessageHeader;

    sget-object v11, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    invoke-direct {v6, v11}, Lcom/jstun/core/header/MessageHeader;-><init>(Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 76
    .local v6, "sendMH":Lcom/jstun/core/header/MessageHeader;
    invoke-virtual {v6}, Lcom/jstun/core/header/MessageHeader;->generateTransactionID()V

    .line 78
    new-instance v0, Lcom/jstun/core/attribute/ChangeRequest;

    invoke-direct {v0}, Lcom/jstun/core/attribute/ChangeRequest;-><init>()V

    .line 79
    .local v0, "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    invoke-virtual {v6, v0}, Lcom/jstun/core/header/MessageHeader;->addMessageAttribute(Lcom/jstun/core/attribute/MessageAttribute;)V

    .line 81
    invoke-virtual {v6}, Lcom/jstun/core/header/MessageHeader;->getBytes()[B

    move-result-object v1

    .line 82
    .local v1, "data":[B
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v11, v1

    invoke-direct {v5, v1, v11}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 83
    .local v5, "send":Ljava/net/DatagramPacket;
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 84
    const-string v11, "DiscoveryTest"

    const-string v12, "Test 1: Binding Request sent."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v4, Lcom/jstun/core/header/MessageHeader;

    invoke-direct {v4}, Lcom/jstun/core/header/MessageHeader;-><init>()V

    .line 87
    .local v4, "receiveMH":Lcom/jstun/core/header/MessageHeader;
    :goto_1
    invoke-virtual {v4, v6}, Lcom/jstun/core/header/MessageHeader;->equalTransactionID(Lcom/jstun/core/header/MessageHeader;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 88
    new-instance v3, Ljava/net/DatagramPacket;

    const/16 v11, 0xc8

    new-array v11, v11, [B

    const/16 v12, 0xc8

    invoke-direct {v3, v11, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 89
    .local v3, "receive":Ljava/net/DatagramPacket;
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v11, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 90
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/jstun/core/header/MessageHeader;->parseHeader([B)Lcom/jstun/core/header/MessageHeader;

    move-result-object v4

    .line 91
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/jstun/core/header/MessageHeader;->parseAttributes([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    .end local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v1    # "data":[B
    .end local v3    # "receive":Ljava/net/DatagramPacket;
    .end local v4    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v5    # "send":Ljava/net/DatagramPacket;
    .end local v6    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :catch_0
    move-exception v7

    .line 117
    .local v7, "ste":Ljava/net/SocketTimeoutException;
    const/16 v11, 0xbb8

    if-ge v8, v11, :cond_6

    .line 118
    const-string v11, "DiscoveryTest"

    const-string v12, "Test 1: Socket timeout while receiving the response."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    add-int/2addr v8, v9

    .line 120
    mul-int/lit8 v10, v8, 0x2

    .line 121
    .local v10, "timeoutAddValue":I
    const/16 v11, 0x640

    if-le v10, v11, :cond_0

    const/16 v10, 0x640

    .line 122
    :cond_0
    move v9, v10

    .line 123
    goto/16 :goto_0

    .line 94
    .end local v7    # "ste":Ljava/net/SocketTimeoutException;
    .end local v10    # "timeoutAddValue":I
    .restart local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v1    # "data":[B
    .restart local v4    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v5    # "send":Ljava/net/DatagramPacket;
    .restart local v6    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :cond_1
    :try_start_1
    sget-object v11, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v11

    check-cast v11, Lcom/jstun/core/attribute/MappedAddress;

    iput-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    .line 95
    sget-object v11, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ChangedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v11

    check-cast v11, Lcom/jstun/core/attribute/ChangedAddress;

    iput-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    .line 96
    sget-object v11, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v4, v11}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v2

    check-cast v2, Lcom/jstun/core/attribute/ErrorCode;

    .line 97
    .local v2, "ec":Lcom/jstun/core/attribute/ErrorCode;
    if-eqz v2, :cond_2

    .line 98
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    invoke-virtual {v2}, Lcom/jstun/core/attribute/ErrorCode;->getResponseCode()I

    move-result v12

    invoke-virtual {v2}, Lcom/jstun/core/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/jstun/demo/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 99
    const-string v11, "DiscoveryTest"

    const-string v12, "Message header contains an Errorcode message attribute."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v11, 0x0

    .line 128
    .end local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v1    # "data":[B
    .end local v2    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v4    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v5    # "send":Ljava/net/DatagramPacket;
    .end local v6    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :goto_2
    return v11

    .line 102
    .restart local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v1    # "data":[B
    .restart local v2    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .restart local v4    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v5    # "send":Ljava/net/DatagramPacket;
    .restart local v6    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :cond_2
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    if-nez v11, :cond_4

    .line 103
    :cond_3
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    const/16 v12, 0x2bc

    const-string v13, "The server is sending an incomplete response (Mapped Address and Changed Address message attributes are missing). The client should not retry."

    invoke-virtual {v11, v12, v13}, Lcom/jstun/demo/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 104
    const-string v11, "DiscoveryTest"

    const-string v12, "Response does not contain a Mapped Address or Changed Address message attribute."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v11, 0x0

    goto :goto_2

    .line 107
    :cond_4
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    invoke-virtual {v12}, Lcom/jstun/core/attribute/MappedAddress;->getAddress()Lcom/jstun/core/util/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/jstun/core/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/jstun/demo/DiscoveryInfo;->setPublicIP(Ljava/net/InetAddress;)V

    .line 108
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    invoke-virtual {v11}, Lcom/jstun/core/attribute/MappedAddress;->getPort()I

    move-result v11

    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v12

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    invoke-virtual {v11}, Lcom/jstun/core/attribute/MappedAddress;->getAddress()Lcom/jstun/core/util/Address;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jstun/core/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v11

    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 109
    const-string v11, "DiscoveryTest"

    const-string v12, "Node is not natted."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/jstun/demo/DiscoveryTest;->nodeNatted:Z

    .line 114
    :goto_3
    const/4 v11, 0x1

    goto :goto_2

    .line 112
    :cond_5
    const-string v11, "DiscoveryTest"

    const-string v12, "Node is natted."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 125
    .end local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v1    # "data":[B
    .end local v2    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v4    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v5    # "send":Ljava/net/DatagramPacket;
    .end local v6    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v7    # "ste":Ljava/net/SocketTimeoutException;
    :cond_6
    const-string v11, "DiscoveryTest"

    const-string v12, "Test 1: Socket timeout while receiving the response. Maximum retry limit exceed. Give up."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v11, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    invoke-virtual {v11}, Lcom/jstun/demo/DiscoveryInfo;->setBlockedUDP()V

    .line 127
    const-string v11, "DiscoveryTest"

    const-string v12, "Node is not capable of UDP communication."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private test1Redo()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/jstun/core/attribute/MessageAttributeParsingException;,
            Lcom/jstun/core/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v9, 0x0

    .line 212
    .local v9, "timeSinceFirstTransmission":I
    iget v10, p0, Lcom/jstun/demo/DiscoveryTest;->timeoutInitValue:I

    .line 217
    .local v10, "timeout":I
    :goto_0
    :try_start_0
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    iget-object v13, p0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    invoke-virtual {v13}, Lcom/jstun/core/attribute/ChangedAddress;->getAddress()Lcom/jstun/core/util/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jstun/core/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v13

    iget-object v14, p0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    invoke-virtual {v14}, Lcom/jstun/core/attribute/ChangedAddress;->getPort()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 218
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 220
    new-instance v7, Lcom/jstun/core/header/MessageHeader;

    sget-object v12, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    invoke-direct {v7, v12}, Lcom/jstun/core/header/MessageHeader;-><init>(Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 221
    .local v7, "sendMH":Lcom/jstun/core/header/MessageHeader;
    invoke-virtual {v7}, Lcom/jstun/core/header/MessageHeader;->generateTransactionID()V

    .line 223
    new-instance v0, Lcom/jstun/core/attribute/ChangeRequest;

    invoke-direct {v0}, Lcom/jstun/core/attribute/ChangeRequest;-><init>()V

    .line 224
    .local v0, "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    invoke-virtual {v7, v0}, Lcom/jstun/core/header/MessageHeader;->addMessageAttribute(Lcom/jstun/core/attribute/MessageAttribute;)V

    .line 226
    invoke-virtual {v7}, Lcom/jstun/core/header/MessageHeader;->getBytes()[B

    move-result-object v1

    .line 227
    .local v1, "data":[B
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v12, v1

    invoke-direct {v6, v1, v12}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 228
    .local v6, "send":Ljava/net/DatagramPacket;
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 229
    const-string v12, "DiscoveryTest"

    const-string v13, "Test 1 redo with changed address: Binding Request sent."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v5, Lcom/jstun/core/header/MessageHeader;

    invoke-direct {v5}, Lcom/jstun/core/header/MessageHeader;-><init>()V

    .line 232
    .local v5, "receiveMH":Lcom/jstun/core/header/MessageHeader;
    :goto_1
    invoke-virtual {v5, v7}, Lcom/jstun/core/header/MessageHeader;->equalTransactionID(Lcom/jstun/core/header/MessageHeader;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 233
    new-instance v4, Ljava/net/DatagramPacket;

    const/16 v12, 0xc8

    new-array v12, v12, [B

    const/16 v13, 0xc8

    invoke-direct {v4, v12, v13}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 234
    .local v4, "receive":Ljava/net/DatagramPacket;
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v12, v4}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 235
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v12

    invoke-static {v12}, Lcom/jstun/core/header/MessageHeader;->parseHeader([B)Lcom/jstun/core/header/MessageHeader;

    move-result-object v5

    .line 236
    invoke-virtual {v4}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/jstun/core/header/MessageHeader;->parseAttributes([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 257
    .end local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v1    # "data":[B
    .end local v4    # "receive":Ljava/net/DatagramPacket;
    .end local v5    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v6    # "send":Ljava/net/DatagramPacket;
    .end local v7    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :catch_0
    move-exception v8

    .line 258
    .local v8, "ste2":Ljava/net/SocketTimeoutException;
    const/16 v12, 0x1edc

    if-ge v9, v12, :cond_6

    .line 259
    const-string v12, "DiscoveryTest"

    const-string v13, "Test 1 redo with changed address: Socket timeout while receiving the response."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    add-int/2addr v9, v10

    .line 261
    mul-int/lit8 v11, v9, 0x2

    .line 262
    .local v11, "timeoutAddValue":I
    const/16 v12, 0x640

    if-le v11, v12, :cond_0

    const/16 v11, 0x640

    .line 263
    :cond_0
    move v10, v11

    .line 264
    goto/16 :goto_0

    .line 238
    .end local v8    # "ste2":Ljava/net/SocketTimeoutException;
    .end local v11    # "timeoutAddValue":I
    .restart local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v1    # "data":[B
    .restart local v5    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v6    # "send":Ljava/net/DatagramPacket;
    .restart local v7    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :cond_1
    :try_start_1
    sget-object v12, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->MappedAddress:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v5, v12}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v3

    check-cast v3, Lcom/jstun/core/attribute/MappedAddress;

    .line 239
    .local v3, "ma2":Lcom/jstun/core/attribute/MappedAddress;
    sget-object v12, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    invoke-virtual {v5, v12}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v2

    check-cast v2, Lcom/jstun/core/attribute/ErrorCode;

    .line 240
    .local v2, "ec":Lcom/jstun/core/attribute/ErrorCode;
    if-eqz v2, :cond_2

    .line 241
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    invoke-virtual {v2}, Lcom/jstun/core/attribute/ErrorCode;->getResponseCode()I

    move-result v13

    invoke-virtual {v2}, Lcom/jstun/core/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/jstun/demo/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 242
    const-string v12, "DiscoveryTest"

    const-string v13, "Message header contains an Errorcode message attribute."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v12, 0x0

    .line 266
    .end local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v1    # "data":[B
    .end local v2    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v3    # "ma2":Lcom/jstun/core/attribute/MappedAddress;
    .end local v5    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v6    # "send":Ljava/net/DatagramPacket;
    .end local v7    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :goto_2
    return v12

    .line 245
    .restart local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v1    # "data":[B
    .restart local v2    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .restart local v3    # "ma2":Lcom/jstun/core/attribute/MappedAddress;
    .restart local v5    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v6    # "send":Ljava/net/DatagramPacket;
    .restart local v7    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    :cond_2
    if-nez v3, :cond_3

    .line 246
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    const/16 v13, 0x2bc

    const-string v14, "The server is sending an incomplete response (Mapped Address message attribute is missing). The client should not retry."

    invoke-virtual {v12, v13, v14}, Lcom/jstun/demo/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 247
    const-string v12, "DiscoveryTest"

    const-string v13, "Response does not contain a Mapped Address message attribute."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v12, 0x0

    goto :goto_2

    .line 250
    :cond_3
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    invoke-virtual {v12}, Lcom/jstun/core/attribute/MappedAddress;->getPort()I

    move-result v12

    invoke-virtual {v3}, Lcom/jstun/core/attribute/MappedAddress;->getPort()I

    move-result v13

    if-ne v12, v13, :cond_4

    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    invoke-virtual {v12}, Lcom/jstun/core/attribute/MappedAddress;->getAddress()Lcom/jstun/core/util/Address;

    move-result-object v12

    invoke-virtual {v12}, Lcom/jstun/core/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v3}, Lcom/jstun/core/attribute/MappedAddress;->getAddress()Lcom/jstun/core/util/Address;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jstun/core/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 251
    :cond_4
    iget-object v12, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    invoke-virtual {v12}, Lcom/jstun/demo/DiscoveryInfo;->setSymmetric()V

    .line 252
    const-string v12, "DiscoveryTest"

    const-string v13, "Node is behind a symmetric NAT."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    const/4 v12, 0x0

    goto :goto_2

    .line 256
    :cond_5
    const/4 v12, 0x1

    goto :goto_2

    .line 265
    .end local v0    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v1    # "data":[B
    .end local v2    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v3    # "ma2":Lcom/jstun/core/attribute/MappedAddress;
    .end local v5    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v6    # "send":Ljava/net/DatagramPacket;
    .end local v7    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v8    # "ste2":Ljava/net/SocketTimeoutException;
    :cond_6
    const-string v12, "DiscoveryTest"

    const-string v13, "Test 1 redo with changed address: Socket timeout while receiving the response.  Maximum retry limit exceed. Give up."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private test2()Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/jstun/core/attribute/MessageAttributeParsingException;,
            Lcom/jstun/core/attribute/MessageAttributeException;,
            Lcom/jstun/core/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v14, 0x0

    .line 136
    .local v14, "timeSinceFirstTransmission":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jstun/demo/DiscoveryTest;->timeoutInitValue:I

    .line 140
    .local v15, "timeout":I
    :goto_0
    :try_start_0
    new-instance v12, Ljava/net/DatagramSocket;

    invoke-direct {v12}, Ljava/net/DatagramSocket;-><init>()V

    .line 141
    .local v12, "sendSocket":Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jstun/demo/DiscoveryTest;->port:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 142
    invoke-virtual {v12, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 144
    new-instance v11, Lcom/jstun/core/header/MessageHeader;

    sget-object v17, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/jstun/core/header/MessageHeader;-><init>(Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 145
    .local v11, "sendMH":Lcom/jstun/core/header/MessageHeader;
    invoke-virtual {v11}, Lcom/jstun/core/header/MessageHeader;->generateTransactionID()V

    .line 147
    new-instance v2, Lcom/jstun/core/attribute/ChangeRequest;

    invoke-direct {v2}, Lcom/jstun/core/attribute/ChangeRequest;-><init>()V

    .line 148
    .local v2, "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    invoke-virtual {v2}, Lcom/jstun/core/attribute/ChangeRequest;->setChangeIP()V

    .line 149
    invoke-virtual {v2}, Lcom/jstun/core/attribute/ChangeRequest;->setChangePort()V

    .line 150
    invoke-virtual {v11, v2}, Lcom/jstun/core/header/MessageHeader;->addMessageAttribute(Lcom/jstun/core/attribute/MessageAttribute;)V

    .line 152
    invoke-virtual {v11}, Lcom/jstun/core/header/MessageHeader;->getBytes()[B

    move-result-object v3

    .line 153
    .local v3, "data":[B
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v10, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 154
    .local v10, "send":Ljava/net/DatagramPacket;
    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 155
    const-string v17, "DiscoveryTest"

    const-string v18, "Test 2: Binding Request sent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v6

    .line 158
    .local v6, "localPort":I
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 160
    .local v5, "localAddress":Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V

    .line 162
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9, v6, v5}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 163
    .local v9, "receiveSocket":Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/core/attribute/ChangedAddress;->getAddress()Lcom/jstun/core/util/Address;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/core/util/Address;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jstun/core/attribute/ChangedAddress;->getPort()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 164
    invoke-virtual {v9, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 166
    new-instance v8, Lcom/jstun/core/header/MessageHeader;

    invoke-direct {v8}, Lcom/jstun/core/header/MessageHeader;-><init>()V

    .line 167
    .local v8, "receiveMH":Lcom/jstun/core/header/MessageHeader;
    :goto_1
    invoke-virtual {v8, v11}, Lcom/jstun/core/header/MessageHeader;->equalTransactionID(Lcom/jstun/core/header/MessageHeader;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 168
    new-instance v7, Ljava/net/DatagramPacket;

    const/16 v17, 0xc8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 169
    .local v7, "receive":Ljava/net/DatagramPacket;
    invoke-virtual {v9, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 170
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/jstun/core/header/MessageHeader;->parseHeader([B)Lcom/jstun/core/header/MessageHeader;

    move-result-object v8

    .line 171
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/jstun/core/header/MessageHeader;->parseAttributes([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    .end local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v3    # "data":[B
    .end local v5    # "localAddress":Ljava/net/InetAddress;
    .end local v6    # "localPort":I
    .end local v7    # "receive":Ljava/net/DatagramPacket;
    .end local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .end local v10    # "send":Ljava/net/DatagramPacket;
    .end local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .end local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v13

    .line 188
    .local v13, "ste":Ljava/net/SocketTimeoutException;
    const/16 v17, 0x1edc

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 189
    const-string v17, "DiscoveryTest"

    const-string v18, "Test 2: Socket timeout while receiving the response."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    add-int/2addr v14, v15

    .line 191
    mul-int/lit8 v16, v14, 0x2

    .line 192
    .local v16, "timeoutAddValue":I
    const/16 v17, 0x640

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    const/16 v16, 0x640

    .line 193
    :cond_0
    move/from16 v15, v16

    .line 194
    goto/16 :goto_0

    .line 173
    .end local v13    # "ste":Ljava/net/SocketTimeoutException;
    .end local v16    # "timeoutAddValue":I
    .restart local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v3    # "data":[B
    .restart local v5    # "localAddress":Ljava/net/InetAddress;
    .restart local v6    # "localPort":I
    .restart local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .restart local v10    # "send":Ljava/net/DatagramPacket;
    .restart local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :cond_1
    :try_start_1
    sget-object v17, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v4

    check-cast v4, Lcom/jstun/core/attribute/ErrorCode;

    .line 174
    .local v4, "ec":Lcom/jstun/core/attribute/ErrorCode;
    if-eqz v4, :cond_2

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Lcom/jstun/core/attribute/ErrorCode;->getResponseCode()I

    move-result v18

    invoke-virtual {v4}, Lcom/jstun/core/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/jstun/demo/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 176
    const-string v17, "DiscoveryTest"

    const-string v18, "Message header contains an Errorcode message attribute."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v17, 0x0

    .line 203
    .end local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v3    # "data":[B
    .end local v4    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v5    # "localAddress":Ljava/net/InetAddress;
    .end local v6    # "localPort":I
    .end local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .end local v10    # "send":Ljava/net/DatagramPacket;
    .end local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .end local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :goto_2
    return v17

    .line 179
    .restart local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v3    # "data":[B
    .restart local v4    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .restart local v5    # "localAddress":Ljava/net/InetAddress;
    .restart local v6    # "localPort":I
    .restart local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .restart local v10    # "send":Ljava/net/DatagramPacket;
    .restart local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jstun/demo/DiscoveryTest;->nodeNatted:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/demo/DiscoveryInfo;->setOpenAccess()V

    .line 181
    const-string v17, "DiscoveryTest"

    const-string v18, "Node has open access to the Internet (or, at least the node is behind a full-cone NAT without translation)."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_3
    const/16 v17, 0x0

    goto :goto_2

    .line 183
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/demo/DiscoveryInfo;->setFullCone()V

    .line 184
    const-string v17, "DiscoveryTest"

    const-string v18, "Node is behind a full-cone NAT."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 195
    .end local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v3    # "data":[B
    .end local v4    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v5    # "localAddress":Ljava/net/InetAddress;
    .end local v6    # "localPort":I
    .end local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .end local v10    # "send":Ljava/net/DatagramPacket;
    .end local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .end local v12    # "sendSocket":Ljava/net/DatagramSocket;
    .restart local v13    # "ste":Ljava/net/SocketTimeoutException;
    :cond_4
    const-string v17, "DiscoveryTest"

    const-string v18, "Test 2: Socket timeout while receiving the response. Maximum retry limit exceed. Give up."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jstun/demo/DiscoveryTest;->nodeNatted:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/demo/DiscoveryInfo;->setSymmetricUDPFirewall()V

    .line 198
    const-string v17, "DiscoveryTest"

    const-string v18, "Node is behind a symmetric UDP firewall."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/16 v17, 0x0

    goto :goto_2

    .line 203
    :cond_5
    const/16 v17, 0x1

    goto :goto_2
.end method

.method private test3()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/jstun/core/attribute/MessageAttributeParsingException;,
            Lcom/jstun/core/attribute/MessageAttributeException;,
            Lcom/jstun/core/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    .line 273
    const/4 v14, 0x0

    .line 274
    .local v14, "timeSinceFirstTransmission":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/jstun/demo/DiscoveryTest;->timeoutInitValue:I

    .line 278
    .local v15, "timeout":I
    :cond_0
    :goto_0
    :try_start_0
    new-instance v12, Ljava/net/DatagramSocket;

    invoke-direct {v12}, Ljava/net/DatagramSocket;-><init>()V

    .line 279
    .local v12, "sendSocket":Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jstun/demo/DiscoveryTest;->port:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 280
    invoke-virtual {v12, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 282
    new-instance v11, Lcom/jstun/core/header/MessageHeader;

    sget-object v17, Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;->BindingRequest:Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/jstun/core/header/MessageHeader;-><init>(Lcom/jstun/core/header/MessageHeaderInterface$MessageHeaderType;)V

    .line 283
    .local v11, "sendMH":Lcom/jstun/core/header/MessageHeader;
    invoke-virtual {v11}, Lcom/jstun/core/header/MessageHeader;->generateTransactionID()V

    .line 285
    new-instance v2, Lcom/jstun/core/attribute/ChangeRequest;

    invoke-direct {v2}, Lcom/jstun/core/attribute/ChangeRequest;-><init>()V

    .line 286
    .local v2, "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    invoke-virtual {v2}, Lcom/jstun/core/attribute/ChangeRequest;->setChangePort()V

    .line 287
    invoke-virtual {v11, v2}, Lcom/jstun/core/header/MessageHeader;->addMessageAttribute(Lcom/jstun/core/attribute/MessageAttribute;)V

    .line 289
    invoke-virtual {v11}, Lcom/jstun/core/header/MessageHeader;->getBytes()[B

    move-result-object v3

    .line 290
    .local v3, "data":[B
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v10, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 291
    .local v10, "send":Ljava/net/DatagramPacket;
    invoke-virtual {v12, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 292
    const-string v17, "DiscoveryTest"

    const-string v18, "Test 3: Binding Request sent."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v6

    .line 295
    .local v6, "localPort":I
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 297
    .local v5, "localAddress":Ljava/net/InetAddress;
    invoke-virtual {v12}, Ljava/net/DatagramSocket;->close()V

    .line 299
    new-instance v9, Ljava/net/DatagramSocket;

    invoke-direct {v9, v6, v5}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 300
    .local v9, "receiveSocket":Ljava/net/DatagramSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->stunServer:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jstun/core/attribute/ChangedAddress;->getPort()I

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 301
    invoke-virtual {v9, v15}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 303
    new-instance v8, Lcom/jstun/core/header/MessageHeader;

    invoke-direct {v8}, Lcom/jstun/core/header/MessageHeader;-><init>()V

    .line 304
    .local v8, "receiveMH":Lcom/jstun/core/header/MessageHeader;
    :goto_1
    invoke-virtual {v8, v11}, Lcom/jstun/core/header/MessageHeader;->equalTransactionID(Lcom/jstun/core/header/MessageHeader;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 305
    new-instance v7, Ljava/net/DatagramPacket;

    const/16 v17, 0xc8

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v7, v0, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 306
    .local v7, "receive":Ljava/net/DatagramPacket;
    invoke-virtual {v9, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 307
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/jstun/core/header/MessageHeader;->parseHeader([B)Lcom/jstun/core/header/MessageHeader;

    move-result-object v8

    .line 308
    invoke-virtual {v7}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/jstun/core/header/MessageHeader;->parseAttributes([B)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    .end local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v3    # "data":[B
    .end local v5    # "localAddress":Ljava/net/InetAddress;
    .end local v6    # "localPort":I
    .end local v7    # "receive":Ljava/net/DatagramPacket;
    .end local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .end local v10    # "send":Ljava/net/DatagramPacket;
    .end local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .end local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :catch_0
    move-exception v13

    .line 322
    .local v13, "ste":Ljava/net/SocketTimeoutException;
    const/16 v17, 0x1edc

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    .line 323
    const-string v17, "DiscoveryTest"

    const-string v18, "Test 3: Socket timeout while receiving the response."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    add-int/2addr v14, v15

    .line 325
    mul-int/lit8 v16, v14, 0x2

    .line 326
    .local v16, "timeoutAddValue":I
    const/16 v17, 0x640

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    const/16 v16, 0x640

    .line 327
    :cond_1
    move/from16 v15, v16

    .line 328
    goto/16 :goto_0

    .line 310
    .end local v13    # "ste":Ljava/net/SocketTimeoutException;
    .end local v16    # "timeoutAddValue":I
    .restart local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v3    # "data":[B
    .restart local v5    # "localAddress":Ljava/net/InetAddress;
    .restart local v6    # "localPort":I
    .restart local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .restart local v10    # "send":Ljava/net/DatagramPacket;
    .restart local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :cond_2
    :try_start_1
    sget-object v17, Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;->ErrorCode:Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/jstun/core/header/MessageHeader;->getMessageAttribute(Lcom/jstun/core/attribute/MessageAttributeInterface$MessageAttributeType;)Lcom/jstun/core/attribute/MessageAttribute;

    move-result-object v4

    check-cast v4, Lcom/jstun/core/attribute/ErrorCode;

    .line 311
    .local v4, "ec":Lcom/jstun/core/attribute/ErrorCode;
    if-eqz v4, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual {v4}, Lcom/jstun/core/attribute/ErrorCode;->getResponseCode()I

    move-result v18

    invoke-virtual {v4}, Lcom/jstun/core/attribute/ErrorCode;->getReason()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/jstun/demo/DiscoveryInfo;->setError(ILjava/lang/String;)V

    .line 313
    const-string v17, "DiscoveryTest"

    const-string v18, "Message header contains an Errorcode message attribute."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v3    # "data":[B
    .end local v4    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v5    # "localAddress":Ljava/net/InetAddress;
    .end local v6    # "localPort":I
    .end local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .end local v10    # "send":Ljava/net/DatagramPacket;
    .end local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .end local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :goto_2
    return-void

    .line 316
    .restart local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .restart local v3    # "data":[B
    .restart local v4    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .restart local v5    # "localAddress":Ljava/net/InetAddress;
    .restart local v6    # "localPort":I
    .restart local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .restart local v10    # "send":Ljava/net/DatagramPacket;
    .restart local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .restart local v12    # "sendSocket":Ljava/net/DatagramSocket;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jstun/demo/DiscoveryTest;->nodeNatted:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/demo/DiscoveryInfo;->setRestrictedCone()V

    .line 318
    const-string v17, "DiscoveryTest"

    const-string v18, "Node is behind a restricted NAT."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 329
    .end local v2    # "changeRequest":Lcom/jstun/core/attribute/ChangeRequest;
    .end local v3    # "data":[B
    .end local v4    # "ec":Lcom/jstun/core/attribute/ErrorCode;
    .end local v5    # "localAddress":Ljava/net/InetAddress;
    .end local v6    # "localPort":I
    .end local v8    # "receiveMH":Lcom/jstun/core/header/MessageHeader;
    .end local v9    # "receiveSocket":Ljava/net/DatagramSocket;
    .end local v10    # "send":Ljava/net/DatagramPacket;
    .end local v11    # "sendMH":Lcom/jstun/core/header/MessageHeader;
    .end local v12    # "sendSocket":Ljava/net/DatagramSocket;
    .restart local v13    # "ste":Ljava/net/SocketTimeoutException;
    :cond_4
    const-string v17, "DiscoveryTest"

    const-string v18, "Test 3: Socket timeout while receiving the response. Maximum retry limit exceed. Give up."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/jstun/demo/DiscoveryInfo;->setPortRestrictedCone()V

    .line 331
    const-string v17, "DiscoveryTest"

    const-string v18, "Node is behind a port restricted NAT."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public test()Lcom/jstun/demo/DiscoveryInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jstun/core/util/UtilityException;,
            Ljava/net/SocketException;,
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;,
            Lcom/jstun/core/attribute/MessageAttributeParsingException;,
            Lcom/jstun/core/attribute/MessageAttributeException;,
            Lcom/jstun/core/header/MessageHeaderParsingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->ma:Lcom/jstun/core/attribute/MappedAddress;

    .line 45
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->ca:Lcom/jstun/core/attribute/ChangedAddress;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jstun/demo/DiscoveryTest;->nodeNatted:Z

    .line 47
    iput-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    .line 48
    new-instance v0, Lcom/jstun/demo/DiscoveryInfo;

    iget-object v1, p0, Lcom/jstun/demo/DiscoveryTest;->iaddress:Ljava/net/InetAddress;

    invoke-direct {v0, v1}, Lcom/jstun/demo/DiscoveryInfo;-><init>(Ljava/net/InetAddress;)V

    iput-object v0, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    .line 50
    invoke-direct {p0}, Lcom/jstun/demo/DiscoveryTest;->test1()Z

    .line 59
    iget-object v0, p0, Lcom/jstun/demo/DiscoveryTest;->socketTest1:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 61
    iget-object v0, p0, Lcom/jstun/demo/DiscoveryTest;->di:Lcom/jstun/demo/DiscoveryInfo;

    return-object v0
.end method
