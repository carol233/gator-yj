.class Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;
.super Ljava/lang/Object;
.source "SidebarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/SidebarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SidebarEntry"
.end annotation


# instance fields
.field drawableID:I

.field id:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "_name"    # I
    .param p3, "_drawableID"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    .line 59
    invoke-static {}, Lorg/videolan/vlc/VLCApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->name:Ljava/lang/String;

    .line 60
    iput p3, p0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->drawableID:I

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_drawableID"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->id:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->name:Ljava/lang/String;

    .line 54
    iput p3, p0, Lorg/videolan/vlc/gui/SidebarAdapter$SidebarEntry;->drawableID:I

    .line 55
    return-void
.end method
