.class public Lorg/sipdroid/sipua/ui/SIPUri;
.super Landroid/app/Activity;
.source "SIPUri.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method call(Ljava/lang/String;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 41
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lorg/sipdroid/sipua/SipdroidEngine;->call(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lorg/sipdroid/sipua/ui/SIPUri$1;

    invoke-direct {v1, p0}, Lorg/sipdroid/sipua/ui/SIPUri$1;-><init>(Lorg/sipdroid/sipua/ui/SIPUri;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/SIPUri;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f060001

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    sget-object v6, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-nez v6, :cond_0

    sput-object p0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    .line 65
    :cond_0
    invoke-virtual {p0, v10}, Lorg/sipdroid/sipua/ui/SIPUri;->requestWindowFeature(I)Z

    .line 67
    invoke-static {p0, v10}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;Z)V

    .line 68
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/SIPUri;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 70
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sipdroid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 71
    :cond_1
    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "target":Ljava/lang/String;
    :goto_0
    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "pref"

    const-string v8, "SIP"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ASK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 86
    move-object v3, v4

    .line 87
    .local v3, "t":Ljava/lang/String;
    new-array v1, v10, [Ljava/lang/String;

    invoke-virtual {p0, v13}, Lorg/sipdroid/sipua/ui/SIPUri;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v11

    .line 88
    .local v1, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_1
    if-ge v2, v12, :cond_3

    .line 89
    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "callback"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "posurl"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 91
    :cond_2
    new-array v1, v12, [Ljava/lang/String;

    .line 92
    const/high16 v6, 0x7f060000

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/SIPUri;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v11

    .line 93
    invoke-virtual {p0, v13}, Lorg/sipdroid/sipua/ui/SIPUri;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v10

    .line 96
    :cond_3
    move-object v0, v1

    .line 97
    .local v0, "fitems":[Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f020070

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/SIPUri$3;

    invoke-direct {v7, p0, v0, v3}, Lorg/sipdroid/sipua/ui/SIPUri$3;-><init>(Lorg/sipdroid/sipua/ui/SIPUri;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v1, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/SIPUri$2;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/SIPUri$2;-><init>(Lorg/sipdroid/sipua/ui/SIPUri;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    .end local v0    # "fitems":[Ljava/lang/String;
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "p":I
    .end local v3    # "t":Ljava/lang/String;
    :goto_2
    return-void

    .line 73
    .end local v4    # "target":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, "aim"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, "yahoo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, "icq"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, "gtalk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, "msn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 78
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    const-string v8, "@"

    const-string v9, "_at_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".gtalk2voip.com"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "target":Ljava/lang/String;
    goto/16 :goto_0

    .line 79
    .end local v4    # "target":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string v7, "skype"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "target":Ljava/lang/String;
    goto/16 :goto_0

    .line 82
    .end local v4    # "target":Ljava/lang/String;
    :cond_7
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "target":Ljava/lang/String;
    goto/16 :goto_0

    .line 88
    .restart local v1    # "items":[Ljava/lang/String;
    .restart local v2    # "p":I
    .restart local v3    # "t":Ljava/lang/String;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 117
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "p":I
    .end local v3    # "t":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/SIPUri;->call(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/SIPUri;->finish()V

    .line 124
    return-void
.end method
