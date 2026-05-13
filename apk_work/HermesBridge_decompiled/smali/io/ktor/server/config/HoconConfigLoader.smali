.class public final Lio/ktor/server/config/HoconConfigLoader;
.super Ljava/lang/Object;
.source "HoconApplicationConfig.kt"

# interfaces
.implements Lio/ktor/server/config/ConfigLoader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/ktor/server/config/HoconConfigLoader;",
        "Lio/ktor/server/config/ConfigLoader;",
        "()V",
        "load",
        "Lio/ktor/server/config/ApplicationConfig;",
        "path",
        "",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .line 22
    nop

    .line 23
    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "application.conf"

    goto :goto_1

    .line 24
    :cond_0
    const-string v1, ".conf"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".json"

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".properties"

    invoke-static {p1, v1, v2, v3, v0}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    return-object v0

    .line 24
    :cond_2
    :goto_0
    move-object v1, p1

    .line 22
    :goto_1
    nop

    .line 28
    .local v1, "resolvedPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 35
    .local v2, "resource":Ljava/net/URL;
    nop

    .line 29
    nop

    .line 30
    if-eqz v2, :cond_3

    invoke-static {v1}, Lcom/typesafe/config/ConfigFactory;->load(Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v3

    goto :goto_2

    .line 32
    :cond_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/typesafe/config/ConfigFactory;->parseFile(Ljava/io/File;)Lcom/typesafe/config/Config;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    :cond_4
    move-object v3, v0

    .line 29
    .end local v3    # "file":Ljava/io/File;
    :goto_2
    nop

    .line 35
    if-eqz v3, :cond_5

    .line 29
    nop

    .line 35
    invoke-interface {v3}, Lcom/typesafe/config/Config;->resolve()Lcom/typesafe/config/Config;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v0

    .line 29
    :goto_3
    if-nez v3, :cond_6

    .line 35
    return-object v0

    .line 29
    :cond_6
    move-object v0, v3

    .line 37
    .local v0, "config":Lcom/typesafe/config/Config;
    new-instance v3, Lio/ktor/server/config/HoconApplicationConfig;

    invoke-direct {v3, v0}, Lio/ktor/server/config/HoconApplicationConfig;-><init>(Lcom/typesafe/config/Config;)V

    check-cast v3, Lio/ktor/server/config/ApplicationConfig;

    return-object v3
.end method
