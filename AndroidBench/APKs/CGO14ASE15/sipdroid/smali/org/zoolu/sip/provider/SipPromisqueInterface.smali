.class public Lorg/zoolu/sip/provider/SipPromisqueInterface;
.super Lorg/zoolu/sip/provider/SipInterface;
.source "SipPromisqueInterface.java"


# direct methods
.method public constructor <init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/provider/SipInterfaceListener;)V
    .locals 1
    .param p1, "sip_provider"    # Lorg/zoolu/sip/provider/SipProvider;
    .param p2, "listener"    # Lorg/zoolu/sip/provider/SipInterfaceListener;

    .prologue
    .line 36
    sget-object v0, Lorg/zoolu/sip/provider/SipProvider;->PROMISQUE:Lorg/zoolu/sip/provider/Identifier;

    invoke-direct {p0, p1, v0, p2}, Lorg/zoolu/sip/provider/SipInterface;-><init>(Lorg/zoolu/sip/provider/SipProvider;Lorg/zoolu/sip/provider/Identifier;Lorg/zoolu/sip/provider/SipInterfaceListener;)V

    .line 37
    return-void
.end method
