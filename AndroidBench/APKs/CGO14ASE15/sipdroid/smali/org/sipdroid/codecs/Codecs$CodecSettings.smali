.class public Lorg/sipdroid/codecs/Codecs$CodecSettings;
.super Landroid/preference/PreferenceActivity;
.source "Codecs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sipdroid/codecs/Codecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecSettings"
.end annotation


# static fields
.field private static final MENU_DOWN:I = 0x1

.field private static final MENU_UP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v9

    check-cast v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v4, v9, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 336
    .local v4, "posn":I
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    .line 337
    .local v0, "c":Lorg/sipdroid/codecs/Codec;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    if-nez v9, :cond_2

    .line 338
    if-nez v4, :cond_0

    .line 339
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    .line 361
    :goto_0
    return v9

    .line 340
    :cond_0
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/sipdroid/codecs/Codec;

    .line 341
    .local v7, "tmp":Lorg/sipdroid/codecs/Codec;
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v9, v10, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 342
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v4, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v7    # "tmp":Lorg/sipdroid/codecs/Codec;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 351
    .local v5, "ps":Landroid/preference/PreferenceScreen;
    sget-object v9, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 352
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v8, ""

    .line 353
    .local v8, "v":Ljava/lang/String;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 355
    .local v2, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sipdroid/codecs/Codec;

    .line 356
    .local v1, "d":Lorg/sipdroid/codecs/Codec;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 343
    .end local v1    # "d":Lorg/sipdroid/codecs/Codec;
    .end local v2    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "ps":Landroid/preference/PreferenceScreen;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    .end local v8    # "v":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 344
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v4, v9, :cond_3

    .line 345
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto :goto_0

    .line 346
    :cond_3
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/sipdroid/codecs/Codec;

    .line 347
    .restart local v7    # "tmp":Lorg/sipdroid/codecs/Codec;
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v4, v7}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 357
    .end local v7    # "tmp":Lorg/sipdroid/codecs/Codec;
    .restart local v2    # "e":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "ps":Landroid/preference/PreferenceScreen;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    .restart local v8    # "v":Ljava/lang/String;
    :cond_4
    const-string v9, "codecs_new"

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 360
    invoke-static {v5}, Lorg/sipdroid/codecs/Codecs;->access$000(Landroid/preference/PreferenceScreen;)V

    .line 361
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 310
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 312
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->addPreferencesFromResource(I)V

    .line 315
    invoke-virtual {p0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 317
    invoke-virtual {p0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-static {v0}, Lorg/sipdroid/codecs/Codecs;->access$000(Landroid/preference/PreferenceScreen;)V

    .line 318
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 325
    const v0, 0x7f06008b

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 326
    const v0, 0x7f06008c

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 328
    const/4 v0, 0x1

    const v1, 0x7f06008d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 330
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 385
    invoke-virtual {p0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/sipdroid/codecs/Codecs$CodecSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 386
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "ps"    # Landroid/preference/PreferenceScreen;
    .param p2, "p"    # Landroid/preference/Preference;

    .prologue
    .line 366
    move-object v2, p2

    check-cast v2, Landroid/preference/ListPreference;

    .line 367
    .local v2, "l":Landroid/preference/ListPreference;
    invoke-static {}, Lorg/sipdroid/codecs/Codecs;->access$100()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    .line 368
    .local v0, "c":Lorg/sipdroid/codecs/Codec;
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->init()V

    .line 370
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 371
    const-string v3, "never"

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 372
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->fail()V

    .line 373
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 374
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 376
    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 379
    .end local v0    # "c":Lorg/sipdroid/codecs/Codec;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method
