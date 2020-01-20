.class Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DummyContentFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/videolan/vlc/gui/AboutActivity;


# direct methods
.method public constructor <init>(Lorg/videolan/vlc/gui/AboutActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;->this$0:Lorg/videolan/vlc/gui/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p2, p0, Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lorg/videolan/vlc/gui/AboutActivity$DummyContentFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, "dummy":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 54
    return-object v0
.end method
