.class public Lorg/videolan/vlc/Media;
.super Ljava/lang/Object;
.source "Media.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/videolan/vlc/Media;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUDIO_EXTENSIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTENSIONS_REGEX:Ljava/lang/String;

.field public static final FOLDER_BLACKLIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "VLC/MediaItem"

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AUDIO:I = 0x1

.field public static final TYPE_VIDEO:I

.field public static final VIDEO_EXTENSIONS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mArtworkURL:Ljava/lang/String;

.field private mAudioTrack:I

.field private mCopyright:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mEncodedBy:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsPictureParsed:Z

.field private mLength:J

.field private final mLocation:Ljava/lang/String;

.field private mNowPlaying:Ljava/lang/String;

.field private mPicture:Landroid/graphics/Bitmap;

.field private mPublisher:Ljava/lang/String;

.field private mRating:Ljava/lang/String;

.field private mSettings:Ljava/lang/String;

.field private mSpuTrack:I

.field private mTime:J

.field private mTitle:Ljava/lang/String;

.field private mTrackID:Ljava/lang/String;

.field private mTrackNumber:Ljava/lang/String;

.field private mType:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 40
    const/16 v9, 0x38

    new-array v8, v9, [Ljava/lang/String;

    const-string v9, ".3g2"

    aput-object v9, v8, v12

    const-string v9, ".3gp"

    aput-object v9, v8, v11

    const-string v9, ".3gp2"

    aput-object v9, v8, v13

    const-string v9, ".3gpp"

    aput-object v9, v8, v14

    const-string v9, ".amv"

    aput-object v9, v8, v15

    const/4 v9, 0x5

    const-string v10, ".asf"

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, ".avi"

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const-string v10, ".divx"

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "drc"

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string v10, ".dv"

    aput-object v10, v8, v9

    const/16 v9, 0xa

    const-string v10, ".f4v"

    aput-object v10, v8, v9

    const/16 v9, 0xb

    const-string v10, ".flv"

    aput-object v10, v8, v9

    const/16 v9, 0xc

    const-string v10, ".gvi"

    aput-object v10, v8, v9

    const/16 v9, 0xd

    const-string v10, ".gxf"

    aput-object v10, v8, v9

    const/16 v9, 0xe

    const-string v10, ".iso"

    aput-object v10, v8, v9

    const/16 v9, 0xf

    const-string v10, ".m1v"

    aput-object v10, v8, v9

    const/16 v9, 0x10

    const-string v10, ".m2v"

    aput-object v10, v8, v9

    const/16 v9, 0x11

    const-string v10, ".m2t"

    aput-object v10, v8, v9

    const/16 v9, 0x12

    const-string v10, ".m2ts"

    aput-object v10, v8, v9

    const/16 v9, 0x13

    const-string v10, ".m4v"

    aput-object v10, v8, v9

    const/16 v9, 0x14

    const-string v10, ".mkv"

    aput-object v10, v8, v9

    const/16 v9, 0x15

    const-string v10, ".mov"

    aput-object v10, v8, v9

    const/16 v9, 0x16

    const-string v10, ".mp2"

    aput-object v10, v8, v9

    const/16 v9, 0x17

    const-string v10, ".mp2v"

    aput-object v10, v8, v9

    const/16 v9, 0x18

    const-string v10, ".mp4"

    aput-object v10, v8, v9

    const/16 v9, 0x19

    const-string v10, ".mp4v"

    aput-object v10, v8, v9

    const/16 v9, 0x1a

    const-string v10, ".mpe"

    aput-object v10, v8, v9

    const/16 v9, 0x1b

    const-string v10, ".mpeg"

    aput-object v10, v8, v9

    const/16 v9, 0x1c

    const-string v10, ".mpeg1"

    aput-object v10, v8, v9

    const/16 v9, 0x1d

    const-string v10, ".mpeg2"

    aput-object v10, v8, v9

    const/16 v9, 0x1e

    const-string v10, ".mpeg4"

    aput-object v10, v8, v9

    const/16 v9, 0x1f

    const-string v10, ".mpg"

    aput-object v10, v8, v9

    const/16 v9, 0x20

    const-string v10, ".mpv2"

    aput-object v10, v8, v9

    const/16 v9, 0x21

    const-string v10, ".mts"

    aput-object v10, v8, v9

    const/16 v9, 0x22

    const-string v10, ".mtv"

    aput-object v10, v8, v9

    const/16 v9, 0x23

    const-string v10, ".mxf"

    aput-object v10, v8, v9

    const/16 v9, 0x24

    const-string v10, ".mxg"

    aput-object v10, v8, v9

    const/16 v9, 0x25

    const-string v10, ".nsv"

    aput-object v10, v8, v9

    const/16 v9, 0x26

    const-string v10, ".nuv"

    aput-object v10, v8, v9

    const/16 v9, 0x27

    const-string v10, ".ogm"

    aput-object v10, v8, v9

    const/16 v9, 0x28

    const-string v10, ".ogv"

    aput-object v10, v8, v9

    const/16 v9, 0x29

    const-string v10, ".ogx"

    aput-object v10, v8, v9

    const/16 v9, 0x2a

    const-string v10, ".ps"

    aput-object v10, v8, v9

    const/16 v9, 0x2b

    const-string v10, ".rec"

    aput-object v10, v8, v9

    const/16 v9, 0x2c

    const-string v10, ".rm"

    aput-object v10, v8, v9

    const/16 v9, 0x2d

    const-string v10, ".rmvb"

    aput-object v10, v8, v9

    const/16 v9, 0x2e

    const-string v10, ".tod"

    aput-object v10, v8, v9

    const/16 v9, 0x2f

    const-string v10, ".ts"

    aput-object v10, v8, v9

    const/16 v9, 0x30

    const-string v10, ".tts"

    aput-object v10, v8, v9

    const/16 v9, 0x31

    const-string v10, ".vob"

    aput-object v10, v8, v9

    const/16 v9, 0x32

    const-string v10, ".vro"

    aput-object v10, v8, v9

    const/16 v9, 0x33

    const-string v10, ".webm"

    aput-object v10, v8, v9

    const/16 v9, 0x34

    const-string v10, ".wm"

    aput-object v10, v8, v9

    const/16 v9, 0x35

    const-string v10, ".wmv"

    aput-object v10, v8, v9

    const/16 v9, 0x36

    const-string v10, ".wtv"

    aput-object v10, v8, v9

    const/16 v9, 0x37

    const-string v10, ".xesc"

    aput-object v10, v8, v9

    .line 48
    .local v8, "video_extensions":[Ljava/lang/String;
    const/16 v9, 0x2e

    new-array v1, v9, [Ljava/lang/String;

    const-string v9, ".3ga"

    aput-object v9, v1, v12

    const-string v9, ".a52"

    aput-object v9, v1, v11

    const-string v9, ".aac"

    aput-object v9, v1, v13

    const-string v9, ".ac3"

    aput-object v9, v1, v14

    const-string v9, ".adt"

    aput-object v9, v1, v15

    const/4 v9, 0x5

    const-string v10, ".adts"

    aput-object v10, v1, v9

    const/4 v9, 0x6

    const-string v10, ".aif"

    aput-object v10, v1, v9

    const/4 v9, 0x7

    const-string v10, ".aifc"

    aput-object v10, v1, v9

    const/16 v9, 0x8

    const-string v10, ".aiff"

    aput-object v10, v1, v9

    const/16 v9, 0x9

    const-string v10, ".amr"

    aput-object v10, v1, v9

    const/16 v9, 0xa

    const-string v10, ".aob"

    aput-object v10, v1, v9

    const/16 v9, 0xb

    const-string v10, ".ape"

    aput-object v10, v1, v9

    const/16 v9, 0xc

    const-string v10, ".awb"

    aput-object v10, v1, v9

    const/16 v9, 0xd

    const-string v10, ".caf"

    aput-object v10, v1, v9

    const/16 v9, 0xe

    const-string v10, ".dts"

    aput-object v10, v1, v9

    const/16 v9, 0xf

    const-string v10, ".flac"

    aput-object v10, v1, v9

    const/16 v9, 0x10

    const-string v10, ".it"

    aput-object v10, v1, v9

    const/16 v9, 0x11

    const-string v10, ".m4a"

    aput-object v10, v1, v9

    const/16 v9, 0x12

    const-string v10, ".m4p"

    aput-object v10, v1, v9

    const/16 v9, 0x13

    const-string v10, ".mid"

    aput-object v10, v1, v9

    const/16 v9, 0x14

    const-string v10, ".mka"

    aput-object v10, v1, v9

    const/16 v9, 0x15

    const-string v10, ".mlp"

    aput-object v10, v1, v9

    const/16 v9, 0x16

    const-string v10, ".mod"

    aput-object v10, v1, v9

    const/16 v9, 0x17

    const-string v10, ".mpa"

    aput-object v10, v1, v9

    const/16 v9, 0x18

    const-string v10, ".mp1"

    aput-object v10, v1, v9

    const/16 v9, 0x19

    const-string v10, ".mp2"

    aput-object v10, v1, v9

    const/16 v9, 0x1a

    const-string v10, ".mp3"

    aput-object v10, v1, v9

    const/16 v9, 0x1b

    const-string v10, ".mpc"

    aput-object v10, v1, v9

    const/16 v9, 0x1c

    const-string v10, ".oga"

    aput-object v10, v1, v9

    const/16 v9, 0x1d

    const-string v10, ".ogg"

    aput-object v10, v1, v9

    const/16 v9, 0x1e

    const-string v10, ".oma"

    aput-object v10, v1, v9

    const/16 v9, 0x1f

    const-string v10, ".opus"

    aput-object v10, v1, v9

    const/16 v9, 0x20

    const-string v10, ".ra"

    aput-object v10, v1, v9

    const/16 v9, 0x21

    const-string v10, ".ram"

    aput-object v10, v1, v9

    const/16 v9, 0x22

    const-string v10, ".rmi"

    aput-object v10, v1, v9

    const/16 v9, 0x23

    const-string v10, ".s3m"

    aput-object v10, v1, v9

    const/16 v9, 0x24

    const-string v10, ".spx"

    aput-object v10, v1, v9

    const/16 v9, 0x25

    const-string v10, ".tta"

    aput-object v10, v1, v9

    const/16 v9, 0x26

    const-string v10, ".voc"

    aput-object v10, v1, v9

    const/16 v9, 0x27

    const-string v10, ".vqf"

    aput-object v10, v1, v9

    const/16 v9, 0x28

    const-string v10, ".w64"

    aput-object v10, v1, v9

    const/16 v9, 0x29

    const-string v10, ".wav"

    aput-object v10, v1, v9

    const/16 v9, 0x2a

    const-string v10, ".wma"

    aput-object v10, v1, v9

    const/16 v9, 0x2b

    const-string v10, ".wv"

    aput-object v10, v1, v9

    const/16 v9, 0x2c

    const-string v10, ".xa"

    aput-object v10, v1, v9

    const/16 v9, 0x2d

    const-string v10, ".xm"

    aput-object v10, v1, v9

    .line 55
    .local v1, "audio_extensions":[Ljava/lang/String;
    const/16 v9, 0xa

    new-array v2, v9, [Ljava/lang/String;

    const-string v9, "/alarms"

    aput-object v9, v2, v12

    const-string v9, "/notifications"

    aput-object v9, v2, v11

    const-string v9, "/ringtones"

    aput-object v9, v2, v13

    const-string v9, "/media/alarms"

    aput-object v9, v2, v14

    const-string v9, "/media/notifications"

    aput-object v9, v2, v15

    const/4 v9, 0x5

    const-string v10, "/media/ringtones"

    aput-object v10, v2, v9

    const/4 v9, 0x6

    const-string v10, "/media/audio/alarms"

    aput-object v10, v2, v9

    const/4 v9, 0x7

    const-string v10, "/media/audio/notifications"

    aput-object v10, v2, v9

    const/16 v9, 0x8

    const-string v10, "/media/audio/ringtones"

    aput-object v10, v2, v9

    const/16 v9, 0x9

    const-string v10, "/Android/data/"

    aput-object v10, v2, v9

    .line 67
    .local v2, "folder_blacklist":[Ljava/lang/String;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Lorg/videolan/vlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    .line 68
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v5, v0, v4

    .line 69
    .local v5, "item":Ljava/lang/String;
    sget-object v9, Lorg/videolan/vlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .end local v5    # "item":Ljava/lang/String;
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Lorg/videolan/vlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    .line 71
    move-object v0, v1

    array-length v6, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v5, v0, v4

    .line 72
    .restart local v5    # "item":Ljava/lang/String;
    sget-object v9, Lorg/videolan/vlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 74
    .end local v5    # "item":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x73

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v7, "sb":Ljava/lang/StringBuilder;
    const-string v9, ".+(\\.)((?i)("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    aget-object v9, v8, v12

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    array-length v9, v8

    if-ge v3, v9, :cond_2

    .line 78
    const/16 v9, 0x7c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    aget-object v9, v8, v3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 81
    :cond_2
    const/4 v3, 0x0

    :goto_3
    array-length v9, v1

    if-ge v3, v9, :cond_3

    .line 82
    const/16 v9, 0x7c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    aget-object v9, v1, v3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 85
    :cond_3
    const-string v9, "))"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lorg/videolan/vlc/Media;->EXTENSIONS_REGEX:Ljava/lang/String;

    .line 87
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    sput-object v9, Lorg/videolan/vlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    .line 88
    move-object v0, v2

    array-length v6, v0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_4

    aget-object v5, v0, v4

    .line 89
    .restart local v5    # "item":Ljava/lang/String;
    sget-object v9, Lorg/videolan/vlc/Media;->FOLDER_BLACKLIST:Ljava/util/HashSet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 90
    .end local v5    # "item":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "time"    # J
    .param p5, "length"    # J
    .param p7, "type"    # I
    .param p8, "picture"    # Landroid/graphics/Bitmap;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "artist"    # Ljava/lang/String;
    .param p11, "genre"    # Ljava/lang/String;
    .param p12, "album"    # Ljava/lang/String;
    .param p13, "width"    # I
    .param p14, "height"    # I
    .param p15, "artworkURL"    # Ljava/lang/String;
    .param p16, "audio"    # I
    .param p17, "spu"    # I

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/videolan/vlc/Media;->mTime:J

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lorg/videolan/vlc/Media;->mAudioTrack:I

    .line 117
    const/4 v1, -0x1

    iput v1, p0, Lorg/videolan/vlc/Media;->mSpuTrack:I

    .line 118
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/videolan/vlc/Media;->mLength:J

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/vlc/Media;->mWidth:I

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lorg/videolan/vlc/Media;->mHeight:I

    .line 211
    iput-object p2, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/videolan/vlc/Media;->mFilename:Ljava/lang/String;

    .line 213
    iput-wide p3, p0, Lorg/videolan/vlc/Media;->mTime:J

    .line 214
    move/from16 v0, p16

    iput v0, p0, Lorg/videolan/vlc/Media;->mAudioTrack:I

    .line 215
    move/from16 v0, p17

    iput v0, p0, Lorg/videolan/vlc/Media;->mSpuTrack:I

    .line 216
    iput-wide p5, p0, Lorg/videolan/vlc/Media;->mLength:J

    .line 217
    iput p7, p0, Lorg/videolan/vlc/Media;->mType:I

    .line 218
    iput-object p8, p0, Lorg/videolan/vlc/Media;->mPicture:Landroid/graphics/Bitmap;

    .line 219
    move/from16 v0, p13

    iput v0, p0, Lorg/videolan/vlc/Media;->mWidth:I

    .line 220
    move/from16 v0, p14

    iput v0, p0, Lorg/videolan/vlc/Media;->mHeight:I

    .line 222
    iput-object p9, p0, Lorg/videolan/vlc/Media;->mTitle:Ljava/lang/String;

    .line 223
    const v1, 0x7f0b002b

    invoke-static {p10, v1}, Lorg/videolan/vlc/Util;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/Media;->mArtist:Ljava/lang/String;

    .line 224
    const v1, 0x7f0b002d

    invoke-static {p11, v1}, Lorg/videolan/vlc/Util;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    .line 225
    const v1, 0x7f0b002c

    invoke-static {p12, v1}, Lorg/videolan/vlc/Util;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/Media;->mAlbum:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/videolan/vlc/Media;->mArtworkURL:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .param p1, "URI"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide v5, p0, Lorg/videolan/vlc/Media;->mTime:J

    .line 116
    iput v3, p0, Lorg/videolan/vlc/Media;->mAudioTrack:I

    .line 117
    iput v3, p0, Lorg/videolan/vlc/Media;->mSpuTrack:I

    .line 118
    iput-wide v5, p0, Lorg/videolan/vlc/Media;->mLength:J

    .line 120
    iput v4, p0, Lorg/videolan/vlc/Media;->mWidth:I

    .line 121
    iput v4, p0, Lorg/videolan/vlc/Media;->mHeight:I

    .line 154
    iput-object p1, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "mLibVlc":Lorg/videolan/vlc/LibVLC;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v1

    .line 159
    const/4 v3, -0x1

    iput v3, p0, Lorg/videolan/vlc/Media;->mType:I

    .line 161
    invoke-virtual {v1, p2}, Lorg/videolan/vlc/LibVLC;->readTracksInfoPosition(I)[Lorg/videolan/vlc/TrackInfo;

    move-result-object v2

    .line 163
    .local v2, "tracks":[Lorg/videolan/vlc/TrackInfo;
    invoke-direct {p0, v2}, Lorg/videolan/vlc/Media;->extractTrackInfo([Lorg/videolan/vlc/TrackInfo;)V
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v2    # "tracks":[Lorg/videolan/vlc/TrackInfo;
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Lorg/videolan/vlc/LibVlcException;
    invoke-virtual {v0}, Lorg/videolan/vlc/LibVlcException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "URI"    # Ljava/lang/String;
    .param p2, "addToDb"    # Ljava/lang/Boolean;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide v6, p0, Lorg/videolan/vlc/Media;->mTime:J

    .line 116
    iput v4, p0, Lorg/videolan/vlc/Media;->mAudioTrack:I

    .line 117
    iput v4, p0, Lorg/videolan/vlc/Media;->mSpuTrack:I

    .line 118
    iput-wide v6, p0, Lorg/videolan/vlc/Media;->mLength:J

    .line 120
    iput v5, p0, Lorg/videolan/vlc/Media;->mWidth:I

    .line 121
    iput v5, p0, Lorg/videolan/vlc/Media;->mHeight:I

    .line 132
    iput-object p1, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, "mLibVlc":Lorg/videolan/vlc/LibVLC;
    :try_start_0
    invoke-static {}, Lorg/videolan/vlc/LibVLC;->getInstance()Lorg/videolan/vlc/LibVLC;

    move-result-object v2

    .line 137
    const/4 v4, -0x1

    iput v4, p0, Lorg/videolan/vlc/Media;->mType:I

    .line 139
    iget-object v4, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/videolan/vlc/LibVLC;->readTracksInfo(Ljava/lang/String;)[Lorg/videolan/vlc/TrackInfo;

    move-result-object v3

    .line 141
    .local v3, "tracks":[Lorg/videolan/vlc/TrackInfo;
    invoke-direct {p0, v3}, Lorg/videolan/vlc/Media;->extractTrackInfo([Lorg/videolan/vlc/TrackInfo;)V
    :try_end_0
    .catch Lorg/videolan/vlc/LibVlcException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v3    # "tracks":[Lorg/videolan/vlc/TrackInfo;
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v0

    .line 149
    .local v0, "db":Lorg/videolan/vlc/DatabaseManager;
    invoke-virtual {v0, p0}, Lorg/videolan/vlc/DatabaseManager;->addMedia(Lorg/videolan/vlc/Media;)V

    .line 151
    .end local v0    # "db":Lorg/videolan/vlc/DatabaseManager;
    :cond_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Lorg/videolan/vlc/LibVlcException;
    invoke-virtual {v1}, Lorg/videolan/vlc/LibVlcException;->printStackTrace()V

    goto :goto_0
.end method

.method private extractTrackInfo([Lorg/videolan/vlc/TrackInfo;)V
    .locals 12
    .param p1, "tracks"    # [Lorg/videolan/vlc/TrackInfo;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 170
    if-nez p1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lorg/videolan/vlc/TrackInfo;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_5

    aget-object v5, v0, v3

    .line 174
    .local v5, "track":Lorg/videolan/vlc/TrackInfo;
    iget v6, v5, Lorg/videolan/vlc/TrackInfo;->Type:I

    if-ne v6, v10, :cond_3

    .line 175
    iput v11, p0, Lorg/videolan/vlc/Media;->mType:I

    .line 176
    iget v6, v5, Lorg/videolan/vlc/TrackInfo;->Width:I

    iput v6, p0, Lorg/videolan/vlc/Media;->mWidth:I

    .line 177
    iget v6, v5, Lorg/videolan/vlc/TrackInfo;->Height:I

    iput v6, p0, Lorg/videolan/vlc/Media;->mHeight:I

    .line 173
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_3
    iget v6, p0, Lorg/videolan/vlc/Media;->mType:I

    if-ne v6, v9, :cond_4

    iget v6, v5, Lorg/videolan/vlc/TrackInfo;->Type:I

    if-nez v6, :cond_4

    .line 179
    iput v10, p0, Lorg/videolan/vlc/Media;->mType:I

    goto :goto_2

    .line 180
    :cond_4
    iget v6, v5, Lorg/videolan/vlc/TrackInfo;->Type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 181
    iget-wide v6, v5, Lorg/videolan/vlc/TrackInfo;->Length:J

    iput-wide v6, p0, Lorg/videolan/vlc/Media;->mLength:J

    .line 182
    iget-object v6, v5, Lorg/videolan/vlc/TrackInfo;->Title:Ljava/lang/String;

    iput-object v6, p0, Lorg/videolan/vlc/Media;->mTitle:Ljava/lang/String;

    .line 183
    iget-object v6, v5, Lorg/videolan/vlc/TrackInfo;->Artist:Ljava/lang/String;

    const v7, 0x7f0b002b

    invoke-static {v6, v7}, Lorg/videolan/vlc/Util;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/Media;->mArtist:Ljava/lang/String;

    .line 184
    iget-object v6, v5, Lorg/videolan/vlc/TrackInfo;->Album:Ljava/lang/String;

    const v7, 0x7f0b002c

    invoke-static {v6, v7}, Lorg/videolan/vlc/Util;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/Media;->mAlbum:Ljava/lang/String;

    .line 185
    iget-object v6, v5, Lorg/videolan/vlc/TrackInfo;->Genre:Ljava/lang/String;

    const v7, 0x7f0b002d

    invoke-static {v6, v7}, Lorg/videolan/vlc/Util;->getValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    .line 186
    iget-object v6, v5, Lorg/videolan/vlc/TrackInfo;->ArtworkURL:Ljava/lang/String;

    iput-object v6, p0, Lorg/videolan/vlc/Media;->mArtworkURL:Ljava/lang/String;

    .line 187
    const-string v6, "VLC/MediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Title "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v6, "VLC/MediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Artist "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/Media;->mArtist:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v6, "VLC/MediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Genre "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v6, "VLC/MediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Album "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/videolan/vlc/Media;->mAlbum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 195
    .end local v5    # "track":Lorg/videolan/vlc/TrackInfo;
    :cond_5
    iget v6, p0, Lorg/videolan/vlc/Media;->mType:I

    if-ne v6, v9, :cond_0

    .line 196
    iget-object v6, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 197
    .local v1, "dotIndex":I
    if-eq v1, v9, :cond_0

    .line 198
    iget-object v6, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "fileExt":Ljava/lang/String;
    sget-object v6, Lorg/videolan/vlc/Media;->VIDEO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 200
    iput v11, p0, Lorg/videolan/vlc/Media;->mType:I

    goto/16 :goto_0

    .line 201
    :cond_6
    sget-object v6, Lorg/videolan/vlc/Media;->AUDIO_EXTENSIONS:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    iput v10, p0, Lorg/videolan/vlc/Media;->mType:I

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lorg/videolan/vlc/Media;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/Media;->compareTo(Lorg/videolan/vlc/Media;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/videolan/vlc/Media;)I
    .locals 2
    .param p1, "another"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 234
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getArtworkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mArtworkURL:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioTrack()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lorg/videolan/vlc/Media;->mAudioTrack:I

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mEncodedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mFilename:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    invoke-static {v0}, Lorg/videolan/vlc/Util;->URItoFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/Media;->mFilename:Ljava/lang/String;

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 356
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    .line 361
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mGenre:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/videolan/vlc/Media;->mHeight:I

    return v0
.end method

.method public getLength()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/videolan/vlc/Media;->mLength:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getNowPlaying()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mNowPlaying:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 296
    iget-object v3, p0, Lorg/videolan/vlc/Media;->mPicture:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    .line 297
    invoke-static {}, Lorg/videolan/vlc/BitmapCache;->getInstance()Lorg/videolan/vlc/BitmapCache;

    move-result-object v1

    .line 298
    .local v1, "cache":Lorg/videolan/vlc/BitmapCache;
    iget-object v3, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/videolan/vlc/BitmapCache;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 299
    .local v2, "picture":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 304
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    .local v0, "c":Landroid/content/Context;
    invoke-static {v0}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v3

    iget-object v4, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/videolan/vlc/DatabaseManager;->getPicture(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 306
    iget-object v3, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/videolan/vlc/BitmapCache;->addBitmapToMemCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 310
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "cache":Lorg/videolan/vlc/BitmapCache;
    .end local v2    # "picture":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lorg/videolan/vlc/Media;->mPicture:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mPublisher:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mRating:Ljava/lang/String;

    return-object v0
.end method

.method public getSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mSettings:Ljava/lang/String;

    return-object v0
.end method

.method public getSpuTrack()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lorg/videolan/vlc/Media;->mSpuTrack:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    iget v0, p0, Lorg/videolan/vlc/Media;->mType:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/videolan/vlc/Media;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/videolan/vlc/Media;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lorg/videolan/vlc/Media;->mTime:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lorg/videolan/vlc/Media;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/videolan/vlc/Media;->mType:I

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lorg/videolan/vlc/Media;->mTitle:Ljava/lang/String;

    .line 343
    :goto_0
    return-object v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lorg/videolan/vlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, "end":I
    if-gtz v0, :cond_1

    .line 342
    invoke-virtual {p0}, Lorg/videolan/vlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0}, Lorg/videolan/vlc/Media;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTrackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mTrackID:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/videolan/vlc/Media;->mTrackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/videolan/vlc/Media;->mType:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/videolan/vlc/Media;->mWidth:I

    return v0
.end method

.method public isPictureParsed()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/videolan/vlc/Media;->mIsPictureParsed:Z

    return v0
.end method

.method public setAudioTrack(I)V
    .locals 0
    .param p1, "track"    # I

    .prologue
    .line 266
    iput p1, p0, Lorg/videolan/vlc/Media;->mAudioTrack:I

    .line 267
    return-void
.end method

.method public setPicture(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p"    # Landroid/graphics/Bitmap;

    .prologue
    .line 315
    const-string v1, "VLC/MediaItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set new picture for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_0
    invoke-static {p1}, Lorg/videolan/vlc/DatabaseManager;->getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/Media;->mLocation:Ljava/lang/String;

    sget-object v3, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_PICTURE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    invoke-virtual {v1, v2, v3, p2}, Lorg/videolan/vlc/DatabaseManager;->updateMedia(Ljava/lang/String;Lorg/videolan/vlc/DatabaseManager$mediaColumn;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/videolan/vlc/Media;->mIsPictureParsed:Z

    .line 326
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPictureParsed(Z)V
    .locals 0
    .param p1, "isParsed"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Lorg/videolan/vlc/Media;->mIsPictureParsed:Z

    .line 334
    return-void
.end method

.method public setSpuTrack(I)V
    .locals 0
    .param p1, "track"    # I

    .prologue
    .line 274
    iput p1, p0, Lorg/videolan/vlc/Media;->mSpuTrack:I

    .line 275
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 258
    iput-wide p1, p0, Lorg/videolan/vlc/Media;->mTime:J

    .line 259
    return-void
.end method

.method public updateMeta()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
