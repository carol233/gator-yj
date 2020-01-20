.class public Lcx/hell/android/pdfview/APVApplication;
.super Landroid/app/Application;
.source "APVApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "cx.hell.android.pdfview"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 13
    invoke-static {p0}, Lcx/hell/android/lib/pdf/PDF;->setApplicationContext(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 22
    const-string v0, "cx.hell.android.pdfview"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method
