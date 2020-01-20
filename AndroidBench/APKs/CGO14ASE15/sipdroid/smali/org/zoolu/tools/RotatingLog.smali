.class public Lorg/zoolu/tools/RotatingLog;
.super Lorg/zoolu/tools/Log;
.source "RotatingLog.java"


# static fields
.field public static final DAY:I = 0x5

.field public static final HOUR:I = 0xa

.field public static final MINUTE:I = 0xc

.field public static final MONTH:I = 0x2


# instance fields
.field file_name:Ljava/lang/String;

.field next_rotation:J

.field num_rotations:I

.field time_scale:I

.field time_value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJIII)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "logname"    # Ljava/lang/String;
    .param p3, "loglevel"    # I
    .param p4, "logsize"    # J
    .param p6, "n_rotations"    # I
    .param p7, "t_scale"    # I
    .param p8, "t_value"    # I

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lorg/zoolu/tools/Log;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 73
    invoke-direct {p0, p1, p6, p7, p8}, Lorg/zoolu/tools/RotatingLog;->rInit(Ljava/lang/String;III)V

    .line 74
    return-void
.end method

.method private rInit(Ljava/lang/String;III)V
    .locals 0
    .param p1, "f_name"    # Ljava/lang/String;
    .param p2, "n_rotations"    # I
    .param p3, "t_scale"    # I
    .param p4, "t_value"    # I

    .prologue
    .line 117
    iput-object p1, p0, Lorg/zoolu/tools/RotatingLog;->file_name:Ljava/lang/String;

    .line 118
    iput p2, p0, Lorg/zoolu/tools/RotatingLog;->num_rotations:I

    .line 119
    iput p3, p0, Lorg/zoolu/tools/RotatingLog;->time_scale:I

    .line 120
    iput p4, p0, Lorg/zoolu/tools/RotatingLog;->time_value:I

    .line 121
    invoke-direct {p0}, Lorg/zoolu/tools/RotatingLog;->updateNextRotationTime()V

    .line 122
    return-void
.end method

.method private static rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "src_file"    # Ljava/lang/String;
    .param p1, "dst_file"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "src":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "dst":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 133
    .end local v0    # "dst":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private updateNextRotationTime()V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 139
    .local v0, "cal":Ljava/util/Calendar;
    iget v1, p0, Lorg/zoolu/tools/RotatingLog;->time_scale:I

    iget v2, p0, Lorg/zoolu/tools/RotatingLog;->time_value:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 140
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/zoolu/tools/RotatingLog;->next_rotation:J

    .line 141
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/String;I)Lorg/zoolu/tools/Log;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 106
    .local v0, "now":J
    iget-wide v2, p0, Lorg/zoolu/tools/RotatingLog;->next_rotation:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/zoolu/tools/RotatingLog;->rotate()Lorg/zoolu/tools/RotatingLog;

    .line 108
    invoke-direct {p0}, Lorg/zoolu/tools/RotatingLog;->updateNextRotationTime()V

    .line 110
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/zoolu/tools/Log;->print(Ljava/lang/String;I)Lorg/zoolu/tools/Log;

    move-result-object v2

    return-object v2
.end method

.method public rotate()Lorg/zoolu/tools/RotatingLog;
    .locals 8

    .prologue
    const/4 v3, 0x1

    .line 78
    iget v0, p0, Lorg/zoolu/tools/RotatingLog;->num_rotations:I

    if-lez v0, :cond_3

    .line 79
    iget v0, p0, Lorg/zoolu/tools/RotatingLog;->num_rotations:I

    add-int/lit8 v7, v0, -0x2

    .local v7, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/zoolu/tools/RotatingLog;->file_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/tools/RotatingLog;->file_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v7, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/zoolu/tools/RotatingLog;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/zoolu/tools/RotatingLog;->out_stream:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lorg/zoolu/tools/RotatingLog;->out_stream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 86
    :cond_1
    iget v0, p0, Lorg/zoolu/tools/RotatingLog;->num_rotations:I

    if-le v0, v3, :cond_2

    .line 87
    iget-object v0, p0, Lorg/zoolu/tools/RotatingLog;->file_name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/zoolu/tools/RotatingLog;->file_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/zoolu/tools/RotatingLog;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/zoolu/tools/RotatingLog;->file_name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/zoolu/tools/RotatingLog;->out_stream:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    iget-object v1, p0, Lorg/zoolu/tools/RotatingLog;->out_stream:Ljava/io/PrintStream;

    iget-object v2, p0, Lorg/zoolu/tools/RotatingLog;->log_tag:Ljava/lang/String;

    iget v3, p0, Lorg/zoolu/tools/RotatingLog;->verbose_level:I

    iget-wide v4, p0, Lorg/zoolu/tools/RotatingLog;->max_size:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/zoolu/tools/RotatingLog;->init(Ljava/io/PrintStream;Ljava/lang/String;IJ)V

    .line 96
    .end local v7    # "i":I
    :cond_3
    return-object p0

    .line 91
    .restart local v7    # "i":I
    :catch_0
    move-exception v6

    .line 92
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
