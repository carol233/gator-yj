.class Lorg/videolan/vlc/gui/SearchActivity$2;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 224
    iput-object p1, p0, Lorg/videolan/vlc/gui/SearchActivity$2;->this$0:Lorg/videolan/vlc/gui/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 227
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchActivity$2;->this$0:Lorg/videolan/vlc/gui/SearchActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lorg/videolan/vlc/gui/SearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/videolan/vlc/gui/SearchActivity$2;->this$0:Lorg/videolan/vlc/gui/SearchActivity;

    invoke-static {v1}, Lorg/videolan/vlc/gui/SearchActivity;->access$200(Lorg/videolan/vlc/gui/SearchActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 229
    const/4 v1, 0x0

    return v1
.end method
