.class public Lorg/zoolu/net/TcpServer;
.super Ljava/lang/Thread;
.source "TcpServer.java"


# static fields
.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x1388

.field static socket_backlog:I


# instance fields
.field alive_time:J

.field is_running:Z

.field listener:Lorg/zoolu/net/TcpServerListener;

.field server_socket:Ljava/net/ServerSocket;

.field socket_timeout:I

.field stop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x32

    sput v0, Lorg/zoolu/net/TcpServer;->socket_backlog:I

    return-void
.end method

.method public constructor <init>(ILorg/zoolu/net/IpAddress;JLorg/zoolu/net/TcpServerListener;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "bind_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "alive_time"    # J
    .param p5, "listener"    # Lorg/zoolu/net/TcpServerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    invoke-direct/range {p0 .. p5}, Lorg/zoolu/net/TcpServer;->init(ILorg/zoolu/net/IpAddress;JLorg/zoolu/net/TcpServerListener;)V

    .line 88
    invoke-virtual {p0}, Lorg/zoolu/net/TcpServer;->start()V

    .line 89
    return-void
.end method

.method public constructor <init>(ILorg/zoolu/net/IpAddress;Lorg/zoolu/net/TcpServerListener;)V
    .locals 6
    .param p1, "port"    # I
    .param p2, "bind_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "listener"    # Lorg/zoolu/net/TcpServerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 80
    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/zoolu/net/TcpServer;->init(ILorg/zoolu/net/IpAddress;JLorg/zoolu/net/TcpServerListener;)V

    .line 81
    invoke-virtual {p0}, Lorg/zoolu/net/TcpServer;->start()V

    .line 82
    return-void
.end method

.method public constructor <init>(ILorg/zoolu/net/TcpServerListener;)V
    .locals 6
    .param p1, "port"    # I
    .param p2, "listener"    # Lorg/zoolu/net/TcpServerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/zoolu/net/TcpServer;->init(ILorg/zoolu/net/IpAddress;JLorg/zoolu/net/TcpServerListener;)V

    .line 74
    invoke-virtual {p0}, Lorg/zoolu/net/TcpServer;->start()V

    .line 75
    return-void
.end method

.method private init(ILorg/zoolu/net/IpAddress;JLorg/zoolu/net/TcpServerListener;)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "bind_ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p3, "alive_time"    # J
    .param p5, "listener"    # Lorg/zoolu/net/TcpServerListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iput-object p5, p0, Lorg/zoolu/net/TcpServer;->listener:Lorg/zoolu/net/TcpServerListener;

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    .line 100
    :goto_0
    const/16 v0, 0x1388

    iput v0, p0, Lorg/zoolu/net/TcpServer;->socket_timeout:I

    .line 101
    iput-wide p3, p0, Lorg/zoolu/net/TcpServer;->alive_time:J

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/net/TcpServer;->stop:Z

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/net/TcpServer;->is_running:Z

    .line 104
    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    sget v1, Lorg/zoolu/net/TcpServer;->socket_backlog:I

    invoke-virtual {p2}, Lorg/zoolu/net/IpAddress;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v0, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    goto :goto_0
.end method


# virtual methods
.method public getPort()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public halt()V
    .locals 2

    .prologue
    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/zoolu/net/TcpServer;->stop:Z

    .line 119
    :try_start_0
    iget-object v1, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/zoolu/net/TcpServer;->is_running:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 127
    const/4 v1, 0x0

    .line 130
    .local v1, "error":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    .line 131
    .local v2, "expire":J
    :try_start_0
    iget-wide v6, p0, Lorg/zoolu/net/TcpServer;->alive_time:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/zoolu/net/TcpServer;->alive_time:J

    add-long v2, v6, v8

    .line 134
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lorg/zoolu/net/TcpServer;->stop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_2

    .line 135
    const/4 v5, 0x0

    .line 137
    .local v5, "socket":Lorg/zoolu/net/TcpSocket;
    :try_start_1
    new-instance v5, Lorg/zoolu/net/TcpSocket;

    .end local v5    # "socket":Lorg/zoolu/net/TcpSocket;
    iget-object v6, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/zoolu/net/TcpSocket;-><init>(Ljava/net/Socket;)V
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .restart local v5    # "socket":Lorg/zoolu/net/TcpSocket;
    :try_start_2
    iget-object v6, p0, Lorg/zoolu/net/TcpServer;->listener:Lorg/zoolu/net/TcpServerListener;

    if-eqz v6, :cond_1

    .line 144
    iget-object v6, p0, Lorg/zoolu/net/TcpServer;->listener:Lorg/zoolu/net/TcpServerListener;

    invoke-interface {v6, p0, v5}, Lorg/zoolu/net/TcpServerListener;->onIncomingConnection(Lorg/zoolu/net/TcpServer;Lorg/zoolu/net/TcpSocket;)V

    .line 145
    :cond_1
    iget-wide v6, p0, Lorg/zoolu/net/TcpServer;->alive_time:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/zoolu/net/TcpServer;->alive_time:J

    add-long v2, v6, v8

    goto :goto_0

    .line 138
    .end local v5    # "socket":Lorg/zoolu/net/TcpSocket;
    :catch_0
    move-exception v4

    .line 139
    .local v4, "ie":Ljava/io/InterruptedIOException;
    iget-wide v6, p0, Lorg/zoolu/net/TcpServer;->alive_time:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_0

    .line 140
    invoke-virtual {p0}, Lorg/zoolu/net/TcpServer;->halt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 148
    .end local v4    # "ie":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 150
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/zoolu/net/TcpServer;->stop:Z

    .line 152
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/zoolu/net/TcpServer;->is_running:Z

    .line 154
    :try_start_3
    iget-object v6, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    invoke-virtual {v6}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 157
    :goto_1
    iput-object v12, p0, Lorg/zoolu/net/TcpServer;->server_socket:Ljava/net/ServerSocket;

    .line 159
    iget-object v6, p0, Lorg/zoolu/net/TcpServer;->listener:Lorg/zoolu/net/TcpServerListener;

    if-eqz v6, :cond_3

    .line 160
    iget-object v6, p0, Lorg/zoolu/net/TcpServer;->listener:Lorg/zoolu/net/TcpServerListener;

    invoke-interface {v6, p0, v1}, Lorg/zoolu/net/TcpServerListener;->onServerTerminated(Lorg/zoolu/net/TcpServer;Ljava/lang/Exception;)V

    .line 161
    :cond_3
    iput-object v12, p0, Lorg/zoolu/net/TcpServer;->listener:Lorg/zoolu/net/TcpServerListener;

    .line 162
    return-void

    .line 155
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "tcp:"

    return-object v0
.end method
