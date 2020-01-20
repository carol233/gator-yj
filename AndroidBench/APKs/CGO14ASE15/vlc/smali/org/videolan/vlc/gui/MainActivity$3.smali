.class Lorg/videolan/vlc/gui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/vlc/gui/MainActivity;->showInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/MainActivity;

.field final synthetic val$infoDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/videolan/vlc/gui/MainActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    iput-object p2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->val$infoDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 550
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->val$infoDialog:Landroid/app/Dialog;

    const v3, 0x7f060071

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 552
    .local v1, "notShowAgain":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/MainActivity;->access$300(Lorg/videolan/vlc/gui/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 553
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/MainActivity;->access$300(Lorg/videolan/vlc/gui/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 554
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "show_info"

    iget-object v3, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v3}, Lorg/videolan/vlc/gui/MainActivity;->access$400(Lorg/videolan/vlc/gui/MainActivity;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 558
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->val$infoDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 560
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/MainActivity;->access$500(Lorg/videolan/vlc/gui/MainActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lorg/videolan/vlc/gui/MainActivity$3;->this$0:Lorg/videolan/vlc/gui/MainActivity;

    invoke-static {v2}, Lorg/videolan/vlc/gui/MainActivity;->access$000(Lorg/videolan/vlc/gui/MainActivity;)Lcom/slidingmenu/lib/SlidingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->showMenu()V

    .line 562
    :cond_1
    return-void
.end method
