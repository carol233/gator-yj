.class public abstract Lorg/videolan/vlc/interfaces/IAudioService$Stub;
.super Landroid/os/Binder;
.source "IAudioService.java"

# interfaces
.implements Lorg/videolan/vlc/interfaces/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/interfaces/IAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/interfaces/IAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "org.videolan.vlc.interfaces.IAudioService"

.field static final TRANSACTION_addAudioCallback:I = 0x1a

.field static final TRANSACTION_append:I = 0xa

.field static final TRANSACTION_detectHeadset:I = 0x1c

.field static final TRANSACTION_getAlbum:I = 0x16

.field static final TRANSACTION_getArtist:I = 0x15

.field static final TRANSACTION_getCover:I = 0x19

.field static final TRANSACTION_getCurrentMediaLocation:I = 0x8

.field static final TRANSACTION_getItem:I = 0xc

.field static final TRANSACTION_getItems:I = 0xb

.field static final TRANSACTION_getLength:I = 0x18

.field static final TRANSACTION_getRate:I = 0x1e

.field static final TRANSACTION_getRepeatType:I = 0xf

.field static final TRANSACTION_getTime:I = 0x17

.field static final TRANSACTION_getTitle:I = 0x14

.field static final TRANSACTION_hasMedia:I = 0x11

.field static final TRANSACTION_hasNext:I = 0x12

.field static final TRANSACTION_hasPrevious:I = 0x13

.field static final TRANSACTION_isPlaying:I = 0xd

.field static final TRANSACTION_isShuffling:I = 0xe

.field static final TRANSACTION_load:I = 0x9

.field static final TRANSACTION_next:I = 0x4

.field static final TRANSACTION_pause:I = 0x2

.field static final TRANSACTION_play:I = 0x1

.field static final TRANSACTION_previous:I = 0x5

.field static final TRANSACTION_removeAudioCallback:I = 0x1b

.field static final TRANSACTION_setRepeatType:I = 0x10

.field static final TRANSACTION_setTime:I = 0x7

.field static final TRANSACTION_showWithoutParse:I = 0x1d

.field static final TRANSACTION_shuffle:I = 0x6

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p0, p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "org.videolan.vlc.interfaces.IAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/videolan/vlc/interfaces/IAudioService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lorg/videolan/vlc/interfaces/IAudioService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lorg/videolan/vlc/interfaces/IAudioService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 300
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 42
    :sswitch_0
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->play()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->pause()V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    :sswitch_3
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->stop()V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 68
    :sswitch_4
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->next()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 75
    :sswitch_5
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->previous()V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 82
    :sswitch_6
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->shuffle()V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 89
    :sswitch_7
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 92
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->setTime(J)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":J
    :sswitch_8
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getCurrentMediaLocation()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_9
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 110
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v4, v8

    .line 114
    .local v4, "_arg2":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v5, v8

    .line 115
    .local v5, "_arg3":Z
    :goto_2
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->load(Ljava/util/List;IZZ)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Z
    :cond_0
    move v4, v9

    .line 112
    goto :goto_1

    .restart local v4    # "_arg2":Z
    :cond_1
    move v5, v9

    .line 114
    goto :goto_2

    .line 121
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :sswitch_a
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 124
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v2}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->append(Ljava/util/List;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 130
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_b
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getItems()Ljava/util/List;

    move-result-object v7

    .line 132
    .local v7, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 138
    .end local v7    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_c
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getItem()Ljava/lang/String;

    move-result-object v6

    .line 140
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 146
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->isPlaying()Z

    move-result v6

    .line 148
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    if-eqz v6, :cond_2

    move v9, v8

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 154
    .end local v6    # "_result":Z
    :sswitch_e
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->isShuffling()Z

    move-result v6

    .line 156
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v6, :cond_3

    move v9, v8

    :cond_3
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 162
    .end local v6    # "_result":Z
    :sswitch_f
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getRepeatType()I

    move-result v6

    .line 164
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 170
    .end local v6    # "_result":I
    :sswitch_10
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 173
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->setRepeatType(I)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 179
    .end local v0    # "_arg0":I
    :sswitch_11
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->hasMedia()Z

    move-result v6

    .line 181
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v6, :cond_4

    move v9, v8

    :cond_4
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 187
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->hasNext()Z

    move-result v6

    .line 189
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v6, :cond_5

    move v9, v8

    :cond_5
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 195
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->hasPrevious()Z

    move-result v6

    .line 197
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v6, :cond_6

    move v9, v8

    :cond_6
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 203
    .end local v6    # "_result":Z
    :sswitch_14
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_15
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getArtist()Ljava/lang/String;

    move-result-object v6

    .line 213
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_16
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getAlbum()Ljava/lang/String;

    move-result-object v6

    .line 221
    .restart local v6    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    .end local v6    # "_result":Ljava/lang/String;
    :sswitch_17
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getTime()I

    move-result v6

    .line 229
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v6    # "_result":I
    :sswitch_18
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getLength()I

    move-result v6

    .line 237
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v6    # "_result":I
    :sswitch_19
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getCover()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 245
    .local v6, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v6, :cond_7

    .line 247
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v6, p3, v8}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 251
    :cond_7
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v6    # "_result":Landroid/graphics/Bitmap;
    :sswitch_1a
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    move-result-object v0

    .line 260
    .local v0, "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->addAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 266
    .end local v0    # "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :sswitch_1b
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lorg/videolan/vlc/interfaces/IAudioServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lorg/videolan/vlc/interfaces/IAudioServiceCallback;

    move-result-object v0

    .line 269
    .restart local v0    # "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->removeAudioCallback(Lorg/videolan/vlc/interfaces/IAudioServiceCallback;)V

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 275
    .end local v0    # "_arg0":Lorg/videolan/vlc/interfaces/IAudioServiceCallback;
    :sswitch_1c
    const-string v10, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v0, v8

    .line 278
    .local v0, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->detectHeadset(Z)V

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_8
    move v0, v9

    .line 277
    goto :goto_3

    .line 284
    :sswitch_1d
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->showWithoutParse(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 293
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1e
    const-string v9, "org.videolan.vlc.interfaces.IAudioService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lorg/videolan/vlc/interfaces/IAudioService$Stub;->getRate()F

    move-result v6

    .line 295
    .local v6, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
