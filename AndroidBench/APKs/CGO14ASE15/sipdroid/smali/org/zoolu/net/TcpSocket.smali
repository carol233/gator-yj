.class public Lorg/zoolu/net/TcpSocket;
.super Ljava/lang/Object;
.source "TcpSocket.java"


# static fields
.field static lock:Z


# instance fields
.field socket:Ljava/net/Socket;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "sock"    # Ljava/net/Socket;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/IpAddress;ILjava/lang/String;)V
    .locals 9
    .param p1, "ipaddr"    # Lorg/zoolu/net/IpAddress;
    .param p2, "port"    # I
    .param p3, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 64
    .local v1, "f":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    if-nez p3, :cond_0

    .line 65
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    iput-object v4, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    .line 68
    :goto_0
    sget-boolean v4, Lorg/zoolu/net/TcpSocket;->lock:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 67
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v4

    iput-object v4, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    goto :goto_0

    .line 69
    :cond_1
    const/4 v4, 0x1

    sput-boolean v4, Lorg/zoolu/net/TcpSocket;->lock:Z

    .line 71
    :try_start_0
    iget-object v5, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "main"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x3e8

    :goto_1
    invoke-virtual {v5, v6, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    if-eqz p3, :cond_3

    .line 78
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 79
    .local v2, "hv":Ljavax/net/ssl/HostnameVerifier;
    iget-object v4, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 80
    .local v3, "s":Ljavax/net/ssl/SSLSession;
    invoke-interface {v2, p3, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 81
    sput-boolean v8, Lorg/zoolu/net/TcpSocket;->lock:Z

    .line 82
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 71
    .end local v2    # "hv":Ljavax/net/ssl/HostnameVerifier;
    .end local v3    # "s":Ljavax/net/ssl/SSLSession;
    :cond_2
    const/16 v4, 0x2710

    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    sput-boolean v8, Lorg/zoolu/net/TcpSocket;->lock:Z

    .line 75
    throw v0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    sput-boolean v8, Lorg/zoolu/net/TcpSocket;->lock:Z

    .line 86
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 91
    return-void
.end method

.method public getAddress()Lorg/zoolu/net/IpAddress;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lorg/zoolu/net/IpAddress;

    iget-object v1, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Lorg/zoolu/net/IpAddress;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lorg/zoolu/net/IpAddress;

    iget-object v1, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/zoolu/net/IpAddress;-><init>(Ljava/net/InetAddress;)V

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 131
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/zoolu/net/TcpSocket;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
