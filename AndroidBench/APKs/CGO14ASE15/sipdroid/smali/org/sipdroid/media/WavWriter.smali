.class public Lorg/sipdroid/media/WavWriter;
.super Ljava/lang/Object;
.source "WavWriter.java"


# instance fields
.field buf:[B

.field i:I

.field leftSamplesWritten:I

.field raf:Ljava/io/RandomAccessFile;

.field rightSamplesWritten:I

.field sampleDataOffset:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sample_rate"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v4, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    .line 35
    iput v1, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    .line 37
    iput v1, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I

    .line 40
    const/16 v1, 0x2710

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    .line 46
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    .line 47
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 52
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-string v2, "RIFF"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 58
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-string v2, "WAVE"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-string v2, "fmt "

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/sipdroid/media/WavWriter;->B2L(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 61
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/sipdroid/media/WavWriter;->B2L_s(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 62
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/sipdroid/media/WavWriter;->B2L_s(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 63
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p0, p2}, Lorg/sipdroid/media/WavWriter;->B2L(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 64
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p2, 0x2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/sipdroid/media/WavWriter;->B2L(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 65
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lorg/sipdroid/media/WavWriter;->B2L_s(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 66
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lorg/sipdroid/media/WavWriter;->B2L_s(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 68
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 70
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/sipdroid/media/WavWriter;->sampleDataOffset:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    const-string v1, "CallRecorder"

    const-string v2, "Error creating output file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v4, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    goto :goto_0
.end method


# virtual methods
.method B2L(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 185
    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method B2L_s(I)I
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 179
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, p1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method declared-synchronized close()V
    .locals 5

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    iget v2, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    iget v3, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I

    if-le v2, v3, :cond_1

    iget v1, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    .line 162
    .local v1, "samplesWritten":I
    :goto_1
    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 163
    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x24

    invoke-virtual {p0, v3}, Lorg/sipdroid/media/WavWriter;->B2L(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 164
    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v3, 0x28

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 165
    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    mul-int/lit8 v3, v1, 0x4

    invoke-virtual {p0, v3}, Lorg/sipdroid/media/WavWriter;->B2L(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 166
    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 167
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    .end local v1    # "samplesWritten":I
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 172
    const-string v2, "CallRecorder"

    const-string v3, "Error writing final data to output file."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 160
    :cond_1
    :try_start_3
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized writeLeft([SII)V
    .locals 6
    .param p1, "buffer"    # [S
    .param p2, "offs"    # I
    .param p3, "len"    # I

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x1f400000

    if-le v1, v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 95
    :try_start_2
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/sipdroid/media/WavWriter;->sampleDataOffset:J

    iget v4, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 96
    const/4 v1, 0x0

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    :goto_1
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    if-ge v1, p3, :cond_2

    .line 98
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v2, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v4, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x3

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    aput-byte v5, v1, v2

    .line 96
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    const-string v1, "CallRecorder"

    const-string v2, "Error writing to output file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 101
    :cond_2
    :try_start_4
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    const/4 v3, 0x0

    mul-int/lit8 v4, p3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 102
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/sipdroid/media/WavWriter;->sampleDataOffset:J

    iget v4, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    const/4 v1, 0x0

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    :goto_2
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    if-ge v1, p3, :cond_3

    .line 105
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v2, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/2addr v3, p2

    aget-short v3, p1, v3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 106
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v2, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/2addr v3, p2

    aget-short v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 103
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    goto :goto_2

    .line 108
    :cond_3
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->leftSamplesWritten:I

    .line 109
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    const/4 v3, 0x0

    mul-int/lit8 v4, p3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method declared-synchronized writeRight([SII)V
    .locals 6
    .param p1, "buffer"    # [S
    .param p2, "offs"    # I
    .param p3, "len"    # I

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v2, 0x1f400000

    if-le v1, v2, :cond_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 131
    :try_start_2
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/sipdroid/media/WavWriter;->sampleDataOffset:J

    iget v4, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 132
    const/4 v1, 0x0

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    :goto_1
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    if-ge v1, p3, :cond_2

    .line 134
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v2, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v4, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    aput-byte v5, v1, v2

    .line 132
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 147
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 150
    const-string v1, "CallRecorder"

    const-string v2, "Error writing to output file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 137
    :cond_2
    :try_start_4
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    const/4 v3, 0x0

    mul-int/lit8 v4, p3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 138
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lorg/sipdroid/media/WavWriter;->sampleDataOffset:J

    iget v4, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    const/4 v1, 0x0

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    :goto_2
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    if-ge v1, p3, :cond_3

    .line 141
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v2, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/2addr v3, p2

    aget-short v3, p1, v3

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 142
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    iget v2, p0, Lorg/sipdroid/media/WavWriter;->i:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/2addr v3, p2

    aget-short v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 139
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->i:I

    goto :goto_2

    .line 144
    :cond_3
    iget v1, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/sipdroid/media/WavWriter;->rightSamplesWritten:I

    .line 145
    iget-object v1, p0, Lorg/sipdroid/media/WavWriter;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/sipdroid/media/WavWriter;->buf:[B

    const/4 v3, 0x0

    mul-int/lit8 v4, p3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
