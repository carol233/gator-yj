.class Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallerInfoAsyncQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;
    }
.end annotation


# instance fields
.field private mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

.field private mQueryContext:Landroid/content/Context;

.field private mQueryUri:Landroid/net/Uri;

.field final synthetic this$0:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;


# direct methods
.method private constructor <init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    .line 176
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;Landroid/content/Context;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$302(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$402(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$502(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lorg/sipdroid/sipua/phone/CallerInfo;)Lorg/sipdroid/sipua/phone/CallerInfo;
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;
    .param p1, "x1"    # Lorg/sipdroid/sipua/phone/CallerInfo;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    return-object p1
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 181
    new-instance v0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;

    invoke-direct {v0, p0, p1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler$CallerInfoWorkerHandler;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 199
    move-object v8, p2

    check-cast v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;

    .line 200
    .local v8, "cw":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;
    if-nez v8, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->event:I

    if-ne v0, v4, :cond_2

    .line 210
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->this$0:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    invoke-static {v0}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->access$000(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-nez v0, :cond_7

    .line 216
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 217
    :cond_3
    new-instance v0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri, or CallerInfoAsyncQuery already released."

    invoke-direct {v0, v1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_4
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, v1, p3}, Lorg/sipdroid/sipua/phone/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lorg/sipdroid/sipua/phone/CallerInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 224
    iget-object v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 225
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    iget-object v0, v0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    iget-object v1, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 226
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    iget-object v1, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number2:Ljava/lang/String;

    iput-object v1, v0, Lorg/sipdroid/sipua/phone/CallerInfo;->name:Ljava/lang/String;

    .line 227
    :cond_5
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    iget-object v1, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/sipdroid/sipua/phone/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 234
    :cond_6
    new-instance v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;)V

    .line 235
    .local v2, "endMarker":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;
    iput v4, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->event:I

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 236
    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v2    # "endMarker":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;
    :cond_7
    iget-object v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->listener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->listener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    iget-object v1, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    iget-object v3, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->mCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    invoke-interface {v0, p1, v1, v3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;->onQueryComplete(ILjava/lang/Object;Lorg/sipdroid/sipua/phone/CallerInfo;)V

    goto :goto_0
.end method
