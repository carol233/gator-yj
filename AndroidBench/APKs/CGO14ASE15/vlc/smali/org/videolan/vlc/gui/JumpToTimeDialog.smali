.class public Lorg/videolan/vlc/gui/JumpToTimeDialog;
.super Landroid/app/Dialog;
.source "JumpToTimeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/JumpToTimeDialog"


# instance fields
.field private mHour:Landroid/widget/EditText;

.field private mMinute:Landroid/widget/EditText;

.field private mSeconds:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentTime"    # J

    .prologue
    .line 44
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 45
    const v17, 0x7f0b0065

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->setTitle(I)V

    .line 47
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 48
    .local v6, "inflator":Landroid/view/LayoutInflater;
    const v17, 0x7f03002a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 49
    .local v16, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->setContentView(Landroid/view/View;)V

    .line 51
    const v17, 0x7f060075

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 52
    .local v4, "hourLabel":Landroid/widget/TextView;
    const v17, 0x7f060074

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    .line 53
    const v17, 0x7f060076

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    .line 54
    const v17, 0x7f060077

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;Lorg/videolan/vlc/gui/JumpToTimeDialog$1;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;Lorg/videolan/vlc/gui/JumpToTimeDialog$1;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    move-object/from16 v17, v0

    new-instance v18, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;Lorg/videolan/vlc/gui/JumpToTimeDialog$1;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 61
    const-wide/16 v17, 0x3e8

    div-long v14, p2, v17

    .line 62
    .local v14, "seconds_total":J
    const-wide/16 v17, 0x3c

    rem-long v17, v14, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 63
    .local v13, "seconds":Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v17, v14, v17

    const-wide/16 v19, 0x3c

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 64
    .local v8, "minutes":Ljava/lang/Long;
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 68
    .local v5, "hours":Ljava/lang/Short;
    const-wide/32 v17, 0x36ee80

    cmp-long v17, p2, v17

    if-gez v17, :cond_0

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setVisibility(I)V

    .line 70
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 73
    .local v9, "minutes_t":J
    const-wide/16 v17, 0x3c

    rem-long v17, v9, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 74
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    sub-long v17, v9, v17

    const-wide/16 v19, 0x3c

    div-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    .line 77
    .end local v9    # "minutes_t":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v5}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v17, 0x7f060078

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 82
    .local v12, "plus":Landroid/widget/Button;
    new-instance v17, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog$1;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v17, 0x7f060079

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 95
    .local v7, "minus":Landroid/widget/Button;
    new-instance v17, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog$2;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v17, 0x7f060073

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 109
    .local v11, "ok":Landroid/widget/Button;
    new-instance v17, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog$3;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v17, 0x7f06007a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 132
    .local v3, "cancel":Landroid/widget/Button;
    new-instance v17, Lorg/videolan/vlc/gui/JumpToTimeDialog$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/videolan/vlc/gui/JumpToTimeDialog$4;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method static synthetic access$100(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->incrementHour()V

    return-void
.end method

.method static synthetic access$300(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->incrementMinute()V

    return-void
.end method

.method static synthetic access$500(Lorg/videolan/vlc/gui/JumpToTimeDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->incrementSecond()V

    return-void
.end method

.method static synthetic access$700(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->decrementHour()V

    return-void
.end method

.method static synthetic access$800(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->decrementMinute()V

    return-void
.end method

.method static synthetic access$900(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0
    .param p0, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->decrementSecond()V

    return-void
.end method

.method private decrementHour()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    .local v1, "hour":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 215
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void

    .line 210
    .end local v1    # "hour":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "hour":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private decrementMinute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    .local v1, "newMinute":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 226
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void

    .line 222
    .end local v1    # "newMinute":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "newMinute":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private decrementSecond()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    .local v1, "newSecond":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 241
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void

    .line 235
    .end local v1    # "newSecond":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "newSecond":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private incrementHour()V
    .locals 4

    .prologue
    .line 169
    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 173
    .local v1, "hour":Ljava/lang/Integer;
    :goto_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    return-void

    .line 170
    .end local v1    # "hour":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "hour":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private incrementMinute()V
    .locals 5

    .prologue
    const/16 v4, 0x3c

    .line 179
    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    .local v1, "newMinute":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v4, :cond_0

    .line 184
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 186
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mMinute:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mHour:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, v4, :cond_1

    .line 188
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->incrementHour()V

    .line 190
    :cond_1
    return-void

    .line 180
    .end local v1    # "newMinute":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "newMinute":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private incrementSecond()V
    .locals 4

    .prologue
    .line 195
    :try_start_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 199
    .local v1, "newSecond":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3c

    if-lt v2, v3, :cond_0

    .line 200
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 201
    invoke-direct {p0}, Lorg/videolan/vlc/gui/JumpToTimeDialog;->incrementMinute()V

    .line 203
    :cond_0
    iget-object v2, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog;->mSeconds:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void

    .line 196
    .end local v1    # "newSecond":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "newSecond":Ljava/lang/Integer;
    goto :goto_0
.end method
