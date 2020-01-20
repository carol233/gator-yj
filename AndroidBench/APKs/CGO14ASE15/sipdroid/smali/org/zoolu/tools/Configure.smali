.class public Lorg/zoolu/tools/Configure;
.super Ljava/lang/Object;
.source "Configure.java"


# static fields
.field public static NONE:Ljava/lang/String;


# instance fields
.field configurable:Lorg/zoolu/tools/Configurable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "NONE"

    sput-object v0, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zoolu/tools/Configure;->configurable:Lorg/zoolu/tools/Configurable;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/zoolu/tools/Configurable;Ljava/lang/String;)V
    .locals 0
    .param p1, "configurable"    # Lorg/zoolu/tools/Configurable;
    .param p2, "file"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/zoolu/tools/Configure;->configurable:Lorg/zoolu/tools/Configurable;

    .line 57
    invoke-virtual {p0, p2}, Lorg/zoolu/tools/Configure;->loadFile(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected loadFile(Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 70
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 73
    .end local v1    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    .line 75
    .local v3, "line":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 80
    :goto_2
    if-nez v3, :cond_2

    .line 90
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 92
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :goto_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: error reading file \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 84
    iget-object v4, p0, Lorg/zoolu/tools/Configure;->configurable:Lorg/zoolu/tools/Configurable;

    if-nez v4, :cond_3

    .line 85
    invoke-virtual {p0, v3}, Lorg/zoolu/tools/Configure;->parseLine(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    :cond_3
    iget-object v4, p0, Lorg/zoolu/tools/Configure;->configurable:Lorg/zoolu/tools/Configurable;

    invoke-interface {v4, v3}, Lorg/zoolu/tools/Configurable;->parseLine(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 91
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method protected parseLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

.method protected saveFile(Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 111
    :goto_0
    return-void

    .line 105
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 106
    .local v1, "out":Ljava/io/BufferedWriter;
    invoke-virtual {p0}, Lorg/zoolu/tools/Configure;->toLines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v1    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR writing on file \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toLines()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, ""

    return-object v0
.end method
