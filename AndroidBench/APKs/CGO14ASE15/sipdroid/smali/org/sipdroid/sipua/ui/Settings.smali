.class public Lorg/sipdroid/sipua/ui/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final DEFAULT_3G:Z = false

.field public static final DEFAULT_ACCOUNT:I = 0x0

.field public static final DEFAULT_AUTO_DEMAND:Z = false

.field public static final DEFAULT_AUTO_HEADSET:Z = false

.field public static final DEFAULT_AUTO_ON:Z = false

.field public static final DEFAULT_AUTO_ONDEMAND:Z = false

.field public static final DEFAULT_BLUETOOTH:Z = false

.field public static final DEFAULT_CALLBACK:Z = false

.field public static final DEFAULT_CALLRECORD:Z = false

.field public static final DEFAULT_CALLTHRU:Z = false

.field public static final DEFAULT_CALLTHRU2:Ljava/lang/String; = ""

.field public static final DEFAULT_CODECS:Ljava/lang/String;

.field public static final DEFAULT_COMPRESSION:Ljava/lang/String;

.field public static final DEFAULT_DNS:Ljava/lang/String; = ""

.field public static final DEFAULT_DOMAIN:Ljava/lang/String; = ""

.field public static final DEFAULT_EARGAIN:F = 0.25f

.field public static final DEFAULT_EDGE:Z = false

.field public static final DEFAULT_EXCLUDEPAT:Ljava/lang/String; = ""

.field public static final DEFAULT_FROMUSER:Ljava/lang/String; = ""

.field public static final DEFAULT_HEARGAIN:F = 0.25f

.field public static final DEFAULT_HMICGAIN:F = 1.0f

.field public static final DEFAULT_IMPROVE:Z = false

.field public static final DEFAULT_KEEPON:Z = false

.field public static final DEFAULT_MESSAGE:Z = false

.field public static final DEFAULT_MICGAIN:F = 0.25f

.field public static final DEFAULT_MMTEL:Z = false

.field public static final DEFAULT_MMTEL_QVALUE:Ljava/lang/String; = "1.00"

.field public static final DEFAULT_MWI_ENABLED:Z = true

.field public static final DEFAULT_NODATA:Z = false

.field public static final DEFAULT_NODEFAULT:Z = false

.field public static final DEFAULT_NOPORT:Z = false

.field public static final DEFAULT_NOTIFY:Z = false

.field public static final DEFAULT_OLDPOLICY:I = 0x0

.field public static final DEFAULT_OLDRING:I = 0x0

.field public static final DEFAULT_OLDVALID:Z = false

.field public static final DEFAULT_OLDVIBRATE:I = 0x0

.field public static final DEFAULT_OLDVIBRATE2:I = 0x0

.field public static final DEFAULT_ON:Z = false

.field public static final DEFAULT_ON_VPN:Z = false

.field public static final DEFAULT_OWNWIFI:Z = false

.field public static final DEFAULT_PAR:Z = false

.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = ""

.field public static final DEFAULT_PORT:Ljava/lang/String;

.field public static final DEFAULT_POS:Z = false

.field public static final DEFAULT_POSURL:Ljava/lang/String; = ""

.field public static final DEFAULT_PREF:Ljava/lang/String; = "SIP"

.field public static final DEFAULT_PREFIX:Ljava/lang/String; = ""

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "tcp"

.field public static final DEFAULT_REGISTRATION:Z = true

.field public static final DEFAULT_SEARCH:Ljava/lang/String; = ""

.field public static final DEFAULT_SELECTWIFI:Z = false

.field public static final DEFAULT_SERVER:Ljava/lang/String; = "pbxes.org"

.field public static final DEFAULT_SETMODE:Z = false

.field public static final DEFAULT_SIPRINGTONE:Ljava/lang/String; = ""

.field public static final DEFAULT_STUN:Z = false

.field public static final DEFAULT_STUN_SERVER:Ljava/lang/String; = "stun.ekiga.net"

.field public static final DEFAULT_STUN_SERVER_PORT:Ljava/lang/String; = "3478"

.field public static final DEFAULT_USERNAME:Ljava/lang/String; = ""

