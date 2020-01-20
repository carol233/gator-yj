.class final Lorg/sipdroid/sipua/phone/PhoneUtils$1;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lorg/sipdroid/sipua/phone/CallerInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lorg/sipdroid/sipua/phone/CallerInfo;

    .prologue
    .line 183
    check-cast p2, Lorg/sipdroid/sipua/phone/Connection;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2, p3}, Lorg/sipdroid/sipua/phone/Connection;->setUserData(Ljava/lang/Object;)V

    .line 184
    return-void
.end method
