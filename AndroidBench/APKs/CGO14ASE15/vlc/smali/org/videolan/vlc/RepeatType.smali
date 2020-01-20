.class public final enum Lorg/videolan/vlc/RepeatType;
.super Ljava/lang/Enum;
.source "RepeatType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/videolan/vlc/RepeatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/videolan/vlc/RepeatType;

.field public static final enum All:Lorg/videolan/vlc/RepeatType;

.field public static final enum None:Lorg/videolan/vlc/RepeatType;

.field public static final enum Once:Lorg/videolan/vlc/RepeatType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lorg/videolan/vlc/RepeatType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/RepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    .line 24
    new-instance v0, Lorg/videolan/vlc/RepeatType;

    const-string v1, "Once"

    invoke-direct {v0, v1, v3}, Lorg/videolan/vlc/RepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    .line 25
    new-instance v0, Lorg/videolan/vlc/RepeatType;

    const-string v1, "All"

    invoke-direct {v0, v1, v4}, Lorg/videolan/vlc/RepeatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/videolan/vlc/RepeatType;->All:Lorg/videolan/vlc/RepeatType;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/videolan/vlc/RepeatType;

    sget-object v1, Lorg/videolan/vlc/RepeatType;->None:Lorg/videolan/vlc/RepeatType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/videolan/vlc/RepeatType;->Once:Lorg/videolan/vlc/RepeatType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/videolan/vlc/RepeatType;->All:Lorg/videolan/vlc/RepeatType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/videolan/vlc/RepeatType;->$VALUES:[Lorg/videolan/vlc/RepeatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/videolan/vlc/RepeatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/videolan/vlc/RepeatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/RepeatType;

    return-object v0
.end method

.method public static values()[Lorg/videolan/vlc/RepeatType;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/videolan/vlc/RepeatType;->$VALUES:[Lorg/videolan/vlc/RepeatType;

    invoke-virtual {v0}, [Lorg/videolan/vlc/RepeatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/videolan/vlc/RepeatType;

    return-object v0
.end method
