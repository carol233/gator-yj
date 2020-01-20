.class public Lorg/zoolu/sip/provider/SipStack;
.super Lorg/zoolu/tools/Configure;
.source "SipStack.java"


# static fields
.field public static LOG_LEVEL_CALL:I = 0x0

.field public static LOG_LEVEL_DIALOG:I = 0x0

.field public static LOG_LEVEL_TRANSACTION:I = 0x0

.field public static LOG_LEVEL_TRANSPORT:I = 0x0

.field public static LOG_LEVEL_UA:I = 0x0

.field public static final authors:Ljava/lang/String; = "Luca Veltri - University of Parma (Italy)"

.field public static clearing_timeout:J = 0x0L

.field public static debug_level:I = 0x0

.field public static default_expires:I = 0x0

.field public static default_nmax_connections:I = 0x0

.field public static default_port:I = 0x0

.field public static default_transport_protocols:[Ljava/lang/String; = null

.field public static early_dialog:Z = false

.field public static force_rport:Z = false

.field private static is_init:Z = false

.field public static log_path:Ljava/lang/String; = null

.field private static log_rotation_time:Ljava/lang/String; = null

.field public static log_rotations:I = 0x0

.field public static max_forwards:I = 0x0

.field public static max_logsize:I = 0x0

.field public static max_retransmission_timeout:J = 0x0L

.field public static final release:Ljava/lang/String; = "mjsip stack 1.6"

.field public static retransmission_timeout:J

.field public static rotation_scale:I

.field public static rotation_time:I

.field public static server_info:Ljava/lang/String;

.field public static single_timer:Z

.field public static transaction_timeout:J

.field public static ua_info:Ljava/lang/String;

.field public static use_rport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lorg/zoolu/sip/provider/SipStack;->is_init:Z

    .line 65
    const/16 v0, 0x13c4

    sput v0, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "udp"

    aput-object v1, v0, v2

    const-string v1, "tcp"

    aput-object v1, v0, v3

    sput-object v0, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    .line 70
    const/16 v0, 0x20

    sput v0, Lorg/zoolu/sip/provider/SipStack;->default_nmax_connections:I

    .line 75
    sput-boolean v3, Lorg/zoolu/sip/provider/SipStack;->use_rport:Z

    .line 80
    sput-boolean v2, Lorg/zoolu/sip/provider/SipStack;->force_rport:Z

    .line 85
    const/16 v0, 0x46

    sput v0, Lorg/zoolu/sip/provider/SipStack;->max_forwards:I

    .line 90
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lorg/zoolu/sip/provider/SipStack;->retransmission_timeout:J

    .line 95
    const-wide/16 v0, 0x3e80

    sput-wide v0, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    .line 97
    const-wide/32 v0, 0x1f400

    sput-wide v0, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    .line 99
    const-wide/16 v0, 0x1388

    sput-wide v0, Lorg/zoolu/sip/provider/SipStack;->clearing_timeout:J

    .line 102
    sput-boolean v2, Lorg/zoolu/sip/provider/SipStack;->single_timer:Z

    .line 108
    sput-boolean v2, Lorg/zoolu/sip/provider/SipStack;->early_dialog:Z

    .line 114
    const/16 v0, 0xe10

    sput v0, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    .line 120
    const-string v0, "mjsip stack 1.6"

    sput-object v0, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    .line 125
    const-string v0, "mjsip stack 1.6"

    sput-object v0, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    .line 130
    sput v3, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_TRANSPORT:I

    .line 132
    sput v4, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_TRANSACTION:I

    .line 134
    sput v4, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_DIALOG:I

    .line 136
    sput v3, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_CALL:I

    .line 138
    sput v2, Lorg/zoolu/sip/provider/SipStack;->LOG_LEVEL_UA:I

    .line 141
    sput v3, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    .line 147
    const-string v0, "log"

    sput-object v0, Lorg/zoolu/sip/provider/SipStack;->log_path:Ljava/lang/String;

    .line 149
    const/16 v0, 0x800

    sput v0, Lorg/zoolu/sip/provider/SipStack;->max_logsize:I

    .line 154
    sput v2, Lorg/zoolu/sip/provider/SipStack;->log_rotations:I

    .line 160
    const/4 v0, 0x0

    sput-object v0, Lorg/zoolu/sip/provider/SipStack;->log_rotation_time:Ljava/lang/String;

    .line 162
    sput v4, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    .line 164
    sput v4, Lorg/zoolu/sip/provider/SipStack;->rotation_time:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lorg/zoolu/tools/Configure;-><init>()V

    .line 284
    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/zoolu/sip/provider/SipStack;->init(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 6
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x5

    .line 293
    new-instance v2, Lorg/zoolu/sip/provider/SipStack;

    invoke-direct {v2}, Lorg/zoolu/sip/provider/SipStack;-><init>()V

    invoke-virtual {v2, p0}, Lorg/zoolu/sip/provider/SipStack;->loadFile(Ljava/lang/String;)V

    .line 296
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    sget-object v3, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    const-string v3, "NO-UA-INFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    sput-object v5, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    .line 303
    :cond_1
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    sget-object v3, Lorg/zoolu/tools/Configure;->NONE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    const-string v3, "NO-SERVER-INFO"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    :cond_2
    sput-object v5, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    .line 310
    :cond_3
    sget-boolean v2, Lorg/zoolu/sip/provider/SipStack;->single_timer:Z

    sput-boolean v2, Lorg/zoolu/tools/Timer;->SINGLE_THREAD:Z

    .line 313
    sget v2, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    if-lez v2, :cond_5

    .line 314
    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->log_rotation_time:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 315
    new-instance v0, Lorg/zoolu/sip/provider/SipParser;

    sget-object v2, Lorg/zoolu/sip/provider/SipStack;->log_rotation_time:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/zoolu/sip/provider/SipParser;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "par":Lorg/zoolu/sip/provider/SipParser;
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getInt()I

    move-result v2

    sput v2, Lorg/zoolu/sip/provider/SipStack;->rotation_time:I

    .line 317
    invoke-virtual {v0}, Lorg/zoolu/sip/provider/SipParser;->getString()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "scale":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 319
    const-string v1, "null"

    .line 320
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MONTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 321
    const/4 v2, 0x2

    sput v2, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    .line 336
    .end local v0    # "par":Lorg/zoolu/sip/provider/SipParser;
    .end local v1    # "scale":Ljava/lang/String;
    :cond_5
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lorg/zoolu/sip/provider/SipStack;->is_init:Z

    .line 338
    return-void

    .line 322
    .restart local v0    # "par":Lorg/zoolu/sip/provider/SipParser;
    .restart local v1    # "scale":Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 323
    sput v4, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    goto :goto_0

    .line 324
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HOUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 325
    const/16 v2, 0xa

    sput v2, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    goto :goto_0

    .line 326
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MINUTE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 327
    const/16 v2, 0xc

    sput v2, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    goto :goto_0

    .line 329
    :cond_9
    const/4 v2, 0x7

    sput v2, Lorg/zoolu/sip/provider/SipStack;->rotation_time:I

    .line 330
    sput v4, Lorg/zoolu/sip/provider/SipStack;->rotation_scale:I

    .line 331
    const-string v2, "Error with the log rotation time. Logs will rotate every week."

    invoke-static {v2}, Lorg/zoolu/sip/provider/SipStack;->printLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isInit()Z
    .locals 1

    .prologue
    .line 342
    sget-boolean v0, Lorg/zoolu/sip/provider/SipStack;->is_init:Z

    return v0
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 349
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipStack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 350
    return-void
.end method


# virtual methods
.method protected parseLine(Ljava/lang/String;)V
    .locals 6
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v4, "="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "index":I
    if-lez v2, :cond_1

    .line 174
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "attribute":Ljava/lang/String;
    new-instance v3, Lorg/zoolu/tools/Parser;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {v3, p1, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;I)V

    .line 180
    .local v3, "par":Lorg/zoolu/tools/Parser;
    :goto_0
    const/4 v4, 0x2

    new-array v1, v4, [C

    fill-array-data v1, :array_0

    .line 183
    .local v1, "delim":[C
    const-string v4, "default_port"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->default_port:I

    .line 275
    :cond_0
    :goto_1
    return-void

    .line 177
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "delim":[C
    .end local v3    # "par":Lorg/zoolu/tools/Parser;
    :cond_1
    move-object v0, p1

    .line 178
    .restart local v0    # "attribute":Ljava/lang/String;
    new-instance v3, Lorg/zoolu/tools/Parser;

    const-string v4, ""

    invoke-direct {v3, v4}, Lorg/zoolu/tools/Parser;-><init>(Ljava/lang/String;)V

    .restart local v3    # "par":Lorg/zoolu/tools/Parser;
    goto :goto_0

    .line 187
    .restart local v1    # "delim":[C
    :cond_2
    const-string v4, "default_transport_protocols"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    invoke-virtual {v3, v1}, Lorg/zoolu/tools/Parser;->getWordArray([C)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/zoolu/sip/provider/SipStack;->default_transport_protocols:[Ljava/lang/String;

    goto :goto_1

    .line 191
    :cond_3
    const-string v4, "default_nmax_connections"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 192
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->default_nmax_connections:I

    goto :goto_1

    .line 195
    :cond_4
    const-string v4, "use_rport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 196
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/zoolu/sip/provider/SipStack;->use_rport:Z

    goto :goto_1

    .line 199
    :cond_5
    const-string v4, "force_rport"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 200
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/zoolu/sip/provider/SipStack;->force_rport:Z

    goto :goto_1

    .line 203
    :cond_6
    const-string v4, "max_forwards"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 204
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->max_forwards:I

    goto :goto_1

    .line 207
    :cond_7
    const-string v4, "retransmission_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 208
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lorg/zoolu/sip/provider/SipStack;->retransmission_timeout:J

    goto :goto_1

    .line 211
    :cond_8
    const-string v4, "max_retransmission_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 212
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lorg/zoolu/sip/provider/SipStack;->max_retransmission_timeout:J

    goto/16 :goto_1

    .line 215
    :cond_9
    const-string v4, "transaction_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 216
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lorg/zoolu/sip/provider/SipStack;->transaction_timeout:J

    goto/16 :goto_1

    .line 219
    :cond_a
    const-string v4, "clearing_timeout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 220
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lorg/zoolu/sip/provider/SipStack;->clearing_timeout:J

    goto/16 :goto_1

    .line 223
    :cond_b
    const-string v4, "single_timer"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 224
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/zoolu/sip/provider/SipStack;->single_timer:Z

    goto/16 :goto_1

    .line 227
    :cond_c
    const-string v4, "early_dialog"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 228
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lorg/zoolu/sip/provider/SipStack;->early_dialog:Z

    goto/16 :goto_1

    .line 231
    :cond_d
    const-string v4, "default_expires"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 232
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->default_expires:I

    goto/16 :goto_1

    .line 235
    :cond_e
    const-string v4, "ua_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 236
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/zoolu/sip/provider/SipStack;->ua_info:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_f
    const-string v4, "server_info"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 240
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/zoolu/sip/provider/SipStack;->server_info:Ljava/lang/String;

    goto/16 :goto_1

    .line 245
    :cond_10
    const-string v4, "debug_level"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 246
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->debug_level:I

    goto/16 :goto_1

    .line 249
    :cond_11
    const-string v4, "log_path"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 250
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/zoolu/sip/provider/SipStack;->log_path:Ljava/lang/String;

    goto/16 :goto_1

    .line 253
    :cond_12
    const-string v4, "max_logsize"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 254
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->max_logsize:I

    goto/16 :goto_1

    .line 257
    :cond_13
    const-string v4, "log_rotations"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 258
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getInt()I

    move-result v4

    sput v4, Lorg/zoolu/sip/provider/SipStack;->log_rotations:I

    goto/16 :goto_1

    .line 261
    :cond_14
    const-string v4, "log_rotation_time"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 262
    invoke-virtual {v3}, Lorg/zoolu/tools/Parser;->getRemainingString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/zoolu/sip/provider/SipStack;->log_rotation_time:Ljava/lang/String;

    goto/16 :goto_1

    .line 267
    :cond_15
    const-string v4, "host_addr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 268
    const-string v4, "WARNING: parameter \'host_addr\' is no more supported; use \'via_addr\' instead."

    invoke-static {v4}, Lorg/zoolu/sip/provider/SipStack;->printLog(Ljava/lang/String;)V

    .line 269
    :cond_16
    const-string v4, "all_interfaces"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 270
    const-string v4, "WARNING: parameter \'all_interfaces\' is no more supported; use \'host_iaddr\' for setting a specific interface or let it undefined."

    invoke-static {v4}, Lorg/zoolu/sip/provider/SipStack;->printLog(Ljava/lang/String;)V

    .line 271
    :cond_17
    const-string v4, "use_outbound"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 272
    const-string v4, "WARNING: parameter \'use_outbound\' is no more supported; use \'outbound_addr\' for setting an outbound proxy or let it undefined."

    invoke-static {v4}, Lorg/zoolu/sip/provider/SipStack;->printLog(Ljava/lang/String;)V

    .line 273
    :cond_18
    const-string v4, "log_file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const-string v4, "WARNING: parameter \'log_file\' is no more supported."

    invoke-static {v4}, Lorg/zoolu/sip/provider/SipStack;->printLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    :array_0
    .array-data 2
        0x20s
        0x2cs
    .end array-data
.end method

.method protected toLines()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    const-string v0, "SipStack/mjsip stack 1.6"

    return-object v0
.end method
