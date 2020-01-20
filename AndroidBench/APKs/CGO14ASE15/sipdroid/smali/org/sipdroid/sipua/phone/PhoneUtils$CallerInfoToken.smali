.class public Lorg/sipdroid/sipua/phone/PhoneUtils$CallerInfoToken;
.super Ljava/lang/Object;
.source "PhoneUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerInfoToken"
.end annotation


# instance fields
.field public asyncQuery:Lorg/sipdroid/sipua/phone/CallerInfoAsyncQuery;

.field public currentInfo:Lorg/sipdroid/sipua/phone/CallerInfo;

.field public isFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
