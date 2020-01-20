.class Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;
.super Ljava/lang/Object;
.source "JumpToTimeDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/vlc/gui/JumpToTimeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JumpToTimeWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;


# direct methods
.method private constructor <init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;->this$0:Lorg/videolan/vlc/gui/JumpToTimeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;Lorg/videolan/vlc/gui/JumpToTimeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/videolan/vlc/gui/JumpToTimeDialog;
    .param p2, "x1"    # Lorg/videolan/vlc/gui/JumpToTimeDialog$1;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lorg/videolan/vlc/gui/JumpToTimeDialog$JumpToTimeWatcher;-><init>(Lorg/videolan/vlc/gui/JumpToTimeDialog;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v6, 0x3b

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "text":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const/4 v3, 0x0

    .line 150
    .local v3, "value":Ljava/lang/Short;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v2

    .line 151
    .local v2, "text_value":Ljava/lang/Short;
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-le v4, v6, :cond_3

    .line 152
    const/16 v4, 0x3b

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    .end local v2    # "text_value":Ljava/lang/Short;
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 160
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-interface {p1, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 161
    invoke-virtual {v3}, Ljava/lang/Short;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 153
    .restart local v2    # "text_value":Ljava/lang/Short;
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-gez v4, :cond_2

    .line 154
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    .line 155
    .end local v2    # "text_value":Ljava/lang/Short;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 142
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 140
    return-void
.end method
