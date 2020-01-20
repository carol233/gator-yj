.class public Lorg/sipdroid/sipua/phone/PhoneUtils;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneUtils"

.field private static final QUERY_TOKEN:I = -0x1

.field static sCallerInfoQueryListener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lorg/sipdroid/sipua/phone/PhoneUtils$1;

    invoke-direct {v0}, Lorg/sipdroid/sipua/phone/PhoneUtils$1;-><init>()V

    sput-object v0, Lorg/sipdroid/sipua/phone/PhoneUtils;->sCallerInfoQueryListener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static getCompactNameFromCallerInfo(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "compactName":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    .line 205
    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 210
    :cond_0
    if-nez v0, :cond_1

    .line 211
    const v1, 0x7f060084

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_1
    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v0, "PhoneUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method static saveToContact(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 190
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "phone"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 192
    return-void
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lorg/sipdroid/sipua/phone/Call;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lorg/sipdroid/sipua/phone/Call;
    .param p2, "listener"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Call;->getEarliestConnection()Lorg/sipdroid/sipua/phone/Connection;

    move-result-object v0

    .line 54
    .local v0, "conn":Lorg/sipdroid/sipua/phone/Connection;
    invoke-static {p0, v0, p2, p3}, Lorg/sipdroid/sipua/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lorg/sipdroid/sipua/phone/Connection;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    return-object v1
.end method

.method static startGetCallerInfo(Landroid/content/Context;Lorg/sipdroid/sipua/phone/Connection;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "c"    # Lorg/sipdroid/sipua/phone/Connection;
    .param p2, "listener"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x1

    .line 65
    if-nez p1, :cond_0

    .line 67
    new-instance v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v6}, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 68
    .local v6, "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    iput-object v4, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    move-object v7, v6

    .line 171
    .end local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    .local v7, "cit":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 101
    .end local v7    # "cit":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v8

    .line 102
    .local v8, "userDataObject":Ljava/lang/Object;
    instance-of v1, v8, Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 104
    new-instance v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v6}, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 105
    .restart local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    new-instance v1, Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-direct {v1}, Lorg/sipdroid/sipua/phone/CallerInfo;-><init>()V

    iput-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 106
    check-cast v8, Landroid/net/Uri;

    .end local v8    # "userDataObject":Ljava/lang/Object;
    sget-object v1, Lorg/sipdroid/sipua/phone/PhoneUtils;->sCallerInfoQueryListener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, p0, v8, v1, p1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Landroid/net/Uri;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    .line 108
    iget-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    invoke-virtual {v1, v0, p2, p3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->addQueryListener(ILorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 109
    iput-boolean v9, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 111
    invoke-virtual {p1, v6}, Lorg/sipdroid/sipua/phone/Connection;->setUserData(Ljava/lang/Object;)V

    :goto_1
    move-object v7, v6

    .line 171
    .restart local v7    # "cit":Ljava/lang/Object;
    goto :goto_0

    .line 115
    .end local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    .end local v7    # "cit":Ljava/lang/Object;
    .restart local v8    # "userDataObject":Ljava/lang/Object;
    :cond_1
    if-nez v8, :cond_3

    .line 118
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "number":Ljava/lang/String;
    new-instance v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v6}, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 121
    .restart local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    new-instance v1, Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-direct {v1}, Lorg/sipdroid/sipua/phone/CallerInfo;-><init>()V

    iput-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    iput-object v2, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Connection;->getAddress2()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/sipdroid/sipua/phone/PhoneUtils;->sCallerInfoQueryListener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    move-result-object v1

    iput-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    .line 130
    iget-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    invoke-virtual {v1, v0, p2, p3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->addQueryListener(ILorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    .line 131
    iput-boolean v9, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    .line 142
    :goto_2
    invoke-virtual {p1, v6}, Lorg/sipdroid/sipua/phone/Connection;->setUserData(Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_2
    iput-boolean v3, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_2

    .line 146
    .end local v2    # "number":Ljava/lang/String;
    .end local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    :cond_3
    instance-of v1, v8, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    if-eqz v1, :cond_6

    move-object v6, v8

    .line 148
    check-cast v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    .line 151
    .restart local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    iget-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    if-eqz v1, :cond_4

    .line 152
    iget-object v1, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    invoke-virtual {v1, v0, p2, p3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->addQueryListener(ILorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V

    goto :goto_1

    .line 158
    :cond_4
    iget-object v0, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-nez v0, :cond_5

    .line 159
    new-instance v0, Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-direct {v0}, Lorg/sipdroid/sipua/phone/CallerInfo;-><init>()V

    iput-object v0, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 161
    :cond_5
    iput-boolean v3, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_1

    .line 164
    .end local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    :cond_6
    new-instance v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    invoke-direct {v6}, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;-><init>()V

    .line 165
    .restart local v6    # "cit":Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
    check-cast v8, Lorg/sipdroid/sipua/phone/CallerInfo;

    .end local v8    # "userDataObject":Ljava/lang/Object;
    iput-object v8, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 166
    iput-object v4, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    .line 167
    iput-boolean v3, v6, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    goto :goto_1
.end method