.field public static final DEFAULT_VPN:Z = false

.field public static final DEFAULT_VQUALITY:Ljava/lang/String; = "low"

.field public static final DEFAULT_WIFI_DISABLED:Z = false

.field public static final DEFAULT_WLAN:Z = true

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_EXPORT:I = 0x2

.field private static final MENU_IMPORT:I = 0x0

.field public static final PREF_3G:Ljava/lang/String; = "3g"

.field public static final PREF_ACCOUNT:Ljava/lang/String; = "account"

.field public static final PREF_AUTO_DEMAND:Ljava/lang/String; = "auto_demand"

.field public static final PREF_AUTO_HEADSET:Ljava/lang/String; = "auto_headset"

.field public static final PREF_AUTO_ON:Ljava/lang/String; = "auto_on"

.field public static final PREF_AUTO_ONDEMAND:Ljava/lang/String; = "auto_on_demand"

.field public static final PREF_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final PREF_CALLBACK:Ljava/lang/String; = "callback"

.field public static final PREF_CALLRECORD:Ljava/lang/String; = "callrecord"

.field public static final PREF_CALLTHRU:Ljava/lang/String; = "callthru"

.field public static final PREF_CALLTHRU2:Ljava/lang/String; = "callthru2"

.field public static final PREF_CODECS:Ljava/lang/String; = "codecs_new"

.field public static final PREF_COMPRESSION:Ljava/lang/String; = "compression"

.field public static final PREF_DNS:Ljava/lang/String; = "dns"

.field public static final PREF_DOMAIN:Ljava/lang/String; = "domain"

.field public static final PREF_EARGAIN:Ljava/lang/String; = "eargain"

.field public static final PREF_EDGE:Ljava/lang/String; = "edge"

.field public static final PREF_EXCLUDEPAT:Ljava/lang/String; = "excludepat"

.field public static final PREF_FROMUSER:Ljava/lang/String; = "fromuser"

.field public static final PREF_HEARGAIN:Ljava/lang/String; = "heargain"

.field public static final PREF_HMICGAIN:Ljava/lang/String; = "hmicgain"

.field public static final PREF_IMPROVE:Ljava/lang/String; = "improve"

.field public static final PREF_KEEPON:Ljava/lang/String; = "keepon"

.field public static final PREF_MESSAGE:Ljava/lang/String; = "vmessage"

.field public static final PREF_MICGAIN:Ljava/lang/String; = "micgain"

.field public static final PREF_MMTEL:Ljava/lang/String; = "mmtel"

.field public static final PREF_MMTEL_QVALUE:Ljava/lang/String; = "mmtel_qvalue"

.field public static final PREF_MWI_ENABLED:Ljava/lang/String; = "MWI_enabled"

.field public static final PREF_NODATA:Ljava/lang/String; = "nodata"

.field public static final PREF_NODEFAULT:Ljava/lang/String; = "nodefault"

.field public static final PREF_NOPORT:Ljava/lang/String; = "noport"

.field public static final PREF_NOTIFY:Ljava/lang/String; = "notify"

.field public static final PREF_OLDPOLICY:Ljava/lang/String; = "oldpolicy"

.field public static final PREF_OLDRING:Ljava/lang/String; = "oldring"

.field public static final PREF_OLDVALID:Ljava/lang/String; = "oldvalid"

.field public static final PREF_OLDVIBRATE:Ljava/lang/String; = "oldvibrate"

.field public static final PREF_OLDVIBRATE2:Ljava/lang/String; = "oldvibrate2"

.field public static final PREF_ON:Ljava/lang/String; = "on"

.field public static final PREF_ON_VPN:Ljava/lang/String; = "on_vpn"

.field public static final PREF_OWNWIFI:Ljava/lang/String; = "ownwifi"

.field public static final PREF_PAR:Ljava/lang/String; = "par"

.field public static final PREF_PASSWORD:Ljava/lang/String; = "password"

.field public static final PREF_PORT:Ljava/lang/String; = "port"

.field public static final PREF_POS:Ljava/lang/String; = "pos"

.field public static final PREF_POSURL:Ljava/lang/String; = "posurl"

.field public static final PREF_PREF:Ljava/lang/String; = "pref"

