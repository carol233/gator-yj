.class public Lorg/sipdroid/codecs/Codecs;
.super Ljava/lang/Object;
.source "Codecs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sipdroid/codecs/Codecs$CodecSettings;,
        Lorg/sipdroid/codecs/Codecs$Map;
    }
.end annotation


# static fields
.field private static final codecs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/sipdroid/codecs/Codec;",
            ">;"
        }
    .end annotation
.end field

.field private static final codecsNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/sipdroid/codecs/Codec;",
            ">;"
        }
    .end annotation
.end field

.field private static final codecsNumbers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/sipdroid/codecs/Codec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 50
    new-instance v11, Lorg/sipdroid/codecs/Codecs$1;

    invoke-direct {v11}, Lorg/sipdroid/codecs/Codecs$1;-><init>()V

    sput-object v11, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    .line 65
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v7

    .line 66
    .local v7, "size":I
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v11, Lorg/sipdroid/codecs/Codecs;->codecsNumbers:Ljava/util/HashMap;

    .line 67
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v7}, Ljava/util/HashMap;-><init>(I)V

    sput-object v11, Lorg/sipdroid/codecs/Codecs;->codecsNames:Ljava/util/HashMap;

    .line 69
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sipdroid/codecs/Codec;

    .line 70
    .local v1, "c":Lorg/sipdroid/codecs/Codec;
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecsNames:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecsNumbers:Ljava/util/HashMap;

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    .end local v1    # "c":Lorg/sipdroid/codecs/Codec;
    :cond_0
    sget-object v11, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 75
    .local v8, "sp":Landroid/content/SharedPreferences;
    const-string v11, "codecs_new"

    sget-object v12, Lorg/sipdroid/sipua/ui/Settings;->DEFAULT_CODECS:Ljava/lang/String;

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    .local v6, "prefs":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 77
    const-string v9, ""

    .line 78
    .local v9, "v":Ljava/lang/String;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 80
    .local v2, "e":Landroid/content/SharedPreferences$Editor;
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sipdroid/codecs/Codec;

    .line 81
    .restart local v1    # "c":Lorg/sipdroid/codecs/Codec;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 82
    .end local v1    # "c":Lorg/sipdroid/codecs/Codec;
    :cond_1
    const-string v11, "codecs_new"

    invoke-interface {v2, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    .end local v2    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "v":Ljava/lang/String;
    :cond_2
    return-void

    .line 85
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v11, " "

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 86
    .local v10, "vals":[Ljava/lang/String;
    move-object v0, v10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v9, v0, v4

    .line 88
    .restart local v9    # "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 89
    .local v3, "i":I
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecsNumbers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sipdroid/codecs/Codec;

    .line 96
    .restart local v1    # "c":Lorg/sipdroid/codecs/Codec;
    if-eqz v1, :cond_4

    .line 97
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 98
    sget-object v11, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v11, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v1    # "c":Lorg/sipdroid/codecs/Codec;
    .end local v3    # "i":I
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 100
    :catch_0
    move-exception v11

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    return-void
.end method

.method static synthetic access$000(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 49
    invoke-static {p0}, Lorg/sipdroid/codecs/Codecs;->addPreferences(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    return-object v0
.end method

.method private static addPreferences(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .param p0, "ps"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v6, 0x1

    .line 148
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 149
    .local v1, "cx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 150
    .local v4, "r":Landroid/content/res/Resources;
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 152
    sget-object v5, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    .line 153
    .local v0, "c":Lorg/sipdroid/codecs/Codec;
    new-instance v3, Landroid/preference/ListPreference;

    invoke-direct {v3, v1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 154
    .local v3, "l":Landroid/preference/ListPreference;
    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 155
    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 156
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 158
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->isFailed()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 159
    invoke-interface {v0, v3}, Lorg/sipdroid/codecs/Codec;->setListPreference(Landroid/preference/ListPreference;)V

    .line 160
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_2

    .line 161
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "server"

    const-string v8, "pbxes.org"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "pbxes.org"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f060052

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    :goto_2
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 158
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 164
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f060053

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 166
    :cond_2
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 170
    .end local v0    # "c":Lorg/sipdroid/codecs/Codec;
    .end local v3    # "l":Landroid/preference/ListPreference;
    :cond_3
    return-void
.end method

.method public static check()V
    .locals 7

    .prologue
    .line 118
    new-instance v3, Ljava/util/HashMap;

    sget-object v5, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 120
    .local v3, "old":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    .line 121
    .local v0, "c":Lorg/sipdroid/codecs/Codec;
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->update()V

    .line 122
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_0

    .line 124
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 125
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 127
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->key()Ljava/lang/String;

    move-result-object v5

    const-string v6, "never"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 132
    .end local v0    # "c":Lorg/sipdroid/codecs/Codec;
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    sget-object v5, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    .line 133
    .restart local v0    # "c":Lorg/sipdroid/codecs/Codec;
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "never"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->init()V

    .line 135
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->isLoaded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    sget-object v5, Lorg/sipdroid/sipua/ui/Receiver;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 137
    .restart local v4    # "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 139
    .restart local v1    # "e":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->key()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->init()V

    goto :goto_1

    .line 143
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->fail()V

    goto :goto_1

    .line 145
    .end local v0    # "c":Lorg/sipdroid/codecs/Codec;
    :cond_4
    return-void
.end method

.method public static get(I)Lorg/sipdroid/codecs/Codec;
    .locals 2
    .param p0, "key"    # I

    .prologue
    .line 110
    sget-object v0, Lorg/sipdroid/codecs/Codecs;->codecsNumbers:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    return-object v0
.end method

.method public static getCodec(Lorg/zoolu/sdp/SessionDescriptor;)Lorg/sipdroid/codecs/Codecs$Map;
    .locals 22
    .param p0, "offers"    # Lorg/zoolu/sdp/SessionDescriptor;

    .prologue
    .line 218
    const-string v20, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/MediaDescriptor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/zoolu/sdp/MediaDescriptor;->getMedia()Lorg/zoolu/sdp/MediaField;

    move-result-object v13

    .line 219
    .local v13, "m":Lorg/zoolu/sdp/MediaField;
    if-nez v13, :cond_0

    .line 220
    const/16 v20, 0x0

    .line 300
    :goto_0
    return-object v20

    .line 222
    :cond_0
    invoke-virtual {v13}, Lorg/zoolu/sdp/MediaField;->getTransport()Ljava/lang/String;

    move-result-object v18

    .line 224
    .local v18, "proto":Ljava/lang/String;
    const-string v20, "RTP/AVP"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    const-string v20, "RTP/SAVP"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 225
    :cond_1
    invoke-virtual {v13}, Lorg/zoolu/sdp/MediaField;->getFormatList()Ljava/util/Vector;

    move-result-object v9

    .line 226
    .local v9, "formats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/util/Vector;-><init>(I)V

    .line 227
    .local v15, "names":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 228
    .local v17, "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/Vector;-><init>(I)V

    .line 231
    .local v7, "codecmap":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/sipdroid/codecs/Codec;>;"
    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 233
    .local v8, "fmt":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 234
    .local v16, "number":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 237
    .end local v16    # "number":I
    :catch_0
    move-exception v20

    goto :goto_1

    .line 243
    .end local v8    # "fmt":Ljava/lang/String;
    :cond_2
    const-string v20, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/zoolu/sdp/SessionDescriptor;->getMediaDescriptor(Ljava/lang/String;)Lorg/zoolu/sdp/MediaDescriptor;

    move-result-object v20

    const-string v21, "rtpmap"

    invoke-virtual/range {v20 .. v21}, Lorg/zoolu/sdp/MediaDescriptor;->getAttributes(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    .line 244
    .local v4, "attrs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/zoolu/sdp/AttributeField;

    .line 245
    .local v3, "a":Lorg/zoolu/sdp/AttributeField;
    invoke-virtual {v3}, Lorg/zoolu/sdp/AttributeField;->getValue()Ljava/lang/String;

    move-result-object v19

    .line 247
    .local v19, "s":Ljava/lang/String;
    const/16 v20, 0x7

    const-string v21, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 248
    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 250
    .local v10, "i":I
    add-int/lit8 v20, v10, 0x1

    :try_start_1
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 251
    .local v14, "name":Ljava/lang/String;
    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 252
    .restart local v16    # "number":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 253
    .local v12, "index":I
    if-ltz v12, :cond_3

    .line 254
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v12, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 255
    .end local v12    # "index":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "number":I
    :catch_1
    move-exception v20

    goto :goto_2

    .line 260
    .end local v3    # "a":Lorg/zoolu/sdp/AttributeField;
    .end local v10    # "i":I
    .end local v19    # "s":Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    .line 261
    .local v6, "codec":Lorg/sipdroid/codecs/Codec;
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v20

    add-int/lit8 v12, v20, 0x1

    .line 263
    .restart local v12    # "index":I
    sget-object v20, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/sipdroid/codecs/Codec;

    .line 264
    .local v5, "c":Lorg/sipdroid/codecs/Codec;
    invoke-interface {v5}, Lorg/sipdroid/codecs/Codec;->update()V

    .line 265
    invoke-interface {v5}, Lorg/sipdroid/codecs/Codec;->isValid()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 269
    invoke-interface {v5}, Lorg/sipdroid/codecs/Codec;->userName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 270
    .restart local v10    # "i":I
    if-ltz v10, :cond_7

    .line 271
    invoke-virtual {v7, v10, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    if-eqz v6, :cond_6

    if-ge v10, v12, :cond_7

    .line 273
    :cond_6
    move-object v6, v5

    .line 274
    move v12, v10

    .line 275
    goto :goto_3

    .line 280
    :cond_7
    invoke-interface {v5}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 281
    if-ltz v10, :cond_5

    .line 282
    invoke-virtual {v15, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 283
    invoke-virtual {v7, v10, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    if-eqz v6, :cond_8

    if-ge v10, v12, :cond_5

    .line 286
    :cond_8
    move-object v6, v5

    .line 287
    move v12, v10

    .line 288
    goto :goto_3

    .line 293
    .end local v5    # "c":Lorg/sipdroid/codecs/Codec;
    .end local v10    # "i":I
    :cond_9
    if-eqz v6, :cond_a

    .line 294
    new-instance v21, Lorg/sipdroid/codecs/Codecs$Map;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, v21

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v6, v2, v7}, Lorg/sipdroid/codecs/Codecs$Map;-><init>(ILorg/sipdroid/codecs/Codec;Ljava/util/Vector;Ljava/util/Vector;)V

    move-object/from16 v20, v21

    goto/16 :goto_0

    .line 297
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 300
    .end local v4    # "attrs":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/zoolu/sdp/AttributeField;>;"
    .end local v6    # "codec":Lorg/sipdroid/codecs/Codec;
    .end local v7    # "codecmap":Ljava/util/Vector;, "Ljava/util/Vector<Lorg/sipdroid/codecs/Codec;>;"
    .end local v9    # "formats":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "index":I
    .end local v15    # "names":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v17    # "numbers":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_0
.end method

.method public static getCodecs()[I
    .locals 6

    .prologue
    .line 173
    new-instance v4, Ljava/util/Vector;

    sget-object v5, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 175
    .local v4, "v":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    sget-object v5, Lorg/sipdroid/codecs/Codecs;->codecs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    .line 176
    .local v0, "c":Lorg/sipdroid/codecs/Codec;
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->update()V

    .line 177
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 179
    invoke-interface {v0}, Lorg/sipdroid/codecs/Codec;->number()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 181
    .end local v0    # "c":Lorg/sipdroid/codecs/Codec;
    :cond_1
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 182
    .local v1, "i":[I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 183
    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v3

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    :cond_2
    return-object v1
.end method

.method public static getName(Ljava/lang/String;)Lorg/sipdroid/codecs/Codec;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    sget-object v0, Lorg/sipdroid/codecs/Codecs;->codecsNames:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sipdroid/codecs/Codec;

    return-object v0
.end method
