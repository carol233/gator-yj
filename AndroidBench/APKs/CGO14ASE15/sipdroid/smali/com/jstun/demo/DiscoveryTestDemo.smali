.class public Lcom/jstun/demo/DiscoveryTestDemo;
.super Ljava/lang/Object;
.source "DiscoveryTestDemo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field iaddress:Ljava/net/InetAddress;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "iaddress"    # Ljava/net/InetAddress;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/jstun/demo/DiscoveryTestDemo;->iaddress:Ljava/net/InetAddress;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 15
    :try_start_0
    new-instance v2, Lcom/jstun/demo/DiscoveryTest;

    iget-object v3, p0, Lcom/jstun/demo/DiscoveryTestDemo;->iaddress:Ljava/net/InetAddress;

    const-string v4, "jstun.javawi.de"

    const/16 v5, 0xd96

    invoke-direct {v2, v3, v4, v5}, Lcom/jstun/demo/DiscoveryTest;-><init>(Ljava/net/InetAddress;Ljava/lang/String;I)V

    .line 21
    .local v2, "test":Lcom/jstun/demo/DiscoveryTest;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/jstun/demo/DiscoveryTest;->test()Lcom/jstun/demo/DiscoveryInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/BindException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    .end local v2    # "test":Lcom/jstun/demo/DiscoveryTest;
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "be":Ljava/net/BindException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/jstun/demo/DiscoveryTestDemo;->iaddress:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/BindException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    .end local v0    # "be":Ljava/net/BindException;
    :catch_1
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
