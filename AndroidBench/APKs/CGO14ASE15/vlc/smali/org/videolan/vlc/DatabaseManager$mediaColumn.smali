.class public final enum Lorg/videolan/vlc/DatabaseManager$mediaColumn;
.super Ljava/lang/Enum;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "mediaColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/videolan/vlc/DatabaseManager$mediaColumn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_ALBUM:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_ARTIST:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_ARTWORKURL:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_AUDIOTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_GENRE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_HEIGHT:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_LENGTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_PATH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_PICTURE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_SPUTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_TABLE_NAME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_TIME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_TITLE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_TYPE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

.field public static final enum MEDIA_WIDTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_TABLE_NAME"

    invoke-direct {v0, v1, v3}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TABLE_NAME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_PATH"

    invoke-direct {v0, v1, v4}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_PATH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_TIME"

    invoke-direct {v0, v1, v5}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TIME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_LENGTH"

    invoke-direct {v0, v1, v6}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_LENGTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    .line 85
    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_TYPE"

    invoke-direct {v0, v1, v7}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TYPE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_PICTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_PICTURE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_TITLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TITLE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_ARTIST"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_ARTIST:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_GENRE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_GENRE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_ALBUM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_ALBUM:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    .line 86
    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_WIDTH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_WIDTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_HEIGHT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_HEIGHT:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_ARTWORKURL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_ARTWORKURL:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_AUDIOTRACK"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_AUDIOTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    new-instance v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    const-string v1, "MEDIA_SPUTRACK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_SPUTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    .line 83
    const/16 v0, 0xf

    new-array v0, v0, [Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    sget-object v1, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TABLE_NAME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v1, v0, v3

    sget-object v1, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_PATH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v1, v0, v4

    sget-object v1, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TIME:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v1, v0, v5

    sget-object v1, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_LENGTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v1, v0, v6

    sget-object v1, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TYPE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_PICTURE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_TITLE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_ARTIST:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_GENRE:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_ALBUM:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_WIDTH:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_HEIGHT:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_ARTWORKURL:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_AUDIOTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->MEDIA_SPUTRACK:Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    aput-object v2, v0, v1

    sput-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->$VALUES:[Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/vlc/DatabaseManager$mediaColumn;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    return-object v0
.end method

.method public static values()[Lorg/videolan/vlc/DatabaseManager$mediaColumn;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->$VALUES:[Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    invoke-virtual {v0}, [Lorg/videolan/vlc/DatabaseManager$mediaColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/videolan/vlc/DatabaseManager$mediaColumn;

    return-object v0
.end method
