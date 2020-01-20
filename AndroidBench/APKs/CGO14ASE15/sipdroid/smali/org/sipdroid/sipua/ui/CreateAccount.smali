.class public Lorg/sipdroid/sipua/ui/CreateAccount;
.super Landroid/app/Dialog;
.source "CreateAccount.java"


# static fields
.field static email:Ljava/lang/String;

.field static trunkpassword:Ljava/lang/String;

.field static trunkport:Ljava/lang/String;

.field static trunkserver:Ljava/lang/String;

.field static trunkuser:Ljava/lang/String;


# instance fields
.field buttonCancel:Landroid/widget/Button;

.field buttonOK:Landroid/widget/Button;

.field etConfirm:Landroid/widget/EditText;

.field etName:Landroid/widget/EditText;

.field etPass:Landroid/widget/EditText;

.field line:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field tAdd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Lorg/sipdroid/sipua/ui/CreateAccount$1;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/CreateAccount$1;-><init>(Lorg/sipdroid/sipua/ui/CreateAccount;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method public static isPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 67
    .local v4, "found":Ljava/lang/Boolean;
    const/4 v12, 0x0

    sput-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    sput-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    .line 68
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v12, 0x2

    if-ge v5, v12, :cond_4

    .line 69
    if-eqz v5, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, "j":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "username"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "username":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "server"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "pbxes.org"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 72
    .local v10, "server":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, ""

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 68
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    .end local v8    # "j":Ljava/lang/String;
    .end local v10    # "server":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :cond_1
    const-string v8, ""

    goto :goto_1

    .line 74
    .restart local v8    # "j":Ljava/lang/String;
    .restart local v10    # "server":Ljava/lang/String;
    .restart local v11    # "username":Ljava/lang/String;
    :cond_2
    const-string v12, "pbxes"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 75
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    .line 76
    :cond_3
    if-nez v5, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "protocol"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "tcp"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "tcp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "3g"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v12

    iget-object v12, v12, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    aget-object v12, v12, v5

    iget v12, v12, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 81
    sput-object v10, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    .line 82
    sput-object v11, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkuser:Ljava/lang/String;

    .line 83
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "password"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkpassword:Ljava/lang/String;

    .line 84
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "port"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkport:Ljava/lang/String;

    goto/16 :goto_2

    .line 87
    .end local v8    # "j":Ljava/lang/String;
    .end local v10    # "server":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    .line 104
    :goto_3
    return-object v12

    .line 88
    :cond_5
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v12

    const-string v13, "com.google"

    invoke-virtual {v12, v13}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 89
    .local v2, "accounts":[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, "arr$":[Landroid/accounts/Account;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    if-ge v6, v9, :cond_6

    aget-object v1, v3, v6

    .line 90
    .local v1, "account":Landroid/accounts/Account;
    iget-object v12, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    sput-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    .line 93
    .end local v1    # "account":Landroid/accounts/Account;
    :cond_6
    sget-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    if-nez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_3

    .line 94
    :cond_7
    new-instance v7, Landroid/content/Intent;

    const-string v12, "android.intent.action.SENDTO"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v7, "intent":Landroid/content/Intent;
    const-string v12, "com.google.android.apps.googlevoice"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v12, "smsto"

    const-string v13, ""

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/16 v13, 0x20

    invoke-virtual {v12, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_8

    .line 99
    const/4 v12, 0x0

    sput-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    .line 100
    const v12, 0x7f06008f

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 102
    :cond_8
    sget-object v12, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 103
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New PBX linked to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 104
    :cond_9
    const/4 v12, 0x0

    goto :goto_3
.end method


# virtual methods
.method CreateAccountNow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonOK:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/CreateAccount;->setCancelable(Z)V

    .line 144
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    const-string v1, "Please stand by while your account is being created"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 145
    new-instance v0, Lorg/sipdroid/sipua/ui/CreateAccount$2;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/CreateAccount$2;-><init>(Lorg/sipdroid/sipua/ui/CreateAccount;)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/CreateAccount$2;->start()V

    .line 198
    return-void
.end method

.method generatePassword(I)Ljava/lang/String;
    .locals 6
    .param p1, "length"    # I

    .prologue
    .line 120
    const-string v0, ""

    .line 121
    .local v0, "availableCharacters":Ljava/lang/String;
    const-string v2, ""

    .line 124
    .local v2, "password":Ljava/lang/String;
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0123456789"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 132
    .local v3, "selector":Ljava/util/Random;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_0
    return-object v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x8

    .line 206
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v4, 0x7f030003

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->setContentView(I)V

    .line 208
    const-string v4, "Create Free Account"

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    const v4, 0x7f08001a

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonOK:Landroid/widget/Button;

    .line 210
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonOK:Landroid/widget/Button;

    new-instance v5, Lorg/sipdroid/sipua/ui/CreateAccount$3;

    invoke-direct {v5, p0}, Lorg/sipdroid/sipua/ui/CreateAccount$3;-><init>(Lorg/sipdroid/sipua/ui/CreateAccount;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v4, 0x7f08001b

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonCancel:Landroid/widget/Button;

    .line 216
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->buttonCancel:Landroid/widget/Button;

    new-instance v5, Lorg/sipdroid/sipua/ui/CreateAccount$4;

    invoke-direct {v5, p0}, Lorg/sipdroid/sipua/ui/CreateAccount$4;-><init>(Lorg/sipdroid/sipua/ui/CreateAccount;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v4, 0x7f080012

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etName:Landroid/widget/EditText;

    .line 222
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etName:Landroid/widget/EditText;

    sget-object v5, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    const/4 v6, 0x0

    sget-object v7, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v4, 0x7f080015

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->tAdd:Landroid/widget/TextView;

    .line 224
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->tAdd:Landroid/widget/TextView;

    sget-object v5, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v4, 0x7f080017

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etPass:Landroid/widget/EditText;

    .line 226
    const v4, 0x7f080019

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etConfirm:Landroid/widget/EditText;

    .line 228
    const v4, 0x7f080013

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, "intro":Landroid/widget/TextView;
    const v4, 0x7f080014

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 230
    .local v1, "intro2":Landroid/widget/TextView;
    sget-object v4, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "To save battery life by utilizing SIP over TCP protocol, a new PBXes account is being offered to you. It will be automatically linked to your existing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account, and therefore get the same password as your "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " account."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const v4, 0x7f080016

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 233
    .local v2, "intro3":Landroid/widget/TextView;
    const v4, 0x7f080018

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/CreateAccount;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 234
    .local v3, "intro4":Landroid/widget/TextView;
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etPass:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 235
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etConfirm:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etPass:Landroid/widget/EditText;

    sget-object v5, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkpassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/CreateAccount;->etConfirm:Landroid/widget/EditText;

    sget-object v5, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkpassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    const-string v4, "Email Address"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .end local v2    # "intro3":Landroid/widget/TextView;
    .end local v3    # "intro4":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v4, "A new PBXes account will be created. It will be linked to your existing Google Voice account, and therefore get the same password as your Google Voice account."

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    const-string v4, "Google Voice Name"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
