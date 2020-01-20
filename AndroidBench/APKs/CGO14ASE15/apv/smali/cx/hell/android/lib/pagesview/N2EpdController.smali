.class public Lcx/hell/android/lib/pagesview/N2EpdController;
.super Ljava/lang/Object;
.source "N2EpdController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enterA2Mode()V
    .locals 14

    .prologue
    .line 71
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "APV::enterA2Mode"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    :try_start_0
    const-string v10, "android.hardware.EpdController"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 76
    .local v2, "epdControllerClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Region"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 78
    .local v3, "epdControllerRegionClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$RegionParams"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 80
    .local v4, "epdControllerRegionParamsClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Wave"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 82
    .local v6, "epdControllerWaveClass":Ljava/lang/Class;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    .line 83
    .local v9, "waveEnums":[Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 84
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 85
    const-string v11, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 89
    :cond_0
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    .line 90
    .local v8, "regionEnums":[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 91
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 92
    const-string v11, "EpdController Region Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    .line 97
    :cond_1
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 98
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    const/4 v11, 0x5

    .line 99
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 97
    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 102
    .local v0, "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 103
    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 102
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 106
    .local v7, "localRegionParams":Ljava/lang/Object;
    const-string v10, "setRegion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 107
    aput-object v3, v11, v12

    const/4 v12, 0x2

    .line 108
    aput-object v4, v11, v12

    .line 105
    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 110
    .local v5, "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "APV-ReadingView"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 111
    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    .line 110
    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 115
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 116
    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 115
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 118
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "APV-ReadingView"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 119
    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    .line 118
    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "epdControllerRegionClass":Ljava/lang/Class;
    .end local v4    # "epdControllerRegionParamsClass":Ljava/lang/Class;
    .end local v5    # "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    .end local v6    # "epdControllerWaveClass":Ljava/lang/Class;
    .end local v7    # "localRegionParams":Ljava/lang/Object;
    .end local v8    # "regionEnums":[Ljava/lang/Object;
    .end local v9    # "waveEnums":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static exitA2Mode()V
    .locals 14

    .prologue
    .line 22
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "APV::exitA2Mode"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 25
    :try_start_0
    const-string v10, "android.hardware.EpdController"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    .local v2, "epdControllerClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Region"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 29
    .local v3, "epdControllerRegionClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$RegionParams"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 31
    .local v4, "epdControllerRegionParamsClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Wave"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 33
    .local v6, "epdControllerWaveClass":Ljava/lang/Class;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    .line 34
    .local v9, "waveEnums":[Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 35
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 36
    const-string v11, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 40
    :cond_0
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    .line 41
    .local v8, "regionEnums":[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 42
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 43
    const-string v11, "EpdController Region Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    .line 48
    :cond_1
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 49
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    const/4 v11, 0x5

    .line 50
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 48
    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 53
    .local v0, "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 54
    const/16 v12, 0x10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 53
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 57
    .local v7, "localRegionParams":Ljava/lang/Object;
    const-string v10, "setRegion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 58
    aput-object v3, v11, v12

    const/4 v12, 0x2

    .line 59
    aput-object v4, v11, v12

    .line 56
    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 61
    .local v5, "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "APV-ReadingView"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 62
    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    .line 61
    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v0    # "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "epdControllerRegionClass":Ljava/lang/Class;
    .end local v4    # "epdControllerRegionParamsClass":Ljava/lang/Class;
    .end local v5    # "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    .end local v6    # "epdControllerWaveClass":Ljava/lang/Class;
    .end local v7    # "localRegionParams":Ljava/lang/Object;
    .end local v8    # "regionEnums":[Ljava/lang/Object;
    .end local v9    # "waveEnums":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setDUMode()V
    .locals 14

    .prologue
    .line 194
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "APV::setDUMode"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :try_start_0
    const-string v10, "android.hardware.EpdController"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 199
    .local v2, "epdControllerClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Region"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 201
    .local v3, "epdControllerRegionClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$RegionParams"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 203
    .local v4, "epdControllerRegionParamsClass":Ljava/lang/Class;
    const-string v10, "android.hardware.EpdController$Wave"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 205
    .local v6, "epdControllerWaveClass":Ljava/lang/Class;
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    .line 206
    .local v9, "waveEnums":[Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 207
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 208
    const-string v11, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v6}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 212
    :cond_0
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    .line 213
    .local v8, "regionEnums":[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 214
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 215
    const-string v11, "EpdController Region Enum successfully retrived."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v8

    .line 220
    :cond_1
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    .line 221
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    aput-object v6, v10, v11

    const/4 v11, 0x5

    .line 222
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    .line 220
    invoke-virtual {v4, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 225
    .local v0, "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/16 v12, 0x258

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/16 v12, 0x320

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x2

    aget-object v12, v9, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    .line 226
    const/16 v12, 0xe

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    .line 225
    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 229
    .local v7, "localRegionParams":Ljava/lang/Object;
    const-string v10, "setRegion"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 230
    aput-object v3, v11, v12

    const/4 v12, 0x2

    .line 231
    aput-object v4, v11, v12

    .line 228
    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 233
    .local v5, "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "APV-ReadingView"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 234
    const/4 v13, 0x2

    aget-object v13, v8, v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v7, v11, v12

    .line 233
    invoke-virtual {v5, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "epdControllerRegionClass":Ljava/lang/Class;
    .end local v4    # "epdControllerRegionParamsClass":Ljava/lang/Class;
    .end local v5    # "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    .end local v6    # "epdControllerWaveClass":Ljava/lang/Class;
    .end local v7    # "localRegionParams":Ljava/lang/Object;
    .end local v8    # "regionEnums":[Ljava/lang/Object;
    .end local v9    # "waveEnums":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setGL16Mode()V
    .locals 16

    .prologue
    .line 129
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v13, "APV::setGL16Mode"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    :try_start_0
    const-string v12, "android.hardware.EpdController"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 137
    .local v2, "epdControllerClass":Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Region"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 139
    .local v4, "epdControllerRegionClass":Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$RegionParams"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 141
    .local v5, "epdControllerRegionParamsClass":Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Wave"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 143
    .local v7, "epdControllerWaveClass":Ljava/lang/Class;
    const-string v12, "android.hardware.EpdController$Mode"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 148
    .local v3, "epdControllerModeClass":Ljava/lang/Class;
    const/4 v11, 0x0

    check-cast v11, [Ljava/lang/Object;

    .line 149
    .local v11, "waveEnums":[Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 150
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 151
    const-string v13, "EpdController Wave Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v11

    .line 155
    :cond_0
    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Object;

    .line 156
    .local v10, "regionEnums":[Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 157
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 158
    const-string v13, "EpdController Region Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v10

    .line 162
    :cond_1
    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    .line 163
    .local v9, "modeEnums":[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 164
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 165
    const-string v13, "EpdController Region Enum successfully retrived."

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v9

    .line 167
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v12, v9}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 171
    :cond_2
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 172
    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    aput-object v7, v12, v13

    .line 171
    invoke-virtual {v5, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 175
    .local v0, "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/16 v14, 0x258

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0x320

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x1

    aget-object v14, v11, v14

    aput-object v14, v12, v13

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 180
    .local v8, "localRegionParams":Ljava/lang/Object;
    const-string v12, "setRegion"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 181
    aput-object v4, v13, v14

    const/4 v14, 0x2

    .line 182
    aput-object v5, v13, v14

    const/4 v14, 0x3

    .line 183
    aput-object v3, v13, v14

    .line 179
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 184
    .local v6, "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 185
    const-string v15, "APV-ReadingView"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    aget-object v15, v10, v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v8, v13, v14

    const/4 v14, 0x3

    .line 186
    const/4 v15, 0x2

    aget-object v15, v9, v15

    aput-object v15, v13, v14

    .line 184
    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "RegionParamsConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "epdControllerModeClass":Ljava/lang/Class;
    .end local v4    # "epdControllerRegionClass":Ljava/lang/Class;
    .end local v5    # "epdControllerRegionParamsClass":Ljava/lang/Class;
    .end local v6    # "epdControllerSetRegionMethod":Ljava/lang/reflect/Method;
    .end local v7    # "epdControllerWaveClass":Ljava/lang/Class;
    .end local v8    # "localRegionParams":Ljava/lang/Object;
    .end local v9    # "modeEnums":[Ljava/lang/Object;
    .end local v10    # "regionEnums":[Ljava/lang/Object;
    .end local v11    # "waveEnums":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
