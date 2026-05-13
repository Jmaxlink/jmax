.class public abstract Lio/ktor/server/netty/NettyApplicationResponse;
.super Lio/ktor/server/engine/BaseApplicationResponse;
.source "NettyApplicationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/NettyApplicationResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationResponse.kt\nio/ktor/server/netty/NettyApplicationResponse\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,141:1\n1194#2,2:142\n1222#2,4:144\n*S KotlinDebug\n*F\n+ 1 NettyApplicationResponse.kt\nio/ktor/server/netty/NettyApplicationResponse\n*L\n134#1:142,2\n134#1:144,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000 ?2\u00020\u0001:\u0001?B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010%\u001a\u00020&J\r\u0010\'\u001a\u00020&H\u0000\u00a2\u0006\u0002\u0008(J\r\u0010)\u001a\u00020&H\u0000\u00a2\u0006\u0002\u0008*J\u000f\u0010+\u001a\u0004\u0018\u00010\u0015H\u0010\u00a2\u0006\u0002\u0008,J\u0019\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020/H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00100J\u0019\u00101\u001a\u00020&2\u0006\u00102\u001a\u000203H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00104J\u0019\u00105\u001a\u00020&2\u0006\u00102\u001a\u000206H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00107J\u0011\u0010\u000e\u001a\u000208H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00109J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010:\u001a\u00020\u001b2\u0006\u0010;\u001a\u00020\u001bH$J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010:\u001a\u00020\u001b2\u0006\u0010<\u001a\u00020/H\u0014J\u001f\u0010=\u001a\u00020&2\u0008\u0008\u0002\u0010:\u001a\u00020\u001b2\u0006\u00102\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008>R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0006\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020!X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0014\u0010\u0008\u001a\u00020\u0007X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006@"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationResponse;",
        "Lio/ktor/server/engine/BaseApplicationResponse;",
        "call",
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V",
        "getContext",
        "()Lio/netty/channel/ChannelHandlerContext;",
        "getEngineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "responseChannel",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "getResponseChannel$ktor_server_netty",
        "()Lio/ktor/utils/io/ByteReadChannel;",
        "setResponseChannel$ktor_server_netty",
        "(Lio/ktor/utils/io/ByteReadChannel;)V",
        "responseMessage",
        "",
        "getResponseMessage",
        "()Ljava/lang/Object;",
        "setResponseMessage",
        "(Ljava/lang/Object;)V",
        "responseMessageSent",
        "",
        "getResponseMessageSent",
        "()Z",
        "setResponseMessageSent",
        "(Z)V",
        "responseReady",
        "Lio/netty/channel/ChannelPromise;",
        "getResponseReady$ktor_server_netty",
        "()Lio/netty/channel/ChannelPromise;",
        "getUserContext",
        "cancel",
        "",
        "close",
        "close$ktor_server_netty",
        "ensureResponseSent",
        "ensureResponseSent$ktor_server_netty",
        "prepareTrailerMessage",
        "prepareTrailerMessage$ktor_server_netty",
        "respondFromBytes",
        "bytes",
        "",
        "([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondNoContent",
        "content",
        "Lio/ktor/http/content/OutgoingContent$NoContent;",
        "(Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "respondOutgoingContent",
        "Lio/ktor/http/content/OutgoingContent;",
        "(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "chunked",
        "last",
        "data",
        "sendResponse",
        "sendResponse$ktor_server_netty",
        "Companion",
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


# static fields
.field public static final Companion:Lio/ktor/server/netty/NettyApplicationResponse$Companion;

