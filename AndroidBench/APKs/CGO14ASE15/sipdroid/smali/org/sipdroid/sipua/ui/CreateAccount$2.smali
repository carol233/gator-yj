.class Lorg/sipdroid/sipua/ui/CreateAccount$2;
.super Ljava/lang/Thread;
.source "CreateAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/CreateAccount;->CreateAccountNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/CreateAccount;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/CreateAccount;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 147
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    const-string v7, "Can\'t connect to webserver"

    iput-object v7, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    .line 149
    :try_start_0
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lorg/sipdroid/sipua/ui/CreateAccount;->generatePassword(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "password":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "language":Ljava/lang/String;
    const-string v6, "de"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "es"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "fr"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "it"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ru"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 153
    const-string v6, "ja"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 154
    const-string v2, "jp"

    .line 159
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://www1.pbxes.com/config.php?m=register&a=update&f=action&username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v7, v7, Lorg/sipdroid/sipua/ui/CreateAccount;->etName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&password="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v7, v7, Lorg/sipdroid/sipua/ui/CreateAccount;->etPass:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&password_confirm="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v7, v7, Lorg/sipdroid/sipua/ui/CreateAccount;->etConfirm:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&language="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&email="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/sipdroid/sipua/ui/CreateAccount;->email:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&land="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&sipdroid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "s":Ljava/lang/String;
    sget-object v6, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&trunkserver="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkserver:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkport:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&trunkuser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lorg/sipdroid/sipua/ui/CreateAccount;->trunkuser:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    :cond_1
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 168
    .local v5, "url":Ljava/net/URL;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 169
    .local v1, "in":Ljava/io/BufferedReader;
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    .line 170
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 171
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "in":Ljava/io/BufferedReader;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    .restart local v1    # "in":Ljava/io/BufferedReader;
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    .line 174
    :cond_2
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 175
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->line:Ljava/lang/String;

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 177
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "server"

    const-string v7, "pbxes.org"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v6, "username"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v8, v8, Lorg/sipdroid/sipua/ui/CreateAccount;->etName:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-200"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    const-string v6, "domain"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    const-string v6, "fromuser"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    const-string v6, "port"

    const-string v7, "5061"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v6, "protocol"

    const-string v7, "tcp"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v6, "password"

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sipdroid/sipua/SipdroidEngine;->updateDNS()V

    .line 186
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sipdroid/sipua/SipdroidEngine;->halt()V

    .line 187
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v6

    invoke-virtual {v6}, Lorg/sipdroid/sipua/SipdroidEngine;->StartEngine()Z

    .line 188
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    invoke-virtual {v6}, Lorg/sipdroid/sipua/ui/CreateAccount;->dismiss()V

    .line 191
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    :goto_1
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/CreateAccount$2;->this$0:Lorg/sipdroid/sipua/ui/CreateAccount;

    iget-object v6, v6, Lorg/sipdroid/sipua/ui/CreateAccount;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    return-void

    .line 155
    .restart local v2    # "language":Ljava/lang/String;
    .restart local v3    # "password":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v6, "zh"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 156
    const-string v2, "cn"

    goto/16 :goto_0

    .line 158
    :cond_5
    const-string v2, "en"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 192
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "password":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method
