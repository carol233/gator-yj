.class public Lorg/zoolu/sip/provider/SipProvider;
.super Ljava/lang/Object;
.source "SipProvider.java"

# interfaces
.implements Lorg/zoolu/tools/Configurable;
.implements Lorg/zoolu/sip/provider/TransportListener;
.implements Lorg/zoolu/net/TcpServerListener;


# static fields
.field public static final ALL_INTERFACES:Ljava/lang/String; = "ALL-INTERFACES"

.field public static final ANY:Lorg/zoolu/sip/provider/Identifier;

.field public static final AUTO_CONFIGURATION:Ljava/lang/String; = "AUTO-CONFIGURATION"

.field private static final MIN_MESSAGE_LENGTH:I = 0xc

.field public static final PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

.field public static final PROTO_SCTP:Ljava/lang/String; = "sctp"

.field public static final PROTO_TCP:Ljava/lang/String; = "tcp"

.field public static final PROTO_TLS:Ljava/lang/String; = "tls"

.field public static final PROTO_UDP:Ljava/lang/String; = "udp"


# instance fields
.field connections:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/zoolu/sip/provider/ConnectionIdentifier;",
            "Lorg/zoolu/sip/provider/ConnectedTransport;",
            ">;"
        }
    .end annotation
.end field

.field default_transport:Ljava/lang/String;

.field protected event_log:Lorg/zoolu/tools/Log;

.field exception_listeners:Lorg/zoolu/tools/HashSet;

.field force_rport:Z

.field host_ifaddr:Ljava/lang/String;

.field host_ipaddr:Lorg/zoolu/net/IpAddress;

.field host_port:I

.field listeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lorg/zoolu/sip/provider/Identifier;",
            "Lorg/zoolu/sip/provider/SipProviderListener;",
            ">;"
        }
    .end annotation
.end field

.field log_all_packets:Z

.field protected message_log:Lorg/zoolu/tools/Log;

.field nmax_connections:I

.field private outbound_addr:Ljava/lang/String;

.field private outbound_port:I

.field outbound_proxy:Lorg/zoolu/net/SocketAddress;

.field pm:Landroid/os/PowerManager;

.field rport:Z

.field server:Ljava/lang/String;

.field tcp_server:Lorg/zoolu/net/TcpServer;

