.class final Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/ContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public defaultResource:I

.field public info:Lorg/sipdroid/sipua/phone/CallerInfo;

.field public listener:Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

.field public result:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;

.field public view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$1;

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/sipdroid/sipua/phone/ContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
