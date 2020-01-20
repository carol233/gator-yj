.class public Lcx/hell/android/pdfview/Recent;
.super Ljava/util/ArrayList;
.source "Recent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RECENT:I = 0x5

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final PREF_TAG:Ljava/lang/String;

.field private final RECENT_COUNT:Ljava/lang/String;

.field private final RECENT_PREFIX:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 23
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    const-string v5, "Recent"

    iput-object v5, p0, Lcx/hell/android/pdfview/Recent;->PREF_TAG:Ljava/lang/String;

    .line 17
    const-string v5, "Recent."

    iput-object v5, p0, Lcx/hell/android/pdfview/Recent;->RECENT_PREFIX:Ljava/lang/String;

    .line 18
    const-string v5, "count"

    iput-object v5, p0, Lcx/hell/android/pdfview/Recent;->RECENT_COUNT:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcx/hell/android/pdfview/Recent;->context:Landroid/content/Context;

    .line 27
    iget-object v5, p0, Lcx/hell/android/pdfview/Recent;->context:Landroid/content/Context;

    const-string v6, "Recent"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 29
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "count"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 38
    return-void

    .line 32
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recent."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 35
    invoke-virtual {p0, v2}, Lcx/hell/android/pdfview/Recent;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private write()V
    .locals 5

    .prologue
    .line 42
    iget-object v2, p0, Lcx/hell/android/pdfview/Recent;->context:Landroid/content/Context;

    const-string v3, "Recent"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "count"

    invoke-virtual {p0}, Lcx/hell/android/pdfview/Recent;->size()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcx/hell/android/pdfview/Recent;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recent."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/Recent;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method commit()V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcx/hell/android/pdfview/Recent;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcx/hell/android/pdfview/Recent;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    .line 67
    invoke-direct {p0}, Lcx/hell/android/pdfview/Recent;->write()V

    .line 68
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-lt v1, v0, :cond_1

    .line 54
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/Recent;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcx/hell/android/pdfview/Recent;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/Recent;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 64
    .end local v1    # "j":I
    :cond_3
    invoke-virtual {p0, v0}, Lcx/hell/android/pdfview/Recent;->remove(I)Ljava/lang/Object;

    .line 63
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
