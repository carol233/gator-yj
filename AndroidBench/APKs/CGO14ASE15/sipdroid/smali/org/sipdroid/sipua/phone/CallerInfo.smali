.class public Lorg/sipdroid/sipua/phone/CallerInfo;
.super Ljava/lang/Object;
.source "CallerInfo.java"


# static fields
.field public static final PRIVATE_NUMBER:Ljava/lang/String; = "-2"

.field private static final TAG:Ljava/lang/String; = "CallerInfo"

.field public static final UNKNOWN_NUMBER:Ljava/lang/String; = "-1"


# instance fields
.field public cachedPhoto:Landroid/graphics/drawable/Drawable;

.field public contactRefUri:Landroid/net/Uri;

.field public contactRingtoneUri:Landroid/net/Uri;

.field public isCachedPhotoCurrent:Z

.field public name:Ljava/lang/String;

.field public needUpdate:Z

.field public numberLabel:Ljava/lang/String;

.field public numberType:I

.field public person_id:J

.field public phoneLabel:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;

.field public photoResource:I

.field public shouldSendToVoicemail:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;)Lorg/sipdroid/sipua/phone/CallerInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/sipdroid/sipua/phone/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lorg/sipdroid/sipua/phone/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lorg/sipdroid/sipua/phone/CallerInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactRef"    # Landroid/net/Uri;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, -0x1

    .line 112
    new-instance v1, Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-direct {v1}, Lorg/sipdroid/sipua/phone/CallerInfo;-><init>()V

    .line 113
    .local v1, "info":Lorg/sipdroid/sipua/phone/CallerInfo;
    iput v4, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->photoResource:I

    .line 114
    iput-object v8, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 115
    iput v4, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->numberType:I

    .line 116
    iput-object v8, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 117
    iput-object v8, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-boolean v4, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->isCachedPhotoCurrent:Z

    .line 122
    if-eqz p2, :cond_5

    .line 123
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 128
    const-string v5, "name"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "columnIndex":I
    if-eq v0, v7, :cond_0

    .line 130
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    .line 134
    :cond_0
    const-string v5, "number"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 135
    if-eq v0, v7, :cond_1

    .line 136
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 140
    :cond_1
    const-string v5, "label"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 141
    if-eq v0, v7, :cond_2

    .line 142
    const-string v5, "type"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 143
    .local v2, "typeColumnIndex":I
    if-eq v2, v7, :cond_2

    .line 144
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->numberType:I

    .line 145
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->numberLabel:Ljava/lang/String;

    .line 146
    iget v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->numberType:I

    iget-object v6, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v5, v6}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 153
    .end local v2    # "typeColumnIndex":I
    :cond_2
    const-string v5, "person"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    if-eq v0, v7, :cond_6

    .line 155
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    .line 165
    :cond_3
    :goto_0
    const-string v5, "custom_ringtone"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 166
    if-eq v0, v7, :cond_7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 167
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 174
    :goto_1
    const-string v5, "send_to_voicemail"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 175
    if-eq v0, v7, :cond_8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v3, :cond_8

    :goto_2
    iput-boolean v3, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->shouldSendToVoicemail:Z

    .line 178
    .end local v0    # "columnIndex":I
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_5
    iput-boolean v4, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->needUpdate:Z

    .line 182
    iget-object v3, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/sipdroid/sipua/phone/CallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    .line 183
    iput-object p1, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 185
    return-object v1

    .line 157
    .restart local v0    # "columnIndex":I
    :cond_6
    const-string v5, "_id"

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 158
    if-eq v0, v7, :cond_3

    .line 159
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    goto :goto_0

    .line 169
    :cond_7
    iput-object v8, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    goto :goto_1

    :cond_8
    move v3, v4

    .line 175
    goto :goto_2
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 206
    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
