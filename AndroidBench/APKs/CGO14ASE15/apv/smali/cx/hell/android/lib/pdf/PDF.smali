.class public Lcx/hell/android/lib/pdf/PDF;
.super Ljava/lang/Object;
.source "PDF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcx/hell/android/lib/pdf/PDF$Size;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"

.field private static applicationContext:Landroid/content/Context;

.field private static fontNameToFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private invalid_password:I

.field private pdf_ptr:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 35
    sput-object v6, Lcx/hell/android/lib/pdf/PDF;->fontNameToFile:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    .local v0, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "Courier"

    const-string v5, "NimbusMonL-Regu.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v4, "Courier-Bold"

    const-string v5, "NimbusMonL-Bold.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v4, "Courier-Oblique"

    const-string v5, "NimbusMonL-ReguObli.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v4, "Courier-BoldOblique"

    const-string v5, "NimbusMonL-BoldObli.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v4, "Helvetica"

    const-string v5, "NimbusSanL-Regu.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v4, "Helvetica-Bold"

    const-string v5, "NimbusSanL-Bold.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v4, "Helvetica-Oblique"

    const-string v5, "NimbusSanL-ReguItal.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v4, "Helvetica-BoldOblique"

    const-string v5, "NimbusSanL-BoldItal.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v4, "Times-Roman"

    const-string v5, "NimbusRomNo9L-Regu.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v4, "Times-Bold"

    const-string v5, "NimbusRomNo9L-Medi.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v4, "Times-Italic"

    const-string v5, "NimbusRomNo9L-ReguItal.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v4, "Times-BoldItalic"

    const-string v5, "NimbusRomNo9L-MediItal.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v4, "Symbol"

    const-string v5, "StandardSymL.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v4, "ZapfDingbats"

    const-string v5, "Dingbats.cff"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v4, "DroidSans"

    const-string v5, "droid/DroidSans.ttf"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v4, "DroidSansMono"

    const-string v5, "droid/DroidSansMono.ttf"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sput-object v0, Lcx/hell/android/lib/pdf/PDF;->fontNameToFile:Ljava/util/Map;

    .line 67
    sput-object v6, Lcx/hell/android/lib/pdf/PDF;->applicationContext:Landroid/content/Context;

    .line 70
    const-string v4, "apv"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v1

    .line 75
    .local v1, "maxMemory":J
    const/4 v3, 0x0

    .line 76
    .local v3, "pdfMaxStore":I
    const-wide/32 v4, 0x40000000

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 77
    const-wide/16 v4, 0x2

    div-long v4, v1, v4

    long-to-int v3, v4

    .line 79
    :cond_0
    invoke-static {v3}, Lcx/hell/android/lib/pdf/PDF;->init(I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;I)V
    .locals 2
    .param p1, "file"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "box"    # I

    .prologue
    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcx/hell/android/lib/pdf/PDF;->pdf_ptr:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcx/hell/android/lib/pdf/PDF;->invalid_password:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcx/hell/android/lib/pdf/PDF;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 384
    iput-object p1, p0, Lcx/hell/android/lib/pdf/PDF;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 385
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, p2, v1}, Lcx/hell/android/lib/pdf/PDF;->parseFileDescriptor(Ljava/io/FileDescriptor;ILjava/lang/String;)I

    .line 386
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "box"    # I

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcx/hell/android/lib/pdf/PDF;->pdf_ptr:I

    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcx/hell/android/lib/pdf/PDF;->invalid_password:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcx/hell/android/lib/pdf/PDF;->fileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 376
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, p2, v1}, Lcx/hell/android/lib/pdf/PDF;->parseFile(Ljava/lang/String;ILjava/lang/String;)I

    .line 377
    return-void
.end method

