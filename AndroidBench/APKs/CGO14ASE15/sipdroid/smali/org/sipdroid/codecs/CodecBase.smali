.class Lorg/sipdroid/codecs/CodecBase;
.super Ljava/lang/Object;
.source "CodecBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field protected CODEC_DEFAULT_SETTING:Ljava/lang/String;

.field protected CODEC_DESCRIPTION:Ljava/lang/String;

.field protected CODEC_FRAME_SIZE:I

.field protected CODEC_NAME:Ljava/lang/String;

.field protected CODEC_NUMBER:I

.field protected CODEC_SAMPLE_RATE:I

.field protected CODEC_USER_NAME:Ljava/lang/String;

.field private enabled:Z

.field private failed:Z

.field private loaded:Z

.field nt:I

.field tm:Landroid/telephony/TelephonyManager;

.field private value:Ljava/lang/String;

.field private wlanOnly:Z

.field private wlanOr3GOnly:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0x1f40

    iput v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_SAMPLE_RATE:I

    .line 36
    const/16 v0, 0xa0

    iput v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_FRAME_SIZE:I

    .line 38
    const-string v0, "never"

    iput-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    .line 40
    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->loaded:Z

    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->failed:Z

    .line 41
    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    .line 42
    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOnly:Z

    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOr3GOnly:Z

    return-void
.end method

.method private updateFlags(Ljava/lang/String;)V
    .locals 3
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    const-string v0, "never"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_0
    iput-boolean v2, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    .line 165
    const-string v0, "wlan"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iput-boolean v2, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOnly:Z

    .line 169
    :goto_1
    const-string v0, "wlanor3g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    iput-boolean v2, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOr3GOnly:Z

    goto :goto_0

    .line 168
    :cond_1
    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOnly:Z

    goto :goto_1

    .line 172
    :cond_2
    iput-boolean v1, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOr3GOnly:Z

    goto :goto_0
.end method

.method private wlanOnly()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wlanOr3GOnly()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->wlanOr3GOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enable(Z)V
    .locals 0
    .param p1, "e"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    .line 89
    return-void
.end method

.method public fail()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->failed:Z

    .line 85
    return-void
.end method

.method public frame_size()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_FRAME_SIZE:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_DESCRIPTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->enabled:Z

    return v0
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->failed:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->loaded:Z

    return v0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0}, Lorg/sipdroid/codecs/CodecBase;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 111
    :goto_0
    return v0

    .line 101
    :cond_0
    sget-boolean v0, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;->wlanOnly()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    iget-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->tm:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_3

    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->tm:Landroid/telephony/TelephonyManager;

    .line 106
    :cond_3
    iget-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, p0, Lorg/sipdroid/codecs/CodecBase;->nt:I

    .line 107
    invoke-direct {p0}, Lorg/sipdroid/codecs/CodecBase;->wlanOr3GOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/sipdroid/codecs/CodecBase;->nt:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_4

    move v0, v1

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget v0, p0, Lorg/sipdroid/codecs/CodecBase;->nt:I

    const/4 v3, 0x2

    if-ge v0, v3, :cond_5

    move v0, v1

    .line 110
    goto :goto_0

    :cond_5
    move v0, v2

    .line 111
    goto :goto_0
.end method

.method public key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method load()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/sipdroid/codecs/CodecBase;->update()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/codecs/CodecBase;->loaded:Z

    .line 64
    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public number()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_NUMBER:I

    return v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 148
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    .line 149
    .local v0, "l":Landroid/preference/ListPreference;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    iput-object p2, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/sipdroid/codecs/CodecBase;->updateFlags(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    const/4 v1, 0x1

    return v1
.end method

.method public samp_rate()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_SAMPLE_RATE:I

    return v0
.end method

.method public setListPreference(Landroid/preference/ListPreference;)V
    .locals 1
    .param p1, "l"    # Landroid/preference/ListPreference;

    .prologue
    .line 143
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    iget-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CODEC{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_NUMBER:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/sipdroid/codecs/CodecBase;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    iput-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/sipdroid/codecs/CodecBase;->updateFlags(Ljava/lang/String;)V

    .line 50
    :cond_0
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 51
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lorg/sipdroid/codecs/CodecBase;->key()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_DEFAULT_SETTING:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    .line 53
    iget-object v1, p0, Lorg/sipdroid/codecs/CodecBase;->value:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/sipdroid/codecs/CodecBase;->updateFlags(Ljava/lang/String;)V

    .line 55
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method

.method public userName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/sipdroid/codecs/CodecBase;->CODEC_USER_NAME:Ljava/lang/String;

    return-object v0
.end method
