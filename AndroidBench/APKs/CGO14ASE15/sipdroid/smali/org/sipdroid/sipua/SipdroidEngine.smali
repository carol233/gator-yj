.class public Lorg/sipdroid/sipua/SipdroidEngine;
.super Ljava/lang/Object;
.source "SipdroidEngine.java"

# interfaces
.implements Lorg/sipdroid/sipua/RegisterAgentListener;


# static fields
.field public static final INITIALIZED:I = 0x2

.field public static final LINES:I = 0x2

.field public static final UNINITIALIZED:I

.field static lasthalt:J

.field static lastpwl:J

.field public static pwl:[Landroid/os/PowerManager$WakeLock;

.field static wl:[Landroid/os/PowerManager$WakeLock;

.field static wwl:[Landroid/net/wifi/WifiManager$WifiLock;


# instance fields
.field private kas:[Lorg/sipdroid/net/KeepAliveSip;

.field lastmsgs:[Ljava/lang/String;

.field public pref:I

.field public ras:[Lorg/sipdroid/sipua/RegisterAgent;

.field public sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

.field public ua:Lorg/sipdroid/sipua/UserAgent;

.field public uas:[Lorg/sipdroid/sipua/UserAgent;

.field public user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getContactURL(Ljava/lang/String;Lorg/zoolu/sip/provider/SipProvider;)Ljava/lang/String;
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;

    .prologue
    .line 188
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/zoolu/sip/provider/SipProvider;->getPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";transport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public CheckEngine()V
    .locals 6

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    .local v0, "arr$":[Lorg/zoolu/sip/provider/SipProvider;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 217
    .local v4, "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/zoolu/sip/provider/SipProvider;->hasOutboundProxy()Z

    move-result v5

    if-nez v5, :cond_0

    .line 218
    invoke-virtual {p0, v4, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->setOutboundProxy(Lorg/zoolu/sip/provider/SipProvider;I)V

    .line 219
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v4    # "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    :cond_1
    return-void
.end method

.method public StartEngine()Z
    .locals 23

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PowerManager;

    .line 102
    .local v19, "pm":Landroid/os/PowerManager;
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    .line 103
    .local v21, "wm":Landroid/net/wifi/WifiManager;
    sget-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_1

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "keepon"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 107
    .local v15, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "keepon"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    .end local v15    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/PowerManager$WakeLock;

    sput-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    .line 111
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/os/PowerManager$WakeLock;

    sput-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    .line 112
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/net/wifi/WifiManager$WifiLock;

    sput-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    .line 114
    :cond_1
    sget-object v2, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lorg/sipdroid/sipua/ui/ChangeAccount;->getPref(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    .line 116
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/sipdroid/sipua/UserAgent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    .line 117
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/sipdroid/sipua/RegisterAgent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .line 118
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/sipdroid/net/KeepAliveSip;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->kas:[Lorg/sipdroid/net/KeepAliveSip;

    .line 119
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->lastmsgs:[Ljava/lang/String;

    .line 120
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/zoolu/sip/provider/SipProvider;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    .line 121
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/sipdroid/sipua/UserAgentProfile;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    const/4 v3, 0x0

    const-string v4, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/SipdroidEngine;->getUserAgentProfile(Ljava/lang/String;)Lorg/sipdroid/sipua/UserAgentProfile;

    move-result-object v4

    aput-object v4, v2, v3

    .line 123
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/sipdroid/sipua/SipdroidEngine;->getUserAgentProfile(Ljava/lang/String;)Lorg/sipdroid/sipua/UserAgentProfile;

    move-result-object v4

    aput-object v4, v2, v3

    .line 123
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 126
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/zoolu/sip/provider/SipStack;->init(Ljava/lang/String;)V

    .line 127
    const/16 v16, 0x0

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    .local v14, "arr$":[Lorg/sipdroid/sipua/UserAgentProfile;
    array-length v0, v14

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    aget-object v10, v14, v17

    .line 130
    .local v10, "user_profile":Lorg/sipdroid/sipua/UserAgentProfile;
    sget-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v2, v2, v16

    if-nez v2, :cond_3

    .line 131
    sget-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x1

    const-string v4, "Sipdroid.SipdroidEngine"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    aput-object v3, v2, v16

    .line 132
    sget-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    const v3, 0x10000006

    const-string v4, "Sipdroid.SipdroidEngine"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    aput-object v3, v2, v16

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "keepon"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 134
    sget-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v3, 0x3

    const-string v4, "Sipdroid.SipdroidEngine"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    aput-object v3, v2, v16

    .line 135
    sget-object v2, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v2, v2, v16

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 140
    :cond_3
    const/4 v2, 0x0

    :try_start_0
    sput v2, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    .line 142
    const-wide/16 v2, 0xfa0

    sput-wide v2, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    .line 143
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    .line 144
    sget-object v3, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "protocol"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v16, :cond_7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v10, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const-string v7, "pbxes.org"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "tcp"

    :goto_3
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    .line 147
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "tls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "tcp"

    aput-object v4, v2, v3

    .line 149
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sipdroid/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lorg/sipdroid/sipua/ui/Sipdroid;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 150
    .local v20, "version":Ljava/lang/String;
    sput-object v20, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    .line 151
    sput-object v20, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    .line 153
    invoke-static {}, Lorg/zoolu/net/IpAddress;->setLocalIpAddress()V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    new-instance v3, Lorg/zoolu/sip/provider/SipProvider;

    sget-object v4, Lorg/zoolu/net/IpAddress;->localIpAddress:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/zoolu/sip/provider/SipProvider;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v16

    .line 155
    iget-object v2, v10, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v3, v3, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/sipdroid/sipua/SipdroidEngine;->getContactURL(Ljava/lang/String;Lorg/zoolu/sip/provider/SipProvider;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 157
    iget-object v2, v10, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 163
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->CheckEngine()V

    .line 166
    const/4 v12, 0x0

    .line 167
    .local v12, "icsi":Ljava/lang/String;
    iget-boolean v2, v10, Lorg/sipdroid/sipua/UserAgentProfile;->mmtel:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 168
    const-string v12, "\"urn%3Aurn-7%3A3gpp-service.ims.icsi.mmtel\""

    .line 171
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    new-instance v3, Lorg/sipdroid/sipua/UserAgent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v4, v4, v16

    invoke-direct {v3, v4, v10}, Lorg/sipdroid/sipua/UserAgent;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/sipdroid/sipua/UserAgentProfile;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    aput-object v3, v2, v16

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    move-object/from16 v22, v0

    new-instance v2, Lorg/sipdroid/sipua/RegisterAgent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v3, v3, v16

    iget-object v4, v10, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v5, v10, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    iget-object v6, v10, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    iget-object v7, v10, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iget-object v8, v10, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    iget-object v11, v10, Lorg/sipdroid/sipua/UserAgentProfile;->qvalue:Ljava/lang/String;

    iget-boolean v9, v10, Lorg/sipdroid/sipua/UserAgentProfile;->pub:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v13}, Lorg/sipdroid/sipua/RegisterAgent;-><init>(Lorg/zoolu/sip/provider/SipProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/sipdroid/sipua/RegisterAgentListener;Lorg/sipdroid/sipua/UserAgentProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    aput-object v2, v22, v16

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/sipdroid/sipua/SipdroidEngine;->kas:[Lorg/sipdroid/net/KeepAliveSip;

    new-instance v3, Lorg/sipdroid/net/KeepAliveSip;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v4, v4, v16

    const-wide/32 v5, 0x186a0

    invoke-direct {v3, v4, v5, v6}, Lorg/sipdroid/net/KeepAliveSip;-><init>(Lorg/zoolu/sip/provider/SipProvider;J)V

    aput-object v3, v2, v16

    .line 179
    .end local v12    # "icsi":Ljava/lang/String;
    .end local v20    # "version":Ljava/lang/String;
    :goto_4
    add-int/lit8 v16, v16, 0x1

    .line 129
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 144
    :cond_7
    const-string v2, ""

    goto/16 :goto_2

    :cond_8
    const-string v2, "udp"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 181
    .end local v10    # "user_profile":Lorg/sipdroid/sipua/UserAgentProfile;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lorg/sipdroid/sipua/SipdroidEngine;->listen()V

    .line 184
    const/4 v2, 0x1

    return v2

    .line 177
    .restart local v10    # "user_profile":Lorg/sipdroid/sipua/UserAgentProfile;
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public answercall()V
    .locals 1

    .prologue
    .line 580
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    .line 581
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/UserAgent;->accept()Z

    .line 582
    return-void
.end method

.method public call(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "target_url"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 537
    iget v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    .line 538
    .local v1, "p":I
    const/4 v0, 0x0

    .line 540
    .local v0, "found":Z
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 541
    const/4 v0, 0x1

    .line 560
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    aget-object v3, v3, v1

    iput-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    if-nez v3, :cond_8

    .line 561
    :cond_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "callback"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "posurl"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/sipdroid/sipua/ui/Receiver;->url(Ljava/lang/String;)V

    .line 564
    const/4 v2, 0x1

    .line 575
    :cond_2
    :goto_1
    return v2

    .line 543
    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_4

    .line 544
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 545
    const/4 v0, 0x1

    .line 548
    :cond_4
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 549
    iget v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    .line 550
    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 551
    const/4 v0, 0x1

    goto :goto_0

    .line 543
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 552
    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_0

    .line 553
    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 554
    const/4 v0, 0x1

    .line 555
    goto :goto_0

    .line 552
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 569
    :cond_8
    iget-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UAC: CALLING "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 571
    iget-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    iget-object v3, v3, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v3, v3, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    if-nez v3, :cond_9

    .line 573
    iget-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    const-string v4, "ONLY SIGNALING, NO MEDIA"

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 575
    :cond_9
    iget-object v3, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v3, p1, v2}, Lorg/sipdroid/sipua/UserAgent;->call(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1
.end method

.method public expire()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 240
    sput-wide v8, Lorg/sipdroid/sipua/ui/Receiver;->expire_time:J

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 243
    .local v4, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    if-eqz v4, :cond_0

    iget v5, v4, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 244
    const/4 v5, 0x1

    iput v5, v4, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 245
    add-int/lit8 v5, v1, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 247
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    .line 250
    return-void
.end method

.method public getLocalVideo()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    iget v0, v0, Lorg/sipdroid/sipua/UserAgent;->local_video_port:I

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    iget-object v0, v0, Lorg/sipdroid/sipua/UserAgent;->remote_media_address:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteVideo()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    iget v0, v0, Lorg/sipdroid/sipua/UserAgent;->remote_video_port:I

    return v0
.end method

.method public getUIContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getUserAgentProfile(Ljava/lang/String;)Lorg/sipdroid/sipua/UserAgentProfile;
    .locals 5
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 75
    new-instance v0, Lorg/sipdroid/sipua/UserAgentProfile;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/sipdroid/sipua/UserAgentProfile;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "user_profile":Lorg/sipdroid/sipua/UserAgentProfile;
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "password"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->passwd:Ljava/lang/String;

    .line 79
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 80
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pbxes.org"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    .line 84
    :goto_0
    iget-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm_orig:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromuser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 86
    iget-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    .line 92
    :goto_1
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "mmtel_qvalue"

    const-string v4, "1.00"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->qvalue:Ljava/lang/String;

    .line 93
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "mmtel"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->mmtel:Z

    .line 95
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edge"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3g"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, v0, Lorg/sipdroid/sipua/UserAgentProfile;->pub:Z

    .line 97
    return-object v0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "domain"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    goto/16 :goto_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fromuser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public halt()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 348
    .local v5, "time":J
    const/4 v1, 0x0

    .line 349
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_7

    aget-object v4, v0, v2

    .line 350
    .local v4, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->unregister(I)V

    .line 351
    :goto_1
    if-eqz v4, :cond_0

    iget v7, v4, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x7d0

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    .line 353
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v7

    goto :goto_1

    .line 356
    :cond_0
    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 357
    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 358
    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v7, v7, v1

    if-eqz v7, :cond_1

    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 359
    :cond_1
    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v7, v7, v1

    if-eqz v7, :cond_2

    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 361
    :cond_2
    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->kas:[Lorg/sipdroid/net/KeepAliveSip;

    aget-object v7, v7, v1

    if-eqz v7, :cond_3

    .line 362
    const-class v7, Lorg/sipdroid/sipua/ui/LoopAlarm;

    invoke-static {v11, v7}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    .line 363
    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->kas:[Lorg/sipdroid/net/KeepAliveSip;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/sipdroid/net/KeepAliveSip;->halt()V

    .line 365
    :cond_3
    add-int/lit8 v7, v1, 0x5

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static {v7, v8, v11, v9, v10}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 366
    if-eqz v4, :cond_4

    .line 367
    invoke-virtual {v4}, Lorg/sipdroid/sipua/RegisterAgent;->halt()V

    .line 368
    :cond_4
    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    aget-object v7, v7, v1

    if-eqz v7, :cond_5

    .line 369
    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    .line 370
    :cond_5
    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v7, v7, v1

    if-eqz v7, :cond_6

    .line 371
    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lorg/zoolu/sip/provider/SipProvider;->halt()V

    .line 372
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 349
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 374
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_7
    return-void
.end method

.method public info(CI)V
    .locals 1
    .param p1, "c"    # C
    .param p2, "duration"    # I

    .prologue
    .line 532
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v0, p1, p2}, Lorg/sipdroid/sipua/UserAgent;->info(CI)V

    .line 533
    return-void
.end method

.method public isRegistered()Z
    .locals 5

    .prologue
    .line 378
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 379
    .local v3, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/sipdroid/sipua/RegisterAgent;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 380
    const/4 v4, 0x1

    .line 381
    .end local v3    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :goto_1
    return v4

    .line 378
    .restart local v3    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    .end local v3    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isRegistered(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 390
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lorg/sipdroid/sipua/RegisterAgent;->isRegistered()Z

    move-result v0

    goto :goto_0
.end method

.method public keepAlive()V
    .locals 7

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->kas:[Lorg/sipdroid/net/KeepAliveSip;

    .local v0, "arr$":[Lorg/sipdroid/net/KeepAliveSip;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 618
    .local v3, "ka":Lorg/sipdroid/net/KeepAliveSip;
    if-eqz v3, :cond_0

    sget-boolean v5, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 620
    :try_start_0
    invoke-virtual {v3}, Lorg/sipdroid/net/KeepAliveSip;->sendToken()V

    .line 621
    const/16 v5, 0x3c

    const-class v6, Lorg/sipdroid/sipua/ui/LoopAlarm;

    invoke-static {v5, v6}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 617
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v3    # "ka":Lorg/sipdroid/net/KeepAliveSip;
    :cond_1
    return-void

    .line 622
    .restart local v3    # "ka":Lorg/sipdroid/net/KeepAliveSip;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public listen()V
    .locals 5

    .prologue
    .line 517
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->uas:[Lorg/sipdroid/sipua/UserAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/UserAgent;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 518
    .local v3, "ua":Lorg/sipdroid/sipua/UserAgent;
    if-eqz v3, :cond_1

    .line 519
    const-string v4, "UAS: WAITING FOR INCOMING CALL"

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 521
    iget-object v4, v3, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v4, v4, Lorg/sipdroid/sipua/UserAgentProfile;->audio:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lorg/sipdroid/sipua/UserAgent;->user_profile:Lorg/sipdroid/sipua/UserAgentProfile;

    iget-boolean v4, v4, Lorg/sipdroid/sipua/UserAgentProfile;->video:Z

    if-nez v4, :cond_0

    .line 523
    const-string v4, "ONLY SIGNALING, NO MEDIA"

    invoke-virtual {v3, v4}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 526
    :cond_0
    invoke-virtual {v3}, Lorg/sipdroid/sipua/UserAgent;->listen()Z

    .line 517
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    .end local v3    # "ua":Lorg/sipdroid/sipua/UserAgent;
    :cond_2
    return-void
.end method

.method public onMWIUpdate(Lorg/sipdroid/sipua/RegisterAgent;ZILjava/lang/String;)V
    .locals 11
    .param p1, "mwi_ra"    # Lorg/sipdroid/sipua/RegisterAgent;
    .param p2, "voicemail"    # Z
    .param p3, "number"    # I
    .param p4, "vmacc"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 419
    const/4 v1, 0x0

    .line 420
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 421
    .local v5, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    if-ne v5, p1, :cond_2

    .line 424
    .end local v5    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_0
    iget v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    if-eq v1, v6, :cond_3

    .line 439
    :cond_1
    :goto_1
    return-void

    .line 422
    .restart local v5    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 425
    .end local v5    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_3
    if-eqz p2, :cond_6

    .line 426
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060008

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "msgs":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    :cond_4
    sput-object p4, Lorg/sipdroid/sipua/ui/Receiver;->MWI_account:Ljava/lang/String;

    .line 431
    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->lastmsgs:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->lastmsgs:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 432
    :cond_5
    const v6, 0x108007e

    invoke-static {v8, v4, v6, v9, v10}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 433
    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->lastmsgs:[Ljava/lang/String;

    aput-object v4, v6, v1

    goto :goto_1

    .line 436
    .end local v4    # "msgs":Ljava/lang/String;
    :cond_6
    const/4 v6, 0x0

    invoke-static {v8, v7, v6, v9, v10}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 437
    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->lastmsgs:[Ljava/lang/String;

    aput-object v7, v6, v1

    goto :goto_1
.end method

.method public onUaRegistrationFailure(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V
    .locals 14
    .param p1, "reg_ra"    # Lorg/sipdroid/sipua/RegisterAgent;
    .param p2, "target"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "result"    # Ljava/lang/String;

    .prologue
    .line 446
    const/4 v6, 0x0

    .line 447
    .local v6, "retry":Z
    const/4 v2, 0x0

    .line 448
    .local v2, "i":I
    iget-object v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v1, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    .line 449
    .local v5, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    if-ne v5, p1, :cond_a

    .line 452
    .end local v5    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_0
    invoke-virtual {p0, v2}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 453
    const/4 v8, 0x1

    iput v8, p1, Lorg/sipdroid/sipua/RegisterAgent;->CurrentState:I

    .line 454
    add-int/lit8 v8, v2, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 459
    :goto_1
    if-eqz v6, :cond_4

    .line 460
    const/4 v6, 0x0

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-wide v10, Lorg/sipdroid/sipua/SipdroidEngine;->lastpwl:J

    const-wide/32 v12, 0xafc8

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 462
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    if-eqz v8, :cond_3

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_3

    .line 463
    sget-boolean v8, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-nez v8, :cond_1

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, "HTC One"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    sget-boolean v8, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v8, :cond_3

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    if-nez v8, :cond_3

    .line 464
    :cond_2
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 465
    const/4 v6, 0x1

    .line 468
    :cond_3
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    if-eqz v8, :cond_4

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_4

    sget-boolean v8, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v8, :cond_4

    .line 469
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 470
    const/4 v6, 0x1

    .line 474
    :cond_4
    if-eqz v6, :cond_c

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sput-wide v8, Lorg/sipdroid/sipua/SipdroidEngine;->lastpwl:J

    .line 476
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 477
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 479
    :cond_5
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->register()V

    .line 480
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    if-eqz v8, :cond_6

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 481
    :cond_6
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_7

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    if-eqz v8, :cond_7

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 487
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-wide v10, Lorg/sipdroid/sipua/SipdroidEngine;->lasthalt:J

    const-wide/32 v12, 0xafc8

    add-long/2addr v10, v12

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sput-wide v8, Lorg/sipdroid/sipua/SipdroidEngine;->lasthalt:J

    .line 489
    iget-object v8, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Lorg/zoolu/sip/provider/SipProvider;->haltConnections()V

    .line 491
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "main"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 492
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->updateDNS()V

    .line 493
    :cond_9
    invoke-virtual {p1}, Lorg/sipdroid/sipua/RegisterAgent;->stopMWI()V

    .line 494
    sget-object v8, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 495
    .local v7, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 496
    return-void

    .line 450
    .end local v7    # "wm":Landroid/net/wifi/WifiManager;
    .restart local v5    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 456
    .end local v5    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_b
    const/4 v6, 0x1

    .line 457
    add-int/lit8 v8, v2, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f060007

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0200a1

    const-wide/16 v11, 0x0

    invoke-static {v8, v9, v10, v11, v12}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto/16 :goto_1

    .line 482
    :cond_c
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 483
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 484
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    if-eqz v8, :cond_d

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_d

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 485
    :cond_d
    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    if-eqz v8, :cond_7

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_2
.end method

.method public onUaRegistrationSuccess(Lorg/sipdroid/sipua/RegisterAgent;Lorg/zoolu/sip/address/NameAddress;Lorg/zoolu/sip/address/NameAddress;Ljava/lang/String;)V
    .locals 11
    .param p1, "reg_ra"    # Lorg/sipdroid/sipua/RegisterAgent;
    .param p2, "target"    # Lorg/zoolu/sip/address/NameAddress;
    .param p3, "contact"    # Lorg/zoolu/sip/address/NameAddress;
    .param p4, "result"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 397
    .local v4, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    if-ne v4, p1, :cond_4

    .line 400
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_0
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 401
    sget-boolean v5, Lorg/sipdroid/sipua/ui/Receiver;->on_wlan:Z

    if-eqz v5, :cond_1

    .line 402
    const/16 v5, 0x3c

    const-class v6, Lorg/sipdroid/sipua/ui/LoopAlarm;

    invoke-static {v5, v6}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    .line 403
    :cond_1
    add-int/lit8 v6, v1, 0x5

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v7

    iget v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->pref:I

    if-ne v1, v5, :cond_5

    const v5, 0x7f060005

    :goto_1
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v7, 0x7f0200a0

    invoke-static {v6, v5, v7, v9, v10}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 404
    iput v8, p1, Lorg/sipdroid/sipua/RegisterAgent;->subattempts:I

    .line 405
    invoke-virtual {p1}, Lorg/sipdroid/sipua/RegisterAgent;->startMWI()V

    .line 406
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->registered()V

    .line 409
    :goto_2
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 411
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2

    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->pwl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 412
    :cond_2
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v5, v5, v1

    if-eqz v5, :cond_3

    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wwl:[Landroid/net/wifi/WifiManager$WifiLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 414
    :cond_3
    return-void

    .line 398
    .restart local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_5
    const v5, 0x7f060006

    goto :goto_1

    .line 408
    :cond_6
    add-int/lit8 v5, v1, 0x5

    const/4 v6, 0x0

    invoke-static {v5, v6, v8, v9, v10}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_2
.end method

.method public register()V
    .locals 10

    .prologue
    .line 289
    invoke-static {}, Lorg/zoolu/net/IpAddress;->setLocalIpAddress()V

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 293
    .local v4, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :try_start_0
    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 291
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 298
    :cond_1
    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7}, Lorg/sipdroid/sipua/SipdroidEngine;->getContactURL(Ljava/lang/String;Lorg/zoolu/sip/provider/SipProvider;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 300
    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 301
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->unregister(I)V

    .line 311
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    :cond_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/sipdroid/sipua/RegisterAgent;->register()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060004

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0200a2

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 305
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 308
    :catch_0
    move-exception v5

    goto :goto_2

    .line 313
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_4
    return-void
.end method

.method public registerMore()V
    .locals 10

    .prologue
    .line 266
    invoke-static {}, Lorg/zoolu/net/IpAddress;->setLocalIpAddress()V

    .line 267
    const/4 v1, 0x0

    .line 268
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 270
    .local v4, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :try_start_0
    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 272
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 268
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7}, Lorg/sipdroid/sipua/SipdroidEngine;->getContactURL(Ljava/lang/String;Lorg/zoolu/sip/provider/SipProvider;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 277
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/sipdroid/sipua/RegisterAgent;->isRegistered()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lorg/sipdroid/sipua/RegisterAgent;->register()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060004

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0200a2

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 279
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_3
    return-void

    .line 281
    .restart local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public registerUdp()V
    .locals 10

    .prologue
    .line 316
    invoke-static {}, Lorg/zoolu/net/IpAddress;->setLocalIpAddress()V

    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    .local v0, "arr$":[Lorg/sipdroid/sipua/RegisterAgent;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 320
    .local v4, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :try_start_0
    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v5, v5, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/zoolu/sip/provider/SipProvider;->getDefaultTransport()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tcp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 325
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 318
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    :cond_1
    iget-object v5, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v5, v5, v1

    iget-object v6, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v6, v6, v1

    iget-object v6, v6, Lorg/sipdroid/sipua/UserAgentProfile;->from_url:Ljava/lang/String;

    iget-object v7, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    aget-object v7, v7, v1

    invoke-direct {p0, v6, v7}, Lorg/sipdroid/sipua/SipdroidEngine;->getContactURL(Ljava/lang/String;Lorg/zoolu/sip/provider/SipProvider;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/sipdroid/sipua/UserAgentProfile;->contact_url:Ljava/lang/String;

    .line 330
    invoke-static {v1}, Lorg/sipdroid/sipua/ui/Receiver;->isFast(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 331
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->unregister(I)V

    .line 341
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 333
    :cond_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/sipdroid/sipua/RegisterAgent;->register()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    add-int/lit8 v5, v1, 0x5

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060004

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0200a2

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 335
    sget-object v5, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 338
    :catch_0
    move-exception v5

    goto :goto_2

    .line 343
    .end local v4    # "ra":Lorg/sipdroid/sipua/RegisterAgent;
    :cond_4
    return-void
.end method

.method public rejectcall()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    const-string v1, "UA: HANGUP"

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/UserAgent;->printLog(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/UserAgent;->hangup()V

    .line 587
    return-void
.end method

.method setOutboundProxy(Lorg/zoolu/sip/provider/SipProvider;I)V
    .locals 6
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "i"    # I

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "tcp"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tls"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pbxes.org"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "host":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_0

    const-string v1, "pbxes.org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const-string v0, "www1.pbxes.com"

    .line 206
    :cond_0
    if-eqz p1, :cond_1

    new-instance v2, Lorg/zoolu/net/SocketAddress;

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/zoolu/net/IpAddress;->getByName(Ljava/lang/String;)Lorg/zoolu/net/IpAddress;

    move-result-object v3

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "port"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v3, v1}, Lorg/zoolu/net/SocketAddress;-><init>(Lorg/zoolu/net/IpAddress;I)V

    invoke-virtual {p1, v2, v0}, Lorg/zoolu/sip/provider/SipProvider;->setOutboundProxy(Lorg/zoolu/net/SocketAddress;Ljava/lang/String;)V

    .line 212
    .end local v0    # "host":Ljava/lang/String;
    :cond_1
    :goto_4
    return-void

    .line 202
    :cond_2
    const-string v1, ""

    goto/16 :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 206
    .restart local v0    # "host":Ljava/lang/String;
    :cond_5
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 210
    .end local v0    # "host":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_4
.end method

.method public speaker(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 610
    iget-object v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v1, p1}, Lorg/sipdroid/sipua/UserAgent;->speakerMediaApplication(I)I

    move-result v0

    .line 611
    .local v0, "ret":I
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->progress()V

    .line 612
    return v0
.end method

.method public togglebluetooth()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/UserAgent;->bluetoothMediaApplication()V

    .line 606
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->progress()V

    .line 607
    return-void
.end method

.method public togglehold()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/sipdroid/sipua/UserAgent;->reInvite(Ljava/lang/String;I)V

    .line 591
    return-void
.end method

.method public togglemute()V
    .locals 5

    .prologue
    .line 598
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    invoke-virtual {v0}, Lorg/sipdroid/sipua/UserAgent;->muteMediaApplication()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060076

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080076

    sget-object v3, Lorg/sipdroid/sipua/ui/Receiver;->ccCall:Lorg/sipdroid/sipua/phone/Call;

    iget-wide v3, v3, Lorg/sipdroid/sipua/phone/Call;->base:J

    invoke-static {v0, v1, v2, v3, v4}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->progress()V

    goto :goto_0
.end method

.method public transfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 594
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/sipdroid/sipua/UserAgent;->callTransfer(Ljava/lang/String;I)V

    .line 595
    return-void
.end method

.method public unregister(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 253
    iget-object v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->username:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->user_profiles:[Lorg/sipdroid/sipua/UserAgentProfile;

    aget-object v1, v1, p1

    iget-object v1, v1, Lorg/sipdroid/sipua/UserAgentProfile;->realm:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lorg/sipdroid/sipua/SipdroidEngine;->ras:[Lorg/sipdroid/sipua/RegisterAgent;

    aget-object v0, v1, p1

    .line 257
    .local v0, "ra":Lorg/sipdroid/sipua/RegisterAgent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/sipdroid/sipua/RegisterAgent;->unregister()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    const-class v1, Lorg/sipdroid/sipua/ui/LoopAlarm;

    invoke-static {v3, v1}, Lorg/sipdroid/sipua/ui/Receiver;->alarm(ILjava/lang/Class;)V

    .line 259
    add-int/lit8 v1, p1, 0x5

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200a2

    invoke-static {v1, v2, v3, v4, v5}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    .line 260
    sget-object v1, Lorg/sipdroid/sipua/SipdroidEngine;->wl:[Landroid/os/PowerManager$WakeLock;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 262
    :cond_2
    add-int/lit8 v1, p1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lorg/sipdroid/sipua/ui/Receiver;->onText(ILjava/lang/String;IJ)V

    goto :goto_0
.end method

.method public updateDNS()V
    .locals 11

    .prologue
    .line 499
    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 500
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .line 501
    .local v3, "i":I
    iget-object v0, p0, Lorg/sipdroid/sipua/SipdroidEngine;->sip_providers:[Lorg/zoolu/sip/provider/SipProvider;

    .local v0, "arr$":[Lorg/zoolu/sip/provider/SipProvider;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 503
    .local v6, "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dns"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lorg/sipdroid/sipua/SipdroidEngine;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "server"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    invoke-interface {v9, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/zoolu/net/IpAddress;->getByName(Ljava/lang/String;)Lorg/zoolu/net/IpAddress;

    move-result-object v7

    invoke-virtual {v7}, Lorg/zoolu/net/IpAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 509
    invoke-virtual {p0, v6, v3}, Lorg/sipdroid/sipua/SipdroidEngine;->setOutboundProxy(Lorg/zoolu/sip/provider/SipProvider;I)V

    .line 510
    add-int/lit8 v3, v3, 0x1

    .line 501
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 503
    :cond_0
    :try_start_1
    const-string v7, ""
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 504
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e1":Ljava/net/UnknownHostException;
    add-int/lit8 v3, v3, 0x1

    .line 506
    goto :goto_2

    .line 512
    .end local v1    # "e1":Ljava/net/UnknownHostException;
    .end local v6    # "sip_provider":Lorg/zoolu/sip/provider/SipProvider;
    :cond_1
    return-void
.end method