.method public static getAssetBytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 158
    sget-object v6, Lcx/hell/android/lib/pdf/PDF;->applicationContext:Landroid/content/Context;

    if-nez v6, :cond_0

    .line 159
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "PDF needs application context to load font and cmap files"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 161
    :cond_0
    sget-object v6, Lcx/hell/android/lib/pdf/PDF;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 163
    .local v0, "assets":Landroid/content/res/AssetManager;
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v0, p0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    .line 164
    .local v3, "i":Ljava/io/InputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    const/16 v7, 0x400

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 165
    .local v1, "bytes":Ljava/io/ByteArrayOutputStream;
    const/high16 v6, 0x40000

    new-array v5, v6, [B

    .line 166
    .local v5, "tmp":[B
    const/4 v4, 0x0

    .line 168
    .local v4, "read":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 169
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 175
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 178
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "i":Ljava/io/InputStream;
    .end local v4    # "read":I
    .end local v5    # "tmp":[B
    :goto_1
    return-object v6

    .line 172
    .restart local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "i":Ljava/io/InputStream;
    .restart local v4    # "read":I
    .restart local v5    # "tmp":[B
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v1    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "i":Ljava/io/InputStream;
    .end local v4    # "read":I
    .end local v5    # "tmp":[B
    :catch_0
    move-exception v2

    .line 177
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "cx.hell.android.pdfview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "failed to read asset \""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getCmapData(Ljava/lang/String;)[B
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cmap/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "cmapPath":Ljava/lang/String;
    invoke-static {v0}, Lcx/hell/android/lib/pdf/PDF;->getAssetBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 153
    .local v1, "d":[B
    const-string v2, "cx.hell.android.pdfview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loaded cmap "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v1
.end method

.method public static getDroidSansFallbackData()[B
    .locals 9

    .prologue
    .line 108
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v6, "/system/fonts/DroidSansFallback.ttf"

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, "i":Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    const/16 v7, 0x400

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 110
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    const/high16 v6, 0x40000

    new-array v5, v6, [B

    .line 111
    .local v5, "tmp":[B
    const/4 v4, 0x0

    .line 113
    .local v4, "read":I
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 114
    const/4 v6, -0x1

    if-ne v4, v6, :cond_0

    .line 120
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 121
    .local v1, "d":[B
    const-string v6, "cx.hell.android.pdfview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "loaded "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bytes for DroidSansFallback.ttf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "d":[B
    .end local v4    # "read":I
    .end local v5    # "tmp":[B
    :goto_1
    return-object v1

    .line 117
    .restart local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "read":I
    .restart local v5    # "tmp":[B
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local v0    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "read":I
    .end local v5    # "tmp":[B
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "cx.hell.android.pdfview"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "got exception while trying to load DroidSansFallback.ttf: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getFontData(Ljava/lang/String;)[B
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name can\'t be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_1
    const-string v1, "DroidSansFallback"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcx/hell/android/lib/pdf/PDF;->getDroidSansFallbackData()[B

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    .local v0, "assetFontName":Ljava/lang/String;
    sget-object v1, Lcx/hell/android/lib/pdf/PDF;->fontNameToFile:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    sget-object v1, Lcx/hell/android/lib/pdf/PDF;->fontNameToFile:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "assetFontName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 99
    .restart local v0    # "assetFontName":Ljava/lang/String;
    :goto_1
    const-string v1, "cx.hell.android.pdfview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to load font data "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "font/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcx/hell/android/lib/pdf/PDF;->getAssetBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 96
    :cond_3
    const-string v1, "cx.hell.android.pdfview"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "font name \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found in file name mapping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    move-object v0, p0

    goto :goto_1
.end method

.method public static native init(I)V
.end method

.method private synchronized native declared-synchronized parseFile(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method private synchronized native declared-synchronized parseFileDescriptor(Ljava/io/FileDescriptor;ILjava/lang/String;)I
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sput-object p0, Lcx/hell/android/lib/pdf/PDF;->applicationContext:Landroid/content/Context;

    .line 86
    return-void
.end method


# virtual methods
.method public synchronized native declared-synchronized clearFindResult()V
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 497
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    invoke-virtual {p0}, Lcx/hell/android/lib/pdf/PDF;->freeMemory()V

    .line 501
    return-void

    .line 498
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synchronized native declared-synchronized find(Ljava/lang/String;II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcx/hell/android/lib/pagesview/FindResult;",
            ">;"
        }
    .end annotation
.end method

.method public synchronized native declared-synchronized freeMemory()V
.end method

.method public native getHeapSize()I
.end method

.method public synchronized native declared-synchronized getPageCount()I
.end method

.method public synchronized native declared-synchronized getPageSize(ILcx/hell/android/lib/pdf/PDF$Size;)I
.end method

.method public isInvalidPassword()Z
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcx/hell/android/lib/pdf/PDF;->invalid_password:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcx/hell/android/lib/pdf/PDF;->pdf_ptr:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synchronized native declared-synchronized renderPage(IIIIIZLcx/hell/android/lib/pdf/PDF$Size;)[I
.end method
