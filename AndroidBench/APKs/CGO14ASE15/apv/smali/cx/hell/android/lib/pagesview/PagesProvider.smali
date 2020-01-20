.class public abstract Lcx/hell/android/lib/pagesview/PagesProvider;
.super Ljava/lang/Object;
.source "PagesProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPageBitmap(Lcx/hell/android/lib/pagesview/Tile;)Landroid/graphics/Bitmap;
.end method

.method public abstract getPageCount()I
.end method

.method public abstract getPageSizes()[[I
.end method

.method public abstract getRenderAhead()F
.end method

.method public setOnImageRenderedListener(Lcx/hell/android/lib/pagesview/OnImageRenderedListener;)V
    .locals 0
    .param p1, "listener"    # Lcx/hell/android/lib/pagesview/OnImageRenderedListener;

    .prologue
    .line 42
    return-void
.end method

.method public abstract setVisibleTiles(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcx/hell/android/lib/pagesview/Tile;",
            ">;)V"
        }
    .end annotation
.end method
