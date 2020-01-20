.class public Lcx/hell/android/pdfview/FileListEntry;
.super Ljava/lang/Object;
.source "FileListEntry.java"


# static fields
.field static final HOME:I = 0x1

.field static final NORMAL:I = 0x0

.field static final RECENT:I = 0x2


# instance fields
.field private file:Ljava/io/File;

.field private isDirectory:Z

.field private label:Ljava/lang/String;

.field private recentNumber:I

.field private type:I


# direct methods
.method public constructor <init>(IILjava/io/File;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "recentNumber"    # I
    .param p3, "file"    # Ljava/io/File;
    .param p4, "showPDFExtension"    # Ljava/lang/Boolean;

    .prologue
    .line 26
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p3, v0}, Lcx/hell/android/pdfview/FileListEntry;->getLabel(Ljava/io/File;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcx/hell/android/pdfview/FileListEntry;-><init>(IILjava/io/File;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(IILjava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "recentNumber"    # I
    .param p3, "file"    # Ljava/io/File;
    .param p4, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcx/hell/android/pdfview/FileListEntry;->file:Ljava/io/File;

    .line 8
    iput-boolean v0, p0, Lcx/hell/android/pdfview/FileListEntry;->isDirectory:Z

    .line 9
    iput v0, p0, Lcx/hell/android/pdfview/FileListEntry;->type:I

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcx/hell/android/pdfview/FileListEntry;->recentNumber:I

    .line 16
    iput-object p3, p0, Lcx/hell/android/pdfview/FileListEntry;->file:Ljava/io/File;

    .line 17
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    .line 18
    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lcx/hell/android/pdfview/FileListEntry;->isDirectory:Z

    .line 19
    iput p1, p0, Lcx/hell/android/pdfview/FileListEntry;->type:I

    .line 20
    iput-object p4, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcx/hell/android/pdfview/FileListEntry;->recentNumber:I

    .line 23
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v1, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcx/hell/android/pdfview/FileListEntry;->file:Ljava/io/File;

    .line 8
    iput-boolean v0, p0, Lcx/hell/android/pdfview/FileListEntry;->isDirectory:Z

    .line 9
    iput v0, p0, Lcx/hell/android/pdfview/FileListEntry;->type:I

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcx/hell/android/pdfview/FileListEntry;->recentNumber:I

    .line 30
    iput p1, p0, Lcx/hell/android/pdfview/FileListEntry;->type:I

    .line 31
    iput-object p2, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private static getLabel(Ljava/io/File;Z)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "showPDFExtension"    # Z

    .prologue
    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "label":Ljava/lang/String;
    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 42
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcx/hell/android/pdfview/FileListEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentNumber()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcx/hell/android/pdfview/FileListEntry;->recentNumber:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcx/hell/android/pdfview/FileListEntry;->type:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcx/hell/android/pdfview/FileListEntry;->isDirectory:Z

    return v0
.end method

.method public isUpFolder()Z
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcx/hell/android/pdfview/FileListEntry;->isDirectory:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcx/hell/android/pdfview/FileListEntry;->label:Ljava/lang/String;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
