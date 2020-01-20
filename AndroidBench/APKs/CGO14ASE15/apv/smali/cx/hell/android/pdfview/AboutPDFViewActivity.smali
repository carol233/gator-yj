.class public Lcx/hell/android/pdfview/AboutPDFViewActivity;
.super Landroid/app/Activity;
.source "AboutPDFViewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/high16 v5, 0x7f030000

    invoke-virtual {p0, v5}, Lcx/hell/android/pdfview/AboutPDFViewActivity;->setContentView(I)V

    .line 25
    const/high16 v5, 0x7f090000

    invoke-virtual {p0, v5}, Lcx/hell/android/pdfview/AboutPDFViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 26
    .local v4, "v":Landroid/webkit/WebView;
    invoke-virtual {p0}, Lcx/hell/android/pdfview/AboutPDFViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 27
    .local v3, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/io/BufferedInputStream;

    const/high16 v5, 0x7f060000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .local v1, "aboutHtmlInputStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 30
    .local v0, "aboutHtml":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcx/hell/android/pdfview/StreamUtils;->readStringFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v3, 0x0

    .line 40
    const-string v5, "text/html"

    .line 41
    const-string v6, "utf-8"

    .line 38
    invoke-virtual {v4, v0, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void

    .line 34
    :catch_0
    move-exception v2

    .line 35
    .local v2, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