.field public static final PREF_PREFIX:Ljava/lang/String; = "prefix"

.field public static final PREF_PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PREF_REGISTRATION:Ljava/lang/String; = "registration"

.field public static final PREF_SEARCH:Ljava/lang/String; = "search"

.field public static final PREF_SELECTWIFI:Ljava/lang/String; = "selectwifi"

.field public static final PREF_SERVER:Ljava/lang/String; = "server"

.field public static final PREF_SETMODE:Ljava/lang/String; = "setmode"

.field public static final PREF_SIPRINGTONE:Ljava/lang/String; = "sipringtone"

.field public static final PREF_STUN:Ljava/lang/String; = "stun"

.field public static final PREF_STUN_SERVER:Ljava/lang/String; = "stun_server"

.field public static final PREF_STUN_SERVER_PORT:Ljava/lang/String; = "stun_server_port"

.field public static final PREF_USERNAME:Ljava/lang/String; = "username"

.field public static final PREF_VPN:Ljava/lang/String; = "vpn"

.field public static final PREF_VQUALITY:Ljava/lang/String; = "vquality"

.field public static final PREF_WIFI_DISABLED:Ljava/lang/String; = "wifi_disabled"

.field public static final PREF_WLAN:Ljava/lang/String; = "wlan"

.field public static final VAL_PREF_ASK:Ljava/lang/String; = "ASK"

.field public static final VAL_PREF_PSTN:Ljava/lang/String; = "PSTN"

.field public static final VAL_PREF_SIP:Ljava/lang/String; = "SIP"

.field public static final VAL_PREF_SIPONLY:Ljava/lang/String; = "SIPONLY"

.field private static final profilePath:Ljava/lang/String; = "/sdcard/Sipdroid/"

.field private static settings:Landroid/content/SharedPreferences;


# instance fields
.field private context:Lorg/sipdroid/sipua/ui/Settings;

.field private deleteOkButtonClick:Landroid/content/DialogInterface$OnClickListener;

.field mKey:Ljava/lang/String;

