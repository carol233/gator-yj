.class Lorg/sipdroid/codecs/GSM;
.super Lorg/sipdroid/codecs/CodecBase;
.source "GSM.java"

# interfaces
.implements Lorg/sipdroid/codecs/Codec;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;-><init>()V

    .line 31
    const-string v3, "GSM"

    iput-object v3, p0, Lorg/sipdroid/codecs/GSM;->CODEC_NAME:Ljava/lang/String;

    .line 32
    const-string v3, "GSM"

    iput-object v3, p0, Lorg/sipdroid/codecs/GSM;->CODEC_USER_NAME:Ljava/lang/String;

    .line 33
    const-string v3, "13kbit"

    iput-object v3, p0, Lorg/sipdroid/codecs/GSM;->CODEC_DESCRIPTION:Ljava/lang/String;

    .line 34
    const/4 v3, 0x3

    iput v3, p0, Lorg/sipdroid/codecs/GSM;->CODEC_NUMBER:I

    .line 35
    const-string v3, "always"

    iput-object v3, p0, Lorg/sipdroid/codecs/GSM;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 37
    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 38
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v3, "compression"

    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_COMPRESSION:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "pref":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 40
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "compression"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    iget-object v3, p0, Lorg/sipdroid/codecs/GSM;->CODEC_NAME:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 46
    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public native decode([B[SI)I
.end method

.method public native encode([SI[BI)I
.end method

.method public init()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/sipdroid/codecs/GSM;->load()V

    .line 65
    invoke-virtual {p0}, Lorg/sipdroid/codecs/GSM;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/sipdroid/codecs/GSM;->open()I

    .line 67
    :cond_0
    return-void
.end method

.method load()V
    .locals 1

    .prologue
    .line 50
    :try_start_0
    const-string v0, "gsm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 51
    invoke-super {p0}, Lorg/sipdroid/codecs/CodecBase;->load()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public native open()I
.end method
