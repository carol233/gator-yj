.class public Lcx/hell/android/lib/pdf/PDF$Size;
.super Ljava/lang/Object;
.source "PDF.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcx/hell/android/lib/pdf/PDF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Size"
.end annotation


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v0, p0, Lcx/hell/android/lib/pdf/PDF$Size;->width:I

    .line 192
    iput v0, p0, Lcx/hell/android/lib/pdf/PDF$Size;->height:I

    .line 193
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lcx/hell/android/lib/pdf/PDF$Size;->width:I

    .line 197
    iput p2, p0, Lcx/hell/android/lib/pdf/PDF$Size;->height:I

    .line 198
    return-void
.end method


# virtual methods
.method public clone()Lcx/hell/android/lib/pdf/PDF$Size;
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lcx/hell/android/lib/pdf/PDF$Size;

    iget v1, p0, Lcx/hell/android/lib/pdf/PDF$Size;->width:I

    iget v2, p0, Lcx/hell/android/lib/pdf/PDF$Size;->height:I

    invoke-direct {v0, v1, v2}, Lcx/hell/android/lib/pdf/PDF$Size;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcx/hell/android/lib/pdf/PDF$Size;->clone()Lcx/hell/android/lib/pdf/PDF$Size;

    move-result-object v0

    return-object v0
.end method
