.class final Lorg/sipdroid/sipua/ui/Checkin$1;
.super Ljava/lang/Thread;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Checkin;->url(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$in_call:Z

.field final synthetic val$opt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Checkin$1;->val$opt:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/sipdroid/sipua/ui/Checkin$1;->val$in_call:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 24
    :try_start_0
    new-instance v8, Ljava/net/URL;

    iget-object v10, p0, Lorg/sipdroid/sipua/ui/Checkin$1;->val$opt:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 29
    .local v8, "url":Ljava/net/URL;
    iget-boolean v10, p0, Lorg/sipdroid/sipua/ui/Checkin$1;->val$in_call:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_0

    .line 31
    const-wide/16 v10, 0xbb8

    :try_start_1
    invoke-static {v10, v11}, Lorg/sipdroid/sipua/ui/Checkin$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 36
    .local v3, "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 37
    .local v6, "line":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 61
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 66
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :goto_2
    return-void

    .line 38
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_2
    const-string v10, " "

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "lines":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 40
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "createButton"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 41
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sput v10, Lorg/sipdroid/sipua/ui/Checkin;->createButton:I

    goto :goto_1

    .line 62
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "lines":[Ljava/lang/String;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    goto :goto_2

    .line 43
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "lines":[Ljava/lang/String;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_3
    const/4 v1, 0x0

    .line 44
    .local v1, "i":I
    sget-object v10, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v10

    iget-object v0, v10, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    .local v0, "arr$":[Lorg/sipdroid/sipua/UserAgentProfile;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_3
    if-ge v2, v5, :cond_1

    aget-object v9, v0, v2

    .line 45
    .local v9, "user_profile":Lorg/sipdroid/sipua/UserAgentProfile;
    sget-object v10, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dns"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    if-eqz v9, :cond_6

    iget-object v10, v9, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, v9, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 48
    :cond_4
    iget-boolean v10, p0, Lorg/sipdroid/sipua/ui/Checkin$1;->val$in_call:Z

    if-eqz v10, :cond_5

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sput-wide v10, Lorg/sipdroid/sipua/ui/Checkin;->hold:J

    .line 50
    sget-object v10, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v10

    invoke-virtual {v10}, Lorg/sipdroid/sipua/SipdroidEngine;->rejectcall()V

    .line 52
    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    sget-object v10, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 32
    .end local v0    # "arr$":[Lorg/sipdroid/sipua/UserAgentProfile;
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v5    # "len$":I
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "lines":[Ljava/lang/String;
    .end local v9    # "user_profile":Lorg/sipdroid/sipua/UserAgentProfile;
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method
