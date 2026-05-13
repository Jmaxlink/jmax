.class public final Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
.super Lio/ktor/server/netty/NettyApplicationResponse;
.source "NettyHttp1ApplicationResponse.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyHttp1ApplicationResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyHttp1ApplicationResponse.kt\nio/ktor/server/netty/http1/NettyHttp1ApplicationResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,120:1\n1#2:121\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0019\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001aJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0014J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020!H\u0014J\u0010\u0010\"\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$H\u0002J\u0010\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\'H\u0014R\u0014\u0010\u000c\u001a\u00020\rX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006("
    }
    d2 = {
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;",
        "Lio/ktor/server/netty/NettyApplicationResponse;",
        "call",
        "Lio/ktor/server/netty/NettyApplicationCall;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "protocol",
        "Lio/netty/handler/codec/http/HttpVersion;",
        "(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/netty/handler/codec/http/HttpVersion;)V",
        "headers",
        "Lio/ktor/server/response/ResponseHeaders;",
        "getHeaders",
        "()Lio/ktor/server/response/ResponseHeaders;",
        "getProtocol",
        "()Lio/netty/handler/codec/http/HttpVersion;",
        "responseHeaders",
        "Lio/netty/handler/codec/http/DefaultHttpHeaders;",
        "responseStatus",
        "Lio/netty/handler/codec/http/HttpResponseStatus;",
        "respondUpgrade",
        "",
        "upgrade",
        "Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;",
        "(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "responseMessage",
        "",
        "chunked",
        "",
        "last",
        "data",
        "",
        "setChunked",
        "message",
        "Lio/netty/handler/codec/http/HttpResponse;",
        "setStatus",
        "statusCode",
        "Lio/ktor/http/HttpStatusCode;",
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
.field private final headers:Lio/ktor/server/response/ResponseHeaders;

.field private final protocol:Lio/netty/handler/codec/http/HttpVersion;

.field private final responseHeaders:Lio/netty/handler/codec/http/DefaultHttpHeaders;

.field private responseStatus:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method public constructor <init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/netty/handler/codec/http/HttpVersion;)V
    .locals 2
    .param p1, "call"    # Lio/ktor/server/netty/NettyApplicationCall;
    .param p2, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p4, "userContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "protocol"    # Lio/netty/handler/codec/http/HttpVersion;

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "engineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/NettyApplicationResponse;-><init>(Lio/ktor/server/netty/NettyApplicationCall;Lio/netty/channel/ChannelHandlerContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    .line 24
    iput-object p5, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->protocol:Lio/netty/handler/codec/http/HttpVersion;

    .line 27
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    const-string v1, "OK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseStatus:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 28
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v0}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>()V

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http/DefaultHttpHeaders;

    .line 38
    new-instance v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$headers$1;-><init>(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)V

    check-cast v0, Lio/ktor/server/response/ResponseHeaders;

    iput-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->headers:Lio/ktor/server/response/ResponseHeaders;

    .line 19
    return-void
.end method

