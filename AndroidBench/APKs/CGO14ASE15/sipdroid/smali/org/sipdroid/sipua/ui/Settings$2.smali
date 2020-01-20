.class Lorg/sipdroid/sipua/ui/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/sipua/ui/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sipdroid/sipua/ui/Settings;


# direct methods
.method constructor <init>(Lorg/sipdroid/sipua/ui/Settings;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichItem"    # I

    .prologue
    const/4 v8, 0x0

    .line 421
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-virtual {v4}, Lorg/sipdroid/sipua/ui/Settings;->updateSleepPolicy()I

    move-result v3

    .line 422
    .local v3, "set":I
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->access$400()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "vmessage"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 425
    .local v2, "message":Z
    :try_start_0
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sdcard/Sipdroid/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v7}, Lorg/sipdroid/sipua/ui/Settings;->access$200(Lorg/sipdroid/sipua/ui/Settings;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/org.sipdroid.sipua/shared_prefs/org.sipdroid.sipua_preferences.xml"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lorg/sipdroid/sipua/ui/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->access$400()Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 432
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Settings;->access$500(Lorg/sipdroid/sipua/ui/Settings;)V

    .line 435
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v4

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->halt()V

    .line 436
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v4

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->StartEngine()Z

    .line 438
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-virtual {v4}, Lorg/sipdroid/sipua/ui/Settings;->reload()V

    .line 439
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->access$400()Landroid/content/SharedPreferences;

    move-result-object v4

    iget-object v5, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v5}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 440
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-virtual {v4}, Lorg/sipdroid/sipua/ui/Settings;->updateSummaries()V

    .line 441
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-virtual {v4}, Lorg/sipdroid/sipua/ui/Settings;->updateSleepPolicy()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 442
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-virtual {v4}, Lorg/sipdroid/sipua/ui/Settings;->updateSleep()V

    .line 443
    :cond_0
    if-eqz v2, :cond_1

    .line 444
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->access$400()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 445
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "vmessage"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 446
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 448
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Settings;->access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;

    move-result-object v4

    iget-object v5, p0, Lorg/sipdroid/sipua/ui/Settings$2;->this$0:Lorg/sipdroid/sipua/ui/Settings;

    const v6, 0x7f060065

    invoke-virtual {v5, v6}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
