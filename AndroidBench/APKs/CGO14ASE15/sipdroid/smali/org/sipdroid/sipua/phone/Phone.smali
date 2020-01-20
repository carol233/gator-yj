.class public interface abstract Lorg/sipdroid/sipua/phone/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/phone/Phone$SuppService;,
        Lorg/sipdroid/sipua/phone/Phone$State;
    }
.end annotation


# virtual methods
.method public abstract getBackgroundCall()Lorg/sipdroid/sipua/phone/Call;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getForegroundCall()Lorg/sipdroid/sipua/phone/Call;
.end method

.method public abstract getRingingCall()Lorg/sipdroid/sipua/phone/Call;
.end method

.method public abstract getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getState()Lorg/sipdroid/sipua/phone/Phone$State;
.end method
