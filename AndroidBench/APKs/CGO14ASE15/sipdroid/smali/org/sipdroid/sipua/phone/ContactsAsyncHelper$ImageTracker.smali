.class public Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTracker"
.end annotation


# static fields
.field public static final DISPLAY_DEFAULT:I = -0x2

.field public static final DISPLAY_IMAGE:I = -0x1

.field public static final DISPLAY_UNDEFINED:I


# instance fields
.field private displayMode:I

.field private mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 111
    return-void
.end method


# virtual methods
.method public getPhotoState()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    return v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    iget-wide v1, v1, Lorg/sipdroid/sipua/phone/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lorg/sipdroid/sipua/phone/CallerInfo;)Z
    .locals 1
    .param p1, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lorg/sipdroid/sipua/phone/Connection;)Z
    .locals 3
    .param p1, "connection"    # Lorg/sipdroid/sipua/phone/Connection;

    .prologue
    .line 128
    if-nez p1, :cond_1

    .line 130
    iget-object v2, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 140
    :goto_0
    return v2

    .line 130
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    :cond_1
    invoke-virtual {p1}, Lorg/sipdroid/sipua/phone/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "o":Ljava/lang/Object;
    const/4 v1, 0x1

    .line 137
    .local v1, "runQuery":Z
    instance-of v2, v0, Lorg/sipdroid/sipua/phone/CallerInfo;

    if-eqz v2, :cond_2

    .line 138
    check-cast v0, Lorg/sipdroid/sipua/phone/CallerInfo;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lorg/sipdroid/sipua/phone/CallerInfo;)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 140
    goto :goto_0
.end method

.method public setPhotoRequest(Lorg/sipdroid/sipua/phone/CallerInfo;)V
    .locals 0
    .param p1, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;

    .prologue
    .line 147
    iput-object p1, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

    .line 148
    return-void
.end method

.method public setPhotoState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 167
    iput p1, p0, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 168
    return-void
.end method
