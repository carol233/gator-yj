.class public Lorg/zoolu/net/TcpConnection;
.super Ljava/lang/Thread;
.source "TcpConnection.java"


# static fields
.field static final BUFFER_SIZE:I = 0xffff

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x7d0


# instance fields
.field alive_time:J

.field error:Ljava/lang/Exception;

.field is_running:Z

.field istream:Ljava/io/InputStream;

.field listener:Lorg/zoolu/net/TcpConnectionListener;

.field ostream:Ljava/io/OutputStream;

.field socket:Lorg/zoolu/net/TcpSocket;

.field socket_timeout:I

.field stop:Z


# direct methods
.method public constructor <init>(Lorg/zoolu/net/TcpSocket;JLorg/zoolu/net/TcpConnectionListener;)V
    .locals 0
    .param p1, "socket"    # Lorg/zoolu/net/TcpSocket;
    .param p2, "alive_time"    # J
    .param p4, "listener"    # Lorg/zoolu/net/TcpConnectionListener;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/zoolu/net/TcpConnection;->init(Lorg/zoolu/net/TcpSocket;JLorg/zoolu/net/TcpConnectionListener;)V

    .line 86
    invoke-virtual {p0}, Lorg/zoolu/net/TcpConnection;->start()V

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/net/TcpSocket;Lorg/zoolu/net/TcpConnectionListener;)V
    .locals 2
    .param p1, "socket"    # Lorg/zoolu/net/TcpSocket;
    .param p2, "listener"    # Lorg/zoolu/net/TcpConnectionListener;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/zoolu/net/TcpConnection;->init(Lorg/zoolu/net/TcpSocket;JLorg/zoolu/net/TcpConnectionListener;)V

    .line 79
    invoke-virtual {p0}, Lorg/zoolu/net/TcpConnection;->start()V

    .line 80
    return-void
.end method

.method private init(Lorg/zoolu/net/TcpSocket;JLorg/zoolu/net/TcpConnectionListener;)V
    .locals 3
    .param p1, "socket"    # Lorg/zoolu/net/TcpSocket;
    .param p2, "alive_time"    # J
    .param p4, "listener"    # Lorg/zoolu/net/TcpConnectionListener;

    .prologue
    const/4 v2, 0x0

    .line 92
    iput-object p4, p0, Lorg/zoolu/net/TcpConnection;->listener:Lorg/zoolu/net/TcpConnectionListener;

    .line 93
    iput-object p1, p0, Lorg/zoolu/net/TcpConnection;->socket:Lorg/zoolu/net/TcpSocket;

    .line 94
    const/16 v1, 0x7d0

    iput v1, p0, Lorg/zoolu/net/TcpConnection;->socket_timeout:I

    .line 95
    iput-wide p2, p0, Lorg/zoolu/net/TcpConnection;->alive_time:J

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/zoolu/net/TcpConnection;->stop:Z

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/zoolu/net/TcpConnection;->is_running:Z

    .line 99
    iput-object v2, p0, Lorg/zoolu/net/TcpConnection;->istream:Ljava/io/InputStream;

    .line 100
    iput-object v2, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;

    .line 101
    iput-object v2, p0, Lorg/zoolu/net/TcpConnection;->error:Ljava/lang/Exception;

    .line 103
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Lorg/zoolu/net/TcpSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/zoolu/net/TcpConnection;->istream:Ljava/io/InputStream;

    .line 104
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Lorg/zoolu/net/TcpSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/zoolu/net/TcpConnection;->error:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method public getRemoteAddress()Lorg/zoolu/net/IpAddress;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/zoolu/net/TcpConnection;->socket:Lorg/zoolu/net/TcpSocket;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpSocket;->getAddress()Lorg/zoolu/net/IpAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/zoolu/net/TcpConnection;->socket:Lorg/zoolu/net/TcpSocket;

    invoke-virtual {v0}, Lorg/zoolu/net/TcpSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocket()Lorg/zoolu/net/TcpSocket;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/zoolu/net/TcpConnection;->socket:Lorg/zoolu/net/TcpSocket;

    return-object v0
.end method

