.class public Lorg/sipdroid/media/CallRecorder;
.super Ljava/lang/Object;
.source "CallRecorder.java"


# instance fields
.field callWav:Lorg/sipdroid/media/WavWriter;

.field incomingStopped:Z

.field outgoingStopped:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sample_rate"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lorg/sipdroid/media/CallRecorder;->outgoingStopped:Z

    .line 32
    iput-boolean v2, p0, Lorg/sipdroid/media/CallRecorder;->incomingStopped:Z

    .line 34
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    .line 41
    if-nez p1, :cond_0

    .line 43
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 44
    .local v1, "t":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 45
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object p1

    .line 49
    .end local v1    # "t":Landroid/text/format/Time;
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/Sipdroid_Recordings/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 53
    new-instance v2, Lorg/sipdroid/media/WavWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Sipdroid_Recordings/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lorg/sipdroid/media/WavWriter;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    .line 54
    return-void
.end method

.method private checkClose()V
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/sipdroid/media/CallRecorder;->outgoingStopped:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/sipdroid/media/CallRecorder;->incomingStopped:Z

    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    invoke-virtual {v0}, Lorg/sipdroid/media/WavWriter;->close()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    goto :goto_0
.end method


# virtual methods
.method public stopIncoming()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/media/CallRecorder;->incomingStopped:Z

    .line 74
    invoke-direct {p0}, Lorg/sipdroid/media/CallRecorder;->checkClose()V

    .line 75
    return-void
.end method

.method public stopOutgoing()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/media/CallRecorder;->outgoingStopped:Z

    .line 80
    invoke-direct {p0}, Lorg/sipdroid/media/CallRecorder;->checkClose()V

    .line 81
    return-void
.end method

.method public writeIncoming([SII)V
    .locals 1
    .param p1, "buffer"    # [S
    .param p2, "offs"    # I
    .param p3, "len"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/sipdroid/media/WavWriter;->writeLeft([SII)V

    goto :goto_0
.end method

.method public writeOutgoing([SII)V
    .locals 1
    .param p1, "buffer"    # [S
    .param p2, "offs"    # I
    .param p3, "len"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lorg/sipdroid/media/CallRecorder;->callWav:Lorg/sipdroid/media/WavWriter;

    invoke-virtual {v0, p1, p2, p3}, Lorg/sipdroid/media/WavWriter;->writeRight([SII)V

    goto :goto_0
.end method
