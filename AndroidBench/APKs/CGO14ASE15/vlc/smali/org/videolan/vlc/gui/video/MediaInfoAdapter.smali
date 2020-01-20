.class public Lorg/videolan/vlc/gui/video/MediaInfoAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MediaInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/videolan/vlc/TrackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 38
    return-void
.end method

.method private appendAudio(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V
    .locals 6
    .param p1, "textBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "track"    # Lorg/videolan/vlc/TrackInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    const v0, 0x7f0d0005

    iget v1, p3, Lorg/videolan/vlc/TrackInfo;->Channels:I

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p3, Lorg/videolan/vlc/TrackInfo;->Channels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const v0, 0x7f0b005e

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p3, Lorg/videolan/vlc/TrackInfo;->Samplerate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    return-void
.end method

.method private appendCommon(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V
    .locals 5
    .param p1, "textBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "track"    # Lorg/videolan/vlc/TrackInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const v0, 0x7f0b005a

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p3, Lorg/videolan/vlc/TrackInfo;->Codec:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p3, Lorg/videolan/vlc/TrackInfo;->Language:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lorg/videolan/vlc/TrackInfo;->Language:Ljava/lang/String;

    const-string v1, "und"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const v0, 0x7f0b005b

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p3, Lorg/videolan/vlc/TrackInfo;->Language:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    return-void
.end method

.method private appendVideo(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V
    .locals 5
    .param p1, "textBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "track"    # Lorg/videolan/vlc/TrackInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget v0, p3, Lorg/videolan/vlc/TrackInfo;->Width:I

    if-eqz v0, :cond_0

    iget v0, p3, Lorg/videolan/vlc/TrackInfo;->Height:I

    if-eqz v0, :cond_0

    .line 97
    const v0, 0x7f0b005f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p3, Lorg/videolan/vlc/TrackInfo;->Width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p3, Lorg/videolan/vlc/TrackInfo;->Height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_0
    iget v0, p3, Lorg/videolan/vlc/TrackInfo;->Framerate:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    const v0, 0x7f0b0060

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p3, Lorg/videolan/vlc/TrackInfo;->Framerate:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    move-object v6, p2

    .line 44
    .local v6, "v":Landroid/view/View;
    if-nez v6, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 46
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03001c

    const/4 v8, 0x0

    invoke-virtual {v1, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 47
    new-instance v0, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;

    invoke-direct {v0}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;-><init>()V

    .line 48
    .local v0, "holder":Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;
    const v7, 0x7f060055

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 49
    const v7, 0x7f060056

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v6, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/videolan/vlc/TrackInfo;

    .line 56
    .local v5, "track":Lorg/videolan/vlc/TrackInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x400

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v3, "textBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 58
    .local v2, "res":Landroid/content/res/Resources;
    iget v7, v5, Lorg/videolan/vlc/TrackInfo;->Type:I

    packed-switch v7, :pswitch_data_0

    .line 75
    const v7, 0x7f0b0059

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "title":Ljava/lang/String;
    :goto_1
    iget-object v7, v0, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v7, v0, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-object v6

    .line 52
    .end local v0    # "holder":Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "textBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "track":Lorg/videolan/vlc/TrackInfo;
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;

    .restart local v0    # "holder":Lorg/videolan/vlc/gui/video/MediaInfoAdapter$ViewHolder;
    goto :goto_0

    .line 61
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "textBuilder":Ljava/lang/StringBuilder;
    .restart local v5    # "track":Lorg/videolan/vlc/TrackInfo;
    :pswitch_0
    const v7, 0x7f0b0056

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    .restart local v4    # "title":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v5}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->appendCommon(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V

    .line 63
    invoke-direct {p0, v3, v2, v5}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->appendAudio(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V

    goto :goto_1

    .line 66
    .end local v4    # "title":Ljava/lang/String;
    :pswitch_1
    const v7, 0x7f0b0057

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 67
    .restart local v4    # "title":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v5}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->appendCommon(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V

    .line 68
    invoke-direct {p0, v3, v2, v5}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->appendVideo(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V

    goto :goto_1

    .line 71
    .end local v4    # "title":Ljava/lang/String;
    :pswitch_2
    const v7, 0x7f0b0058

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .restart local v4    # "title":Ljava/lang/String;
    invoke-direct {p0, v3, v2, v5}, Lorg/videolan/vlc/gui/video/MediaInfoAdapter;->appendCommon(Ljava/lang/StringBuilder;Landroid/content/res/Resources;Lorg/videolan/vlc/TrackInfo;)V

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
