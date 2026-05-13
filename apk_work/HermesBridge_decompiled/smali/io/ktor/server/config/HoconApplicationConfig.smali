.class public Lio/ktor/server/config/HoconApplicationConfig;
.super Ljava/lang/Object;
.source "HoconApplicationConfig.kt"

# interfaces
.implements Lio/ktor/server/config/ApplicationConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHoconApplicationConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HoconApplicationConfig.kt\nio/ktor/server/config/HoconApplicationConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1549#2:96\n1620#2,3:97\n1549#2:100\n1620#2,3:101\n*S KotlinDebug\n*F\n+ 1 HoconApplicationConfig.kt\nio/ktor/server/config/HoconApplicationConfig\n*L\n60#1:96\n60#1:97,3\n66#1:100\n66#1:101,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0016\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0016\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/ktor/server/config/HoconApplicationConfig;",
        "Lio/ktor/server/config/ApplicationConfig;",
        "config",
        "Lcom/typesafe/config/Config;",
        "(Lcom/typesafe/config/Config;)V",
        "path",
        "",
        "configList",
        "",
        "keys",
        "",
        "property",
        "Lio/ktor/server/config/ApplicationConfigValue;",
        "propertyOrNull",
        "toMap",
        "",
        "",
        "HoconApplicationConfigValue",
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


# instance fields
.field private final config:Lcom/typesafe/config/Config;


# direct methods
.method public constructor <init>(Lcom/typesafe/config/Config;)V
    .locals 1
    .param p1, "config"    # Lcom/typesafe/config/Config;

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lio/ktor/server/config/HoconApplicationConfig;

    iget-object v1, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-interface {v1, p1}, Lcom/typesafe/config/Config;->getConfig(Ljava/lang/String;)Lcom/typesafe/config/Config;

    move-result-object v1

    const-string v2, "config.getConfig(path)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/ktor/server/config/HoconApplicationConfig;-><init>(Lcom/typesafe/config/Config;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public configList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/server/config/ApplicationConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-interface {v0, p1}, Lcom/typesafe/config/Config;->getConfigList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "config.getConfigList(path)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 96
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 97
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 98
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lcom/typesafe/config/Config;

    .local v7, "it":Lcom/typesafe/config/Config;
    const/4 v8, 0x0

    .line 60
    .local v8, "$i$a$-map-HoconApplicationConfig$configList$1":I
    new-instance v9, Lio/ktor/server/config/HoconApplicationConfig;

    const-string v10, "it"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v7}, Lio/ktor/server/config/HoconApplicationConfig;-><init>(Lcom/typesafe/config/Config;)V

    .line 98
    .end local v7    # "it":Lcom/typesafe/config/Config;
    .end local v8    # "$i$a$-map-HoconApplicationConfig$configList$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 96
    nop

    .line 60
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method public keys()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-interface {v0}, Lcom/typesafe/config/Config;->entrySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "config.entrySet()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 100
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 101
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 102
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "it":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 66
    .local v8, "$i$a$-map-HoconApplicationConfig$keys$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 102
    .end local v7    # "it":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-map-HoconApplicationConfig$keys$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 100
    nop

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 66
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public property(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-interface {v0, p1}, Lcom/typesafe/config/Config;->hasPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;

    iget-object v1, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-direct {v0, v1, p1}, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;-><init>(Lcom/typesafe/config/Config;Ljava/lang/String;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfigValue;

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lio/ktor/server/config/ApplicationConfigurationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/config/ApplicationConfigurationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-interface {v0, p1}, Lcom/typesafe/config/Config;->hasPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;

    iget-object v1, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-direct {v0, v1, p1}, Lio/ktor/server/config/HoconApplicationConfig$HoconApplicationConfigValue;-><init>(Lcom/typesafe/config/Config;Ljava/lang/String;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfigValue;

    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/ktor/server/config/HoconApplicationConfig;->config:Lcom/typesafe/config/Config;

    invoke-interface {v0}, Lcom/typesafe/config/Config;->root()Lcom/typesafe/config/ConfigObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/typesafe/config/ConfigObject;->unwrapped()Ljava/util/Map;

    move-result-object v0

    const-string v1, "config.root().unwrapped()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