.method public halt()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/net/TcpConnection;->stop:Z

    .line 133
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lorg/zoolu/net/TcpConnection;->is_running:Z

    return v0
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    .line 150
    const v6, 0xffff

    new-array v0, v6, [B

    .line 151
    .local v0, "buff":[B
    const-wide/16 v2, 0x0

    .line 152
    .local v2, "expire":J
    iget-wide v6, p0, Lorg/zoolu/net/TcpConnection;->alive_time:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_0

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/zoolu/net/TcpConnection;->alive_time:J

    add-long v2, v6, v8

    .line 155
    :cond_0
    :try_start_0
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->error:Ljava/lang/Exception;

    if-eqz v6, :cond_5

    .line 156
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->error:Ljava/lang/Exception;

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/zoolu/net/TcpConnection;->error:Ljava/lang/Exception;

    .line 182
    iput-boolean v12, p0, Lorg/zoolu/net/TcpConnection;->stop:Z

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/zoolu/net/TcpConnection;->is_running:Z

    .line 185
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->istream:Ljava/io/InputStream;

    if-eqz v6, :cond_2

    .line 187
    :try_start_1
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->istream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 190
    :cond_2
    :goto_0
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;

    if-eqz v6, :cond_3

    .line 192
    :try_start_2
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->listener:Lorg/zoolu/net/TcpConnectionListener;

    if-eqz v6, :cond_4

    .line 196
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->listener:Lorg/zoolu/net/TcpConnectionListener;

    iget-object v7, p0, Lorg/zoolu/net/TcpConnection;->error:Ljava/lang/Exception;

    invoke-interface {v6, p0, v7}, Lorg/zoolu/net/TcpConnectionListener;->onConnectionTerminated(Lorg/zoolu/net/TcpConnection;Ljava/lang/Exception;)V

    .line 197
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/zoolu/net/TcpConnection;->listener:Lorg/zoolu/net/TcpConnectionListener;

    .line 198
    return-void

    .line 164
    .local v5, "len":I
    :catch_1
    move-exception v4

    .line 165
    .local v4, "ie":Ljava/io/InterruptedIOException;
    :try_start_3
    iget-wide v6, p0, Lorg/zoolu/net/TcpConnection;->alive_time:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_5

    .line 167
    invoke-virtual {p0}, Lorg/zoolu/net/TcpConnection;->halt()V

    .line 159
    .end local v4    # "ie":Ljava/io/InterruptedIOException;
    .end local v5    # "len":I
    :cond_5
    :goto_2
    iget-boolean v6, p0, Lorg/zoolu/net/TcpConnection;->stop:Z

    if-nez v6, :cond_1

    .line 160
    const/4 v5, 0x0

    .line 161
    .restart local v5    # "len":I
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->istream:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v6, :cond_6

    .line 163
    :try_start_4
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->istream:Ljava/io/InputStream;

    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    .line 171
    :cond_6
    if-gez v5, :cond_7

    .line 172
    const/4 v6, 0x1

    :try_start_5
    iput-boolean v6, p0, Lorg/zoolu/net/TcpConnection;->stop:Z

    goto :goto_2

    .line 173
    :cond_7
    if-lez v5, :cond_5

    .line 174
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->listener:Lorg/zoolu/net/TcpConnectionListener;

    if-eqz v6, :cond_8

    .line 175
    iget-object v6, p0, Lorg/zoolu/net/TcpConnection;->listener:Lorg/zoolu/net/TcpConnectionListener;

    invoke-interface {v6, p0, v0, v5}, Lorg/zoolu/net/TcpConnectionListener;->onReceivedData(Lorg/zoolu/net/TcpConnection;[BI)V

    .line 176
    :cond_8
    iget-wide v6, p0, Lorg/zoolu/net/TcpConnection;->alive_time:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_5

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/zoolu/net/TcpConnection;->alive_time:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    add-long v2, v6, v8

    goto :goto_2

    .line 193
    .end local v5    # "len":I
    :catch_2
    move-exception v6

    goto :goto_1

    .line 188
    :catch_3
    move-exception v6

    goto :goto_0
.end method

.method public send([B)V
    .locals 2
    .param p1, "buff"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/zoolu/net/TcpConnection;->send([BII)V

    .line 146
    return-void
.end method

.method public send([BII)V
    .locals 1
    .param p1, "buff"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-boolean v0, p0, Lorg/zoolu/net/TcpConnection;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 139
    iget-object v0, p0, Lorg/zoolu/net/TcpConnection;->ostream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 141
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "tcp:"

    return-object v0
.end method
