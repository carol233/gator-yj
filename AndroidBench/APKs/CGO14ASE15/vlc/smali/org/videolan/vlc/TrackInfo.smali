.class public Lorg/videolan/vlc/TrackInfo;
.super Ljava/lang/Object;
.source "TrackInfo.java"


# static fields
.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_META:I = 0x3

.field public static final TYPE_TEXT:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field public Album:Ljava/lang/String;

.field public Artist:Ljava/lang/String;

.field public ArtworkURL:Ljava/lang/String;

.field public Channels:I

.field public Codec:Ljava/lang/String;

.field public Framerate:F

.field public Genre:Ljava/lang/String;

.field public Height:I

.field public Id:I

.field public Language:Ljava/lang/String;

.field public Length:J

.field public Samplerate:I

.field public Title:Ljava/lang/String;

.field public Type:I

.field public Width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