.field transport_protocols:[Ljava/lang/String;

.field transport_sctp:Z

.field transport_tcp:Z

.field transport_tls:Z

.field transport_udp:Z

.field udp:Lorg/zoolu/sip/provider/UdpTransport;

.field via_addr:Ljava/lang/String;

.field wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/zoolu/sip/provider/Identifier;

    const-string v1, "ANY"

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/zoolu/sip/provider/SipProvider;->ANY:Lorg/zoolu/sip/provider/Identifier;

    .line 131
    new-instance v0, Lorg/zoolu/sip/provider/Identifier;

    const-string v1, "PROMISQUE"

    invoke-direct {v0, v1}, Lorg/zoolu/sip/provider/Identifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/zoolu/sip/provider/SipProvider;->PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 145
    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 151
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ifaddr:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    .line 157
    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    .line 163
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    .line 166
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    .line 171
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    .line 178
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    .line 181
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->message_log:Lorg/zoolu/tools/Log;

    .line 184
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    .line 187
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->default_transport:Ljava/lang/String;

    .line 190
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_udp:Z

    .line 192
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tcp:Z

    .line 194
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tls:Z

    .line 196
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_sctp:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->rport:Z

    .line 205
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    .line 208
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    .line 211
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    .line 214
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    .line 217
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    .line 220
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    .line 252
    invoke-static {}, Lorg/zoolu/sip/provider/SipStack;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    invoke-static {p1}, Lorg/zoolu/sip/provider/SipStack;->init(Ljava/lang/String;)V

    .line 254
    :cond_0
    new-instance v0, Lorg/zoolu/tools/Configure;

    invoke-direct {v0, p0, p1}, Lorg/zoolu/tools/Configure;-><init>(Lorg/zoolu/tools/Configurable;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    iget v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ifaddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->init(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->initlog()V

    .line 257
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->startTrasport()V

    .line 258
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "via_addr"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 145
    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 151
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ifaddr:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    .line 157
    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    .line 163
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    .line 166
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    .line 171
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    .line 178
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    .line 181
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->message_log:Lorg/zoolu/tools/Log;

    .line 184
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    .line 187
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->default_transport:Ljava/lang/String;

    .line 190
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_udp:Z

    .line 192
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tcp:Z

    .line 194
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tls:Z

    .line 196
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_sctp:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->rport:Z

    .line 205
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    .line 208
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    .line 211
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    .line 214
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    .line 217
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    .line 220
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    .line 231
    invoke-direct {p0, p1, p2, v1, v1}, Lorg/zoolu/sip/provider/SipProvider;->init(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->initlog()V

    .line 233
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->startTrasport()V

    .line 234
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "via_addr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocols"    # [Ljava/lang/String;
    .param p4, "ifaddr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 145
    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 151
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ifaddr:Ljava/lang/String;

    .line 154
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    .line 157
    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    .line 163
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    .line 166
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    .line 171
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    .line 178
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    .line 181
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->message_log:Lorg/zoolu/tools/Log;

    .line 184
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    .line 187
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->default_transport:Ljava/lang/String;

    .line 190
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_udp:Z

    .line 192
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tcp:Z

    .line 194
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tls:Z

    .line 196
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_sctp:Z

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->rport:Z

    .line 205
    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    .line 208
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    .line 211
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    .line 214
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    .line 217
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    .line 220
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/zoolu/sip/provider/SipProvider;->init(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->initlog()V

    .line 244
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->startTrasport()V

    .line 245
    return-void
.end method

.method private addConnection(Lorg/zoolu/sip/provider/ConnectedTransport;)V
    .locals 13
    .param p1, "conn"    # Lorg/zoolu/sip/provider/ConnectedTransport;

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x1

    .line 1130
    new-instance v1, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    .line 1131
    .local v1, "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trying to add the already established connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v11}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1135
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connection "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " will be replaced"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v11}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1137
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 1139
    .local v5, "old_conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    invoke-interface {v5}, Lorg/zoolu/sip/provider/ConnectedTransport;->halt()V

    .line 1140
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    .end local v5    # "old_conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    :cond_0
    :goto_0
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v1, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .end local v1    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    invoke-direct {v1, p1}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    .line 1160
    .restart local v1    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    check-cast p1, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 1162
    .restart local p1    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    const-string v9, "active connenctions:"

    invoke-direct {p0, v9, v12}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1163
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 1164
    .local v3, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectionIdentifier;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1165
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .line 1166
    .local v4, "id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "conn-id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/zoolu/sip/provider/ConnectedTransport;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v12}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    goto :goto_1

    .line 1141
    .end local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectionIdentifier;>;"
    .end local v4    # "id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    :cond_1
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    iget v10, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    if-lt v9, v10, :cond_0

    .line 1144
    const-string v9, "reached the maximum number of connection: removing the older unused connection"

    invoke-direct {p0, v9, v11}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1148
    .local v7, "older_time":J
    const/4 v6, 0x0

    .line 1149
    .local v6, "older_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    iget-object v9, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 1150
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectedTransport;>;"
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1151
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 1152
    .local v0, "co":Lorg/zoolu/sip/provider/ConnectedTransport;
    invoke-interface {v0}, Lorg/zoolu/sip/provider/ConnectedTransport;->getLastTimeMillis()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-gez v9, :cond_2

    .line 1153
    new-instance v6, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .end local v6    # "older_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    invoke-direct {v6, v0}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    .restart local v6    # "older_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    goto :goto_2

    .line 1155
    .end local v0    # "co":Lorg/zoolu/sip/provider/ConnectedTransport;
    :cond_3
    if-eqz v6, :cond_0

    .line 1156
    invoke-direct {p0, v6}, Lorg/zoolu/sip/provider/SipProvider;->removeConnection(Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    goto/16 :goto_0

    .line 1170
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectedTransport;>;"
    .end local v6    # "older_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .end local v7    # "older_time":J
    .restart local v3    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectionIdentifier;>;"
    :cond_4
    return-void
.end method

.method private completeSipURL(Ljava/lang/String;)Lorg/zoolu/sip/address/SipURL;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1334
    const-string v2, "sip:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1340
    .local v1, "url":Ljava/lang/String;
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    if-eqz v2, :cond_1

    .line 1341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v3}, Lorg/zoolu/net/SocketAddress;->getAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v3

    invoke-virtual {v3}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1342
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v2}, Lorg/zoolu/net/SocketAddress;->getPort()I

    move-result v0

    .line 1343
    .local v0, "port":I
    if-lez v0, :cond_0

    sget v2, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    if-eq v0, v2, :cond_0

    .line 1344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1350
    .end local v0    # "port":I
    :cond_0
    :goto_0
    new-instance v2, Lorg/zoolu/sip/address/SipURL;

    invoke-direct {v2, v1}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    .line 1352
    .end local v1    # "url":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1346
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    if-lez v2, :cond_0

    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    sget v3, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    if-eq v2, v3, :cond_0

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1352
    .end local v1    # "url":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/zoolu/sip/address/SipURL;

    invoke-direct {v2, p1}, Lorg/zoolu/sip/address/SipURL;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private init(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "viaddr"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocols"    # [Ljava/lang/String;
    .param p4, "ifaddr"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    invoke-static {}, Lorg/zoolu/sip/provider/SipStack;->isInit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    invoke-static {}, Lorg/zoolu/sip/provider/SipStack;->init()V

    .line 267
    :cond_0
    iput-object p1, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 268
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    const-string v3, "AUTO-CONFIGURATION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    :cond_1
    sget-object v2, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 270
    :cond_2
    iput p2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 271
    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    if-gez v2, :cond_3

    .line 272
    sget v2, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 273
    :cond_3
    iput-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    .line 274
    if-eqz p4, :cond_4

    const-string v2, "ALL-INTERFACES"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 276
    :try_start_0
    invoke-static {p4}, Lorg/zoolu/net/IpAddress;->getByName(Ljava/lang/String;)Lorg/zoolu/net/IpAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_4
    :goto_0
    iput-object p3, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    .line 283
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    if-nez v2, :cond_5

    .line 284
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    .line 285
    :cond_5
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->default_transport:Ljava/lang/String;

    .line 286
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 287
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 288
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "udp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 289
    iput-boolean v5, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_udp:Z

    .line 286
    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 279
    iput-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "i":I
    :cond_7
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "tcp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 291
    iput-boolean v5, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tcp:Z

    goto :goto_2

    .line 298
    :cond_8
    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    if-gtz v2, :cond_9

    .line 299
    sget v2, Lorg/zoolu/sip/provider/SipStack;->default_nmax_connections:I

    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    .line 302
    :cond_9
    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    if-gez v2, :cond_a

    .line 303
    sget v2, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    iput v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    .line 304
    :cond_a
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 305
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    sget-object v3, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    const-string v3, "NO-OUTBOUND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 307
    :cond_b
    iput-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    .line 312
    :cond_c
    :goto_3
    sget-boolean v2, Lorg/zoolu/sip/provider/SipStack;->use_rport:Z

    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->rport:Z

    .line 313
    sget-boolean v2, Lorg/zoolu/sip/provider/SipStack;->force_rport:Z

    iput-boolean v2, p0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    .line 315
    new-instance v2, Lorg/zoolu/tools/HashSet;

    invoke-direct {v2}, Lorg/zoolu/tools/HashSet;-><init>()V

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    .line 316
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v6}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    .line 318
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2, v6}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    .line 319
    return-void

    .line 309
    :cond_d
    new-instance v2, Lorg/zoolu/net/SocketAddress;

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    iget v4, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    invoke-direct {v2, v3, v4}, Lorg/zoolu/net/SocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    goto :goto_3
.end method

.method private initlog()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 323
    sget v0, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    if-lez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/zoolu/sip/provider/SipStack;->log_path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "filename":Ljava/lang/String;
    new-instance v0, Lorg/zoolu/tools/RotatingLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_events.log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    sget v4, Lorg/zoolu/sip/provider/SipStack;->max_logsize:I

    mul-int/lit16 v4, v4, 0x400

    int-to-long v4, v4

    sget v6, Lorg/zoolu/sip/provider/SipStack;->log_rotations:I

    sget v7, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    sget v8, Lorg/zoolu/sip/provider/SipStack;->rotation_time:I

    invoke-direct/range {v0 .. v8}, Lorg/zoolu/tools/RotatingLog;-><init>(Ljava/lang/String;Ljava/lang/String;IJIII)V

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    .line 330
    new-instance v0, Lorg/zoolu/tools/RotatingLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_messages.log"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v3, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    sget v4, Lorg/zoolu/sip/provider/SipStack;->max_logsize:I

    mul-int/lit16 v4, v4, 0x400

    int-to-long v4, v4

    sget v6, Lorg/zoolu/sip/provider/SipStack;->log_rotations:I

    sget v7, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    sget v8, Lorg/zoolu/sip/provider/SipStack;->rotation_time:I

    invoke-direct/range {v0 .. v8}, Lorg/zoolu/tools/RotatingLog;-><init>(Ljava/lang/String;Ljava/lang/String;IJIII)V

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->message_log:Lorg/zoolu/tools/Log;

    .line 335
    .end local v9    # "filename":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lorg/zoolu/tools/DateFormat;->formatHHMMSS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 336
    const-string v0, "SipStack: mjsip stack 1.6"

    invoke-direct {p0, v0, v10}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new SipProvider(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method public static pickBranch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "z9hG4bK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1}, Lorg/zoolu/tools/Random;->nextNumString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pickInitialCSeq()I
    .locals 1

    .prologue
    .line 1309
    const/4 v0, 0x1

    return v0
.end method

.method public static pickTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "z9hG4bK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/zoolu/tools/Random;->nextNumString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pickTag(Lorg/zoolu/sip/message/Message;)Ljava/lang/String;
    .locals 3
    .param p0, "req"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 1292
    new-instance v0, Lorg/zoolu/tools/SimpleDigest;

    const/16 v1, 0x8

    invoke-virtual {p0}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/zoolu/tools/SimpleDigest;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/zoolu/tools/SimpleDigest;->asHex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final printException(Ljava/lang/Exception;I)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 1394
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    sget v1, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_TRANSPORT:I

    add-int/2addr v1, p2

    invoke-virtual {v0, p1, v1}, Lorg/zoolu/tools/Log;->printException(Ljava/lang/Exception;I)Lorg/zoolu/tools/Log;

    .line 1396
    :cond_0
    return-void
.end method

.method private final printLog(Ljava/lang/String;I)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 1376
    return-void
.end method

.method private final printMessageLog(Ljava/lang/String;Ljava/lang/String;IILorg/zoolu/sip/message/Message;Ljava/lang/String;)V
    .locals 8
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "len"    # I
    .param p5, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p6, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1401
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    if-nez v0, :cond_0

    const/16 v0, 0xc

    if-lt p4, v0, :cond_2

    .line 1402
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->message_log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_1

    .line 1403
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->message_log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----End-of-message-----\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/zoolu/tools/Log;->printPacketTimestamp(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 1407
    :cond_1
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    if-eqz v0, :cond_2

    .line 1408
    invoke-virtual {p5}, Lorg/zoolu/sip/message/Message;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    .line 1409
    .local v7, "first_line":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 1410
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1413
    :goto_0
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Log;->print(Ljava/lang/String;)Lorg/zoolu/tools/Log;

    .line 1414
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/zoolu/tools/Log;->printPacketTimestamp(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 1416
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Lorg/zoolu/tools/Log;->print(Ljava/lang/String;)Lorg/zoolu/tools/Log;

    .line 1419
    .end local v7    # "first_line":Ljava/lang/String;
    :cond_2
    return-void

    .line 1412
    .restart local v7    # "first_line":Ljava/lang/String;
    :cond_3
    const-string v7, "NOT a SIP message"

    goto :goto_0
.end method

.method private final printWarning(Ljava/lang/String;I)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1390
    return-void
.end method

.method private removeConnection(Lorg/zoolu/sip/provider/ConnectionIdentifier;)V
    .locals 6
    .param p1, "conn_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    const/4 v5, 0x5

    .line 1174
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1175
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 1177
    .local v1, "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/zoolu/sip/provider/ConnectedTransport;->halt()V

    .line 1178
    :cond_0
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string v3, "active connenctions:"

    invoke-direct {p0, v3, v5}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1181
    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 1182
    .local v2, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectedTransport;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1183
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 1184
    .local v0, "co":Lorg/zoolu/sip/provider/ConnectedTransport;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v5}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 1187
    .end local v0    # "co":Lorg/zoolu/sip/provider/ConnectedTransport;
    .end local v1    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    .end local v2    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectedTransport;>;"
    :cond_1
    return-void
.end method

.method private sendMessage(Lorg/zoolu/sip/message/Message;Ljava/lang/String;Lorg/zoolu/net/IpAddress;II)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 11
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "dest_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p4, "dest_port"    # I
    .param p5, "ttl"    # I

    .prologue
    .line 794
    new-instance v8, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-direct {v8, p2, p3, p4}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Ljava/lang/String;Lorg/zoolu/net/IpAddress;I)V

    .line 796
    .local v8, "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 799
    :cond_1
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_udp:Z

    if-eqz v0, :cond_2

    const-string v0, "udp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    const/4 v8, 0x0

    .line 803
    :try_start_0
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    invoke-virtual {v0, p1, p3, p4}, Lorg/zoolu/sip/provider/UdpTransport;->sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/net/IpAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    invoke-virtual {p3}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "dest_addr":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v4

    const-string v6, "sent"

    move-object v0, p0

    move-object v1, p2

    move v3, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/zoolu/sip/provider/SipProvider;->printMessageLog(Ljava/lang/String;Ljava/lang/String;IILorg/zoolu/sip/message/Message;Ljava/lang/String;)V

    move-object v0, v8

    .line 855
    .end local v2    # "dest_addr":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 804
    :catch_0
    move-exception v10

    .line 805
    .local v10, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    .line 806
    const/4 v0, 0x0

    goto :goto_1

    .line 808
    .end local v10    # "e":Ljava/io/IOException;
    :cond_2
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tcp:Z

    if-eqz v0, :cond_7

    const-string v0, "tcp"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 810
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 811
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no active connection found matching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 815
    const/4 v7, 0x0

    .line 817
    .local v7, "conn":Lorg/zoolu/sip/provider/TcpTransport;
    :try_start_1
    new-instance v7, Lorg/zoolu/sip/provider/TcpTransport;

    .end local v7    # "conn":Lorg/zoolu/sip/provider/TcpTransport;
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->server:Ljava/lang/String;

    invoke-direct {v7, p3, p4, p0, v0}, Lorg/zoolu/sip/provider/TcpTransport;-><init>(Lorg/zoolu/net/IpAddress;ILorg/zoolu/sip/provider/TransportListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 822
    .restart local v7    # "conn":Lorg/zoolu/sip/provider/TcpTransport;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " opened"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 823
    invoke-direct {p0, v7}, Lorg/zoolu/sip/provider/SipProvider;->addConnection(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    .line 824
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->isRegister()Z

    move-result v0

    if-nez v0, :cond_4

    .line 825
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    .line 830
    .end local v7    # "conn":Lorg/zoolu/sip/provider/TcpTransport;
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v0, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 832
    .local v7, "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    if-eqz v7, :cond_6

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sending data through conn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 835
    :try_start_2
    invoke-interface {v7, p1}, Lorg/zoolu/sip/provider/ConnectedTransport;->sendMessage(Lorg/zoolu/sip/message/Message;)V

    .line 836
    new-instance v9, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    invoke-direct {v9, v7}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v8    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .local v9, "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    move-object v8, v9

    .line 846
    .end local v9    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .restart local v8    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    goto/16 :goto_0

    .line 818
    .end local v7    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    :catch_1
    move-exception v10

    .line 819
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "connection setup FAILED"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 820
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 827
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "active connection found matching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    goto :goto_2

    .line 837
    .restart local v7    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    :catch_2
    move-exception v10

    .line 838
    .local v10, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    .line 839
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 842
    .end local v10    # "e":Ljava/io/IOException;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: conn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found: abort."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 844
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 847
    .end local v7    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported protocol ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): Message discarded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 849
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private startTrasport()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 343
    iget-boolean v1, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_udp:Z

    if-eqz v1, :cond_0

    .line 345
    :try_start_0
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    if-nez v1, :cond_2

    .line 346
    new-instance v1, Lorg/zoolu/sip/provider/UdpTransport;

    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    invoke-direct {v1, v2, p0}, Lorg/zoolu/sip/provider/UdpTransport;-><init>(ILorg/zoolu/sip/provider/TransportListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    .line 349
    :goto_0
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    invoke-virtual {v1}, Lorg/zoolu/sip/provider/UdpTransport;->getPort()I

    move-result v1

    iput v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 350
    const-string v1, "udp is up"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_tcp:Z

    if-eqz v1, :cond_1

    .line 358
    :try_start_1
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    if-nez v1, :cond_3

    .line 359
    new-instance v1, Lorg/zoolu/net/TcpServer;

    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    invoke-direct {v1, v2, p0}, Lorg/zoolu/net/TcpServer;-><init>(ILorg/zoolu/net/TcpServerListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    .line 362
    :goto_2
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    invoke-virtual {v1}, Lorg/zoolu/net/TcpServer;->getPort()I

    move-result v1

    iput v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    .line 363
    const-string v1, "tcp is up"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    :cond_1
    :goto_3
    return-void

    .line 348
    :cond_2
    :try_start_2
    new-instance v1, Lorg/zoolu/sip/provider/UdpTransport;

    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    invoke-direct {v1, v2, v3, p0}, Lorg/zoolu/sip/provider/UdpTransport;-><init>(ILorg/zoolu/net/IpAddress;Lorg/zoolu/sip/provider/TransportListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, v4}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    goto :goto_1

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    new-instance v1, Lorg/zoolu/net/TcpServer;

    iget v2, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    invoke-direct {v1, v2, v3, p0}, Lorg/zoolu/net/TcpServer;-><init>(ILorg/zoolu/net/IpAddress;Lorg/zoolu/net/TcpServerListener;)V

    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 364
    :catch_1
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v0, v4}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    goto :goto_3
.end method

.method private stopTrasport()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "udp is going down"

    invoke-direct {p0, v0, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 376
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    invoke-virtual {v0}, Lorg/zoolu/sip/provider/UdpTransport;->halt()V

    .line 377
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->udp:Lorg/zoolu/sip/provider/UdpTransport;

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "tcp is going down"

    invoke-direct {p0, v0, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 382
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpServer;->halt()V

    .line 383
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->tcp_server:Lorg/zoolu/net/TcpServer;

    .line 385
    :cond_1
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->haltConnections()V

    .line 386
    iput-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    .line 387
    return-void
.end method

.method private transportProtocolsToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 489
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 490
    .local v1, "list":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 490
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addSipProviderExceptionListener(Lorg/zoolu/sip/provider/SipProviderExceptionListener;)Z
    .locals 3
    .param p1, "e_listener"    # Lorg/zoolu/sip/provider/SipProviderExceptionListener;

    .prologue
    const/4 v0, 0x1

    .line 723
    const-string v1, "adding SipProviderExceptionListener"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 724
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    invoke-virtual {v1, p1}, Lorg/zoolu/tools/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    const-string v1, "trying to add an already present SipProviderExceptionListener."

    invoke-direct {p0, v1, v0}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 728
    const/4 v0, 0x0

    .line 731
    :goto_0
    return v0

    .line 730
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    invoke-virtual {v1, p1}, Lorg/zoolu/tools/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z
    .locals 4
    .param p1, "id"    # Lorg/zoolu/sip/provider/Identifier;
    .param p2, "listener"    # Lorg/zoolu/sip/provider/SipProviderListener;

    .prologue
    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding SipProviderListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 657
    move-object v0, p1

    .line 658
    .local v0, "key":Lorg/zoolu/sip/provider/Identifier;
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    const-string v2, "trying to add a SipProviderListener with a id that is already in use."

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 662
    const/4 v1, 0x0

    .line 677
    .local v1, "ret":Z
    :goto_0
    return v1

    .line 664
    .end local v1    # "ret":Z
    :cond_0
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const/4 v1, 0x1

    .restart local v1    # "ret":Z
    goto :goto_0
.end method

.method public addSipProviderListener(Lorg/zoolu/sip/provider/SipProviderListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/zoolu/sip/provider/SipProviderListener;

    .prologue
    .line 635
    sget-object v0, Lorg/zoolu/sip/provider/SipProvider;->ANY:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    move-result v0

    return v0
.end method

.method public addSipProviderPromisqueListener(Lorg/zoolu/sip/provider/SipProviderListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/zoolu/sip/provider/SipProviderListener;

    .prologue
    .line 621
    sget-object v0, Lorg/zoolu/sip/provider/SipProvider;->PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {p0, v0, p1}, Lorg/zoolu/sip/provider/SipProvider;->addSipProviderListener(Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipProviderListener;)Z

    move-result v0

    return v0
.end method

.method public completeNameAddress(Ljava/lang/String;)Lorg/zoolu/sip/address/NameAddress;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1322
    const-string v1, "<sip:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1323
    new-instance v1, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v1, p1}, Lorg/zoolu/sip/address/NameAddress;-><init>(Ljava/lang/String;)V

    .line 1326
    :goto_0
    return-object v1

    .line 1325
    :cond_0
    invoke-direct {p0, p1}, Lorg/zoolu/sip/provider/SipProvider;->completeSipURL(Ljava/lang/String;)Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    .line 1326
    .local v0, "url":Lorg/zoolu/sip/address/SipURL;
    new-instance v1, Lorg/zoolu/sip/address/NameAddress;

    invoke-direct {v1, v0}, Lorg/zoolu/sip/address/NameAddress;-><init>(Lorg/zoolu/sip/address/SipURL;)V

    goto :goto_0
.end method

.method public getDefaultTransport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->default_transport:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceAddress()Lorg/zoolu/net/IpAddress;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    return-object v0
.end method

.method public getListeners()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Lorg/zoolu/sip/provider/Identifier;",
            "Lorg/zoolu/sip/provider/SipProviderListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getLog()Lorg/zoolu/tools/Log;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->event_log:Lorg/zoolu/tools/Log;

    return-object v0
.end method

.method public getNMaxConnections()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    return v0
.end method

.method public getOutboundProxy()Lorg/zoolu/net/SocketAddress;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    return v0
.end method

.method public getTransportProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    return-object v0
.end method

.method public getViaAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    sget-object v0, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    return-object v0
.end method

.method public halt()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "halt: SipProvider is going down"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 404
    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->stopTrasport()V

    .line 405
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    .line 406
    new-instance v0, Lorg/zoolu/tools/HashSet;

    invoke-direct {v0}, Lorg/zoolu/tools/HashSet;-><init>()V

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    .line 407
    return-void
.end method

.method public haltConnections()V
    .locals 4

    .prologue
    .line 390
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    .line 391
    const-string v2, "connections are going down"

    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 392
    iget-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 393
    .local v1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectedTransport;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 395
    .local v0, "c":Lorg/zoolu/sip/provider/ConnectedTransport;
    invoke-interface {v0}, Lorg/zoolu/sip/provider/ConnectedTransport;->halt()V

    goto :goto_0

    .line 397
    .end local v0    # "c":Lorg/zoolu/sip/provider/ConnectedTransport;
    :cond_0
    new-instance v2, Ljava/util/Hashtable;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v2, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    .line 399
    .end local v1    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/ConnectedTransport;>;"
    :cond_1
    return-void
.end method

.method public hasOutboundProxy()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllInterfaces()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForceRportSet()Z
    .locals 1

    .prologue
    .line 559
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    return v0
.end method

.method public isRportSet()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->rport:Z

    return v0
.end method

.method public onIncomingConnection(Lorg/zoolu/net/TcpServer;Lorg/zoolu/net/TcpSocket;)V
    .locals 4
    .param p1, "tcp_server"    # Lorg/zoolu/net/TcpServer;
    .param p2, "socket"    # Lorg/zoolu/net/TcpSocket;

    .prologue
    const/4 v3, 0x3

    .line 1220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incoming connection from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/zoolu/net/TcpSocket;->getAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/zoolu/net/TcpSocket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1222
    new-instance v0, Lorg/zoolu/sip/provider/TcpTransport;

    invoke-direct {v0, p2, p0}, Lorg/zoolu/sip/provider/TcpTransport;-><init>(Lorg/zoolu/net/TcpSocket;Lorg/zoolu/sip/provider/TransportListener;)V

    .line 1223
    .local v0, "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tcp connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " opened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1224
    invoke-direct {p0, v0}, Lorg/zoolu/sip/provider/SipProvider;->addConnection(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    .line 1225
    return-void
.end method

.method public onReceivedMessage(Lorg/zoolu/sip/provider/Transport;Lorg/zoolu/sip/message/Message;)V
    .locals 3
    .param p1, "transport"    # Lorg/zoolu/sip/provider/Transport;
    .param p2, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 1195
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->pm:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 1196
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->pm:Landroid/os/PowerManager;

    .line 1197
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->pm:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Sipdroid.SipProvider"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->wl:Landroid/os/PowerManager$WakeLock;

    .line 1199
    :cond_0
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1200
    invoke-virtual {p0, p2}, Lorg/zoolu/sip/provider/SipProvider;->processReceivedMessage(Lorg/zoolu/sip/message/Message;)V

    .line 1201
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1202
    return-void
.end method

.method public onServerTerminated(Lorg/zoolu/net/TcpServer;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "tcp_server"    # Lorg/zoolu/net/TcpServer;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tcp server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " terminated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1230
    return-void
.end method

.method public onTransportTerminated(Lorg/zoolu/sip/provider/Transport;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "transport"    # Lorg/zoolu/sip/provider/Transport;
    .param p2, "error"    # Ljava/lang/Exception;

    .prologue
    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " terminated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1207
    invoke-interface {p1}, Lorg/zoolu/sip/provider/Transport;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    new-instance v0, Lorg/zoolu/sip/provider/ConnectionIdentifier;

    check-cast p1, Lorg/zoolu/sip/provider/ConnectedTransport;

    .end local p1    # "transport":Lorg/zoolu/sip/provider/Transport;
    invoke-direct {v0, p1}, Lorg/zoolu/sip/provider/ConnectionIdentifier;-><init>(Lorg/zoolu/sip/provider/ConnectedTransport;)V

    .line 1210
    .local v0, "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    invoke-direct {p0, v0}, Lorg/zoolu/sip/provider/SipProvider;->removeConnection(Lorg/zoolu/sip/provider/ConnectionIdentifier;)V

    .line 1211
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    .line 1214
    .end local v0    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    :cond_0
    if-eqz p2, :cond_1

    .line 1215
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    .line 1216
    :cond_1
    return-void
.end method

.method public parseLine(Ljava/lang/String;)V
    .locals 7
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v5, "="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 414
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 415
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "attribute":Ljava/lang/String;
    new-instance v3, Lorg/zoolu/tools/Parser;

    add-int/lit8 v5, v2, 0x1

    invoke-direct {v3, p1, v5}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 421
    .local v3, "par":Lorg/zoolu/tools/Parser;
    :goto_0
    const/4 v5, 0x2

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    .line 423
    .local v1, "delim":[C
    const-string v5, "via_addr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 424
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->via_addr:Ljava/lang/String;

    .line 480
    :cond_0
    :goto_1
    return-void

    .line 418
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "delim":[C
    .end local v3    # "par":Lorg/zoolu/tools/Parser;
    :cond_1
    move-object v0, p1

    .line 419
    .restart local v0    # "attribute":Ljava/lang/String;
    new-instance v3, Lorg/zoolu/tools/Parser;

    const-string v5, ""

    invoke-direct {v3, v5}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .restart local v3    # "par":Lorg/zoolu/tools/Parser;
    goto :goto_0

    .line 427
    .restart local v1    # "delim":[C
    :cond_2
    const-string v5, "host_port"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v5

    iput v5, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    goto :goto_1

    .line 431
    :cond_3
    const-string v5, "host_ifaddr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 432
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ifaddr:Ljava/lang/String;

    goto :goto_1

    .line 435
    :cond_4
    const-string v5, "transport_protocols"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 436
    invoke-virtual {v3, v1}, Lorg/zoolu/tools/Parser;->getWordArray([C)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->transport_protocols:[Ljava/lang/String;

    goto :goto_1

    .line 439
    :cond_5
    const-string v5, "nmax_connections"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 440
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v5

    iput v5, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    goto :goto_1

    .line 443
    :cond_6
    const-string v5, "outbound_proxy"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 444
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "soaddr":Ljava/lang/String;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "NO-OUTBOUND"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 448
    :cond_7
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    goto :goto_1

    .line 450
    :cond_8
    new-instance v5, Lorg/zoolu/net/SocketAddress;

    invoke-direct {v5, v4}, Lorg/zoolu/net/SocketAddress;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    goto :goto_1

    .line 453
    .end local v4    # "soaddr":Ljava/lang/String;
    :cond_9
    const-string v5, "log_all_packets"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 454
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "y"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    goto/16 :goto_1

    .line 459
    :cond_a
    const-string v5, "host_addr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 460
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "WARNING: parameter \'host_addr\' is no more supported; use \'via_addr\' instead."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    :cond_b
    const-string v5, "all_interfaces"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 463
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "WARNING: parameter \'all_interfaces\' is no more supported; use \'host_iaddr\' for setting a specific interface or let it undefined."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    :cond_c
    const-string v5, "use_outbound"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 466
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "WARNING: parameter \'use_outbound\' is no more supported; use \'outbound_proxy\' for setting an outbound proxy or let it undefined."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    :cond_d
    const-string v5, "outbound_addr"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 469
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "WARNING: parameter \'outbound_addr\' has been deprecated; use \'outbound_proxy=<host_addr>[:<host_port>]\' instead."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_addr:Ljava/lang/String;

    goto/16 :goto_1

    .line 474
    :cond_e
    const-string v5, "outbound_port"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 475
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "WARNING: parameter \'outbound_port\' has been deprecated; use \'outbound_proxy=<host_addr>[:<host_port>]\' instead."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v5

    iput v5, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_port:I

    goto/16 :goto_1

    .line 421
    nop

    :array_0
    .array-data 2
        0x20s
        0x2cs
    .end array-data
.end method

.method public pickBranch(Lorg/zoolu/sip/message/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 1252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1253
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/address/SipURL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1255
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v1

    .line 1256
    .local v1, "top_via":Lorg/zoolu/sip/header/ViaHeader;
    invoke-virtual {v1}, Lorg/zoolu/sip/header/ViaHeader;->hasBranch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1257
    invoke-virtual {v1}, Lorg/zoolu/sip/header/ViaHeader;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1266
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "z9hG4bK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Lorg/zoolu/tools/SimpleDigest;

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/zoolu/tools/SimpleDigest;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3}, Lorg/zoolu/tools/SimpleDigest;->asHex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1259
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/zoolu/sip/header/ViaHeader;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1260
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getCSeqHeader()Lorg/zoolu/sip/header/CSeqHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/CSeqHeader;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1261
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getCallIdHeader()Lorg/zoolu/sip/header/CallIdHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1262
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getFromHeader()Lorg/zoolu/sip/header/FromHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1263
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getToHeader()Lorg/zoolu/sip/header/ToHeader;

    move-result-object v2

    invoke-virtual {v2}, Lorg/zoolu/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public pickCallId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/zoolu/tools/Random;->nextNumString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getViaAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected processReceivedMessage(Lorg/zoolu/sip/message/Message;)V
    .locals 21
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 985
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getTransportProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getRemoteAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getRemotePort()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v6

    const-string v8, "received"

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lorg/zoolu/sip/provider/SipProvider;->printMessageLog(Ljava/lang/String;Ljava/lang/String;IILorg/zoolu/sip/message/Message;Ljava/lang/String;)V

    .line 989
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_1

    .line 990
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    if-eqz v2, :cond_0

    .line 991
    const-string v2, "message too short: discarded\r\n"

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 995
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getFirstLine()Ljava/lang/String;

    move-result-object v11

    .line 996
    .local v11, "first_line":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SIP/2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    .line 998
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    if-eqz v2, :cond_0

    .line 999
    const-string v2, "NOT a SIP message: discarded\r\n"

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1108
    .end local v11    # "first_line":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1109
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "Error handling a new incoming message"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 1110
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    invoke-virtual {v2}, Lorg/zoolu/tools/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_12

    .line 1112
    :cond_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error handling a new incoming message"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1004
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v11    # "first_line":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message:\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1007
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1008
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v17

    .line 1009
    .local v17, "vh":Lorg/zoolu/sip/header/ViaHeader;
    const/16 v19, 0x0

    .line 1010
    .local v19, "via_changed":Z
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getRemoteAddress()Ljava/lang/String;

    move-result-object v15

    .line 1011
    .local v15, "src_addr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getRemotePort()I

    move-result v16

    .line 1012
    .local v16, "src_port":I
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sip/header/ViaHeader;->getHost()Ljava/lang/String;

    move-result-object v18

    .line 1013
    .local v18, "via_addr":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sip/header/ViaHeader;->getPort()I

    move-result v20

    .line 1014
    .local v20, "via_port":I
    if-gtz v20, :cond_5

    .line 1015
    sget v20, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    .line 1017
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1018
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/zoolu/sip/header/ViaHeader;->setReceived(Ljava/lang/String;)V

    .line 1019
    const/16 v19, 0x1

    .line 1022
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lorg/zoolu/sip/header/ViaHeader;->hasRport()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1023
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setRport(I)V

    .line 1024
    const/16 v19, 0x1

    .line 1032
    :cond_7
    :goto_1
    if-eqz v19, :cond_8

    .line 1033
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->removeViaHeader()V

    .line 1034
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/message/Message;->addViaHeader(Lorg/zoolu/sip/header/ViaHeader;)V

    .line 1039
    .end local v15    # "src_addr":Ljava/lang/String;
    .end local v16    # "src_port":I
    .end local v17    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    .end local v18    # "via_addr":Ljava/lang/String;
    .end local v19    # "via_changed":Z
    .end local v20    # "via_port":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 1040
    :cond_9
    const-string v2, "no listener found: message discarded."

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1026
    .restart local v15    # "src_addr":Ljava/lang/String;
    .restart local v16    # "src_port":I
    .restart local v17    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    .restart local v18    # "via_addr":Ljava/lang/String;
    .restart local v19    # "via_changed":Z
    .restart local v20    # "via_port":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    if-eqz v2, :cond_7

    move/from16 v0, v20

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 1027
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/zoolu/sip/header/ViaHeader;->setRport(I)V

    .line 1028
    const/16 v19, 0x1

    goto :goto_1

    .line 1045
    .end local v15    # "src_addr":Ljava/lang/String;
    .end local v16    # "src_port":I
    .end local v17    # "vh":Lorg/zoolu/sip/header/ViaHeader;
    .end local v18    # "via_addr":Ljava/lang/String;
    .end local v19    # "via_changed":Z
    .end local v20    # "via_port":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    sget-object v3, Lorg/zoolu/sip/provider/SipProvider;->PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message passed to uas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/zoolu/sip/provider/SipProvider;->PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    sget-object v3, Lorg/zoolu/sip/provider/SipProvider;->PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/provider/SipProviderListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lorg/zoolu/sip/provider/SipProviderListener;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    .line 1052
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->isRequest()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1053
    const-string v2, "No valid SIP message: message discarded."

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1062
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getTransactionId()Lorg/zoolu/sip/provider/TransactionIdentifier;

    move-result-object v13

    .line 1063
    .local v13, "key":Lorg/zoolu/sip/provider/Identifier;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: transaction-id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message passed to transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/zoolu/sip/provider/SipProviderListener;

    .line 1068
    .local v14, "sip_listener":Lorg/zoolu/sip/provider/SipProviderListener;
    if-eqz v14, :cond_0

    .line 1070
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v14, v0, v1}, Lorg/zoolu/sip/provider/SipProviderListener;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0

    .line 1076
    .end local v14    # "sip_listener":Lorg/zoolu/sip/provider/SipProviderListener;
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getDialogId()Lorg/zoolu/sip/provider/DialogIdentifier;

    move-result-object v13

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG: dialog-id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message passed to dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/provider/SipProviderListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lorg/zoolu/sip/provider/SipProviderListener;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0

    .line 1085
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lorg/zoolu/sip/message/Message;->getMethodId()Lorg/zoolu/sip/provider/MethodIdentifier;

    move-result-object v13

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message passed to uas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/provider/SipProviderListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lorg/zoolu/sip/provider/SipProviderListener;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0

    .line 1093
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    sget-object v3, Lorg/zoolu/sip/provider/SipProvider;->ANY:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message passed to uas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/zoolu/sip/provider/SipProvider;->ANY:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    sget-object v3, Lorg/zoolu/sip/provider/SipProvider;->ANY:Lorg/zoolu/sip/provider/Identifier;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/provider/SipProviderListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v2, v0, v1}, Lorg/zoolu/sip/provider/SipProviderListener;->onReceivedMessage(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/message/Message;)V

    goto/16 :goto_0

    .line 1101
    :cond_11
    const-string v2, "No SipListener found matching that message: message DISCARDED"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending SipProviderListeners= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1115
    .end local v11    # "first_line":Ljava/lang/String;
    .end local v13    # "key":Lorg/zoolu/sip/provider/Identifier;
    .restart local v9    # "e":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    invoke-virtual {v2}, Lorg/zoolu/tools/HashSet;->iterator()Lorg/zoolu/tools/Iterator;

    move-result-object v12

    .local v12, "i":Lorg/zoolu/tools/Iterator;
    :goto_2
    invoke-virtual {v12}, Lorg/zoolu/tools/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1117
    :try_start_2
    invoke-virtual {v12}, Lorg/zoolu/tools/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/zoolu/sip/provider/SipProviderExceptionListener;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v9}, Lorg/zoolu/sip/provider/SipProviderExceptionListener;->onMessageException(Lorg/zoolu/sip/message/Message;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1119
    :catch_1
    move-exception v10

    .line 1120
    .local v10, "e2":Ljava/lang/Exception;
    const-string v2, "Error handling handling the Exception"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 1122
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    goto :goto_2
.end method

.method public removeSipProviderExceptionListener(Lorg/zoolu/sip/provider/SipProviderExceptionListener;)Z
    .locals 3
    .param p1, "e_listener"    # Lorg/zoolu/sip/provider/SipProviderExceptionListener;

    .prologue
    const/4 v0, 0x1

    .line 746
    const-string v1, "removing SipProviderExceptionListener"

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 747
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    invoke-virtual {v1, p1}, Lorg/zoolu/tools/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    const-string v1, "trying to remove a missed SipProviderExceptionListener."

    invoke-direct {p0, v1, v0}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 751
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    .line 753
    :cond_0
    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->exception_listeners:Lorg/zoolu/tools/HashSet;

    invoke-virtual {v1, p1}, Lorg/zoolu/tools/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeSipProviderListener(Lorg/zoolu/sip/provider/Identifier;)Z
    .locals 6
    .param p1, "id"    # Lorg/zoolu/sip/provider/Identifier;

    .prologue
    .line 689
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removing SipProviderListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {p0, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 691
    move-object v1, p1

    .line 692
    .local v1, "key":Lorg/zoolu/sip/provider/Identifier;
    iget-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 693
    const-string v4, "trying to remove a missed SipProviderListener."

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;->printWarning(Ljava/lang/String;I)V

    .line 695
    const/4 v3, 0x0

    .line 701
    .local v3, "ret":Z
    :goto_0
    iget-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    if-eqz v4, :cond_2

    .line 702
    const-string v2, ""

    .line 703
    .local v2, "list":Ljava/lang/String;
    iget-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 704
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/Identifier;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 697
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/Identifier;>;"
    .end local v2    # "list":Ljava/lang/String;
    .end local v3    # "ret":Z
    :cond_0
    iget-object v4, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const/4 v3, 0x1

    .restart local v3    # "ret":Z
    goto :goto_0

    .line 706
    .restart local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/Identifier;>;"
    .restart local v2    # "list":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/zoolu/sip/provider/SipProvider;->listeners:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " listeners: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {p0, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 708
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lorg/zoolu/sip/provider/Identifier;>;"
    .end local v2    # "list":Ljava/lang/String;
    :cond_2
    return v3
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 8
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;

    .prologue
    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message:\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getViaHeader()Lorg/zoolu/sip/header/ViaHeader;

    move-result-object v7

    .line 887
    .local v7, "via":Lorg/zoolu/sip/header/ViaHeader;
    if-eqz v7, :cond_2

    .line 888
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ViaHeader;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "proto":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using transport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 894
    const/4 v3, 0x0

    .line 895
    .local v3, "dest_addr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 896
    .local v4, "dest_port":I
    const/4 v5, 0x0

    .line 898
    .local v5, "ttl":I
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->isResponse()Z

    move-result v0

    if-nez v0, :cond_7

    .line 899
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    if-eqz v0, :cond_3

    .line 900
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v0}, Lorg/zoolu/net/SocketAddress;->getAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v3

    .line 901
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    invoke-virtual {v0}, Lorg/zoolu/net/SocketAddress;->getPort()I

    move-result v4

    .line 939
    :cond_0
    :goto_1
    if-gtz v4, :cond_1

    .line 940
    sget v4, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 942
    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Ljava/lang/String;Ljava/lang/String;II)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object v0

    return-object v0

    .line 890
    .end local v2    # "proto":Ljava/lang/String;
    .end local v3    # "dest_addr":Ljava/lang/String;
    .end local v4    # "dest_port":I
    .end local v5    # "ttl":I
    :cond_2
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "proto":Ljava/lang/String;
    goto :goto_0

    .line 903
    .restart local v3    # "dest_addr":Ljava/lang/String;
    .restart local v4    # "dest_port":I
    .restart local v5    # "ttl":I
    :cond_3
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->hasRouteHeader()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getRouteHeader()Lorg/zoolu/sip/header/RouteHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/RouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/SipURL;->hasLr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 906
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getRouteHeader()Lorg/zoolu/sip/header/RouteHeader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/RouteHeader;->getNameAddress()Lorg/zoolu/sip/address/NameAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/address/NameAddress;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v6

    .line 908
    .local v6, "url":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 909
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getPort()I

    move-result v4

    .line 910
    goto :goto_1

    .line 911
    .end local v6    # "url":Lorg/zoolu/sip/address/SipURL;
    :cond_4
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getRequestLine()Lorg/zoolu/sip/header/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/sip/header/RequestLine;->getAddress()Lorg/zoolu/sip/address/SipURL;

    move-result-object v6

    .line 912
    .restart local v6    # "url":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 913
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getPort()I

    move-result v4

    .line 914
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->hasMaddr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getMaddr()Ljava/lang/String;

    move-result-object v3

    .line 916
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->hasTtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 917
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getTtl()I

    move-result v5

    .line 919
    :cond_5
    invoke-virtual {v7, v3}, Lorg/zoolu/sip/header/ViaHeader;->setMaddr(Ljava/lang/String;)V

    .line 920
    if-lez v5, :cond_6

    .line 921
    invoke-virtual {v7, v5}, Lorg/zoolu/sip/header/ViaHeader;->setTtl(I)V

    .line 922
    :cond_6
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->removeViaHeader()V

    .line 923
    invoke-virtual {p1, v7}, Lorg/zoolu/sip/message/Message;->addViaHeader(Lorg/zoolu/sip/header/ViaHeader;)V

    goto :goto_1

    .line 928
    .end local v6    # "url":Lorg/zoolu/sip/address/SipURL;
    :cond_7
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ViaHeader;->getSipURL()Lorg/zoolu/sip/address/SipURL;

    move-result-object v6

    .line 929
    .restart local v6    # "url":Lorg/zoolu/sip/address/SipURL;
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ViaHeader;->hasReceived()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 930
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ViaHeader;->getReceived()Ljava/lang/String;

    move-result-object v3

    .line 933
    :goto_2
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ViaHeader;->hasRport()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 934
    invoke-virtual {v7}, Lorg/zoolu/sip/header/ViaHeader;->getRport()I

    move-result v4

    .line 935
    :cond_8
    if-gtz v4, :cond_0

    .line 936
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getPort()I

    move-result v4

    goto/16 :goto_1

    .line 932
    :cond_9
    invoke-virtual {v6}, Lorg/zoolu/sip/address/SipURL;->getHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;Ljava/lang/String;Ljava/lang/String;II)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 7
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "proto"    # Ljava/lang/String;
    .param p3, "dest_addr"    # Ljava/lang/String;
    .param p4, "dest_port"    # I
    .param p5, "ttl"    # I

    .prologue
    .line 776
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v0

    const/16 v1, 0xc

    if-le v0, v1, :cond_1

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resolving host address \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 780
    :cond_1
    :try_start_0
    invoke-static {p3}, Lorg/zoolu/net/IpAddress;->getByName(Ljava/lang/String;)Lorg/zoolu/net/IpAddress;

    move-result-object v3

    .local v3, "dest_ipaddr":Lorg/zoolu/net/IpAddress;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    .line 781
    invoke-direct/range {v0 .. v5}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;Ljava/lang/String;Lorg/zoolu/net/IpAddress;II)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 784
    .end local v3    # "dest_ipaddr":Lorg/zoolu/net/IpAddress;
    :goto_0
    return-object v0

    .line 782
    :catch_0
    move-exception v6

    .line 783
    .local v6, "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    invoke-direct {p0, v6, v0}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    .line 784
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMessage(Lorg/zoolu/sip/message/Message;Lorg/zoolu/sip/provider/ConnectionIdentifier;)Lorg/zoolu/sip/provider/ConnectionIdentifier;
    .locals 11
    .param p1, "msg"    # Lorg/zoolu/sip/message/Message;
    .param p2, "conn_id"    # Lorg/zoolu/sip/provider/ConnectionIdentifier;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 948
    iget-boolean v0, p0, Lorg/zoolu/sip/provider/SipProvider;->log_all_packets:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v0

    const/16 v4, 0xc

    if-le v0, v4, :cond_1

    .line 949
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending message through conn "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v9}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 950
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message:\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x9

    invoke-direct {p0, v0, v4}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 952
    if-eqz p2, :cond_2

    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "active connection found matching "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 956
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->connections:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/zoolu/sip/provider/ConnectedTransport;

    .line 959
    .local v7, "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    :try_start_0
    invoke-interface {v7, p1}, Lorg/zoolu/sip/provider/ConnectedTransport;->sendMessage(Lorg/zoolu/sip/message/Message;)V

    .line 962
    invoke-interface {v7}, Lorg/zoolu/sip/provider/ConnectedTransport;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 963
    .local v1, "proto":Ljava/lang/String;
    invoke-interface {v7}, Lorg/zoolu/sip/provider/ConnectedTransport;->getRemoteAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v2

    .line 964
    .local v2, "dest_addr":Ljava/lang/String;
    invoke-interface {v7}, Lorg/zoolu/sip/provider/ConnectedTransport;->getRemotePort()I

    move-result v3

    .line 965
    .local v3, "dest_port":I
    invoke-virtual {p1}, Lorg/zoolu/sip/message/Message;->getLength()I

    move-result v4

    const-string v6, "sent"

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/zoolu/sip/provider/SipProvider;->printMessageLog(Ljava/lang/String;Ljava/lang/String;IILorg/zoolu/sip/message/Message;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    .end local v1    # "proto":Ljava/lang/String;
    .end local v2    # "dest_addr":Ljava/lang/String;
    .end local v3    # "dest_port":I
    .end local v7    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    .end local p2    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    :goto_0
    return-object p2

    .line 968
    .restart local v7    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    .restart local p2    # "conn_id":Lorg/zoolu/sip/provider/ConnectionIdentifier;
    :catch_0
    move-exception v8

    .line 969
    .local v8, "e":Ljava/lang/Exception;
    invoke-direct {p0, v8, v9}, Lorg/zoolu/sip/provider/SipProvider;->printException(Ljava/lang/Exception;I)V

    .line 973
    .end local v7    # "conn":Lorg/zoolu/sip/provider/ConnectedTransport;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no active connection found matching "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lorg/zoolu/sip/provider/SipProvider;->printLog(Ljava/lang/String;I)V

    .line 975
    invoke-virtual {p0, p1}, Lorg/zoolu/sip/provider/SipProvider;->sendMessage(Lorg/zoolu/sip/message/Message;)Lorg/zoolu/sip/provider/ConnectionIdentifier;

    move-result-object p2

    goto :goto_0
.end method

.method public setDefaultTransport(Ljava/lang/String;)V
    .locals 0
    .param p1, "proto"    # Ljava/lang/String;

    .prologue
    .line 539
    iput-object p1, p0, Lorg/zoolu/sip/provider/SipProvider;->default_transport:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setForceRport(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lorg/zoolu/sip/provider/SipProvider;->force_rport:Z

    .line 555
    return-void
.end method

.method public setNMaxConnections(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 592
    iput p1, p0, Lorg/zoolu/sip/provider/SipProvider;->nmax_connections:I

    .line 593
    return-void
.end method

.method public setOutboundProxy(Lorg/zoolu/net/SocketAddress;Ljava/lang/String;)V
    .locals 0
    .param p1, "soaddr"    # Lorg/zoolu/net/SocketAddress;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lorg/zoolu/sip/provider/SipProvider;->outbound_proxy:Lorg/zoolu/net/SocketAddress;

    .line 577
    iput-object p2, p0, Lorg/zoolu/sip/provider/SipProvider;->server:Ljava/lang/String;

    .line 578
    return-void
.end method

.method public setRport(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 544
    iput-boolean p1, p0, Lorg/zoolu/sip/provider/SipProvider;->rport:Z

    .line 545
    return-void
.end method

.method protected toLines()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lorg/zoolu/sip/provider/SipProvider;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    if-nez v0, :cond_0

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->transportProtocolsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1370
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_ipaddr:Lorg/zoolu/net/IpAddress;

    invoke-virtual {v1}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/zoolu/sip/provider/SipProvider;->host_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lorg/zoolu/sip/provider/SipProvider;->transportProtocolsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
