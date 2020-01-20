.class public Lcx/hell/android/lib/pagesview/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# instance fields
.field _hashCode:I

.field private page:I

.field private prefXSize:I

.field private prefYSize:I

.field private rotation:I

.field private x:I

.field private y:I

.field private zoom:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "zoom"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "rotation"    # I
    .param p6, "prefXSize"    # I
    .param p7, "prefYSize"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p6, p0, Lcx/hell/android/lib/pagesview/Tile;->prefXSize:I

    .line 31
    iput p7, p0, Lcx/hell/android/lib/pagesview/Tile;->prefYSize:I

    .line 32
    iput p1, p0, Lcx/hell/android/lib/pagesview/Tile;->page:I

    .line 33
    iput p2, p0, Lcx/hell/android/lib/pagesview/Tile;->zoom:I

    .line 34
    iput p3, p0, Lcx/hell/android/lib/pagesview/Tile;->x:I

    .line 35
    iput p4, p0, Lcx/hell/android/lib/pagesview/Tile;->y:I

    .line 36
    iput p5, p0, Lcx/hell/android/lib/pagesview/Tile;->rotation:I

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 55
    instance-of v2, p1, Lcx/hell/android/lib/pagesview/Tile;

    if-nez v2, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 56
    check-cast v0, Lcx/hell/android/lib/pagesview/Tile;

    .line 58
    .local v0, "t":Lcx/hell/android/lib/pagesview/Tile;
    iget v2, p0, Lcx/hell/android/lib/pagesview/Tile;->_hashCode:I

    iget v3, v0, Lcx/hell/android/lib/pagesview/Tile;->_hashCode:I

    if-ne v2, v3, :cond_0

    .line 59
    iget v2, p0, Lcx/hell/android/lib/pagesview/Tile;->page:I

    iget v3, v0, Lcx/hell/android/lib/pagesview/Tile;->page:I

    if-ne v2, v3, :cond_0

    .line 60
    iget v2, p0, Lcx/hell/android/lib/pagesview/Tile;->zoom:I

    iget v3, v0, Lcx/hell/android/lib/pagesview/Tile;->zoom:I

    if-ne v2, v3, :cond_0

    .line 61
    iget v2, p0, Lcx/hell/android/lib/pagesview/Tile;->x:I

    iget v3, v0, Lcx/hell/android/lib/pagesview/Tile;->x:I

    if-ne v2, v3, :cond_0

    .line 62
    iget v2, p0, Lcx/hell/android/lib/pagesview/Tile;->y:I

    iget v3, v0, Lcx/hell/android/lib/pagesview/Tile;->y:I

    if-ne v2, v3, :cond_0

    .line 63
    iget v2, p0, Lcx/hell/android/lib/pagesview/Tile;->rotation:I

    iget v3, v0, Lcx/hell/android/lib/pagesview/Tile;->rotation:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPage()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->page:I

    return v0
.end method

.method public getPrefXSize()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->prefXSize:I

    return v0
.end method

.method public getPrefYSize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->prefYSize:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->rotation:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->y:I

    return v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->zoom:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcx/hell/android/lib/pagesview/Tile;->_hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tile("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget v1, p0, Lcx/hell/android/lib/pagesview/Tile;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    iget v1, p0, Lcx/hell/android/lib/pagesview/Tile;->zoom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    iget v1, p0, Lcx/hell/android/lib/pagesview/Tile;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    iget v1, p0, Lcx/hell/android/lib/pagesview/Tile;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    iget v1, p0, Lcx/hell/android/lib/pagesview/Tile;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
