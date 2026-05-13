.class final Lio/netty/handler/ssl/Java8SslUtils;
.super Ljava/lang/Object;
.source "Java8SslUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkSniHostnameMatch(Ljava/util/Collection;[B)Z
    .locals 5
    .param p1, "hostname"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;[B)Z"
        }
    .end annotation

    .line 100
    .local p0, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v1, p1}, Ljavax/net/ssl/SNIHostName;-><init>([B)V

    .line 102
    .local v1, "name":Ljavax/net/ssl/SNIHostName;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 103
    .local v2, "matcherIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SNIMatcher;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SNIMatcher;

    .line 106
    .local v3, "matcher":Ljavax/net/ssl/SNIMatcher;
    invoke-virtual {v3}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3, v1}, Ljavax/net/ssl/SNIMatcher;->matches(Ljavax/net/ssl/SNIServerName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    return v0

    .line 109
    .end local v3    # "matcher":Ljavax/net/ssl/SNIMatcher;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 112
    .end local v1    # "name":Ljavax/net/ssl/SNIHostName;
    .end local v2    # "matcherIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/net/ssl/SNIMatcher;>;"
    :cond_2
    return v0
.end method

.method static getSniHostName([B)Ljava/util/List;
    .locals 1
    .param p0, "hostname"    # [B

    .line 79
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName;-><init>([B)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 80
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getSniHostNames(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List;"
        }
    .end annotation

    .line 68
    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .local v0, "sniServerNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "name":Ljava/lang/String;
    new-instance v3, Ljavax/net/ssl/SNIHostName;

    sget-object v4, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SNIHostName;-><init>([B)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 75
    :cond_1
    return-object v0

    .line 69
    .end local v0    # "sniServerNames":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static getSniHostNames(Ljavax/net/ssl/SSLParameters;)Ljava/util/List;
    .locals 6
    .param p0, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLParameters;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getServerNames()Ljava/util/List;

    move-result-object v0

    .line 38
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v1, "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SNIServerName;

    .line 44
    .local v3, "serverName":Ljavax/net/ssl/SNIServerName;
    instance-of v4, v3, Ljavax/net/ssl/SNIHostName;

    if-eqz v4, :cond_1

    .line 45
    move-object v4, v3

    check-cast v4, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v4}, Ljavax/net/ssl/SNIHostName;->getAsciiName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .end local v3    # "serverName":Ljavax/net/ssl/SNIServerName;
    goto :goto_0

    .line 47
    .restart local v3    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Ljavax/net/ssl/SNIHostName;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instances are supported, but found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    .end local v3    # "serverName":Ljavax/net/ssl/SNIServerName;
    :cond_2
    return-object v1

    .line 39
    .end local v1    # "strings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static getUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;)Z
    .locals 1
    .param p0, "sslParameters"    # Ljavax/net/ssl/SSLParameters;

    .line 86
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getUseCipherSuitesOrder()Z

    move-result v0

    return v0
.end method

.method static isValidHostNameForSNI(Ljava/lang/String;)Z
    .locals 2
    .param p0, "hostname"    # Ljava/lang/String;

    .line 60
    :try_start_0
    new-instance v0, Ljavax/net/ssl/SNIHostName;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "illegal":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method static setSNIMatchers(Ljavax/net/ssl/SSLParameters;Ljava/util/Collection;)V
    .locals 0
    .param p0, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLParameters;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 95
    .local p1, "matchers":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setSNIMatchers(Ljava/util/Collection;)V

    .line 96
    return-void
.end method

.method static setSniHostNames(Ljavax/net/ssl/SSLParameters;Ljava/util/List;)V
    .locals 1
    .param p0, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLParameters;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lio/netty/handler/ssl/Java8SslUtils;->getSniHostNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method static setUseCipherSuitesOrder(Ljavax/net/ssl/SSLParameters;Z)V
    .locals 0
    .param p0, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "useOrder"    # Z

    .line 90
    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setUseCipherSuitesOrder(Z)V

    .line 91
    return-void
.end method
