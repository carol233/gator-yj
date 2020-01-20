.class public Lorg/sipdroid/sipua/ui/CallScreen;
.super Landroid/app/Activity;
.source "CallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ANSWER_MENU_ITEM:I = 0x9

.field public static final BLUETOOTH_MENU_ITEM:I = 0xa

.field public static final DTMF_MENU_ITEM:I = 0xb

.field public static final FIRST_MENU_ID:I = 0x1

.field public static final HANG_UP_MENU_ITEM:I = 0x2

.field public static final HOLD_MENU_ITEM:I = 0x3

.field public static final MUTE_MENU_ITEM:I = 0x4

.field public static final SPEAKER_MENU_ITEM:I = 0x7

.field public static final TRANSFER_MENU_ITEM:I = 0x8

.field public static final VIDEO_MENU_ITEM:I = 0x6

.field private static transferText:Landroid/widget/EditText;


# instance fields
.field enabled:Z

.field enabletime:J

.field intent:Landroid/content/Intent;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field rtp_socket:Lorg/sipdroid/net/RtpSocket;

.field socket:Lorg/sipdroid/net/SipdroidSocket;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 221
    iput-object p0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    .line 281
    new-instance v0, Lorg/sipdroid/sipua/ui/CallScreen$3;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/CallScreen$3;-><init>(Lorg/sipdroid/sipua/ui/CallScreen;)V

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private transfer()V
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lorg/sipdroid/sipua/ui/InstantAutoCompleteTextView;

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sipdroid/sipua/ui/InstantAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v0, Lorg/sipdroid/sipua/ui/CallScreen;->transferText:Landroid/widget/EditText;

    .line 124
    sget-object v0, Lorg/sipdroid/sipua/ui/CallScreen;->transferText:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    const v2, 0x7f06007d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lorg/sipdroid/sipua/ui/CallScreen;->transferText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 133
    return-void
.end method


# virtual methods
.method disableKeyguard()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 191
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lorg/sipdroid/sipua/ui/CallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 192
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "Sipdroid"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->enabled:Z

    .line 195
    :cond_0
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->enabled:Z

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 197
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "HTC One"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Lorg/sipdroid/sipua/ui/CallScreen$1;

    invoke-direct {v1, p0}, Lorg/sipdroid/sipua/ui/CallScreen$1;-><init>(Lorg/sipdroid/sipua/ui/CallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 202
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->enabled:Z

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->enabletime:J

    .line 205
    :cond_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 119
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    sget-object v1, Lorg/sipdroid/sipua/ui/CallScreen;->transferText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/sipdroid/sipua/SipdroidEngine;->transfer(Ljava/lang/String;)V

    .line 120
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x1080036

    const/4 v4, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 71
    .local v1, "result":Z
    const/4 v2, 0x3

    const v3, 0x7f060077

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 72
    .local v0, "m":Landroid/view/MenuItem;
    const v2, 0x1080086

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 73
    const/4 v2, 0x7

    const v3, 0x7f060079

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 74
    const v2, 0x1080087

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 75
    const/4 v2, 0x4

    const v3, 0x7f060076

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 76
    const v2, 0x1080076

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 77
    const/16 v2, 0x9

    const v3, 0x7f06007b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 78
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 79
    const/16 v2, 0xa

    const v3, 0x7f06007c

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 80
    const v2, 0x7f02008d

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 81
    const/16 v2, 0x8

    const v3, 0x7f060078

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 82
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 83
    const/4 v2, 0x6

    const v3, 0x7f060074

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 84
    const v2, 0x1080037

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 85
    const/4 v2, 0x2

    const v3, 0x7f06007a

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 86
    const v2, 0x7f020062

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 88
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 138
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_0
    :pswitch_0
    return v2

    .line 142
    :pswitch_1
    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->stopRingtone()V

    .line 143
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->rejectcall()V

    goto :goto_0

    .line 147
    :pswitch_2
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->answercall()V

    goto :goto_0

    .line 151
    :pswitch_3
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->togglehold()V

    goto :goto_0

    .line 155
    :pswitch_4
    invoke-direct {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->transfer()V

    goto :goto_0

    .line 159
    :pswitch_5
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->togglemute()V

    goto :goto_0

    .line 163
    :pswitch_6
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v4

    sget v3, Lorg/sipdroid/media/RtpStreamReceiver;->speakermode:I

    if-nez v3, :cond_0

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v4, v3}, Lorg/sipdroid/sipua/SipdroidEngine;->speaker(I)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 168
    :pswitch_7
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->togglebluetooth()V

    goto :goto_0

    .line 172
    :pswitch_8
    sget v3, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->togglehold()V

    .line 174
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/sipdroid/sipua/ui/VideoCamera;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/CallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 177
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 176
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->socket:Lorg/sipdroid/net/SipdroidSocket;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->socket:Lorg/sipdroid/net/SipdroidSocket;

    invoke-virtual {v0}, Lorg/sipdroid/net/SipdroidSocket;->close()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->socket:Lorg/sipdroid/net/SipdroidSocket;

    .line 293
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 294
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 295
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->reenableKeyguard()V

    .line 296
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 95
    .local v0, "result":Z
    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget-object v1, v1, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    iget-object v1, v1, Lorg/sipdroid/sipua/SipdroidEngine;->ua:Lorg/sipdroid/sipua/UserAgent;

    iget-object v1, v1, Lorg/sipdroid/sipua/UserAgent;->audio_app:Lorg/sipdroid/media/MediaLauncher;

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 99
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 100
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-static {}, Lorg/sipdroid/sipua/ui/VideoCamera;->videoValid()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v1, v5, :cond_0

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteVideo()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 101
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 102
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-static {}, Lorg/sipdroid/media/RtpStreamReceiver;->isBluetoothAvailable()Z

    move-result v4

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 110
    :goto_1
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->headset:I

    if-gtz v1, :cond_2

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->docked:I

    if-gtz v1, :cond_2

    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->bluetooth:I

    if-gtz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-ne v4, v2, :cond_3

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 113
    return v0

    :cond_0
    move v1, v3

    .line 100
    goto :goto_0

    .line 104
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 105
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 106
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 107
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 108
    const/16 v1, 0xa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 110
    goto :goto_2

    :cond_3
    move v2, v3

    .line 111
    goto :goto_3
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->disableKeyguard()V

    .line 229
    :cond_0
    sget v0, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->socket:Lorg/sipdroid/net/SipdroidSocket;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->getLocalVideo()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sipdroid/sipua/SipdroidEngine;->getRemoteVideo()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "server"

    const-string v2, "pbxes.org"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pbxes.org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Lorg/sipdroid/sipua/ui/CallScreen$2;

    invoke-direct {v0, p0}, Lorg/sipdroid/sipua/ui/CallScreen$2;-><init>(Lorg/sipdroid/sipua/ui/CallScreen;)V

    invoke-virtual {v0}, Lorg/sipdroid/sipua/ui/CallScreen$2;->start()V

    .line 279
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 301
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 302
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->disableKeyguard()V

    .line 303
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 308
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 309
    :cond_0
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/CallScreen;->reenableKeyguard()V

    .line 310
    :cond_1
    return-void
.end method

.method reenableKeyguard()V
    .locals 2

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->enabled:Z

    if-nez v0, :cond_1

    .line 210
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 211
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->mKeyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/sipdroid/sipua/ui/CallScreen;->enabled:Z

    .line 217
    :cond_1
    return-void

    .line 212
    :catch_0
    move-exception v0

    goto :goto_0
.end method
