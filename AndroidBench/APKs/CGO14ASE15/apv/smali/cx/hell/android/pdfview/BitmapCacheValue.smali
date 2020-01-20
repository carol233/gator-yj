.class public Lcx/hell/android/pdfview/BitmapCacheValue;
.super Ljava/lang/Object;
.source "BitmapCacheValue.java"


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public millisAccessed:J

.field public priority:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;JJ)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "millisAdded"    # J
    .param p4, "priority"    # J

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcx/hell/android/pdfview/BitmapCacheValue;->bitmap:Landroid/graphics/Bitmap;

    .line 14
    iput-wide p2, p0, Lcx/hell/android/pdfview/BitmapCacheValue;->millisAccessed:J

    .line 15
    iput-wide p4, p0, Lcx/hell/android/pdfview/BitmapCacheValue;->priority:J

    .line 16
    return-void
.end method
