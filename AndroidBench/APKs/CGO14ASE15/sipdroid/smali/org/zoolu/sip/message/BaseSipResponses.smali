.class public abstract Lorg/zoolu/sip/message/BaseSipResponses;
.super Ljava/lang/Object;
.source "BaseSipResponses.java"


# static fields
.field private static is_init:Z

.field protected static reasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lorg/zoolu/sip/message/BaseSipResponses;->is_init:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static init()V
    .locals 4

    .prologue
    const/16 v3, 0x2bc

    .line 37
    sget-boolean v1, Lorg/zoolu/sip/message/BaseSipResponses;->is_init:Z

    if-eqz v1, :cond_0

    .line 114
    .local v0, "i":I
    :goto_0
    return-void

    .line 44
    .end local v0    # "i":I
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    sput-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 46
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_1
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Internal error"

    aput-object v3, v1, v2

    .line 52
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x64

    const-string v3, "Trying"

    aput-object v3, v1, v2

    .line 53
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0xb4

    const-string v3, "Ringing"

    aput-object v3, v1, v2

    .line 54
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0xb5

    const-string v3, "Call Is Being Forwarded"

    aput-object v3, v1, v2

    .line 55
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0xb6

    const-string v3, "Queued"

    aput-object v3, v1, v2

    .line 56
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0xb7

    const-string v3, "Session Progress"

    aput-object v3, v1, v2

    .line 59
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0xc8

    const-string v3, "OK"

    aput-object v3, v1, v2

    .line 62
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x12c

    const-string v3, "Multiple Choices"

    aput-object v3, v1, v2

    .line 63
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x12d

    const-string v3, "Moved Permanently"

    aput-object v3, v1, v2

    .line 64
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x12e

    const-string v3, "Moved Temporarily"

    aput-object v3, v1, v2

    .line 65
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x131

    const-string v3, "Use Proxy"

    aput-object v3, v1, v2

    .line 66
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x17c

    const-string v3, "Alternative Service"

    aput-object v3, v1, v2

    .line 69
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x190

    const-string v3, "Bad Request"

    aput-object v3, v1, v2

    .line 70
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x191

    const-string v3, "Unauthorized"

    aput-object v3, v1, v2

    .line 71
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x192

    const-string v3, "Payment Required"

    aput-object v3, v1, v2

    .line 72
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x193

    const-string v3, "Forbidden"

    aput-object v3, v1, v2

    .line 73
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x194

    const-string v3, "Not Found"

    aput-object v3, v1, v2

    .line 74
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x195

    const-string v3, "Method Not Allowed"

    aput-object v3, v1, v2

    .line 75
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x196

    const-string v3, "Not Acceptable"

    aput-object v3, v1, v2

    .line 76
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x197

    const-string v3, "Proxy Authentication Required"

    aput-object v3, v1, v2

    .line 77
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x198

    const-string v3, "Request Timeout"

    aput-object v3, v1, v2

    .line 78
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x19a

    const-string v3, "Gone"

    aput-object v3, v1, v2

    .line 79
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x19d

    const-string v3, "Request Entity Too Large"

    aput-object v3, v1, v2

    .line 80
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x19e

    const-string v3, "Request-URI Too Large"

    aput-object v3, v1, v2

    .line 81
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x19f

    const-string v3, "Unsupported Media Type"

    aput-object v3, v1, v2

    .line 82
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1a0

    const-string v3, "Unsupported URI Scheme"

    aput-object v3, v1, v2

    .line 83
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1a4

    const-string v3, "Bad Extension"

    aput-object v3, v1, v2

    .line 84
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1a5

    const-string v3, "Extension Required"

    aput-object v3, v1, v2

    .line 85
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1a7

    const-string v3, "Interval Too Brief"

    aput-object v3, v1, v2

    .line 86
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e0

    const-string v3, "Temporarily not available"

    aput-object v3, v1, v2

    .line 87
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e1

    const-string v3, "Call Leg/Transaction Does Not Exist"

    aput-object v3, v1, v2

    .line 88
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e2

    const-string v3, "Loop Detected"

    aput-object v3, v1, v2

    .line 89
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e3

    const-string v3, "Too Many Hops"

    aput-object v3, v1, v2

    .line 90
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e4

    const-string v3, "Address Incomplete"

    aput-object v3, v1, v2

    .line 91
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e5

    const-string v3, "Ambiguous"

    aput-object v3, v1, v2

    .line 92
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e6

    const-string v3, "Busy Here"

    aput-object v3, v1, v2

    .line 93
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e7

    const-string v3, "Request Terminated"

    aput-object v3, v1, v2

    .line 94
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1e8

    const-string v3, "Not Acceptable Here"

    aput-object v3, v1, v2

    .line 95
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1eb

    const-string v3, "Request Pending"

    aput-object v3, v1, v2

    .line 96
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1ed

    const-string v3, "Undecipherable"

    aput-object v3, v1, v2

    .line 99
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1f4

    const-string v3, "Internal Server Error"

    aput-object v3, v1, v2

    .line 100
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1f5

    const-string v3, "Not Implemented"

    aput-object v3, v1, v2

    .line 101
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1f6

    const-string v3, "Bad Gateway"

    aput-object v3, v1, v2

    .line 102
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1f7

    const-string v3, "Service Unavailable"

    aput-object v3, v1, v2

    .line 103
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1f8

    const-string v3, "Server Time-out"

    aput-object v3, v1, v2

    .line 104
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x1f9

    const-string v3, "SIP Version not supported"

    aput-object v3, v1, v2

    .line 105
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x201

    const-string v3, "Message Too Large"

    aput-object v3, v1, v2

    .line 108
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x258

    const-string v3, "Busy Everywhere"

    aput-object v3, v1, v2

    .line 109
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x25b

    const-string v3, "Decline"

    aput-object v3, v1, v2

    .line 110
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x25c

    const-string v3, "Does not exist anywhere"

    aput-object v3, v1, v2

    .line 111
    sget-object v1, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    const/16 v2, 0x25e

    const-string v3, "Not Acceptable"

    aput-object v3, v1, v2

    .line 113
    const/4 v1, 0x1

    sput-boolean v1, Lorg/zoolu/sip/message/BaseSipResponses;->is_init:Z

    goto/16 :goto_0
.end method

.method public static reasonOf(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 118
    sget-boolean v0, Lorg/zoolu/sip/message/BaseSipResponses;->is_init:Z

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lorg/zoolu/sip/message/BaseSipResponses;->init()V

    .line 120
    :cond_0
    sget-object v0, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 123
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/zoolu/sip/message/BaseSipResponses;->reasons:[Ljava/lang/String;

    div-int/lit8 v1, p0, 0x64

    mul-int/lit8 v1, v1, 0x64

    aget-object v0, v0, v1

    goto :goto_0
.end method
