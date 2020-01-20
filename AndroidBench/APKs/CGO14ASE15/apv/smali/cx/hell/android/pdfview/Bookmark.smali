.class public Lcx/hell/android/pdfview/Bookmark;
.super Ljava/lang/Object;
.source "Bookmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table bookmark (_id integer primary key autoincrement, book text not null, name text not null, entry text, comment text, time integer);"

.field private static final DB_VERSION:I = 0x1

.field public static final KEY_BOOK:Ljava/lang/String; = "book"

.field public static final KEY_COMMENT:Ljava/lang/String; = "comment"

.field public static final KEY_ENTRY:Ljava/lang/String; = "entry"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_TIME:Ljava/lang/String; = "time"


# instance fields
.field private DBHelper:Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcx/hell/android/pdfview/Bookmark;->context:Landroid/content/Context;

    .line 70
    new-instance v0, Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;

    iget-object v1, p0, Lcx/hell/android/pdfview/Bookmark;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcx/hell/android/pdfview/Bookmark;->DBHelper:Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;

    .line 71
    return-void
.end method

.method private nameToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 204
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    .local v0, "digest":Ljava/security/MessageDigest;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 214
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 215
    .local v5, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v2, "hexString":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v5

    if-lt v3, v6, :cond_0

    .line 218
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    .end local v4    # "message":Ljava/lang/String;
    .end local v5    # "messageDigest":[B
    :goto_1
    return-object v6

    .line 205
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 208
    const-string v6, ""

    goto :goto_1

    .line 217
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v2    # "hexString":Ljava/lang/StringBuffer;
    .restart local v3    # "i":I
    .restart local v4    # "message":Ljava/lang/String;
    .restart local v5    # "messageDigest":[B
    :cond_0
    aget-byte v6, v5, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addBookmark(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "entry"    # Lcx/hell/android/pdfview/BookmarkEntry;

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lcx/hell/android/pdfview/Bookmark;->deleteBookmark(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V

    .line 184
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/Bookmark;->nameToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "md5":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "book"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "entry"

    invoke-virtual {p2}, Lcx/hell/android/pdfview/BookmarkEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "comment"

    iget-object v3, p2, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "name"

    const-string v3, "user"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    iget-object v2, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "bookmark"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 192
    return-void
.end method

.method public changeBookmark(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;Lcx/hell/android/pdfview/BookmarkEntry;)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "oldEntry"    # Lcx/hell/android/pdfview/BookmarkEntry;
    .param p3, "newEntry"    # Lcx/hell/android/pdfview/BookmarkEntry;

    .prologue
    .line 177
    invoke-virtual {p0, p1, p2}, Lcx/hell/android/pdfview/Bookmark;->deleteBookmark(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V

    .line 178
    invoke-virtual {p0, p1, p3}, Lcx/hell/android/pdfview/Bookmark;->addBookmark(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V

    .line 179
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcx/hell/android/pdfview/Bookmark;->DBHelper:Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;

    invoke-virtual {v0}, Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;->close()V

    .line 107
    return-void
.end method

.method public deleteBookmark(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V
    .locals 7
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "entry"    # Lcx/hell/android/pdfview/BookmarkEntry;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/Bookmark;->nameToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "md5":Ljava/lang/String;
    iget-object v1, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bookmark"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "book=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= \'user\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    const-string v4, "entry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "comment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 173
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcx/hell/android/pdfview/BookmarkEntry;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Lcx/hell/android/pdfview/BookmarkEntry;->comment:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 171
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public getBookmarks(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcx/hell/android/pdfview/BookmarkEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 148
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v11, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcx/hell/android/pdfview/BookmarkEntry;>;"
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/Bookmark;->nameToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, "md5":Ljava/lang/String;
    iget-object v0, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bookmark"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "entry"

    aput-object v4, v3, v13

    const-string v4, "comment"

    aput-object v4, v3, v1

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "book=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "= \'user\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string v9, "1"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 151
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 154
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 155
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    new-instance v0, Lcx/hell/android/pdfview/BookmarkEntry;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcx/hell/android/pdfview/BookmarkEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 156
    if-nez v0, :cond_0

    .line 160
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_2
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 165
    return-object v11
.end method

.method public getLast(Ljava/lang/String;)Lcx/hell/android/pdfview/BookmarkEntry;
    .locals 14
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/4 v5, 0x0

    .line 131
    const/4 v11, 0x0

    .line 132
    .local v11, "entry":Lcx/hell/android/pdfview/BookmarkEntry;
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/Bookmark;->nameToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "md5":Ljava/lang/String;
    iget-object v0, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "bookmark"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "entry"

    aput-object v4, v3, v13

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "book=\'"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "= \'last\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    const-string v9, "1"

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 134
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 138
    .local v10, "cur":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 139
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v11, Lcx/hell/android/pdfview/BookmarkEntry;

    .end local v11    # "entry":Lcx/hell/android/pdfview/BookmarkEntry;
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcx/hell/android/pdfview/BookmarkEntry;-><init>(Ljava/lang/String;)V

    .line 142
    .restart local v11    # "entry":Lcx/hell/android/pdfview/BookmarkEntry;
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return-object v11
.end method

.method public open()Lcx/hell/android/pdfview/Bookmark;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcx/hell/android/pdfview/Bookmark;->DBHelper:Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;

    invoke-virtual {v0}, Lcx/hell/android/pdfview/Bookmark$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    return-object p0
.end method

.method public setLast(Ljava/lang/String;Lcx/hell/android/pdfview/BookmarkEntry;)V
    .locals 8
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "entry"    # Lcx/hell/android/pdfview/BookmarkEntry;

    .prologue
    const/4 v7, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcx/hell/android/pdfview/Bookmark;->nameToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "md5":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "book"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v2, "entry"

    invoke-virtual {p2}, Lcx/hell/android/pdfview/BookmarkEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "name"

    const-string v3, "last"

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    iget-object v2, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "bookmark"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "book=\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 125
    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= \'last\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v2, v3, v0, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 126
    iget-object v2, p0, Lcx/hell/android/pdfview/Bookmark;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "bookmark"

    invoke-virtual {v2, v3, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 128
    :cond_0
    return-void
.end method
