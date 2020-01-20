.class public Lorg/sipdroid/sipua/ui/Caller;
.super Landroid/content/BroadcastReceiver;
.source "Caller.java"


# static fields
.field static noexclude:J


# instance fields
.field last_number:Ljava/lang/String;

.field last_time:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private searchReplaceNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 221
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_0

    .line 256
    .end local p2    # "number":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 227
    .restart local p2    # "number":Ljava/lang/String;
    :cond_0
    aget-object v3, v6, v9

    .line 233
    .local v3, "modNumber":Ljava/lang/String;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 234
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 236
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-ge v1, v7, :cond_2

    .line 238
    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 239
    .local v5, "r":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 240
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 237
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    .end local v1    # "i":I
    .end local v5    # "r":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 248
    move-object v3, p2

    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_3
    :goto_2
    move-object p2, v3

    .line 256
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/util/regex/PatternSyntaxException;
    move-object v3, p2

    goto :goto_2
.end method


# virtual methods
.method getTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 6
    .param p1, "sInput"    # Ljava/lang/String;
    .param p2, "sDelimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 262
    .local v4, "vTokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 263
    .local v2, "iStartIndex":I
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "iEndIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 266
    invoke-virtual {p1, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 267
    .local v1, "iNextIndex":I
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "sPattern":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 269
    move v2, v1

    .line 264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v1    # "iNextIndex":I
    .end local v3    # "sPattern":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 272
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_1
    return-object v4
.end method

.method isExcludedNum(Ljava/util/Vector;Ljava/lang/String;)Z
    .locals 6
    .param p2, "sNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "vExNums":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "p":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    .line 285
    .local v1, "m":Ljava/util/regex/Matcher;
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 286
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    const/4 v4, 0x1

    .line 295
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :goto_1
    return v4

    .line 288
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v2    # "p":Ljava/util/regex/Pattern;
    :catch_0
    move-exception v3

    .local v3, "pse":Ljava/util/regex/PatternSyntaxException;
    move v4, v5

    .line 290
    goto :goto_1

    .line 279
    .end local v3    # "pse":Ljava/util/regex/PatternSyntaxException;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_1
    move v4, v5

    .line 295
    goto :goto_1
.end method

.method isExcludedType(Ljava/util/Vector;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 10
    .param p2, "sNumber"    # Ljava/lang/String;
    .param p3, "oContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "vExTypesCode":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 300
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 301
    .local v1, "contactRef":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v8

    const-string v0, "type"

    aput-object v0, v2, v9

    .line 306
    .local v2, "PHONES_PROJECTION":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, "phonesCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 310
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 313
    .local v7, "type":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 318
    .end local v7    # "type":I
    :goto_0
    return v0

    .line 316
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 318
    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    .line 56
    .local v18, "intentAction":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/ui/Caller;->getResultData()Ljava/lang/String;

    move-result-object v20

    .line 57
    .local v20, "number":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 59
    .local v16, "force":Ljava/lang/Boolean;
    const-string v4, "android.intent.action.NEW_OUTGOING_CALL"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v20, :cond_0

    .line 62
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "pref"

    const-string v8, "SIP"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "PSTN"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v25, 0x1

    .line 64
    .local v25, "sip_type":Z
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "pref"

    const-string v8, "SIP"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ASK"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 66
    .local v10, "ask":Z
    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eqz v4, :cond_5

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->isBluetoothAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 67
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/ui/Caller;->setResultData(Ljava/lang/String;)V

    .line 68
    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    packed-switch v4, :pswitch_data_0

    .line 74
    :cond_2
    sget-boolean v4, Lorg/sipdroid/media/RtpStreamReceiver;->bluetoothmode:Z

    if-eqz v4, :cond_4

    .line 75
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->rejectcall()V

    goto :goto_0

    .line 63
    .end local v10    # "ask":Z
    .end local v25    # "sip_type":Z
    :cond_3
    const/16 v25, 0x0

    goto :goto_1

    .line 70
    .restart local v10    # "ask":Z
    .restart local v25    # "sip_type":Z
    :pswitch_0
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->answercall()V

    .line 71
    sget-boolean v4, Lorg/sipdroid/media/RtpStreamReceiver;->bluetoothmode:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 77
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->togglebluetooth()V

    goto :goto_0

    .line 82
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/sipua/ui/Caller;->last_number:Ljava/lang/String;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/sipua/ui/Caller;->last_number:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/sipdroid/sipua/ui/Caller;->last_time:J

    move-wide/from16 v31, v0

    sub-long v7, v7, v31

    const-wide/16 v31, 0xbb8

    cmp-long v4, v7, v31

    if-gez v4, :cond_6

    .line 83
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/ui/Caller;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lorg/sipdroid/sipua/ui/Caller;->last_time:J

    .line 87
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/sipdroid/sipua/ui/Caller;->last_number:Ljava/lang/String;

    .line 88
    const-string v4, "+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 90
    if-nez v25, :cond_a

    const/16 v25, 0x1

    .line 91
    :goto_2
    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 92
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 94
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-wide v31, Lorg/sipdroid/sipua/ui/Caller;->noexclude:J

    const-wide/16 v33, 0x2710

    add-long v31, v31, v33

    cmp-long v4, v7, v31

    if-gez v4, :cond_8

    .line 95
    const-wide/16 v7, 0x0

    sput-wide v7, Lorg/sipdroid/sipua/ui/Caller;->noexclude:J

    .line 96
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 98
    :cond_8
    if-eqz v25, :cond_14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    .line 99
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "excludepat"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 100
    .local v23, "sExPat":Ljava/lang/String;
    const/4 v11, 0x0

    .line 101
    .local v11, "bExNums":Z
    const/4 v12, 0x0

    .line 102
    .local v12, "bExTypes":Z
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_12

    .line 104
    const-string v4, ","

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lorg/sipdroid/sipua/ui/Caller;->getTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v28

    .line 105
    .local v28, "vExPats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v29, Ljava/util/Vector;

    invoke-direct/range {v29 .. v29}, Ljava/util/Vector;-><init>()V

    .line 106
    .local v29, "vPatNums":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 107
    .local v30, "vTypesCode":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v4

    move/from16 v0, v17

    if-ge v0, v4, :cond_10

    .line 109
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "h"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "H"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 110
    :cond_9
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 107
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 90
    .end local v11    # "bExNums":Z
    .end local v12    # "bExTypes":Z
    .end local v17    # "i":I
    .end local v23    # "sExPat":Ljava/lang/String;
    .end local v28    # "vExPats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v29    # "vPatNums":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v30    # "vTypesCode":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 111
    .restart local v11    # "bExNums":Z
    .restart local v12    # "bExTypes":Z
    .restart local v17    # "i":I
    .restart local v23    # "sExPat":Ljava/lang/String;
    .restart local v28    # "vExPats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v29    # "vPatNums":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v30    # "vTypesCode":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_b
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "m"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "M"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 112
    :cond_c
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 113
    :cond_d
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "w"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "W"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 114
    :cond_e
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 116
    :cond_f
    move-object/from16 v0, v28

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 118
    :cond_10
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 119
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/sipdroid/sipua/ui/Caller;->isExcludedType(Ljava/util/Vector;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v12

    .line 120
    :cond_11
    invoke-virtual/range {v29 .. v29}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/sipua/ui/Caller;->isExcludedNum(Ljava/util/Vector;Ljava/lang/String;)Z

    move-result v11

    .line 123
    .end local v17    # "i":I
    .end local v28    # "vExPats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v29    # "vPatNums":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v30    # "vTypesCode":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_12
    if-nez v12, :cond_13

    if-eqz v11, :cond_14

    .line 124
    :cond_13
    const/16 v25, 0x0

    .line 127
    .end local v11    # "bExNums":Z
    .end local v12    # "bExTypes":Z
    .end local v23    # "sExPat":Ljava/lang/String;
    :cond_14
    if-nez v25, :cond_15

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/ui/Caller;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_15
    if-eqz v20, :cond_0

    const-string v4, "android.phone.extra.ALREADY_CALLED"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 135
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v26

    .line 136
    .local v26, "sp":Landroid/content/SharedPreferences;
    const-string v4, "prefix"

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 137
    const-string v4, "prefix"

    const-string v7, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 138
    .local v22, "prefix":Ljava/lang/String;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 139
    .local v15, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 140
    const-string v4, "search"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(.*),"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\\1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v4, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    :cond_16
    const-string v4, "prefix"

    invoke-interface {v15, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    .end local v15    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "prefix":Ljava/lang/String;
    :cond_17
    const-string v4, "search"

    const-string v7, ""

    move-object/from16 v0, v26

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 148
    .local v24, "search":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/ui/Caller;->searchReplaceNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 151
    .local v13, "callthru_number":Ljava/lang/String;
    if-nez v10, :cond_1f

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1f

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "par"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 159
    sget-object v4, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 160
    .local v5, "contactRef":Landroid/net/Uri;
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "number"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "type"

    aput-object v7, v6, v4

    .line 164
    .local v6, "PHONES_PROJECTION":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "isprimary DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 166
    .local v21, "phonesCursor":Landroid/database/Cursor;
    if-eqz v21, :cond_1e

    .line 168
    const-string v20, ""

    .line 169
    :cond_18
    :goto_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 171
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 172
    .local v27, "type":I
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, "n":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 174
    const/4 v4, 0x2

    move/from16 v0, v27

    if-eq v0, v4, :cond_19

    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_19

    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_18

    .line 176
    :cond_19
    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 177
    :cond_1a
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/ui/Caller;->searchReplaceNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    goto :goto_5

    .line 181
    .end local v19    # "n":Ljava/lang/String;
    .end local v27    # "type":I
    :cond_1b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 182
    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 183
    move-object/from16 v20, v13

    .line 190
    .end local v5    # "contactRef":Landroid/net/Uri;
    .end local v6    # "PHONES_PROJECTION":[Ljava/lang/String;
    .end local v21    # "phonesCursor":Landroid/database/Cursor;
    :cond_1c
    :goto_6
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "pref"

    const-string v8, "SIP"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "SIPONLY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 191
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 192
    :cond_1d
    if-nez v10, :cond_20

    invoke-static/range {p1 .. p1}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v7}, Lorg/sipdroid/sipua/SipdroidEngine;->call(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 193
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/ui/Caller;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 185
    .restart local v5    # "contactRef":Landroid/net/Uri;
    .restart local v6    # "PHONES_PROJECTION":[Ljava/lang/String;
    .restart local v21    # "phonesCursor":Landroid/database/Cursor;
    :cond_1e
    move-object/from16 v20, v13

    goto :goto_6

    .line 188
    .end local v5    # "contactRef":Landroid/net/Uri;
    .end local v6    # "PHONES_PROJECTION":[Ljava/lang/String;
    .end local v21    # "phonesCursor":Landroid/database/Cursor;
    :cond_1f
    move-object/from16 v20, v13

    goto :goto_6

    .line 194
    :cond_20
    if-nez v10, :cond_21

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "callthru"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "callthru2"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "callthru_prefix":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 197
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/sipdroid/sipua/ui/Caller;->setResultData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v14    # "callthru_prefix":Ljava/lang/String;
    :cond_21
    if-nez v10, :cond_22

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 199
    :cond_22
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/ui/Caller;->setResultData(Ljava/lang/String;)V

    .line 200
    move-object/from16 v19, v20

    .line 201
    .restart local v19    # "n":Ljava/lang/String;
    new-instance v4, Lorg/sipdroid/sipua/ui/Caller$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2}, Lorg/sipdroid/sipua/ui/Caller$1;-><init>(Lorg/sipdroid/sipua/ui/Caller;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v4}, Lorg/sipdroid/sipua/ui/Caller$1;->start()V

    goto/16 :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
