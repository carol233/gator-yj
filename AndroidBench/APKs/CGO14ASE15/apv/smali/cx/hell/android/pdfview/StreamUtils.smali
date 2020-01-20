.class public Lcx/hell/android/pdfview/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBytesFully(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "i"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcx/hell/android/pdfview/StreamUtils;->readBytesFully(Ljava/io/InputStream;ILandroid/widget/ProgressBar;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readBytesFully(Ljava/io/InputStream;ILandroid/widget/ProgressBar;)[B
    .locals 9
    .param p0, "i"    # Ljava/io/InputStream;
    .param p1, "max"    # I
    .param p2, "progressBar"    # Landroid/widget/ProgressBar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 16
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 17
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 19
    .local v4, "totalReadBytes":I
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 20
    .local v2, "readBytes":I
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-virtual {p0, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 21
    if-gez v2, :cond_1

    .line 38
    new-array v3, v4, [B

    .line 39
    .local v3, "result":[B
    invoke-static {v0, v8, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    return-object v3

    .line 25
    .end local v3    # "result":[B
    :cond_1
    add-int/2addr v4, v2

    .line 26
    if-eqz p2, :cond_2

    invoke-virtual {p2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 27
    :cond_2
    if-lez p1, :cond_3

    if-le v4, p1, :cond_3

    .line 28
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Remote file is too big"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 30
    :cond_3
    array-length v5, v0

    if-ne v4, v5, :cond_0

    .line 32
    const-string v5, "cx.hell.android.pdfview"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "readBytesFully: growing buffer from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    array-length v5, v0

    mul-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 34
    .local v1, "newbuf":[B
    invoke-static {v0, v8, v1, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    move-object v0, v1

    .line 18
    goto :goto_0
.end method

.method public static readStringFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcx/hell/android/pdfview/StreamUtils;->readBytesFully(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 45
    .local v0, "b":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method
