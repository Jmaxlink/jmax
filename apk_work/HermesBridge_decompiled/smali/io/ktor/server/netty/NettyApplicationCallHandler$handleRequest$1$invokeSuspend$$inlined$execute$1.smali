.class public final Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Pipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipeline.kt\nio/ktor/util/pipeline/PipelineKt$execute$2\n*L\n1#1,503:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "TContext",
        "",
        "io/ktor/util/pipeline/PipelineKt$execute$2"
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
    c = "io.ktor.util.pipeline.PipelineKt$execute$2"
    f = "Pipeline.kt"
    i = {}
    l = {
        0x1de
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $context:Ljava/lang/Object;

.field final synthetic $this_execute:Lio/ktor/util/pipeline/Pipeline;

.field label:I


# direct methods
.method public constructor <init>(Lio/ktor/util/pipeline/Pipeline;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->$this_execute:Lio/ktor/util/pipeline/Pipeline;

    iput-object p2, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->$context:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;

    iget-object v1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->$this_execute:Lio/ktor/util/pipeline/Pipeline;

    iget-object v2, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->$context:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;-><init>(Lio/ktor/util/pipeline/Pipeline;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 477
    iget v1, p0, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    move-object v0, p0

    .local v0, "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;
    .local p1, "$result":Ljava/lang/Object;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 478
    .local v1, "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->$this_execute:Lio/ktor/util/pipeline/Pipeline;

    iget-object v3, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->$context:Ljava/lang/Object;

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    const/4 v6, 0x1

    iput v6, v1, Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;->label:I

    invoke-virtual {v2, v3, v4, v5}, Lio/ktor/util/pipeline/Pipeline;->execute(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    .line 477
    return-object v0

    .line 478
    :cond_0
    move-object v0, v1

    .line 479
    .end local v1    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;
    .restart local v0    # "this":Lio/ktor/server/netty/NettyApplicationCallHandler$handleRequest$1$invokeSuspend$$inlined$execute$1;
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
