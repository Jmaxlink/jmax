.class final Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyApplicationEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationEngine;-><init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lio/netty/bootstrap/ServerBootstrap;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationEngine.kt\nio/ktor/server/netty/NettyApplicationEngine$bootstraps$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,332:1\n1549#2:333\n1620#2,3:334\n*S KotlinDebug\n*F\n+ 1 NettyApplicationEngine.kt\nio/ktor/server/netty/NettyApplicationEngine$bootstraps$2\n*L\n163#1:333\n163#1:334,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/netty/bootstrap/ServerBootstrap;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

.field final synthetic this$0:Lio/ktor/server/netty/NettyApplicationEngine;


# direct methods
.method constructor <init>(Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/ktor/server/netty/NettyApplicationEngine;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;->$environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/bootstrap/ServerBootstrap;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;->$environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getConnectors()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationEngine$bootstraps$2;->this$0:Lio/ktor/server/netty/NettyApplicationEngine;

    const/4 v2, 0x0

    .line 333
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 334
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 335
    .local v7, "item$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lio/ktor/server/engine/EngineConnectorConfig;

    .local v8, "p0":Lio/ktor/server/engine/EngineConnectorConfig;
    const/4 v9, 0x0

    .line 163
    .local v9, "$i$a$-map-NettyApplicationEngine$bootstraps$2$1":I
    invoke-static {v1, v8}, Lio/ktor/server/netty/NettyApplicationEngine;->access$createBootstrap(Lio/ktor/server/netty/NettyApplicationEngine;Lio/ktor/server/engine/EngineConnectorConfig;)Lio/netty/bootstrap/ServerBootstrap;

    move-result-object v8

    .line 335
    .end local v8    # "p0":Lio/ktor/server/engine/EngineConnectorConfig;
    .end local v9    # "$i$a$-map-NettyApplicationEngine$bootstraps$2$1":I
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v7    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .line 333
    nop

    .line 163
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$map":I
    return-object v1
.end method
