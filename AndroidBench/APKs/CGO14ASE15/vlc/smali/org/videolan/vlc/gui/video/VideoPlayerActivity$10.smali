.class Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/video/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 1119
    iput-object p1, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x3e8

    .line 1123
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1124
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3208(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    .line 1128
    :goto_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$1700(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1129
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3200(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1152
    :goto_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$600(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;)V

    .line 1153
    return-void

    .line 1126
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3202(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;I)I

    goto :goto_0

    .line 1131
    :pswitch_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x7f0b004e

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V

    goto :goto_1

    .line 1134
    :pswitch_1
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x7f0b004f

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V

    goto :goto_1

    .line 1137
    :pswitch_2
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x7f0b0050

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V

    goto :goto_1

    .line 1140
    :pswitch_3
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x7f0b0051

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V

    goto :goto_1

    .line 1143
    :pswitch_4
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const-string v1, "16:9"

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;I)V

    goto :goto_1

    .line 1146
    :pswitch_5
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const-string v1, "4:3"

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3400(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;Ljava/lang/String;I)V

    goto :goto_1

    .line 1149
    :pswitch_6
    iget-object v0, p0, Lorg/videolan/vlc/gui/video/VideoPlayerActivity$10;->this$0:Lorg/videolan/vlc/gui/video/VideoPlayerActivity;

    const v1, 0x7f0b0052

    invoke-static {v0, v1, v2}, Lorg/videolan/vlc/gui/video/VideoPlayerActivity;->access$3300(Lorg/videolan/vlc/gui/video/VideoPlayerActivity;II)V

    goto :goto_1

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
