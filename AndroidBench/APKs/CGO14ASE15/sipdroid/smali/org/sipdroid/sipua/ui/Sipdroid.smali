.class public Lorg/sipdroid/sipua/ui/Sipdroid;
.super Landroid/app/Activity;
.source "Sipdroid.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/sipua/ui/Sipdroid$CallsAdapter;,
        Lorg/sipdroid/sipua/ui/Sipdroid$CallsCursor;
    }
.end annotation


# static fields
.field public static final ABOUT_MENU_ITEM:I = 0x3

.field public static final CONFIGURE_MENU_ITEM:I = 0x2

.field public static final EXIT_MENU_ITEM:I = 0x4

.field public static final FIRST_MENU_ID:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static m_AlertDlg:Landroid/app/AlertDialog; = null

.field public static final market:Z = false

.field public static final release:Z = true


# instance fields
.field createButton:Landroid/widget/Button;

.field sip_uri_box:Landroid/widget/AutoCompleteTextView;

.field sip_uri_box2:Landroid/widget/AutoCompleteTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lorg/sipdroid/sipua/ui/Sipdroid;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lorg/sipdroid/sipua/ui/Sipdroid;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sipdroid/sipua/ui/Sipdroid;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 424
    const-string v1, "Unknown"

    .line 426
    .local v1, "unknown":Ljava/lang/String;
    if-nez p0, :cond_1

    .line 427
    const-string v0, "Unknown"

    .line 439
    :cond_0
    :goto_0
    return-object v0

    .line 431
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 434
    .local v0, "ret":Ljava/lang/String;
    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, " + "

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 437
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 439
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static on(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "on"    # Z

    .prologue
    .line 318
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 321
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->isRegistered()Z

    .line 322
    :cond_0
    return-void
.end method

.method public static on(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 314
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method call_menu(Landroid/widget/AutoCompleteTextView;)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AutoCompleteTextView;

    .prologue
    const/high16 v5, 0x7f060000

    const v4, 0x7f020070

    const/4 v3, 0x1

    .line 356
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "target":Ljava/lang/String;
    sget-object v1, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 359
    sget-object v1, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 361
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 362
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    .line 375
    :cond_1
    :goto_0
    return-void

    .line 368
    :cond_2
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/sipdroid/sipua/SipdroidEngine;->call(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v12, 0x7f06002c

    const v11, 0x7f06002b

    const v10, 0x7f06002a

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-virtual {p0, v8}, Lorg/sipdroid/sipua/ui/Sipdroid;->requestWindowFeature(I)Z

    .line 190
    const v6, 0x7f030009

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/Sipdroid;->setContentView(I)V

    .line 191
    const v6, 0x7f08003c

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/Sipdroid;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box:Landroid/widget/AutoCompleteTextView;

    .line 192
    const v6, 0x7f08003b

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/Sipdroid;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box2:Landroid/widget/AutoCompleteTextView;

    .line 193
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box:Landroid/widget/AutoCompleteTextView;

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$1;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$1;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 203
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box:Landroid/widget/AutoCompleteTextView;

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$2;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$2;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box2:Landroid/widget/AutoCompleteTextView;

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$3;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$3;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 219
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box2:Landroid/widget/AutoCompleteTextView;

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$4;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$4;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    invoke-static {p0, v8}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;Z)V

    .line 227
    const v6, 0x7f08003a

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/Sipdroid;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 228
    .local v1, "contactsButton":Landroid/widget/Button;
    new-instance v6, Lorg/sipdroid/sipua/ui/Sipdroid$5;

    invoke-direct {v6, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$5;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    move-object v5, p0

    .line 236
    .local v5, "mContext":Landroid/content/Context;
    move-object v4, p0

    .line 238
    .local v4, "listener":Landroid/content/DialogInterface$OnDismissListener;
    const v6, 0x7f08003d

    invoke-virtual {p0, v6}, Lorg/sipdroid/sipua/ui/Sipdroid;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->createButton:Landroid/widget/Button;

    .line 239
    iget-object v6, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->createButton:Landroid/widget/Button;

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$6;

    invoke-direct {v7, p0, v5, v4}, Lorg/sipdroid/sipua/ui/Sipdroid$6;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "noport"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "ask":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v2, v6, :cond_2

    .line 250
    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "j":Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "server"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pbxes.org"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pbxes.org"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "username"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "port"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_PORT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 250
    .end local v3    # "j":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 256
    :cond_2
    if-eqz v0, :cond_3

    .line 257
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060029

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$9;

    invoke-direct {v7, p0, v5}, Lorg/sipdroid/sipua/ui/Sipdroid$9;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$8;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$8;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$7;

    invoke-direct {v7, p0, v5}, Lorg/sipdroid/sipua/ui/Sipdroid$7;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;)V

    invoke-virtual {v6, v12, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 311
    .end local v0    # "ask":Z
    .end local v2    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 287
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "pref"

    const-string v8, "SIP"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "PSTN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "nodefault"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 289
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f060027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$12;

    invoke-direct {v7, p0, v5}, Lorg/sipdroid/sipua/ui/Sipdroid$12;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;)V

    invoke-virtual {v6, v10, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$11;

    invoke-direct {v7, p0}, Lorg/sipdroid/sipua/ui/Sipdroid$11;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;)V

    invoke-virtual {v6, v11, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lorg/sipdroid/sipua/ui/Sipdroid$10;

    invoke-direct {v7, p0, v5}, Lorg/sipdroid/sipua/ui/Sipdroid$10;-><init>(Lorg/sipdroid/sipua/ui/Sipdroid;Landroid/content/Context;)V

    invoke-virtual {v6, v12, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x0

    .line 342
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 344
    .local v1, "result":Z
    const/4 v2, 0x3

    const v3, 0x7f060072

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 345
    .local v0, "m":Landroid/view/MenuItem;
    const v2, 0x1080041

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 346
    const/4 v2, 0x4

    const v3, 0x7f060071

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 347
    const v2, 0x1080038

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 348
    const/4 v2, 0x2

    const v3, 0x7f060070

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 349
    const v2, 0x1080049

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 351
    return v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 444
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Sipdroid;->onResume()V

    .line 445
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 379
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    .line 380
    .local v2, "result":Z
    const/4 v0, 0x0

    .line 382
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 416
    :goto_0
    return v2

    .line 384
    :pswitch_0
    sget-object v3, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 386
    sget-object v3, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->cancel()V

    .line 388
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f060003

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/Sipdroid;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\n"

    const-string v6, "\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "${VERSION}"

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Sipdroid;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060072

    invoke-virtual {p0, v4}, Lorg/sipdroid/sipua/ui/Sipdroid;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f020070

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lorg/sipdroid/sipua/ui/Sipdroid;->m_AlertDlg:Landroid/app/AlertDialog;

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-static {p0, v4}, Lorg/sipdroid/sipua/ui/Sipdroid;->on(Landroid/content/Context;Z)V

    .line 398
    invoke-static {v7}, Lorg/sipdroid/sipua/ui/Receiver;->pos(Z)V

    .line 399
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v3

    invoke-virtual {v3}, Lorg/sipdroid/sipua/SipdroidEngine;->halt()V

    .line 400
    const/4 v3, 0x0

    sput-object v3, Lorg/sipdroid/sipua/ui/Receiver;->mSipdroidEngine:Lorg/sipdroid/sipua/SipdroidEngine;

    .line 401
    invoke-static {v4}, Lorg/sipdroid/sipua/ui/Receiver;->reRegister(I)V

    .line 402
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lorg/sipdroid/sipua/ui/RegisterService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lorg/sipdroid/sipua/ui/Sipdroid;->stopService(Landroid/content/Intent;)Z

    .line 403
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Sipdroid;->finish()V

    goto :goto_0

    .line 408
    :pswitch_2
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/sipdroid/sipua/ui/Settings;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v0    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/sipdroid/sipua/ui/Sipdroid;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 411
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 410
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 326
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 327
    sget v1, Lorg/sipdroid/sipua/ui/Receiver;->call_state:I

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/sipdroid/sipua/ui/Receiver;->moveTop()V

    .line 329
    :cond_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    invoke-static {p0}, Lorg/sipdroid/sipua/ui/CreateAccount;->isPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "text":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, "Google Voice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lorg/sipdroid/sipua/ui/Checkin;->createButton:I

    if-eqz v1, :cond_1

    sget v1, Lorg/sipdroid/sipua/ui/Checkin;->createButton:I

    invoke-static {v1}, Lorg/zoolu/tools/Random;->nextInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 332
    :cond_1
    const/4 v0, 0x0

    .line 333
    :cond_2
    if-eqz v0, :cond_4

    .line 334
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->createButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->createButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_1
    return-void

    .line 329
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 337
    .restart local v0    # "text":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->createButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public onStart()V
    .locals 9

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 88
    invoke-static {p0}, Lorg/sipdroid/sipua/ui/Receiver;->engine(Landroid/content/Context;)Lorg/sipdroid/sipua/SipdroidEngine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/sipdroid/sipua/SipdroidEngine;->registerMore()V

    .line 89
    invoke-virtual {p0}, Lorg/sipdroid/sipua/ui/Sipdroid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lorg/sipdroid/sipua/ui/Sipdroid;->PROJECTION:[Ljava/lang/String;

    const-string v3, "number like ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "%@%"

    aput-object v8, v4, v5

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 92
    .local v7, "cursor":Landroid/database/Cursor;
    new-instance v6, Lorg/sipdroid/sipua/ui/Sipdroid$CallsAdapter;

    invoke-direct {v6, p0, v7}, Lorg/sipdroid/sipua/ui/Sipdroid$CallsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 93
    .local v6, "adapter":Lorg/sipdroid/sipua/ui/Sipdroid$CallsAdapter;
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    iget-object v1, p0, Lorg/sipdroid/sipua/ui/Sipdroid;->sip_uri_box2:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    return-void
.end method