.field private profileFiles:[Ljava/lang/String;

.field private profileOnClick:Landroid/content/DialogInterface$OnClickListener;

.field private profileToDelete:I

.field private final sharedPrefsFile:Ljava/lang/String;

.field private final sharedPrefsPath:Ljava/lang/String;

.field transferText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    .line 196
    sput-object v2, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_CODECS:Ljava/lang/String;

    .line 237
    sput-object v2, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_COMPRESSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 55
    iput-object v1, p0, Lorg/sipdroid/sipua/ui/Settings;->context:Lorg/sipdroid/sipua/ui/Settings;

    .line 60
    const-string v0, "/data/data/org.sipdroid.sipua/shared_prefs/"

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->sharedPrefsPath:Ljava/lang/String;

    .line 62
    const-string v0, "org.sipdroid.sipua_preferences"

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->sharedPrefsFile:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    .line 419
    new-instance v0, Lorg/sipdroid/sipua/ui/Settings$2;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/Settings$2;-><init>(Lorg/sipdroid/sipua/ui/Settings;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->profileOnClick:Landroid/content/DialogInterface$OnClickListener;

    .line 451
    new-instance v0, Lorg/sipdroid/sipua/ui/Settings$3;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/Settings$3;-><init>(Lorg/sipdroid/sipua/ui/Settings;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->deleteOkButtonClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lorg/sipdroid/sipua/ui/Settings;)I
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/Settings;

    .prologue
    .line 51
    iget v0, p0, Lorg/sipdroid/sipua/ui/Settings;->profileToDelete:I

    return v0
.end method

.method static synthetic access$002(Lorg/sipdroid/sipua/ui/Settings;I)I
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/Settings;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lorg/sipdroid/sipua/ui/Settings;->profileToDelete:I

    return p1
.end method

.method static synthetic access$100(Lorg/sipdroid/sipua/ui/Settings;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/Settings;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->deleteOkButtonClick:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lorg/sipdroid/sipua/ui/Settings;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/Settings;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/sipdroid/sipua/ui/Settings;)Lorg/sipdroid/sipua/ui/Settings;
    .locals 1
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/Settings;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/Settings;->context:Lorg/sipdroid/sipua/ui/Settings;

    return-object v0
.end method

.method static synthetic access$400()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lorg/sipdroid/sipua/ui/Settings;)V
    .locals 0
    .param p0, "x0"    # Lorg/sipdroid/sipua/ui/Settings;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/Settings;->setDefaultValues()V

    return-void
.end method

.method private exportSettings()V
    .locals 5

    .prologue
    .line 407
    sget-object v1, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "username"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "server"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Sipdroid/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 413
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/org.sipdroid.sipua/shared_prefs/org.sipdroid.sipua_preferences.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sdcard/Sipdroid/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/Settings;->getProfileNameString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lorg/sipdroid/sipua/ui/Settings;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getEarGain()F
    .locals 4

    .prologue
    .line 243
    :try_start_0
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-lez v1, :cond_0

    const-string v1, "heargain"

    :goto_0
    const-string v3, "0.25"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 245
    .local v0, "i":Ljava/lang/NumberFormatException;
    :goto_1
    return v1

    .line 243
    .end local v0    # "i":Ljava/lang/NumberFormatException;
    :cond_0
    const-string v1, "eargain"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .restart local v0    # "i":Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_1
.end method

.method public static getMicGain()F
    .locals 4

    .prologue
    .line 250
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-gtz v1, :cond_0

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    if-lez v1, :cond_1

    .line 252
    :cond_0
    :try_start_0
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hmicgain"

    const-string v3, "1.0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    .local v0, "i":Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 253
    .end local v0    # "i":Ljava/lang/NumberFormatException;
    :catch_0
    move-exception v0

    .line 254
    .restart local v0    # "i":Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    .line 259
    .end local v0    # "i":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "micgain"

    const-string v3, "0.25"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    .restart local v0    # "i":Ljava/lang/NumberFormatException;
    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_0
.end method

.method public static getProfileList()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Sipdroid/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProfileNameString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Settings;->getProfileNameString(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProfileNameString(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Landroid/content/SharedPreferences;

    .prologue
    .line 397
    const-string v1, "server"

    const-string v2, "pbxes.org"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "provider":Ljava/lang/String;
    const-string v1, "domain"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 400
    const-string v1, "domain"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "username"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setDefaultValues()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 280
    const-string v4, "org.sipdroid.sipua_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/sipdroid/sipua/ui/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    sput-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    .line 283
    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, "j":Ljava/lang/String;
    :goto_1
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wlan"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 286
    .local v0, "cb":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 289
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "5061"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pbxes.org"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIP"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "tcp"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 293
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 294
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    invoke-virtual {v4}, Lorg/sipdroid/sipua/SipdroidEngine;->updateDNS()V

    .line 295
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->reload()V

    .line 282
    .end local v0    # "cb":Landroid/preference/CheckBoxPreference;
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 283
    .end local v3    # "j":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto/16 :goto_1

    .line 298
    :cond_2
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "stun_server"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 299
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 301
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "stun_server"

    const-string v5, "stun.ekiga.net"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v4, "stun_server_port"

    const-string v5, "3478"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->reload()V

    .line 307
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "MWI_enabled"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 308
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "MWI_enabled"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 309
    .restart local v0    # "cb":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 311
    .end local v0    # "cb":Landroid/preference/CheckBoxPreference;
    :cond_4
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "registration"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 312
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "registration"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 313
    .restart local v0    # "cb":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    .end local v0    # "cb":Landroid/preference/CheckBoxPreference;
    :cond_5
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 326
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->updateSummaries()V

    .line 327
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->check()V

    .line 328
    return-void
.end method


# virtual methods
.method public copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p1, "in"    # Ljava/io/File;
    .param p2, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 469
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 471
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    :try_start_0
    new-array v0, v5, [B

    .line 472
    .local v0, "buf":[B
    const/4 v4, 0x0

    .line 473
    .local v4, "i":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 474
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 476
    .end local v0    # "buf":[B
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 477
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 480
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw v5

    .line 479
    .restart local v0    # "buf":[B
    .restart local v4    # "i":I
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 480
    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 482
    :cond_4
    return-void
.end method

.method fill(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "disp"    # I

    .prologue
    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 613
    sget-object v1, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 612
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 694
    sget-object v1, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 695
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Settings;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings;->transferText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 696
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 697
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 269
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    .line 270
    :cond_0
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/Settings;->addPreferencesFromResource(I)V

    .line 271
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/Settings;->setDefaultValues()V

    .line 272
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 332
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 333
    const/4 v0, 0x2

    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 334
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 335
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 486
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 488
    sget-object v0, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 489
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    iput-object p0, p0, Lorg/sipdroid/sipua/ui/Settings;->context:Lorg/sipdroid/sipua/ui/Settings;

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    move v0, v1

    .line 384
    :goto_1
    return v0

    .line 344
    :pswitch_0
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getProfileList()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 347
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060061

    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080055

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    iget-object v3, p0, Lorg/sipdroid/sipua/ui/Settings;->profileOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 353
    :cond_0
    const-string v2, "No profile found."

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 358
    :pswitch_1
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/Settings;->exportSettings()V

    goto :goto_0

    .line 363
    :pswitch_2
    invoke-static {}, Lorg/sipdroid/sipua/ui/Settings;->getProfileList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    .line 364
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060062

    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108003c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lorg/sipdroid/sipua/ui/Settings;->profileFiles:[Ljava/lang/String;

    new-instance v3, Lorg/sipdroid/sipua/ui/Settings$1;

    invoke-direct {v3, p0}, Lorg/sipdroid/sipua/ui/Settings$1;-><init>(Lorg/sipdroid/sipua/ui/Settings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 495
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "main"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 569
    :goto_0
    return-void

    .line 497
    :cond_0
    const-string v5, "port"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 498
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 499
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-interface {v1, p2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    new-instance v5, Lorg/sipdroid/sipua/ui/InstantAutoCompleteTextView;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lorg/sipdroid/sipua/ui/InstantAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v5, p0, Lorg/sipdroid/sipua/ui/Settings;->transferText:Landroid/widget/EditText;

    .line 503
    iget-object v5, p0, Lorg/sipdroid/sipua/ui/Settings;->transferText:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 504
    iput-object p2, p0, Lorg/sipdroid/sipua/ui/Settings;->mKey:Ljava/lang/String;

    .line 506
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v6, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v7, 0x7f060018

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lorg/sipdroid/sipua/ui/Settings;->transferText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 512
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v5, "server"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "protocol"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 513
    :cond_2
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 514
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v9, :cond_a

    .line 515
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dns"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 516
    if-eqz v2, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "j":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 518
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protocol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 519
    .local v4, "lp":Landroid/preference/ListPreference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "tcp"

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "port"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .end local v4    # "lp":Landroid/preference/ListPreference;
    check-cast v4, Landroid/preference/ListPreference;

    .line 521
    .restart local v4    # "lp":Landroid/preference/ListPreference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "5061"

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 523
    .end local v4    # "lp":Landroid/preference/ListPreference;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 525
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "port"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 526
    .restart local v4    # "lp":Landroid/preference/ListPreference;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tcp"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tls"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "5070"

    :goto_5
    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 514
    .end local v4    # "lp":Landroid/preference/ListPreference;
    :cond_4
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 516
    .end local v3    # "j":Ljava/lang/String;
    :cond_5
    const-string v3, ""

    goto/16 :goto_2

    .line 519
    .restart local v3    # "j":Ljava/lang/String;
    .restart local v4    # "lp":Landroid/preference/ListPreference;
    :cond_6
    const-string v5, "udp"

    goto/16 :goto_3

    .line 521
    :cond_7
    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    goto/16 :goto_4

    .line 526
    :cond_8
    const-string v5, "5061"

    goto :goto_5

    .line 528
    .end local v4    # "lp":Landroid/preference/ListPreference;
    :cond_9
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sipdroid/sipua/SipdroidEngine;->halt()V

    .line 529
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sipdroid/sipua/SipdroidEngine;->StartEngine()Z

    goto :goto_6

    .line 533
    .end local v3    # "j":Ljava/lang/String;
    :cond_a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sipdroid/sipua/SipdroidEngine;->updateDNS()V

    .line 535
    invoke-static {v8}, Lorg/sipdroid/sipua/ui/Checkin;->checkin(Z)V

    .line 564
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i":I
    :cond_b
    :goto_7
    const-string v5, "wlan"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "3g"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "edge"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "ownwifi"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 565
    :cond_c
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->updateSleep()V

    .line 568
    :cond_d
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->updateSummaries()V

    goto/16 :goto_0

    .line 536
    :cond_e
    const-string v5, "callback"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "callthru"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 537
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v5, "callback"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "callthru"

    :goto_8
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 538
    .local v0, "cb":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 537
    .end local v0    # "cb":Landroid/preference/CheckBoxPreference;
    :cond_f
    const-string v5, "callback"

    goto :goto_8

    .line 539
    :cond_10
    const-string v5, "wlan"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "3g"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "edge"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "username"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "password"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "domain"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "server"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "port"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "stun"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "stun_server"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "stun_server_port"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "mmtel"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "mmtel_qvalue"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "protocol"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "vpn"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "pos"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "posurl"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "fromuser"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "auto_on_demand"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "MWI_enabled"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "registration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "keepon"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 561
    :cond_11
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sipdroid/sipua/SipdroidEngine;->halt()V

    .line 562
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v5

    invoke-virtual {v5}, Lorg/sipdroid/sipua/SipdroidEngine;->StartEngine()Z

    goto/16 :goto_7
.end method

.method reload()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/Settings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 276
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/Settings;->addPreferencesFromResource(I)V

    .line 277
    return-void
.end method

.method updateSleep()V
    .locals 5

    .prologue
    .line 600
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 601
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "wifi_sleep_policy"

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 602
    .local v1, "get":I
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->updateSleepPolicy()I

    move-result v2

    .line 604
    .local v2, "set":I
    if-eq v2, v1, :cond_0

    .line 605
    if-nez v2, :cond_1

    const v3, 0x7f060044

    :goto_0
    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 607
    const-string v3, "wifi_sleep_policy"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 609
    :cond_0
    return-void

    .line 605
    :cond_1
    const v3, 0x7f060043

    goto :goto_0
.end method

.method updateSleepPolicy()I
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 572
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 573
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v9, "wifi_sleep_policy"

    const/4 v12, -0x1

    invoke-static {v0, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 574
    .local v2, "get":I
    move v6, v2

    .line 575
    .local v6, "set":I
    const/4 v8, 0x0

    .local v8, "wlan":Z
    const/4 v1, 0x1

    .local v1, "g3":Z
    const/4 v7, 0x0

    .line 576
    .local v7, "valid":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v9, 0x2

    if-ge v3, v9, :cond_5

    .line 577
    if-eqz v3, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 578
    .local v4, "j":Ljava/lang/String;
    :goto_1
    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "username"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "server"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v12, ""

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wlan"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3g"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "edge"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 583
    :cond_0
    const/4 v7, 0x1

    .line 584
    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "wlan"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    or-int/2addr v8, v9

    .line 585
    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "3g"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "edge"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v12, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    move v9, v11

    :goto_2
    and-int/2addr v1, v9

    .line 576
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 577
    .end local v4    # "j":Ljava/lang/String;
    :cond_3
    const-string v4, ""

    goto/16 :goto_1

    .restart local v4    # "j":Ljava/lang/String;
    :cond_4
    move v9, v10

    .line 585
    goto :goto_2

    .line 589
    .end local v4    # "j":Ljava/lang/String;
    :cond_5
    sget-object v9, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v11, "ownwifi"

    invoke-interface {v9, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 591
    .local v5, "ownwifi":Z
    if-eqz v1, :cond_7

    if-eqz v7, :cond_7

    if-nez v5, :cond_7

    .line 592
    const/4 v6, 0x0

    .line 596
    :cond_6
    :goto_3
    return v6

    .line 593
    :cond_7
    if-nez v8, :cond_8

    if-eqz v5, :cond_6

    .line 594
    :cond_8
    const/4 v6, 0x2

    goto :goto_3
.end method

.method public updateSummaries()V
    .locals 14

    .prologue
    const v13, 0x7f07000b

    const v12, 0x7f07000a

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 620
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "stun_server"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "stun_server"

    const-string v7, "stun.ekiga.net"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 621
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "stun_server_port"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "stun_server_port"

    const-string v7, "3478"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "mmtel_qvalue"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "mmtel_qvalue"

    const-string v7, "1.00"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v0, v4, :cond_6

    .line 627
    if-eqz v0, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 628
    .local v1, "j":Ljava/lang/String;
    :goto_1
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, "username":Ljava/lang/String;
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pbxes.org"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "server":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "username"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "domain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 633
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "domain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f060015

    invoke-virtual {p0, v5}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 637
    :goto_2
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromuser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 638
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromuser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const v5, 0x7f060017

    invoke-virtual {p0, v5}, Lorg/sipdroid/sipua/ui/Settings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 642
    :goto_3
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "port"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "port"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 643
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    sget-object v6, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "protocol"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "server"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pbxes.org"

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "pbxes.org"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "tcp"

    :goto_4
    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 645
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 626
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 627
    .end local v1    # "j":Ljava/lang/String;
    .end local v2    # "server":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto/16 :goto_1

    .line 635
    .restart local v1    # "j":Ljava/lang/String;
    .restart local v2    # "server":Ljava/lang/String;
    .restart local v3    # "username":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "domain"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "domain"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 640
    :cond_3
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fromuser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromuser"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 643
    :cond_4
    const-string v4, "udp"

    goto/16 :goto_4

    .line 645
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "@"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 648
    .end local v1    # "j":Ljava/lang/String;
    .end local v2    # "server":Ljava/lang/String;
    .end local v3    # "username":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "search"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 649
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "excludepat"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "excludepat"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 650
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "posurl"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "posurl"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 651
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "callthru2"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "callthru2"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "pref"

    const-string v6, "SIP"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PSTN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 653
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "par"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 657
    :goto_6
    const-string v4, "eargain"

    const-string v5, "0.25"

    invoke-virtual {p0, v4, v5, v13, v12}, Lorg/sipdroid/sipua/ui/Settings;->fill(Ljava/lang/String;Ljava/lang/String;II)V

    .line 658
    const-string v4, "micgain"

    const-string v5, "0.25"

    invoke-virtual {p0, v4, v5, v13, v12}, Lorg/sipdroid/sipua/ui/Settings;->fill(Ljava/lang/String;Ljava/lang/String;II)V

    .line 659
    const-string v4, "heargain"

    const-string v5, "0.25"

    invoke-virtual {p0, v4, v5, v13, v12}, Lorg/sipdroid/sipua/ui/Settings;->fill(Ljava/lang/String;Ljava/lang/String;II)V

    .line 660
    const-string v4, "hmicgain"

    const-string v5, "1.0"

    invoke-virtual {p0, v4, v5, v13, v12}, Lorg/sipdroid/sipua/ui/Settings;->fill(Ljava/lang/String;Ljava/lang/String;II)V

    .line 661
    const-string v4, "vquality"

    const-string v5, "low"

    const v6, 0x7f070005

    const v7, 0x7f070004

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/sipdroid/sipua/ui/Settings;->fill(Ljava/lang/String;Ljava/lang/String;II)V

    .line 662
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "stun"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 663
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "stun_server"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 664
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "stun_server_port"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 671
    :goto_7
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "mmtel"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 672
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "mmtel_qvalue"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 677
    :goto_8
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "callthru"

    invoke-interface {v4, v5, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 678
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "callthru2"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 682
    :goto_9
    sget-object v4, Lorg/sipdroid/sipua/ui/Settings;->settings:Landroid/content/SharedPreferences;

    const-string v5, "posurl"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 683
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pos"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 684
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "callback"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 689
    :goto_a
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "bluetooth"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->isBluetoothSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 690
    return-void

    .line 655
    :cond_7
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "par"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 666
    :cond_8
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "stun_server"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 667
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "stun_server_port"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_7

    .line 674
    :cond_9
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "mmtel_qvalue"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_8

    .line 680
    :cond_a
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "callthru2"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_9

    .line 686
    :cond_b
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "pos"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 687
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Settings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "callback"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_a
.end method
