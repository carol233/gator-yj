.class public Lorg/videolan/vlc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/Util"

.field private static errorMsg:Ljava/lang/String;

.field private static final hasNavBar:Z

.field private static isCompatible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    .local v0, "devicesWithoutNavBar":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "HTC One V"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    const-string v1, "HTC One S"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    const-string v1, "HTC One X"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v1, "HTC One XL"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lorg/videolan/vlc/Util;->isICSOrLater()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lorg/videolan/vlc/Util;->hasNavBar:Z

    .line 266
    const/4 v1, 0x0

    sput-object v1, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 267
    sput-boolean v2, Lorg/videolan/vlc/Util;->isCompatible:Z

    return-void

    :cond_0
    move v1, v2

    .line 65
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PathToURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 86
    if-nez p0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot convert null path!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    invoke-static {p0}, Lorg/videolan/vlc/LibVLC;->nativeToURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static URItoFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "URI"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static URItoFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "URI"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p0}, Lorg/videolan/vlc/Util;->URItoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addCustomDirectory(Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 471
    .local v4, "preferences":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lorg/videolan/vlc/Util;->getCustomDirectories()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 473
    .local v1, "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 477
    .local v5, "s":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 480
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 481
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "custom_paths"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    return-void
.end method

.method public static convertDpToPx(I)I
    .locals 3
    .param p0, "dp"    # I

    .prologue
    .line 219
    const/4 v0, 0x1

    int-to-float v1, p0

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static convertPxToDp(I)I
    .locals 7
    .param p0, "px"    # I

    .prologue
    .line 208
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 210
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 211
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 212
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 213
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 214
    .local v2, "logicalDensity":F
    int-to-float v5, p0

    div-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 215
    .local v1, "dp":I
    return v1
.end method

.method public static cropBorders(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v7, -0x1000000

    .line 163
    const/4 v4, 0x0

    .line 164
    .local v4, "top":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v5, p2, 0x2

    if-ge v0, v5, :cond_2

    .line 165
    div-int/lit8 v5, p1, 0x2

    invoke-virtual {p0, v5, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 166
    .local v2, "pixel1":I
    div-int/lit8 v5, p1, 0x2

    sub-int v6, p2, v0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 167
    .local v3, "pixel2":I
    if-eqz v2, :cond_0

    if-ne v2, v7, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    if-ne v3, v7, :cond_2

    .line 169
    :cond_1
    move v4, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "pixel1":I
    .end local v3    # "pixel2":I
    :cond_2
    const/4 v1, 0x0

    .line 176
    .local v1, "left":I
    const/4 v0, 0x0

    :goto_1
    div-int/lit8 v5, p1, 0x2

    if-ge v0, v5, :cond_5

    .line 177
    div-int/lit8 v5, p2, 0x2

    invoke-virtual {p0, v0, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    .line 178
    .restart local v2    # "pixel1":I
    sub-int v5, p1, v0

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v6, p2, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    .line 179
    .restart local v3    # "pixel2":I
    if-eqz v2, :cond_3

    if-ne v2, v7, :cond_5

    :cond_3
    if-eqz v3, :cond_4

    if-ne v3, v7, :cond_5

    .line 181
    :cond_4
    move v1, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    .end local v2    # "pixel1":I
    .end local v3    # "pixel2":I
    :cond_5
    div-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0xa

    if-ge v1, v5, :cond_6

    div-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, -0xa

    if-lt v4, v5, :cond_7

    .line 191
    .end local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_6
    :goto_2
    return-object p0

    .restart local p0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7
    mul-int/lit8 v5, v1, 0x2

    sub-int v5, p1, v5

    mul-int/lit8 v6, v4, 0x2

    sub-int v6, p2, v6

    invoke-static {p0, v1, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2
.end method

.method public static formatRateString(F)Ljava/lang/String;
    .locals 5
    .param p0, "rate"    # F

    .prologue
    .line 514
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.2fx"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomDirectories()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 454
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "custom_paths"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "custom_paths":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 458
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getErrorMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public static getMediaDirectories()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lorg/videolan/vlc/Util;->getStorageDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 464
    invoke-static {}, Lorg/videolan/vlc/Util;->getCustomDirectories()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getStorageDirectories()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, "dirs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 406
    .local v0, "bufReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/mounts"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .local v1, "bufReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 411
    const-string v8, "vfat"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "exfat"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "/mnt"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "/Removable"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 413
    :cond_1
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, " "

    invoke-direct {v7, v4, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v7, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 420
    const-string v8, "/dev/block/vold"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 421
    const-string v8, "tmpfs"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "/dev/mapper"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "/mnt/secure"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "/mnt/shell"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "/mnt/asec"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "/mnt/obb"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 428
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 439
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "tokens":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v8

    move-object v0, v1

    .line 442
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v0, :cond_2

    .line 444
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 449
    :cond_2
    :goto_2
    return-object v2

    .line 434
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v2, v8, [Ljava/lang/String;

    .line 435
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 436
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v2, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 442
    :cond_4
    if-eqz v1, :cond_5

    .line 444
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5
    :goto_4
    move-object v0, v1

    .line 448
    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 442
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v8

    :goto_5
    if-eqz v0, :cond_6

    .line 444
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 442
    :cond_6
    :goto_6
    throw v8

    .line 446
    :catch_1
    move-exception v8

    goto :goto_2

    .line 440
    :catch_2
    move-exception v8

    .line 442
    :goto_7
    if-eqz v0, :cond_2

    .line 444
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 446
    :catch_3
    move-exception v9

    goto :goto_6

    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v3    # "i":I
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4
    move-exception v8

    goto :goto_4

    .line 442
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 440
    .end local v0    # "bufReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufReader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    move-object v0, v1

    .end local v1    # "bufReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_7

    .line 439
    :catch_6
    move-exception v8

    goto :goto_1
.end method

.method public static getValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultId"    # I

    .prologue
    .line 197
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .end local p0    # "string":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "string":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static hasCombBar()Z
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lorg/videolan/vlc/Util;->isPhone()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasCompatibleCPU()Z
    .locals 22

    .prologue
    .line 274
    sget-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    if-eqz v19, :cond_0

    sget-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 389
    .local v18, "properties":Ljava/util/Properties;
    :goto_0
    return v19

    .line 276
    .end local v18    # "properties":Ljava/util/Properties;
    :cond_0
    new-instance v18, Ljava/util/Properties;

    invoke-direct/range {v18 .. v18}, Ljava/util/Properties;-><init>()V

    .line 278
    .restart local v18    # "properties":Ljava/util/Properties;
    :try_start_0
    new-instance v19, Ljava/io/ByteArrayInputStream;

    const-string v20, "env.txt"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Lorg/videolan/vlc/Util;->readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "UTF-8"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 288
    .local v3, "CPU_ABI":Ljava/lang/String;
    const-string v4, "none"

    .line 289
    .local v4, "CPU_ABI2":Ljava/lang/String;
    sget v19, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 291
    :try_start_1
    const-class v19, Landroid/os/Build;

    const-string v20, "CPU_ABI2"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 295
    :cond_1
    :goto_1
    const-string v19, "ANDROID_ABI"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "ANDROID_ABI":Ljava/lang/String;
    const-string v19, "NO_FPU"

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 297
    .local v6, "NO_FPU":Z
    const-string v19, "NO_ARMV6"

    const-string v20, "0"

    invoke-virtual/range {v18 .. v20}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 298
    .local v5, "NO_ARMV6":Z
    const/4 v15, 0x0

    .local v15, "hasNeon":Z
    const/4 v13, 0x0

    .local v13, "hasFpu":Z
    const/4 v11, 0x0

    .line 299
    .local v11, "hasArmV6":Z
    const/4 v12, 0x0

    .local v12, "hasArmV7":Z
    const/4 v14, 0x0

    .line 300
    .local v14, "hasMips":Z
    const/16 v16, 0x0

    .line 302
    .local v16, "hasX86":Z
    const-string v19, "x86"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 303
    const/16 v16, 0x1

    .line 314
    :cond_2
    :goto_2
    :try_start_2
    new-instance v10, Ljava/io/FileReader;

    const-string v19, "/proc/cpuinfo"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 315
    .local v10, "fileReader":Ljava/io/FileReader;
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 317
    .local v7, "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, "line":Ljava/lang/String;
    if-eqz v17, :cond_d

    .line 318
    if-nez v12, :cond_4

    const-string v19, "ARMv7"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 319
    const/4 v12, 0x1

    .line 320
    const/4 v11, 0x1

    .line 322
    :cond_4
    if-nez v12, :cond_5

    if-nez v11, :cond_5

    const-string v19, "ARMv6"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 323
    const/4 v11, 0x1

    .line 326
    :cond_5
    const-string v19, "clflush size"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 327
    const/16 v16, 0x1

    .line 330
    :cond_6
    const-string v19, "microsecond timers"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 331
    const/4 v14, 0x1

    .line 332
    :cond_7
    if-nez v15, :cond_8

    const-string v19, "neon"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 333
    const/4 v15, 0x1

    .line 334
    :cond_8
    if-nez v13, :cond_3

    const-string v19, "vfp"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    if-eqz v19, :cond_3

    .line 335
    const/4 v13, 0x1

    goto :goto_3

    .line 279
    .end local v2    # "ANDROID_ABI":Ljava/lang/String;
    .end local v3    # "CPU_ABI":Ljava/lang/String;
    .end local v4    # "CPU_ABI2":Ljava/lang/String;
    .end local v5    # "NO_ARMV6":Z
    .end local v6    # "NO_FPU":Z
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v11    # "hasArmV6":Z
    .end local v12    # "hasArmV7":Z
    .end local v13    # "hasFpu":Z
    .end local v14    # "hasMips":Z
    .end local v15    # "hasNeon":Z
    .end local v16    # "hasX86":Z
    .end local v17    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 281
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 282
    const-string v19, "IOException whilst reading compile flags"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 283
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 284
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 304
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v2    # "ANDROID_ABI":Ljava/lang/String;
    .restart local v3    # "CPU_ABI":Ljava/lang/String;
    .restart local v4    # "CPU_ABI2":Ljava/lang/String;
    .restart local v5    # "NO_ARMV6":Z
    .restart local v6    # "NO_FPU":Z
    .restart local v11    # "hasArmV6":Z
    .restart local v12    # "hasArmV7":Z
    .restart local v13    # "hasFpu":Z
    .restart local v14    # "hasMips":Z
    .restart local v15    # "hasNeon":Z
    .restart local v16    # "hasX86":Z
    :cond_9
    const-string v19, "armeabi-v7a"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_a

    const-string v19, "armeabi-v7a"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 306
    :cond_a
    const/4 v12, 0x1

    .line 307
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 308
    :cond_b
    const-string v19, "armeabi"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c

    const-string v19, "armeabi"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 310
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 337
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "line":Ljava/lang/String;
    :cond_d
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 346
    const-string v19, "x86"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    if-nez v16, :cond_e

    .line 347
    const-string v19, "x86 build on non-x86 device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 348
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 349
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 338
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v17    # "line":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 339
    .local v9, "ex":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    const-string v19, "IOException whilst reading cpuinfo flags"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 341
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 342
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 350
    .end local v9    # "ex":Ljava/io/IOException;
    .restart local v7    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "fileReader":Ljava/io/FileReader;
    .restart local v17    # "line":Ljava/lang/String;
    :cond_e
    if-eqz v16, :cond_f

    const-string v19, "armeabi"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 351
    const-string v19, "ARM build on x86 device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 352
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 353
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 356
    :cond_f
    const-string v19, "mips"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    if-nez v14, :cond_10

    .line 357
    const-string v19, "MIPS build on non-MIPS device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 358
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 359
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 360
    :cond_10
    if-eqz v14, :cond_11

    const-string v19, "armeabi"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 361
    const-string v19, "ARM build on MIPS device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 362
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 363
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 366
    :cond_11
    const-string v19, "armeabi-v7a"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    if-nez v12, :cond_12

    .line 367
    const-string v19, "ARMv7 build on non-ARMv7 device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 368
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 369
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 371
    :cond_12
    const-string v19, "armeabi"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 372
    if-nez v5, :cond_13

    if-nez v11, :cond_13

    .line 373
    const-string v19, "ARMv6 build on non-ARMv6 device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 374
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 375
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 376
    :cond_13
    if-nez v6, :cond_14

    if-nez v13, :cond_14

    .line 377
    const-string v19, "FPU-enabled build on non-FPU device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 378
    const/16 v19, 0x0

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 379
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 382
    :cond_14
    const-string v19, "armeabi"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_15

    const-string v19, "armeabi-v7a"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 383
    :cond_15
    if-nez v15, :cond_16

    .line 384
    const-string v19, "NEON build on non-NEON device"

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 387
    :cond_16
    const/16 v19, 0x0

    sput-object v19, Lorg/videolan/vlc/Util;->errorMsg:Ljava/lang/String;

    .line 388
    const/16 v19, 0x1

    sput-boolean v19, Lorg/videolan/vlc/Util;->isCompatible:Z

    .line 389
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 292
    .end local v2    # "ANDROID_ABI":Ljava/lang/String;
    .end local v5    # "NO_ARMV6":Z
    .end local v6    # "NO_FPU":Z
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v10    # "fileReader":Ljava/io/FileReader;
    .end local v11    # "hasArmV6":Z
    .end local v12    # "hasArmV7":Z
    .end local v13    # "hasFpu":Z
    .end local v14    # "hasMips":Z
    .end local v15    # "hasNeon":Z
    .end local v16    # "hasX86":Z
    .end local v17    # "line":Ljava/lang/String;
    :catch_2
    move-exception v19

    goto/16 :goto_1
.end method

.method public static hasExternalStorage()Z
    .locals 2

    .prologue
    .line 251
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasNavBar()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lorg/videolan/vlc/Util;->hasNavBar:Z

    return v0
.end method

.method public static isFroyoOrLater()Z
    .locals 2

    .prologue
    .line 227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGingerbreadOrLater()Z
    .locals 2

    .prologue
    .line 232
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycombOrLater()Z
    .locals 2

    .prologue
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isICSOrLater()Z
    .locals 2

    .prologue
    .line 242
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellyBeanOrLater()Z
    .locals 2

    .prologue
    .line 247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone()Z
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 394
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_0

    .line 395
    const/4 v1, 0x0

    .line 397
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static millisToString(J)Ljava/lang/String;
    .locals 12
    .param p0, "millis"    # J

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x3c

    .line 125
    cmp-long v6, p0, v10

    if-gez v6, :cond_0

    const/4 v3, 0x1

    .line 126
    .local v3, "negative":Z
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    .line 128
    const-wide/16 v6, 0x3e8

    div-long/2addr p0, v6

    .line 129
    rem-long v6, p0, v8

    long-to-int v4, v6

    .line 130
    .local v4, "sec":I
    div-long/2addr p0, v8

    .line 131
    rem-long v6, p0, v8

    long-to-int v2, v6

    .line 132
    .local v2, "min":I
    div-long/2addr p0, v8

    .line 133
    long-to-int v1, p0

    .line 136
    .local v1, "hours":I
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v6}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    .line 137
    .local v0, "format":Ljava/text/DecimalFormat;
    const-string v6, "00"

    invoke-virtual {v0, v6}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 138
    cmp-long v6, p0, v10

    if-lez v6, :cond_2

    .line 139
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    const-string v6, "-"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v2

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 143
    .local v5, "time":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 125
    .end local v0    # "format":Ljava/text/DecimalFormat;
    .end local v1    # "hours":I
    .end local v2    # "min":I
    .end local v3    # "negative":Z
    .end local v4    # "sec":I
    .end local v5    # "time":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 139
    .restart local v0    # "format":Ljava/text/DecimalFormat;
    .restart local v1    # "hours":I
    .restart local v2    # "min":I
    .restart local v3    # "negative":Z
    .restart local v4    # "sec":I
    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 141
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string v6, "-"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-long v7, v4

    invoke-virtual {v0, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "time":Ljava/lang/String;
    goto :goto_2

    .end local v5    # "time":Ljava/lang/String;
    :cond_3
    const-string v6, ""

    goto :goto_3
.end method

.method public static readAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "assetName"    # Ljava/lang/String;
    .param p1, "defaultS"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 101
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF8"

    invoke-direct {v5, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v3, "r":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 107
    :goto_0
    if-eqz v2, :cond_0

    .line 108
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 115
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "r":Ljava/io/BufferedReader;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "defaultS":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 114
    .restart local p1    # "defaultS":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public static removeCustomDirectory(Ljava/lang/String;)V
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 487
    .local v5, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "custom_paths"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 508
    :goto_0
    return-void

    .line 489
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const-string v7, "custom_paths"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    .local v2, "dirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 498
    .local v6, "s":Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 501
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "i$":Ljava/util/Iterator;
    .local v1, "custom_path":Ljava/lang/String;
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 506
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "custom_paths"

    invoke-interface {v3, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 507
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 503
    .end local v1    # "custom_path":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v1, ""

    .restart local v1    # "custom_path":Ljava/lang/String;
    goto :goto_2
.end method

.method public static scaleDownBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 154
    .local v0, "densityMultiplier":F
    int-to-float v3, p2

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 155
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v2

    int-to-double v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v1, v3

    .line 156
    .local v1, "h":I
    const/4 v3, 0x1

    invoke-static {p1, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 158
    .end local v0    # "densityMultiplier":F
    .end local v1    # "h":I
    .end local v2    # "w":I
    :cond_0
    return-object p1
.end method

.method public static setItemBackground(Landroid/view/View;I)V
    .locals 1
    .param p0, "v"    # Landroid/view/View;
    .param p1, "position"    # I

    .prologue
    .line 202
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const v0, 0x7f020074

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    return-void

    .line 202
    :cond_0
    const v0, 0x7f020075

    goto :goto_0
.end method

.method public static stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 95
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static toaster(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/videolan/vlc/Util;->toaster(Landroid/content/Context;II)V

    .line 75
    return-void
.end method

.method public static toaster(Landroid/content/Context;II)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 71
    return-void
.end method
