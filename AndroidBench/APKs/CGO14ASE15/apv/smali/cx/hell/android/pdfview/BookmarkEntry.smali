.class public Lcx/hell/android/pdfview/BookmarkEntry;
.super Ljava/lang/Object;
.source "BookmarkEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcx/hell/android/pdfview/BookmarkEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public absoluteZoomLevel:F

.field public comment:Ljava/lang/String;

.field public numberOfPages:I

.field public offsetX:I

.field public page:I

.field public rotation:I


# direct methods
.method public constructor <init>(IIFII)V
    .locals 7
    .param p1, "numberOfPages"    # I
    .param p2, "page"    # I
    .param p3, "absoluteZoomLevel"    # F
    .param p4, "rotation"    # I
    .param p5, "offsetX"    # I

    .prologue
    .line 13
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcx/hell/android/pdfview/BookmarkEntry;-><init>(Ljava/lang/String;IIFII)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcx/hell/android/pdfview/BookmarkEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFII)V
    .locals 0
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "numberOfPages"    # I
    .param p3, "page"    # I
    .param p4, "absoluteZoomLevel"    # F
    .param p5, "rotation"    # I
    .param p6, "offsetX"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    .line 19
    iput p2, p0, Lcx/hell/android/pdfview/BookmarkEntry;->numberOfPages:I

    .line 20
    iput p3, p0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    .line 21
    iput p4, p0, Lcx/hell/android/pdfview/BookmarkEntry;->absoluteZoomLevel:F

    .line 22
    iput p5, p0, Lcx/hell/android/pdfview/BookmarkEntry;->rotation:I

    .line 23
    iput p6, p0, Lcx/hell/android/pdfview/BookmarkEntry;->offsetX:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    .line 33
    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "data":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 36
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->numberOfPages:I

    .line 42
    :goto_0
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 43
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    .line 49
    :goto_1
    array-length v1, v0

    if-ge v4, v1, :cond_2

    .line 50
    aget-object v1, v0, v4

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->absoluteZoomLevel:F

    .line 56
    :goto_2
    array-length v1, v0

    if-ge v5, v1, :cond_3

    .line 57
    aget-object v1, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->rotation:I

    .line 63
    :goto_3
    array-length v1, v0

    if-ge v6, v1, :cond_4

    .line 64
    aget-object v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->offsetX:I

    .line 69
    :goto_4
    return-void

    .line 39
    :cond_0
    iput v2, p0, Lcx/hell/android/pdfview/BookmarkEntry;->numberOfPages:I

    goto :goto_0

    .line 46
    :cond_1
    iput v2, p0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    goto :goto_1

    .line 53
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->absoluteZoomLevel:F

    goto :goto_2

    .line 60
    :cond_3
    iput v2, p0, Lcx/hell/android/pdfview/BookmarkEntry;->rotation:I

    goto :goto_3

    .line 67
    :cond_4
    iput v2, p0, Lcx/hell/android/pdfview/BookmarkEntry;->offsetX:I

    goto :goto_4
.end method


# virtual methods
.method public compareTo(Lcx/hell/android/pdfview/BookmarkEntry;)I
    .locals 2
    .param p1, "entry"    # Lcx/hell/android/pdfview/BookmarkEntry;

    .prologue
    .line 76
    iget v0, p0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    iget v1, p1, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    if-ge v0, v1, :cond_0

    .line 77
    const/4 v0, -0x1

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    iget v0, p1, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    iget v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    if-ge v0, v1, :cond_1

    .line 79
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    iget-object v1, p1, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcx/hell/android/pdfview/BookmarkEntry;

    invoke-virtual {p0, p1}, Lcx/hell/android/pdfview/BookmarkEntry;->compareTo(Lcx/hell/android/pdfview/BookmarkEntry;)I

    move-result v0

    return v0
.end method

.method public equals(Lcx/hell/android/pdfview/BookmarkEntry;)Z
    .locals 2
    .param p1, "entry"    # Lcx/hell/android/pdfview/BookmarkEntry;

    .prologue
    .line 85
    invoke-virtual {p0}, Lcx/hell/android/pdfview/BookmarkEntry;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcx/hell/android/pdfview/BookmarkEntry;->toString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    iget-object v1, p1, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 85
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->numberOfPages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->absoluteZoomLevel:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcx/hell/android/pdfview/BookmarkEntry;->offsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
