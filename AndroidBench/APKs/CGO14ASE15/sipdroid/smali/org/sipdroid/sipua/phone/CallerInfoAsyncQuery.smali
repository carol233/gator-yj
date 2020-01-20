.class public Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
.super Ljava/lang/Object;
.source "CallerInfoAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;,
        Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;,
        Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$QueryPoolException;,
        Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;,
        Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_ADD_LISTENER:I = 0x2

.field private static final EVENT_EMERGENCY_NUMBER:I = 0x4

.field private static final EVENT_END_OF_QUEUE:I = 0x3

.field private static final EVENT_NEW_QUERY:I = 0x1

.field private static final EVENT_VOICEMAIL_NUMBER:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoAsyncQuery"


# instance fields
.field private mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;)V
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->release()V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;

    .prologue
    .line 328
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 329
    :cond_0
    new-instance v0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$QueryPoolException;

    const-string v1, "Bad context or query uri."

    invoke-direct {v0, v1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$QueryPoolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_1
    new-instance v0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;Landroid/content/Context;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 332
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 333
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, p2}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 334
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 350
    const-string v0, "CallerInfoAsyncQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$302(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/content/Context;)Landroid/content/Context;

    .line 341
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$402(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Landroid/net/Uri;)Landroid/net/Uri;

    .line 342
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    invoke-static {v0, v1}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->access$502(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;Lorg/sipdroid/sipua/phone/CallerInfo;)Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 343
    iput-object v1, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    .line 344
    return-void
.end method

.method public static startQuery(ILandroid/content/Context;Landroid/net/Uri;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
    .locals 9
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "listener"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 261
    new-instance v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;-><init>()V

    .line 262
    .local v8, "c":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, p2}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 267
    new-instance v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;)V

    .line 268
    .local v2, "cw":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p3, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->listener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 269
    iput-object p4, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 270
    const/4 v0, 0x1

    iput v0, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 272
    iget-object v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-object v8
.end method

.method public static startQuery(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
    .locals 10
    .param p0, "token"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "number2"    # Ljava/lang/String;
    .param p4, "listener"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p5, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 283
    move-object v9, p2

    .line 284
    .local v9, "number_search":Ljava/lang/String;
    const-string v0, "&"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v0, 0x0

    const-string v1, "&"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 286
    :cond_0
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {v0, v9}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 288
    .local v3, "contactRef":Landroid/net/Uri;
    new-instance v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

    invoke-direct {v8}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;-><init>()V

    .line 289
    .local v8, "c":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;
    invoke-direct {v8, p1, v3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->allocate(Landroid/content/Context;Landroid/net/Uri;)V

    .line 294
    new-instance v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v4}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;)V

    .line 295
    .local v2, "cw":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p4, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->listener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 296
    iput-object p5, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 297
    iput-object p2, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number:Ljava/lang/String;

    .line 298
    iput-object p3, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->number2:Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    iput v0, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 301
    iget-object v0, v8, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-object v8
.end method


# virtual methods
.method public addQueryListener(ILorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "listener"    # Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;
    .param p3, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;

    invoke-direct {v2, v3}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;-><init>(Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$1;)V

    .line 316
    .local v2, "cw":Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;
    iput-object p2, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->listener:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .line 317
    iput-object p3, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->cookie:Ljava/lang/Object;

    .line 318
    const/4 v0, 0x2

    iput v0, v2, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CookieWrapper;->event:I

    .line 320
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;->mHandler:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$CallerInfoAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method
