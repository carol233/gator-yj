.class public Lorg/sipdroid/sipua/phone/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
    }
.end annotation


# static fields
.field private static final ACTION_CM_SIP:Ljava/lang/String; = "de.ub0r.android.callmeter.SAVE_SIPCALL"

.field private static final EXTRA_SIP_PROVIDER:Ljava/lang/String; = "provider"

.field private static final EXTRA_SIP_URI:Ljava/lang/String; = "uri"


# instance fields
.field address:Ljava/lang/String;

.field address2:Ljava/lang/String;

.field c:Lorg/sipdroid/sipua/phone/Call;

.field public date:J

.field incoming:Z

.field userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static addCall(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;Ljava/lang/String;ZIJI)Landroid/net/Uri;
    .locals 10
    .param p0, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "isPrivateNumber"    # Z
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 173
    .local v3, "resolver":Landroid/content/ContentResolver;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    if-eqz p3, :cond_6

    .line 175
    const-string p2, "-2"

    .line 181
    :cond_0
    :goto_0
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 183
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "&"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 184
    const/4 v6, 0x0

    const-string v7, "&"

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 185
    :cond_1
    const-string v6, "number"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v6, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v6, "date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 188
    const-string v6, "duration"

    move/from16 v0, p7

    int-to-long v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 189
    const-string v6, "new"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    if-eqz p0, :cond_3

    .line 191
    const-string v6, "name"

    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v6, "cname"

    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-wide v6, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 194
    const-string v6, "raw_contact_id"

    iget-wide v7, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    :cond_2
    const-string v6, "numbertype"

    iget v7, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->numberType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v6, "numberlabel"

    iget-object v7, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_3
    if-eqz p0, :cond_4

    iget-wide v6, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 200
    iget-wide v6, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    invoke-static {v3, v6, v7}, Landroid/provider/Contacts$People;->markAsContacted(Landroid/content/ContentResolver;J)V

    .line 205
    :cond_4
    :try_start_0
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 215
    .local v4, "result":Landroid/net/Uri;
    :goto_1
    if-eqz v4, :cond_5

    .line 216
    new-instance v2, Landroid/content/Intent;

    const-string v6, "de.ub0r.android.callmeter.SAVE_SIPCALL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "uri"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    return-object v4

    .line 177
    .end local v4    # "result":Landroid/net/Uri;
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_6
    const-string p2, "-1"

    goto/16 :goto_0

    .line 206
    .restart local v5    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 207
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    if-eqz p0, :cond_7

    .line 208
    const-string v6, "cname"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 209
    iget-wide v6, p0, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 210
    const-string v6, "raw_contact_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 212
    :cond_7
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4    # "result":Landroid/net/Uri;
    goto :goto_1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/Connection;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/Connection;->address2:Ljava/lang/String;

    return-object v0
.end method

.method public getCall()Lorg/sipdroid/sipua/phone/Call;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/Connection;->c:Lorg/sipdroid/sipua/phone/Call;

    return-object v0
.end method

.method public getDisconnectCause()Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;->NORMAL:Lorg/sipdroid/sipua/phone/Connection$DisconnectCause;

    return-object v0
.end method

.method public getState()Lorg/sipdroid/sipua/phone/Call$State;
    .locals 2

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Connection;->getCall()Lorg/sipdroid/sipua/phone/Call;

    move-result-object v0

    .line 123
    .local v0, "c":Lorg/sipdroid/sipua/phone/Call;
    if-nez v0, :cond_0

    .line 124
    sget-object v1, Lorg/sipdroid/sipua/phone/Call$State;->IDLE:Lorg/sipdroid/sipua/phone/Call$State;

    .line 126
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Call;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/Connection;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Connection;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/sipdroid/sipua/phone/Connection;->incoming:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Connection;->getState()Lorg/sipdroid/sipua/phone/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/phone/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public log(J)V
    .locals 13
    .param p1, "start"    # J

    .prologue
    const/4 v1, 0x3

    const-wide/16 v5, 0x0

    .line 240
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "number":Ljava/lang/String;
    cmp-long v7, p1, v5

    if-eqz v7, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v8, v11, p1

    .line 242
    .local v8, "duration":J
    :goto_0
    const/4 v3, 0x0

    .line 246
    .local v3, "isPrivateNumber":Z
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Connection;->isIncoming()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 247
    cmp-long v7, v8, v5

    if-nez v7, :cond_3

    move v4, v1

    .line 256
    .local v4, "callLogType":I
    :goto_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/phone/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v10

    .line 258
    .local v10, "o":Ljava/lang/Object;
    if-eqz v10, :cond_0

    instance-of v7, v10, Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v7, :cond_5

    :cond_0
    move-object v0, v10

    .line 259
    check-cast v0, Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 263
    .end local v10    # "o":Ljava/lang/Object;
    .local v0, "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    :goto_2
    if-ne v4, v1, :cond_1

    .line 264
    if-eqz v0, :cond_6

    iget-object v7, v0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_6

    iget-object v7, v0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    :goto_3
    const v11, 0x108007f

    invoke-static {v1, v7, v11, v5, v6}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 265
    :cond_1
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lorg/sipdroid/sipua/phone/Connection;->date:J

    long-to-int v7, v8

    div-int/lit16 v7, v7, 0x3e8

    invoke-static/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/Connection;->addCall(Lorg/sipdroid/sipua/phone/CallerInfo;Landroid/content/Context;Ljava/lang/String;ZIJI)Landroid/net/Uri;

    .line 268
    return-void

    .end local v0    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    .end local v3    # "isPrivateNumber":Z
    .end local v4    # "callLogType":I
    .end local v8    # "duration":J
    :cond_2
    move-wide v8, v5

    .line 241
    goto :goto_0

    .line 247
    .restart local v3    # "isPrivateNumber":Z
    .restart local v8    # "duration":J
    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    .line 251
    :cond_4
    const/4 v4, 0x2

    .restart local v4    # "callLogType":I
    goto :goto_1

    .line 261
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_5
    check-cast v10, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;

    .end local v10    # "o":Ljava/lang/Object;
    iget-object v0, v10, Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .restart local v0    # "ci":Lorg/sipdroid/sipua/phone/CallerInfo;
    goto :goto_2

    :cond_6
    move-object v7, v2

    .line 264
    goto :goto_3
.end method

.method public setAddress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/Connection;->address:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lorg/sipdroid/sipua/phone/Connection;->address2:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCall(Lorg/sipdroid/sipua/phone/Call;)V
    .locals 0
    .param p1, "a"    # Lorg/sipdroid/sipua/phone/Call;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/Connection;->c:Lorg/sipdroid/sipua/phone/Call;

    .line 101
    return-void
.end method

.method public setIncoming(Z)V
    .locals 0
    .param p1, "a"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lorg/sipdroid/sipua/phone/Connection;->incoming:Z

    .line 230
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/Connection;->userData:Ljava/lang/Object;

    .line 167
    return-void
.end method
