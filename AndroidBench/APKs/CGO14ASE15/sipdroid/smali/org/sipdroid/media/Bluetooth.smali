.class public Lorg/sipdroid/media/Bluetooth;
.super Ljava/lang/Object;
.source "Bluetooth.java"


# static fields
.field static am:Landroid/media/AudioManager;

.field static ba:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable(Z)V
    .locals 1
    .param p0, "mode"    # Z

    .prologue
    .line 50
    if-eqz p0, :cond_0

    .line 51
    sget-object v0, Lorg/sipdroid/media/Bluetooth;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    sget-object v0, Lorg/sipdroid/media/Bluetooth;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lorg/sipdroid/media/Bluetooth;->ba:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lorg/sipdroid/media/Bluetooth;->ba:Landroid/bluetooth/BluetoothAdapter;

    .line 44
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lorg/sipdroid/media/Bluetooth;->am:Landroid/media/AudioManager;

    .line 47
    :cond_0
    return-void
.end method

.method public static isAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 57
    sget-object v5, Lorg/sipdroid/media/Bluetooth;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    .local v2, "devs":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    return v4

    .line 59
    .end local v2    # "devs":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    sget-object v5, Lorg/sipdroid/media/Bluetooth;->ba:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 60
    .restart local v2    # "devs":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 61
    .local v1, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 62
    .local v0, "cl":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_2

    const/high16 v5, 0x40000

    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x408

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x420

    if-eq v5, v6, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v5

    const/16 v6, 0x404

    if-ne v5, v6, :cond_2

    .line 66
    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/sipdroid/media/Bluetooth;->init()V

    .line 73
    sget-object v0, Lorg/sipdroid/media/Bluetooth;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    return v0
.end method