.method public static final synthetic access$getResponseHeaders$p(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Lio/netty/handler/codec/http/DefaultHttpHeaders;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .line 19
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http/DefaultHttpHeaders;

    return-object v0
.end method

.method public static final synthetic access$getResponseMessageSent(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;)Z
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .line 19
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getResponseMessageSent()Z

    move-result v0

    return v0
.end method

.method private final setChunked(Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 2
    .param p1, "message"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 115
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    sget-object v1, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode$Companion;->getSwitchingProtocols()Lio/ktor/http/HttpStatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 116
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method public getHeaders()Lio/ktor/server/response/ResponseHeaders;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->headers:Lio/ktor/server/response/ResponseHeaders;

    return-object v0
.end method

.method public final getProtocol()Lio/netty/handler/codec/http/HttpVersion;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->protocol:Lio/netty/handler/codec/http/HttpVersion;

    return-object v0
.end method

.method protected respondUpgrade(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;

    iget v2, v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;-><init>(Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 76
    iget v3, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    const/4 v10, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .local v3, "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local v3    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    :pswitch_1
    iget-object v3, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/Job;

    .local v3, "job":Lkotlinx/coroutines/Job;
    iget-object v4, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .local v4, "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v3    # "job":Lkotlinx/coroutines/Job;
    .end local v4    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    :pswitch_2
    iget-object v3, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteChannel;

    .local v3, "upgradedWriteChannel":Lio/ktor/utils/io/ByteChannel;
    iget-object v4, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    .local v4, "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v5, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/server/netty/cio/RequestBodyHandler;

    .local v5, "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    iget-object v6, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;

    .local v6, "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v15, v3

    move-object v3, v1

    goto/16 :goto_1

    .end local v3    # "upgradedWriteChannel":Lio/ktor/utils/io/ByteChannel;
    .end local v4    # "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .end local v6    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v11, p0

    .local v11, "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    move-object/from16 v3, p1

    .line 77
    .local v3, "upgrade":Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;
    invoke-virtual {v11}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v4

    .line 78
    .local v4, "nettyContext":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    .line 79
    .local v5, "nettyChannel":Lio/netty/channel/Channel;
    invoke-virtual {v11}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getUserContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    new-instance v7, Lio/ktor/server/netty/NettyDispatcher$CurrentContext;

    invoke-direct {v7, v4}, Lio/ktor/server/netty/NettyDispatcher$CurrentContext;-><init>(Lio/netty/channel/ChannelHandlerContext;)V

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v6, v7}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v12

    .line 81
    .local v12, "userAppContext":Lkotlin/coroutines/CoroutineContext;
    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v6

    const-class v7, Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-interface {v6, v7}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lio/ktor/server/netty/cio/RequestBodyHandler;

    .line 82
    .end local v4    # "nettyContext":Lio/netty/channel/ChannelHandlerContext;
    .local v13, "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    invoke-virtual {v13}, Lio/ktor/server/netty/cio/RequestBodyHandler;->upgrade()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v14

    .line 84
    .local v14, "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static {v4, v6, v10}, Lio/ktor/utils/io/ByteChannelKt;->ByteChannel$default(ZILjava/lang/Object;)Lio/ktor/utils/io/ByteChannel;

    move-result-object v15

    .line 86
    .local v15, "upgradedWriteChannel":Lio/ktor/utils/io/ByteChannel;
    move-object v7, v15

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    invoke-virtual {v11, v4, v7}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->sendResponse$ktor_server_netty(ZLio/ktor/utils/io/ByteReadChannel;)V

    .line 88
    invoke-interface {v5}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    .local v5, "$this$respondUpgrade_u24lambda_u241":Lio/netty/channel/ChannelPipeline;
    const/4 v7, 0x0

    .line 89
    .local v7, "$i$a$-with-NettyHttp1ApplicationResponse$respondUpgrade$2":I
    const-class v8, Lio/ktor/server/netty/http1/NettyHttp1Handler;

    invoke-interface {v5, v8}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 90
    const-class v8, Lio/ktor/server/netty/http1/NettyHttp1Handler;

    invoke-interface {v5, v8}, Lio/netty/channel/ChannelPipeline;->remove(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    .line 91
    new-array v8, v6, [Lio/netty/channel/ChannelHandler;

    new-instance v16, Lio/ktor/server/netty/NettyDirectDecoder;

    invoke-direct/range {v16 .. v16}, Lio/ktor/server/netty/NettyDirectDecoder;-><init>()V

    aput-object v16, v8, v4

    invoke-interface {v5, v8}, Lio/netty/channel/ChannelPipeline;->addFirst([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 89
    nop

    .line 88
    .end local v5    # "$this$respondUpgrade_u24lambda_u241":Lio/netty/channel/ChannelPipeline;
    .end local v7    # "$i$a$-with-NettyHttp1ApplicationResponse$respondUpgrade$2":I
    nop

    .line 100
    move-object v5, v15

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-virtual {v11}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getEngineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v7

    iput-object v11, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$0:Ljava/lang/Object;

    iput-object v13, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$1:Ljava/lang/Object;

    iput-object v14, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$2:Ljava/lang/Object;

    iput-object v15, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$3:Ljava/lang/Object;

    iput v6, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    move-object v4, v14

    move-object v6, v7

    move-object v7, v12

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;->upgrade(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "upgrade":Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;
    .end local v12    # "userAppContext":Lkotlin/coroutines/CoroutineContext;
    if-ne v3, v9, :cond_1

    .line 76
    return-object v9

    .line 100
    :cond_1
    move-object v6, v11

    move-object v5, v13

    move-object v4, v14

    .line 76
    .end local v11    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    .end local v13    # "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .end local v14    # "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    .local v4, "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    .local v5, "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .restart local v6    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    :goto_1
    check-cast v3, Lkotlinx/coroutines/Job;

    .line 102
    .local v3, "job":Lkotlinx/coroutines/Job;
    new-instance v7, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;

    invoke-direct {v7, v15, v5, v4}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;-><init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/ktor/utils/io/ByteReadChannel;)V

    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v7}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 108
    .end local v4    # "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .end local v15    # "upgradedWriteChannel":Lio/ktor/utils/io/ByteChannel;
    invoke-virtual {v6}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getCall()Lio/ktor/server/application/ApplicationCall;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type io.ktor.server.netty.NettyApplicationCall"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lio/ktor/server/netty/NettyApplicationCall;

    invoke-virtual {v4}, Lio/ktor/server/netty/NettyApplicationCall;->getResponseWriteJob()Lkotlinx/coroutines/Job;

    move-result-object v4

    iput-object v6, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$2:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v9, :cond_2

    .line 76
    return-object v9

    .line 108
    :cond_2
    move-object v4, v6

    .line 109
    .end local v6    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    .local v4, "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    :goto_2
    iput-object v4, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$0:Ljava/lang/Object;

    iput-object v10, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, v0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$1;->label:I

    invoke-interface {v3, v0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "job":Lkotlinx/coroutines/Job;
    if-ne v3, v9, :cond_3

    .line 76
    return-object v9

    .line 109
    :cond_3
    move-object v3, v4

    .line 111
    .end local v4    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    .local v3, "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    :goto_3
    invoke-virtual {v3}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->getContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 112
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 93
    .end local v3    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    .local v5, "$this$respondUpgrade_u24lambda_u241":Lio/netty/channel/ChannelPipeline;
    .restart local v7    # "$i$a$-with-NettyHttp1ApplicationResponse$respondUpgrade$2":I
    .restart local v11    # "this":Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;
    .restart local v13    # "bodyHandler":Lio/ktor/server/netty/cio/RequestBodyHandler;
    .restart local v14    # "upgradedReadChannel":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v15    # "upgradedWriteChannel":Lio/ktor/utils/io/ByteChannel;
    :cond_4
    invoke-virtual {v11}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->cancel()V

    .line 94
    new-instance v3, Ljava/util/concurrent/CancellationException;

    const-string v4, "HTTP upgrade has been cancelled"

    invoke-direct {v3, v4}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 95
    .local v3, "cause":Ljava/util/concurrent/CancellationException;
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v15, v4}, Lio/ktor/utils/io/ByteChannel;->cancel(Ljava/lang/Throwable;)Z

    .line 96
    throw v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected responseMessage(ZZ)Ljava/lang/Object;
    .locals 4
    .param p1, "chunked"    # Z
    .param p2, "last"    # Z

    .line 55
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpResponse;

    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->protocol:Lio/netty/handler/codec/http/HttpVersion;

    iget-object v2, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseStatus:Lio/netty/handler/codec/http/HttpResponseStatus;

    iget-object v3, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http/DefaultHttpHeaders;

    check-cast v3, Lio/netty/handler/codec/http/HttpHeaders;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 56
    .local v0, "responseMessage":Lio/netty/handler/codec/http/DefaultHttpResponse;
    if-eqz p1, :cond_0

    .line 57
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-direct {p0, v1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->setChunked(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 59
    :cond_0
    return-object v0
.end method

.method protected responseMessage(Z[B)Ljava/lang/Object;
    .locals 7
    .param p1, "chunked"    # Z
    .param p2, "data"    # [B

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    .line 64
    iget-object v2, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->protocol:Lio/netty/handler/codec/http/HttpVersion;

    .line 65
    iget-object v3, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseStatus:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 66
    invoke-static {p2}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 67
    iget-object v1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseHeaders:Lio/netty/handler/codec/http/DefaultHttpHeaders;

    move-object v5, v1

    check-cast v5, Lio/netty/handler/codec/http/HttpHeaders;

    .line 68
    sget-object v1, Lio/netty/handler/codec/http/EmptyHttpHeaders;->INSTANCE:Lio/netty/handler/codec/http/EmptyHttpHeaders;

    move-object v6, v1

    check-cast v6, Lio/netty/handler/codec/http/HttpHeaders;

    .line 63
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 70
    .local v0, "responseMessage":Lio/netty/handler/codec/http/DefaultFullHttpResponse;
    if-eqz p1, :cond_0

    .line 71
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-direct {p0, v1}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->setChunked(Lio/netty/handler/codec/http/HttpResponse;)V

    .line 73
    :cond_0
    return-object v0
.end method

.method protected setStatus(Lio/ktor/http/HttpStatusCode;)V
    .locals 7
    .param p1, "statusCode"    # Lio/ktor/http/HttpStatusCode;

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v0

    .line 32
    .local v0, "statusCodeInt":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v2, v0, :cond_0

    sget-object v3, Lio/ktor/server/netty/NettyApplicationResponse;->Companion:Lio/ktor/server/netty/NettyApplicationResponse$Companion;

    invoke-virtual {v3}, Lio/ktor/server/netty/NettyApplicationResponse$Companion;->getResponseStatusCache()[Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v3

    if-gt v0, v3, :cond_0

    move v1, v2

    :cond_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lio/ktor/server/netty/NettyApplicationResponse;->Companion:Lio/ktor/server/netty/NettyApplicationResponse$Companion;

    invoke-virtual {v1}, Lio/ktor/server/netty/NettyApplicationResponse$Companion;->getResponseStatusCache()[Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 34
    .local v1, "cached":Lio/netty/handler/codec/http/HttpResponseStatus;
    :goto_0
    if-eqz v1, :cond_3

    .line 121
    move-object v3, v1

    .local v3, "it":Lio/netty/handler/codec/http/HttpResponseStatus;
    const/4 v4, 0x0

    .line 34
    .local v4, "$i$a$-takeIf-NettyHttp1ApplicationResponse$setStatus$1":I
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lio/ktor/http/HttpStatusCode;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .end local v3    # "it":Lio/netty/handler/codec/http/HttpResponseStatus;
    .end local v4    # "$i$a$-takeIf-NettyHttp1ApplicationResponse$setStatus$1":I
    if-eqz v3, :cond_2

    move-object v2, v1

    :cond_2
    if-nez v2, :cond_4

    .line 35
    :cond_3
    new-instance v2, Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {p1}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v3

    invoke-virtual {p1}, Lio/ktor/http/HttpStatusCode;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/netty/handler/codec/http/HttpResponseStatus;-><init>(ILjava/lang/String;)V

    .line 34
    :cond_4
    iput-object v2, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->responseStatus:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 36
    return-void
.end method