.field private static final EmptyByteArray:[B

.field private static final responseStatusCache:[Lio/netty/handler/codec/http/HttpResponseStatus;


# instance fields
.field private final context:Lio/netty/channel/ChannelHandlerContext;

.field private final engineContext:Lkotlin/coroutines/CoroutineContext;

.field private responseChannel:Lio/ktor/utils/io/ByteReadChannel;

.field public responseMessage:Ljava/lang/Object;

.field private volatile responseMessageSent:Z

.field private final responseReady:Lio/netty/channel/ChannelPromise;

.field private final userContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lio/ktor/server/netty/NettyApplicationResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyApplicationResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/netty/NettyApplicationResponse;->Companion:Lio/ktor/server/netty/NettyApplicationResponse$Companion;

    .line 131
    const/4 v0, 0x0

    new-array v2, v0, [B

    sput-object v2, Lio/ktor/server/netty/NettyApplicationResponse;->EmptyByteArray:[B

    .line 134
    nop

    .line 133
    sget-object v2, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode$Companion;->getAllStatusCodes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 134
    nop

    .local v2, "$this$associateBy$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 142
    .local v3, "$i$f$associateBy":I
    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 143
    .local v4, "capacity$iv":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    .local v5, "destination$iv$iv":Ljava/util/Map;
    move-object v6, v2

    .local v6, "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 144
    .local v7, "$i$f$associateByTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 145
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lio/ktor/http/HttpStatusCode;

    .local v10, "it":Lio/ktor/http/HttpStatusCode;
    const/4 v11, 0x0

    .line 134
    .local v11, "$i$a$-associateBy-NettyApplicationResponse$Companion$responseStatusCache$1":I
    invoke-virtual {v10}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v10

    .end local v10    # "it":Lio/ktor/http/HttpStatusCode;
    .end local v11    # "$i$a$-associateBy-NettyApplicationResponse$Companion$responseStatusCache$1":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 145
    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 143
    .end local v5    # "destination$iv$iv":Ljava/util/Map;
    .end local v6    # "$this$associateByTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$associateByTo":I
    nop

    .line 134
    .end local v2    # "$this$associateBy$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$associateBy":I
    .end local v4    # "capacity$iv":I
    move-object v2, v5

    .local v2, "codes":Ljava/util/Map;
    const/4 v3, 0x0

    .line 135
    .local v3, "$i$a$-let-NettyApplicationResponse$Companion$responseStatusCache$2":I
    const/16 v4, 0x3e8

    new-array v5, v4, [Lio/netty/handler/codec/http/HttpResponseStatus;

    :goto_1
    if-ge v0, v4, :cond_2

    .line 136
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v7, Lio/ktor/http/HttpStatusCode;

    invoke-virtual {v7}, Lio/ktor/http/HttpStatusCode;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v6, v1

    :goto_2
    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    .line 135
    goto :goto_1

    .line 134
    .end local v2    # "codes":Ljava/util/Map;
    .end local v3    # "$i$a$-let-NettyApplicationResponse$Companion$responseStatusCache$2":I
    :cond_2
    sput-object v5, Lio/ktor/server/netty/NettyApplicationResponse;->responseStatusCache:[Lio/netty/handler/codec/http/HttpResponseStatus;

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V
    .locals 2
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p4, "userContext"    # Lkotlin/coroutines/CoroutineContext;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p1

    check-cast v0, Lio/ktor/server/application/ApplicationCall;

    invoke-direct {p0, v0}, Lio/ktor/server/engine/BaseApplicationResponse;-><init>(Lio/ktor/server/application/ApplicationCall;)V

    .line 18
    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationResponse;->context:Lio/netty/channel/ChannelHandlerContext;

    .line 19
    iput-object p3, p0, Lio/ktor/server/netty/NettyApplicationResponse;->engineContext:Lkotlin/coroutines/CoroutineContext;

    .line 20
    iput-object p4, p0, Lio/ktor/server/netty/NettyApplicationResponse;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 26
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->context:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    const-string v1, "context.newPromise()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseReady:Lio/netty/channel/ChannelPromise;

    .line 33
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 16
    return-void
.end method

.method public static final synthetic access$getResponseStatusCache$cp()[Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1

    .line 16
    sget-object v0, Lio/ktor/server/netty/NettyApplicationResponse;->responseStatusCache:[Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0
.end method

.method static synthetic respondFromBytes$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p1, "bytes"    # [B
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v0

    sget-object v1, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v1}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/server/response/ResponseHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 53
    .local v0, "chunked":Z
    iget-boolean v1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    if-eqz v1, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 55
    :cond_0
    invoke-virtual {p0, v0, p1}, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessage(Z[B)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "message":Ljava/lang/Object;
    nop

    .line 57
    instance-of v2, v1, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v2, :cond_1

    sget-object v2, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v2}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p1}, Lio/ktor/utils/io/ByteChannelCtorKt;->ByteReadChannel([B)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v2

    .line 56
    :goto_0
    iput-object v2, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 60
    invoke-virtual {p0, v1}, Lio/ktor/server/netty/NettyApplicationResponse;->setResponseMessage(Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseReady:Lio/netty/channel/ChannelPromise;

    invoke-interface {v2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 62
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    .line 63
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v2
.end method

.method static synthetic respondNoContent$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p1, "content"    # Lio/ktor/http/content/OutgoingContent$NoContent;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "Lio/ktor/http/content/OutgoingContent$NoContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 73
    sget-object v0, Lio/ktor/server/netty/NettyApplicationResponse;->EmptyByteArray:[B

    invoke-virtual {p0, v0, p2}, Lio/ktor/server/netty/NettyApplicationResponse;->respondFromBytes([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 74
    return-object v0
.end method

.method static synthetic respondOutgoingContent$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;

    iget v1, v0, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;-><init>(Lio/ktor/server/netty/NettyApplicationResponse;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, p2, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/server/netty/NettyApplicationResponse;

    .local p0, "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local p0    # "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    .restart local p0    # "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    .local p1, "content":Lio/ktor/http/content/OutgoingContent;
    nop

    .line 37
    :try_start_1
    iput-object p0, p2, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p2, Lio/ktor/server/netty/NettyApplicationResponse$respondOutgoingContent$1;->label:I

    invoke-super {p0, p1, p2}, Lio/ktor/server/engine/BaseApplicationResponse;->respondOutgoingContent(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "content":Lio/ktor/http/content/OutgoingContent;
    if-ne v2, v1, :cond_1

    .line 35
    return-object v1

    .line 43
    :cond_1
    :goto_1
    iget-object p1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .end local p0    # "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    instance-of p0, p1, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz p0, :cond_2

    move-object v3, p1

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    :cond_2
    move-object p0, v3

    .line 44
    .local p0, "out":Lio/ktor/utils/io/ByteWriteChannel;
    if-eqz p0, :cond_3

    invoke-static {p0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    nop

    .line 45
    .end local p0    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_3
    nop

    .line 46
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 38
    .local p0, "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    :catchall_0
    move-exception p1

    .line 39
    .local p1, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    instance-of v2, v1, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v2, :cond_4

    check-cast v1, Lio/ktor/utils/io/ByteWriteChannel;

    goto :goto_2

    :cond_4
    move-object v1, v3

    .line 40
    .local v1, "out":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1, p1}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    move-result v2

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    nop

    .line 41
    .end local v1    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_5
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p0    # "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    .end local p1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p0    # "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_1
    move-exception p1

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .end local p0    # "$this":Lio/ktor/server/netty/NettyApplicationResponse;
    instance-of p0, v1, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz p0, :cond_6

    move-object v3, v1

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    :cond_6
    move-object p0, v3

    .line 44
    .local p0, "out":Lio/ktor/utils/io/ByteWriteChannel;
    if-eqz p0, :cond_7

    invoke-static {p0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    nop

    .end local p0    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_7
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic responseChannel$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationResponse;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/netty/NettyApplicationResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 66
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;

    move-result-object v0

    .line 67
    .local v0, "channel":Lio/ktor/utils/io/ByteChannel;
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationResponse;->getHeaders()Lio/ktor/server/response/ResponseHeaders;

    move-result-object v1

    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/server/response/ResponseHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 68
    .local v1, "chunked":Z
    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/ByteReadChannel;

    invoke-virtual {p0, v1, v2}, Lio/ktor/server/netty/NettyApplicationResponse;->sendResponse$ktor_server_netty(ZLio/ktor/utils/io/ByteReadChannel;)V

    .line 69
    return-object v0
.end method

.method public static synthetic sendResponse$ktor_server_netty$default(Lio/ktor/server/netty/NettyApplicationResponse;ZLio/ktor/utils/io/ByteReadChannel;ILjava/lang/Object;)V
    .locals 0

    .line 90
    if-nez p4, :cond_1

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationResponse;->sendResponse$ktor_server_netty(ZLio/ktor/utils/io/ByteReadChannel;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendResponse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 123
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 125
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseReady:Lio/netty/channel/ChannelPromise;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Response was cancelled"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    .line 128
    :cond_0
    return-void
.end method

.method public final close$ktor_server_netty()V
    .locals 4

    .line 111
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 112
    .local v0, "existingChannel":Lio/ktor/utils/io/ByteReadChannel;
    instance-of v1, v0, Lio/ktor/utils/io/ByteWriteChannel;

    if-eqz v1, :cond_0

    .line 113
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/ByteWriteChannel;

    new-instance v2, Lio/ktor/utils/io/ClosedWriteChannelException;

    const-string v3, "Application response has been closed"

    invoke-direct {v2, v3}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 114
    sget-object v1, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v1

    iput-object v1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 117
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationResponse;->ensureResponseSent$ktor_server_netty()V

    .line 120
    return-void
.end method

.method public final ensureResponseSent$ktor_server_netty()V
    .locals 4

    .line 107
    sget-object v0, Lio/ktor/utils/io/ByteReadChannel;->Companion:Lio/ktor/utils/io/ByteReadChannel$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/ByteReadChannel$Companion;->getEmpty()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Lio/ktor/server/netty/NettyApplicationResponse;->sendResponse$ktor_server_netty$default(Lio/ktor/server/netty/NettyApplicationResponse;ZLio/ktor/utils/io/ByteReadChannel;ILjava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected final getContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method

.method protected final getEngineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->engineContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getResponseChannel$ktor_server_netty()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method

.method public final getResponseMessage()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessage:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "responseMessage"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method protected final getResponseMessageSent()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    return v0
.end method

.method public final getResponseReady$ktor_server_netty()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 26
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseReady:Lio/netty/channel/ChannelPromise;

    return-object v0
.end method

.method protected final getUserContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 20
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->userContext:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public prepareTrailerMessage$ktor_server_netty()Ljava/lang/Object;
    .locals 1

    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method protected respondFromBytes([BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationResponse;->respondFromBytes$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected respondNoContent(Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent$NoContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationResponse;->respondNoContent$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;Lio/ktor/http/content/OutgoingContent$NoContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected respondOutgoingContent(Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationResponse;->respondOutgoingContent$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;Lio/ktor/http/content/OutgoingContent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected responseChannel(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p0, p1}, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel$suspendImpl(Lio/ktor/server/netty/NettyApplicationResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract responseMessage(ZZ)Ljava/lang/Object;
.end method

.method protected responseMessage(Z[B)Ljava/lang/Object;
    .locals 1
    .param p1, "chunked"    # Z
    .param p2, "data"    # [B

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessage(ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final sendResponse$ktor_server_netty(ZLio/ktor/utils/io/ByteReadChannel;)V
    .locals 2
    .param p1, "chunked"    # Z
    .param p2, "content"    # Lio/ktor/utils/io/ByteReadChannel;

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    .line 94
    nop

    .line 95
    invoke-interface {p2}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 96
    sget-object v0, Lio/ktor/server/netty/NettyApplicationResponse;->EmptyByteArray:[B

    invoke-virtual {p0, v1, v0}, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessage(Z[B)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0, p1, v1}, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessage(ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 94
    :goto_0
    invoke-virtual {p0, v0}, Lio/ktor/server/netty/NettyApplicationResponse;->setResponseMessage(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseReady:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    .line 104
    return-void
.end method

.method public final setResponseChannel$ktor_server_netty(Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 1
    .param p1, "<set-?>"    # Lio/ktor/utils/io/ByteReadChannel;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseChannel:Lio/ktor/utils/io/ByteReadChannel;

    return-void
.end method

.method public final setResponseMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/Object;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessage:Ljava/lang/Object;

    return-void
.end method

.method protected final setResponseMessageSent(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 31
    iput-boolean p1, p0, Lio/ktor/server/netty/NettyApplicationResponse;->responseMessageSent:Z

    return-void
.end method
