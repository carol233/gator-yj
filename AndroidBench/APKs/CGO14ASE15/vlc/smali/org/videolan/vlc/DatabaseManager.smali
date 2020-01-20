.class public Lorg/videolan/vlc/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/DatabaseManager$1;,
        Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;,
        Lorg/videolan/vlc/DatabaseManager$mediaColumn;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/DatabaseManager"

.field private static instance:Lorg/videolan/vlc/DatabaseManager;


# instance fields
.field private final CHUNK_SIZE:I

.field private final DB_NAME:Ljava/lang/String;

.field private final DB_VERSION:I

.field private final DIR_ROW_PATH:Ljava/lang/String;

.field private final DIR_TABLE_NAME:Ljava/lang/String;

.field private final MEDIA_ALBUM:Ljava/lang/String;

.field private final MEDIA_ARTIST:Ljava/lang/String;

.field private final MEDIA_ARTWORKURL:Ljava/lang/String;

.field private final MEDIA_AUDIOTRACK:Ljava/lang/String;

.field private final MEDIA_GENRE:Ljava/lang/String;

.field private final MEDIA_HEIGHT:Ljava/lang/String;

.field private final MEDIA_LENGTH:Ljava/lang/String;

.field private final MEDIA_LOCATION:Ljava/lang/String;

.field private final MEDIA_PICTURE:Ljava/lang/String;

.field private final MEDIA_SPUTRACK:Ljava/lang/String;

.field private final MEDIA_TABLE_NAME:Ljava/lang/String;

.field private final MEDIA_TIME:Ljava/lang/String;

.field private final MEDIA_TITLE:Ljava/lang/String;

.field private final MEDIA_TYPE:Ljava/lang/String;

.field private final MEDIA_WIDTH:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_ID:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_MEDIAPATH:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_PLAYLISTNAME:Ljava/lang/String;

.field private final PLAYLIST_MEDIA_TABLE_NAME:Ljava/lang/String;

.field private final PLAYLIST_NAME:Ljava/lang/String;

.field private final PLAYLIST_TABLE_NAME:Ljava/lang/String;

.field private final SEARCHHISTORY_DATE:Ljava/lang/String;

.field private final SEARCHHISTORY_KEY:Ljava/lang/String;

