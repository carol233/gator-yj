.class public Lorg/zoolu/tools/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final MAX_SIZE:J = 0x100000L


# instance fields
.field counter:J

.field do_log:Z

.field log_tag:Ljava/lang/String;

.field max_size:J

.field out_stream:Ljava/io/PrintStream;

.field tag_size:I

.field verbose_level:I


# direct methods
.method public constructor <init>(Ljava/io/PrintStream;Ljava/lang/String;I)V
    .locals 6
    .param p1, "out_stream"    # Ljava/io/PrintStream;
    .param p2, "log_tag"    # Ljava/lang/String;
    .param p3, "verbose_level"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/tools/Log;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "log_tag"    # Ljava/lang/String;
    .param p3, "verbose_level"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "os":Ljava/io/PrintStream;
    if-lez p3, :cond_0

    .line 100
    :try_start_0
    new-instance v7, Ljava/io/PrintStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "os":Ljava/io/PrintStream;
    .local v7, "os":Ljava/io/PrintStream;
    move-object v1, v7

    .line 104
    .end local v7    # "os":Ljava/io/PrintStream;
    .restart local v1    # "os":Ljava/io/PrintStream;
    :goto_0
    const-wide/32 v4, 0x100000

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/tools/Log;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 106
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v6

    .line 102
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 10
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "log_tag"    # Ljava/lang/String;
    .param p3, "verbose_level"    # I
    .param p4, "max_size"    # J

    .prologue
    const/4 v5, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "os":Ljava/io/PrintStream;
    if-lez p3, :cond_0

    .line 118
    :try_start_0
    new-instance v9, Ljava/io/PrintStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "os":Ljava/io/PrintStream;
    .local v9, "os":Ljava/io/PrintStream;
    move-object v1, v9

    .end local v9    # "os":Ljava/io/PrintStream;
    .restart local v1    # "os":Ljava/io/PrintStream;
    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 122
    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/tools/Log;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 127
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v8

    .line 120
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v8    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lorg/zoolu/tools/Log;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 125
    iput-boolean v5, p0, Lorg/zoolu/tools/Log;->do_log:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJZ)V
    .locals 11
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "log_tag"    # Ljava/lang/String;
    .param p3, "verbose_level"    # I
    .param p4, "max_size"    # J
    .param p6, "append"    # Z

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v2, 0x0

    .line 137
    .local v2, "os":Ljava/io/PrintStream;
    if-lez p3, :cond_0

    .line 139
    :try_start_0
    new-instance v10, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    move/from16 v0, p6

    invoke-direct {v1, p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v10, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "os":Ljava/io/PrintStream;
    .local v10, "os":Ljava/io/PrintStream;
    move-object v2, v10

    .end local v10    # "os":Ljava/io/PrintStream;
    .restart local v2    # "os":Ljava/io/PrintStream;
    :goto_0
    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 143
    invoke-virtual/range {v1 .. v6}, Lorg/zoolu/tools/Log;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 148
    :goto_1
    return-void

    .line 140
    :catch_0
    move-exception v9

    .line 141
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v9    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lorg/zoolu/tools/Log;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/zoolu/tools/Log;->do_log:Z

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/tools/Log;->do_log:Z

    .line 180
    iget-object v0, p0, Lorg/zoolu/tools/Log;->out_stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 181
    return-void
.end method

.method protected flush()Lorg/zoolu/tools/Log;
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lorg/zoolu/tools/Log;->verbose_level:I

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lorg/zoolu/tools/Log;->out_stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 172
    :cond_0
    return-object p0
.end method

.method protected init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V
    .locals 2
    .param p1, "out_stream"    # Ljava/io/PrintStream;
    .param p2, "log_tag"    # Ljava/lang/String;
    .param p3, "verbose_level"    # I
    .param p4, "max_size"    # J

    .prologue
    .line 155
    iput-object p1, p0, Lorg/zoolu/tools/Log;->out_stream:Ljava/io/PrintStream;

    .line 156
    iput-object p2, p0, Lorg/zoolu/tools/Log;->log_tag:Ljava/lang/String;

    .line 157
    iput p3, p0, Lorg/zoolu/tools/Log;->verbose_level:I

    .line 158
    iput-wide p4, p0, Lorg/zoolu/tools/Log;->max_size:J

    .line 160
    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/zoolu/tools/Log;->tag_size:I

    .line 164
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zoolu/tools/Log;->do_log:Z

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/zoolu/tools/Log;->counter:J

    .line 166
    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/zoolu/tools/Log;->tag_size:I

    goto :goto_0
.end method

.method public print(Ljava/lang/String;)Lorg/zoolu/tools/Log;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/tools/Log;->print(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/String;I)Lorg/zoolu/tools/Log;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 232
    iget-boolean v0, p0, Lorg/zoolu/tools/Log;->do_log:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/zoolu/tools/Log;->verbose_level:I

    if-gt p2, v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/zoolu/tools/Log;->log_tag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lorg/zoolu/tools/Log;->out_stream:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/tools/Log;->log_tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    :goto_0
    iget-wide v0, p0, Lorg/zoolu/tools/Log;->max_size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 239
    iget-wide v0, p0, Lorg/zoolu/tools/Log;->counter:J

    iget v2, p0, Lorg/zoolu/tools/Log;->tag_size:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/zoolu/tools/Log;->counter:J

    .line 240
    iget-wide v0, p0, Lorg/zoolu/tools/Log;->counter:J

    iget-wide v2, p0, Lorg/zoolu/tools/Log;->max_size:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/zoolu/tools/Log;->out_stream:Ljava/io/PrintStream;

    const-string v1, "\r\n----MAXIMUM LOG SIZE----\r\nSuccessive logs are lost."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zoolu/tools/Log;->do_log:Z

    .line 247
    :cond_0
    return-object p0

    .line 236
    :cond_1
    iget-object v0, p0, Lorg/zoolu/tools/Log;->out_stream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public printException(Ljava/lang/Exception;)Lorg/zoolu/tools/Log;
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/tools/Log;->printException(Ljava/lang/Exception;I)Lorg/zoolu/tools/Log;

    move-result-object v0

    return-object v0
.end method

.method public printException(Ljava/lang/Exception;I)Lorg/zoolu/tools/Log;
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "level"    # I

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/zoolu/tools/ExceptionPrinter;->getStackTraceOf(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    move-result-object v0

    return-object v0
.end method

.method public printPacketTimestamp(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lorg/zoolu/tools/Log;
    .locals 3
    .param p1, "proto"    # Ljava/lang/String;
    .param p2, "remote_addr"    # Ljava/lang/String;
    .param p3, "remote_port"    # I
    .param p4, "len"    # I
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "level"    # I

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "str":Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lorg/zoolu/tools/DateFormat;->formatHHMMSS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p6}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    .line 206
    return-object p0
.end method

.method public println(Ljava/lang/String;)Lorg/zoolu/tools/Log;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/zoolu/tools/Log;->println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    move-result-object v0

    return-object v0
.end method

.method public println(Ljava/lang/String;I)Lorg/zoolu/tools/Log;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/zoolu/tools/Log;->print(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zoolu/tools/Log;->flush()Lorg/zoolu/tools/Log;

    move-result-object v0

    return-object v0
.end method
