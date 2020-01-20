.class Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/DatabaseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/DatabaseManager;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/DatabaseManager;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;->this$0:Lorg/videolan/vlc/DatabaseManager;

    .line 110
    const-string v0, "vlc_database"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 111
    return-void
.end method


# virtual methods
.method public createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 119
    const-string v0, "CREATE TABLE IF NOT EXISTS media_table (location TEXT PRIMARY KEY NOT NULL, time INTEGER, length INTEGER, type INTEGER, picture BLOB, title VARCHAR(200), artist VARCHAR(200), genre VARCHAR(200), album VARCHAR(200), width INTEGER, height INTEGER, artwork_url VARCHAR(256), audio_track INTEGER, spu_track INTEGER);"

    .line 136
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public dropMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 114
    const-string v0, "DROP TABLE media_table;"

    .line 115
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 142
    const-string v0, "CREATE TABLE IF NOT EXISTS directories_table (path TEXT PRIMARY KEY NOT NULL);"

    .line 148
    .local v0, "createDirTabelQuery":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    const-string v2, "CREATE TABLE IF NOT EXISTS playlist_table (name VARCHAR(200) PRIMARY KEY NOT NULL);"

    .line 157
    .local v2, "createPlaylistTableQuery":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v1, "CREATE TABLE IF NOT EXISTS playlist_media_table (id INTEGER PRIMARY KEY AUTOINCREMENT, playlist_name VARCHAR(200) NOT NULL,media_path TEXT NOT NULL);"

    .line 165
    .local v1, "createPlaylistMediaTableQuery":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v3, "CREATE TABLE IF NOT EXISTS searchhistory_table (key VARCHAR(200) PRIMARY KEY NOT NULL, date DATETIME NOT NULL);"

    .line 174
    .local v3, "createSearchhistoryTabelQuery":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v0, 0x8

    .line 179
    if-ge p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;->dropMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 181
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/DatabaseManager$DatabaseHelper;->createMediaTableQuery(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 183
    :cond_0
    return-void
.end method
