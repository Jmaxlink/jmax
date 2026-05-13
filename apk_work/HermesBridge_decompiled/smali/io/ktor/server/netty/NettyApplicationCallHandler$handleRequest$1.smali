.class final Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NettyApplicationCallHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationCallHandler;->handleRequest(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/application/ApplicationCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationCallHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationCallHandler.kt\nio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1\n+ 2 Pipeline.kt\nio/ktor/util/pipeline/PipelineKt\n*L\n1#1,118:1\n477#2,4:119\n*S KotlinDebug\n*F\n+ 1 NettyApplicationCallHandler.kt\nio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1\n*L\n44#1:119,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.server.netty.NettyApplicationCallHandler$handleRequest$1"
    f = "NettyApplicationCallHandler.kt"
    i = {}
    l = {
        0x28,
        0x77,
        0x2e
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $call:Lio/ktor/server/application/ApplicationCall;

.field label:I

.field final synthetic this$0:Lio/ktor/server/netty/NettyApplicationCallHandler;


# direct methods
.method constructor <init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/netty/NettyApplicationCallHandler;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Lio/ktor/server/netty/NettyApplicationCallHandler;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->this$0:Lio/ktor/server/netty/NettyApplicationCallHandler;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    iget-object v2, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->this$0:Lio/ktor/server/netty/NettyApplicationCallHandler;

    invoke-direct {v0, v1, v2, p2}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;-><init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/netty/NettyApplicationCallHandler;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    .end local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "$i$f$execute":I
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .end local v2    # "$i$f$execute":I
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    move-object v0, p0

    .restart local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 38
    .restart local v1    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    nop

    .line 39
    iget-object v2, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    instance-of v2, v2, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    check-cast v2, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;

    invoke-virtual {v2}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;->getRequest()Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/server/netty/NettyApplicationCallHandlerKt;->isValid(Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 40
    iget-object v2, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->this$0:Lio/ktor/server/netty/NettyApplicationCallHandler;

    iget-object v3, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    check-cast v3, Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    const/4 v5, 0x1

    iput v5, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->label:I

    invoke-static {v2, v3, v4}, Lio/ktor/server/netty/NettyApplicationCallHandler;->access$respondError400BadRequest(Lio/ktor/server/netty/NettyApplicationCallHandler;Lio/ktor/server/netty/http1/NettyHttp1ApplicationCall;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 37
    return-object v0

    .line 40
    :cond_0
    move-object v0, v1

    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .restart local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    :goto_0
    goto :goto_3

    .line 43
    .end local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .restart local v1    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    :cond_1
    nop

    .line 44
    :try_start_1
    iget-object v2, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->this$0:Lio/ktor/server/netty/NettyApplicationCallHandler;

    invoke-static {v2}, Lio/ktor/server/netty/NettyApplicationCallHandler;->access$getEnginePipeline$p(Lio/ktor/server/netty/NettyApplicationCallHandler;)Lio/ktor/server/engine/EnginePipeline;

    move-result-object v2

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    iget-object v3, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    .local v2, "$this$execute$iv":Lio/ktor/util/pipeline/Pipeline;
    .local v3, "context$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 119
    .local v4, "$i$f$execute":I
    new-instance v5, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;-><init>(Lio/ktor/util/pipeline/Pipeline;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v7, 0x2

    iput v7, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->label:I

    invoke-static {v5, v6}, Lio/ktor/util/debug/ContextUtilsKt;->initContextInDebugMode(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "$this$execute$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v3    # "context$iv":Ljava/lang/Object;
    if-ne v5, v0, :cond_2

    .line 37
    return-object v0

    .line 119
    :cond_2
    move v2, v4

    .line 122
    .end local v4    # "$i$f$execute":I
    .local v2, "$i$f$execute":I
    :goto_1
    move-object v0, v1

    goto :goto_3

    .line 45
    .end local v2    # "$i$f$execute":I
    :catch_0
    move-exception v2

    .line 46
    .local v2, "error":Ljava/lang/Exception;
    iget-object v3, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->$call:Lio/ktor/server/application/ApplicationCall;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x3

    iput v6, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->label:I

    invoke-static {v3, v4, v5}, Lio/ktor/server/engine/DefaultEnginePipelineKt;->handleFailure(Lio/ktor/server/application/ApplicationCall;Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "error":Ljava/lang/Exception;
    if-ne v2, v0, :cond_3

    .line 37
    return-object v0

    .line 46
    :cond_3
    move-object v0, v1

    .line 49
    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    .restart local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;
    :goto_2
    nop

    :goto_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
