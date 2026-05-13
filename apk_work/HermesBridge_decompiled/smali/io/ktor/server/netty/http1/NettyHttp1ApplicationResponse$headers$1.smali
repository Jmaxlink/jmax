.class public final Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;
.super Lio/ktor/server/response/ResponseHeaders;
.source "NettyHttp1ApplicationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/netty/handler/codec/http/HttpVersion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyHttp1ApplicationResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyHttp1ApplicationResponse.kt\nio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,120:1\n1549#2:121\n1620#2,3:122\n*S KotlinDebug\n*F\n+ 1 NettyHttp1ApplicationResponse.kt\nio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1\n*L\n50#1:121\n50#1:122,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0014J\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0002J\u000e\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tH\u0014J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\u0004\u001a\u00020\u0005H\u0014\u00a8\u0006\u000b"
    }
    d2 = {
        "io/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1",
        "Lio/ktor/server/response/ResponseHeaders;",
        "engineAppendHeader",
        "",
        "name",
        "",
        "value",
        "get",
        "getEngineHeaderNames",
        "",
        "getEngineHeaderValues",
        "ktor-server-netty"
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
.field final synthetic this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;


# direct methods
.method constructor <init>(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)V
    .locals 0
    .param p1, "$receiver"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    iput-object p1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .line 38
    invoke-direct {p0}, Lio/ktor/server/response/ResponseHeaders;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineAppendHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    invoke-static {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->access$getResponseMessageSent(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    invoke-virtual {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getResponseReady$ktor_server_netty()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Call execution has been cancelled"

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 43
    nop

    .line 42
    const-string v1, "Headers can no longer be set because response was already completed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    invoke-static {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->access$getResponseHeaders$p(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Lio/netty/handler/codec/http/DefaultHttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 47
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    invoke-static {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->access$getResponseHeaders$p(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Lio/netty/handler/codec/http/DefaultHttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEngineHeaderNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    invoke-static {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->access$getResponseHeaders$p(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Lio/netty/handler/codec/http/DefaultHttpHeaders;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 121
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

    .line 122
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 123
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "it":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 50
    .local v8, "$i$a$-map-NettyHttp1ApplicationResponse$headers$1$getEngineHeaderNames$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 123
    .end local v7    # "it":Ljava/util/Map$Entry;
    .end local v8    # "$i$a$-map-NettyHttp1ApplicationResponse$headers$1$getEngineHeaderNames$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 121
    nop

    .line 50
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2
.end method

.method protected getEngineHeaderValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;->this$0:Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    invoke-static {v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->access$getResponseHeaders$p(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Lio/netty/handler/codec/http/DefaultHttpHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/DefaultHttpHeaders;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method
