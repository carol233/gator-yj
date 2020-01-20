.class public Lorg/videolan/vlc/gui/TimeSleepDialog;
.super Landroid/app/TimePickerDialog;
.source "TimeSleepDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/TimeSleepDialog"


# instance fields
.field private hourOfDay:I

.field private final mSleepCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSleepListener:Landroid/content/DialogInterface$OnClickListener;

.field protected minute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    const v6, 0x7f0b0063

    const/4 v5, 0x1

    .line 50
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/videolan/vlc/gui/TimeSleepDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 51
    invoke-virtual {p0, v5}, Lorg/videolan/vlc/gui/TimeSleepDialog;->setCanceledOnTouchOutside(Z)V

    .line 52
    invoke-virtual {p0, v6}, Lorg/videolan/vlc/gui/TimeSleepDialog;->setTitle(I)V

    .line 53
    const/4 v0, -0x1

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->mSleepListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lorg/videolan/vlc/gui/TimeSleepDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 54
    const/4 v0, -0x3

    const v1, 0x7f0b0064

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->mSleepCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Lorg/videolan/vlc/gui/TimeSleepDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lorg/videolan/vlc/gui/TimeSleepDialog;->show()V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 65
    new-instance v0, Lorg/videolan/vlc/gui/TimeSleepDialog$1;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/TimeSleepDialog$1;-><init>(Lorg/videolan/vlc/gui/TimeSleepDialog;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->mSleepListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    new-instance v0, Lorg/videolan/vlc/gui/TimeSleepDialog$2;

    invoke-direct {v0, p0}, Lorg/videolan/vlc/gui/TimeSleepDialog$2;-><init>(Lorg/videolan/vlc/gui/TimeSleepDialog;)V

    iput-object v0, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->mSleepCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lorg/videolan/vlc/gui/TimeSleepDialog;)I
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/TimeSleepDialog;

    .prologue
    .line 37
    iget v0, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->hourOfDay:I

    return v0
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 61
    iput p2, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->hourOfDay:I

    .line 62
    iput p3, p0, Lorg/videolan/vlc/gui/TimeSleepDialog;->minute:I

    .line 63
    return-void
.end method
