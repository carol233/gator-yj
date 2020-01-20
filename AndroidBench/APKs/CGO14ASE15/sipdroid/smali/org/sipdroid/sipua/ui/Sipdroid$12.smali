.class Lorg/sipdroid/sipua/ui/Sipdroid$12;
.super Ljava/lang/Object;
.source "Sipdroid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sipdroid/sipua/ui/Sipdroid;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$12;->this$0:Lorg/sipdroid/sipua/ui/Sipdroid;

    iput-object p2, p0, Lorg/sipdroid/sipua/ui/Sipdroid$12;->val$mContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 293
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid$12;->val$mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref"

    const-string v2, "SIP"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    return-void
.end method
