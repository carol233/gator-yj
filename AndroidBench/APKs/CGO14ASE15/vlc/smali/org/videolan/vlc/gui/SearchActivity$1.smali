.class Lorg/videolan/vlc/gui/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/SearchActivity;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/SearchActivity;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lorg/videolan/vlc/gui/SearchActivity$1;->this$0:Lorg/videolan/vlc/gui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 194
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 189
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 178
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity$1;->this$0:Lorg/videolan/vlc/gui/SearchActivity;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lorg/videolan/vlc/gui/SearchActivity;->access$000(Lorg/videolan/vlc/gui/SearchActivity;Ljava/lang/CharSequence;I)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/videolan/vlc/gui/SearchActivity$1;->this$0:Lorg/videolan/vlc/gui/SearchActivity;

    invoke-static {v0}, Lorg/videolan/vlc/gui/SearchActivity;->access$100(Lorg/videolan/vlc/gui/SearchActivity;)V

    goto :goto_0
.end method
