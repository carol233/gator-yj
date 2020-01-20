.class public Lorg/videolan/vlc/gui/CommonDialogs;
.super Ljava/lang/Object;
.source "CommonDialogs.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VLC/CommonDialogs"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteMedia(Landroid/content/Context;Ljava/lang/String;Lorg/videolan/vlc/VlcRunnable;)Landroid/app/AlertDialog;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "addressMedia"    # Ljava/lang/String;
    .param p2, "runnable"    # Lorg/videolan/vlc/VlcRunnable;

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    .local v0, "adressMediaUri":Ljava/net/URI;
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "adressMediaUri":Ljava/net/URI;
    .local v1, "adressMediaUri":Ljava/net/URI;
    move-object v0, v1

    .line 46
    .end local v1    # "adressMediaUri":Ljava/net/URI;
    .restart local v0    # "adressMediaUri":Ljava/net/URI;
    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 48
    .local v4, "fileMedia":Ljava/io/File;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b0045

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0024

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lorg/videolan/vlc/gui/CommonDialogs$1;

    invoke-direct {v7, v4, p2}, Lorg/videolan/vlc/gui/CommonDialogs$1;-><init>(Ljava/io/File;Lorg/videolan/vlc/VlcRunnable;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x1040000

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 62
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    return-object v2

    .line 43
    .end local v2    # "alertDialog":Landroid/app/AlertDialog;
    .end local v4    # "fileMedia":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 44
    .local v3, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