.field private final SEARCHHISTORY_TABLE_NAME:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v1, "vlc_database"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->DB_NAME:Ljava/lang/String;

    .line 49
    const/16 v1, 0x8

    iput v1, p0, Lorg/videolan/vlc/DatabaseManager;->DB_VERSION:I

    .line 50
    const/16 v1, 0x32

    iput v1, p0, Lorg/videolan/vlc/DatabaseManager;->CHUNK_SIZE:I

    .line 52
    const-string v1, "directories_table"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->DIR_TABLE_NAME:Ljava/lang/String;

    .line 53
    const-string v1, "path"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->DIR_ROW_PATH:Ljava/lang/String;

    .line 55
    const-string v1, "media_table"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_TABLE_NAME:Ljava/lang/String;

    .line 56
    const-string v1, "location"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_LOCATION:Ljava/lang/String;

    .line 57
    const-string v1, "time"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_TIME:Ljava/lang/String;

    .line 58
    const-string v1, "length"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_LENGTH:Ljava/lang/String;

    .line 59
    const-string v1, "type"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_TYPE:Ljava/lang/String;

    .line 60
    const-string v1, "picture"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_PICTURE:Ljava/lang/String;

    .line 61
    const-string v1, "title"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_TITLE:Ljava/lang/String;

    .line 62
    const-string v1, "artist"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_ARTIST:Ljava/lang/String;

    .line 63
    const-string v1, "genre"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_GENRE:Ljava/lang/String;

    .line 64
    const-string v1, "album"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_ALBUM:Ljava/lang/String;

    .line 65
    const-string v1, "width"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_WIDTH:Ljava/lang/String;

    .line 66
    const-string v1, "height"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_HEIGHT:Ljava/lang/String;

    .line 67
    const-string v1, "artwork_url"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_ARTWORKURL:Ljava/lang/String;

    .line 68
    const-string v1, "audio_track"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_AUDIOTRACK:Ljava/lang/String;

    .line 69
    const-string v1, "spu_track"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->MEDIA_SPUTRACK:Ljava/lang/String;

    .line 71
    const-string v1, "playlist_table"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->PLAYLIST_TABLE_NAME:Ljava/lang/String;

    .line 72
    const-string v1, "name"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->PLAYLIST_NAME:Ljava/lang/String;

    .line 74
    const-string v1, "playlist_media_table"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->PLAYLIST_MEDIA_TABLE_NAME:Ljava/lang/String;

    .line 75
    const-string v1, "id"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->PLAYLIST_MEDIA_ID:Ljava/lang/String;

    .line 76
    const-string v1, "playlist_name"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->PLAYLIST_MEDIA_PLAYLISTNAME:Ljava/lang/String;

    .line 77
    const-string v1, "media_path"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->PLAYLIST_MEDIA_MEDIAPATH:Ljava/lang/String;

    .line 79
    const-string v1, "searchhistory_table"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->SEARCHHISTORY_TABLE_NAME:Ljava/lang/String;

    .line 80
    const-string v1, "date"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->SEARCHHISTORY_DATE:Ljava/lang/String;

    .line 81
    const-string v1, "key"

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->SEARCHHISTORY_KEY:Ljava/lang/String;

    .line 96
    new-instance v0, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;

    invoke-direct {v0, p0, p1}, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;-><init>(Lorg/videolan/vlc/DatabaseManager;Landroid/content/Context;)V

    .line 97
    .local v0, "helper":Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;
    invoke-virtual {v0}, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lorg/videolan/vlc/DatabaseManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-class v1, Lorg/videolan/vlc/DatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/videolan/vlc/DatabaseManager;->instance:Lorg/videolan/vlc/DatabaseManager;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/videolan/vlc/DatabaseManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/videolan/vlc/DatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/videolan/vlc/DatabaseManager;->instance:Lorg/videolan/vlc/DatabaseManager;

    .line 104
    :cond_0
    sget-object v0, Lorg/videolan/vlc/DatabaseManager;->instance:Lorg/videolan/vlc/DatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addDir(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/DatabaseManager;->mediaDirExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "directories_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    monitor-exit p0

    return-void

    .line 526
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addMedia(Lorg/videolan/vlc/Media;)V
    .locals 4
    .param p1, "media"    # Lorg/videolan/vlc/Media;

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "location"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "time"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    const-string v1, "length"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 248
    const-string v1, "type"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v1, "title"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "artist"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getArtist()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "genre"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getGenre()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v1, "album"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getAlbum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v1, "width"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v1, "height"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 255
    const-string v1, "artwork_url"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getArtworkURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v1, "audio_track"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getAudioTrack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 257
    const-string v1, "spu_track"

    invoke-virtual {p1}, Lorg/videolan/vlc/Media;->getSpuTrack()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    iget-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "media_table"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 243
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addMediaToPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 226
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "playlist_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "media_path"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public addPlaylist(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 215
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "playlist_table"

    const-string v3, "NULL"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 217
    return-void
.end method

.method public declared-synchronized addSearchhistoryItem(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 594
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 595
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 596
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 597
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v3, "date"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "searchhistory_table"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    .line 594
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clearSearchhistory()V
    .locals 4

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "searchhistory_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deletePlaylist(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist_table"

    const-string v2, "name=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public declared-synchronized emptyDatabase()V
    .locals 4

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMedia(Landroid/content/Context;Ljava/lang/String;)Lorg/videolan/vlc/Media;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 400
    monitor-enter p0

    const/16 v20, 0x0

    .line 402
    .local v20, "media":Lorg/videolan/vlc/Media;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "media_table"

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "time"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "length"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "artist"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "genre"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "album"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "width"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "height"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "artwork_url"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "audio_track"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "spu_track"

    aput-object v5, v3, v4

    const-string v4, "location=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 421
    .local v19, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    new-instance v1, Lorg/videolan/vlc/Media;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v2, 0x9

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0xa

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v2, 0xb

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lorg/videolan/vlc/Media;-><init>(Landroid/content/Context;Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    .end local v20    # "media":Lorg/videolan/vlc/Media;
    .local v1, "media":Lorg/videolan/vlc/Media;
    :goto_0
    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 438
    monitor-exit p0

    return-object v1

    .line 400
    .end local v1    # "media":Lorg/videolan/vlc/Media;
    .end local v19    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "media":Lorg/videolan/vlc/Media;
    :catchall_0
    move-exception v2

    move-object/from16 v1, v20

    .end local v20    # "media":Lorg/videolan/vlc/Media;
    .restart local v1    # "media":Lorg/videolan/vlc/Media;
    :goto_1
    monitor-exit p0

    throw v2

    .restart local v19    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    goto :goto_1

    .end local v1    # "media":Lorg/videolan/vlc/Media;
    .restart local v20    # "media":Lorg/videolan/vlc/Media;
    :cond_0
    move-object/from16 v1, v20

    .end local v20    # "media":Lorg/videolan/vlc/Media;
    .restart local v1    # "media":Lorg/videolan/vlc/Media;
    goto :goto_0
.end method

.method public declared-synchronized getMediaDirs()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 561
    .local v10, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "directories_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 565
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v9, "dir":Ljava/io/File;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    .end local v9    # "dir":Ljava/io/File;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit p0

    return-object v10

    .line 558
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "paths":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediaFiles()Ljava/util/HashSet;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v10, "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 292
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    new-instance v9, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    .end local v9    # "file":Ljava/io/File;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-object v10

    .line 285
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "files":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMedias(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/videolan/vlc/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v22, "medias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/vlc/Media;>;"
    const/16 v19, 0x0

    .line 309
    .local v19, "chunk_count":I
    const/16 v20, 0x0

    .line 312
    .local v20, "count":I
    :cond_0
    const/16 v20, 0x0

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SELECT %s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s FROM %s LIMIT %d OFFSET %d"

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "time"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "length"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "type"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "title"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "artist"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "genre"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "album"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "width"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "height"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "artwork_url"

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "audio_track"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "spu_track"

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "location"

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "media_table"

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xf

    mul-int/lit8 v8, v19, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 332
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    :cond_1
    const/16 v2, 0xc

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "location":Ljava/lang/String;
    new-instance v1, Lorg/videolan/vlc/Media;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x0

    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v2, 0x9

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/16 v2, 0xb

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v18}, Lorg/videolan/vlc/Media;-><init>(Landroid/content/Context;Ljava/lang/String;JJILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;II)V

    .line 349
    .local v1, "media":Lorg/videolan/vlc/Media;
    invoke-virtual {v1}, Lorg/videolan/vlc/Media;->getLocation()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v20, v20, 0x1

    .line 352
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    .end local v1    # "media":Lorg/videolan/vlc/Media;
    .end local v3    # "location":Ljava/lang/String;
    :cond_2
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    add-int/lit8 v19, v19, 0x1

    .line 357
    const/16 v2, 0x32

    move/from16 v0, v20

    if-eq v0, v2, :cond_0

    .line 359
    monitor-exit p0

    return-object v22

    .line 307
    .end local v19    # "chunk_count":I
    .end local v20    # "count":I
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "medias":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/videolan/vlc/Media;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPicture(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 444
    monitor-enter p0

    const/4 v10, 0x0

    .line 447
    .local v10, "picture":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "picture"

    aput-object v4, v2, v3

    const-string v3, "location=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 453
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 455
    .local v8, "blob":[B
    if-eqz v8, :cond_0

    array-length v0, v8

    if-le v0, v11, :cond_0

    array-length v0, v8

    const v1, 0x7a120

    if-ge v0, v1, :cond_0

    .line 456
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 460
    .end local v8    # "blob":[B
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-object v10

    .line 444
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlaylists()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v9, "playlists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 198
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 205
    invoke-virtual {v9}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSearchhistory(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v10, "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "searchhistory_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 612
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 604
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 615
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "history":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    monitor-exit p0

    return-object v10
.end method

.method public declared-synchronized getVideoTimes(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x32

    .line 365
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 366
    .local v6, "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "chunk_count":I
    const/4 v1, 0x0

    .line 370
    .local v1, "count":I
    :cond_0
    const/4 v1, 0x0

    .line 371
    iget-object v7, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "SELECT %s,%s FROM %s WHERE %s=%d LIMIT %d OFFSET %d"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "location"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "time"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "media_table"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const-string v12, "type"

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    const/16 v12, 0x32

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    mul-int/lit8 v12, v0, 0x32

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 381
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    :cond_1
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "location":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 385
    .local v4, "time":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    add-int/lit8 v1, v1, 0x1

    .line 387
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 390
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "time":J
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    add-int/lit8 v0, v0, 0x1

    .line 392
    if-eq v1, v13, :cond_0

    .line 394
    monitor-exit p0

    return-object v6

    .line 365
    .end local v0    # "chunk_count":I
    .end local v1    # "count":I
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "times":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized mediaDirExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 578
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "directories_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "path"

    aput-object v4, v2, v3

    const-string v3, "path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 583
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 584
    .local v9, "exists":Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return v9

    .line 578
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "exists":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mediaItemExists(Ljava/lang/String;)Z
    .locals 10
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location"

    aput-object v4, v2, v3

    const-string v3, "location=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 274
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 275
    .local v9, "exists":Z
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return v9

    .line 269
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "exists":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDir(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "directories_table"

    const-string v2, "path=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    monitor-exit p0

    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeDirNotUnder(Ljava/lang/String;)V
    .locals 7
    .param p1, "root"    # Ljava/lang/String;

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "directories_table"

    const-string v2, "path NOT LIKE ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    monitor-exit p0

    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeMedia(Ljava/lang/String;)V
    .locals 5
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "media_table"

    const-string v2, "location=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMediaFromPlaylist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "playlistName"    # Ljava/lang/String;
    .param p2, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "playlist_media_table"

    const-string v2, "playlist_name=? media_path=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public removeMedias(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 469
    .local p1, "locations":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 471
    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    .local v1, "location":Ljava/lang/String;
    iget-object v2, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "media_table"

    const-string v4, "location=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 475
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "location":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 473
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    iget-object v2, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 477
    return-void
.end method

.method public declared-synchronized updateMedia(Ljava/lang/String;Lorg/videolan/vlc/DatabaseManager$mediaColumn;Ljava/lang/Object;)V
    .locals 9
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "col"    # Lorg/videolan/vlc/DatabaseManager$mediaColumn;
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 482
    monitor-enter p0

    if-nez p1, :cond_0

    .line 518
    .end local p3    # "object":Ljava/lang/Object;
    :goto_0
    monitor-exit p0

    return-void

    .line 485
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_0
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 486
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v4, Lorg/videolan/vlc/DatabaseManager$1;->$SwitchMap$org$videolan$vlc$DatabaseManager$mediaColumn:[I

    invoke-virtual {p2}, Lorg/videolan/vlc/DatabaseManager$mediaColumn;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 488
    :pswitch_0
    if-eqz p3, :cond_2

    .line 489
    move-object v0, p3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0

    .line 490
    .local v2, "picture":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 491
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 492
    const-string v4, "picture"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 517
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "picture":Landroid/graphics/Bitmap;
    .end local p3    # "object":Ljava/lang/Object;
    :cond_1
    :goto_1
    iget-object v4, p0, Lorg/videolan/vlc/DatabaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "media_table"

    const-string v6, "location=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 482
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 495
    .restart local v3    # "values":Landroid/content/ContentValues;
    .restart local p3    # "object":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string v4, "picture"

    const/4 v5, 0x1

    new-array v5, v5, [B

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 499
    :pswitch_1
    if-eqz p3, :cond_1

    .line 500
    const-string v4, "time"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 503
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_2
    if-eqz p3, :cond_1

    .line 504
    const-string v4, "audio_track"

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 507
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_3
    if-eqz p3, :cond_1

    .line 508
    const-string v4, "spu_track"

    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 511
    .restart local p3    # "object":Ljava/lang/Object;
    :pswitch_4
    if-eqz p3, :cond_1

    .line 512
    const-string v4, "length"

    check-cast p3, Ljava/lang/Long;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
