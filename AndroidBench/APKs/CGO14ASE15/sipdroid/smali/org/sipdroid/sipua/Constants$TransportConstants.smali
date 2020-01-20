.class public Lorg/sipdroid/sipua/Constants$TransportConstants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransportConstants"
.end annotation


# static fields
.field public static final TCP_SOCK:B = 0x1t

.field public static final UDP_SOCK:B = 0x2t

.field public static final UND_SOCK:B


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/Constants;


# direct methods
.method public constructor <init>(Lorg/sipdroid/sipua/Constants;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lorg/sipdroid/sipua/Constants$TransportConstants;->this$0:Lorg/sipdroid/sipua/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
