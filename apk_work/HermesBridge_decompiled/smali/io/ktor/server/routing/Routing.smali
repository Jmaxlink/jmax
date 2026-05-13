.class public final Lio/ktor/server/routing/Routing;
.super Lio/ktor/server/routing/Route;
.source "Routing.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/routing/Routing$Plugin;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouting.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Routing.kt\nio/ktor/server/routing/Routing\n+ 2 ApplicationCallPipeline.kt\nio/ktor/server/application/ApplicationCallPipelineKt\n+ 3 Pipeline.kt\nio/ktor/util/pipeline/PipelineKt\n*L\n1#1,164:1\n108#1,10:168\n108#1,10:179\n75#2:165\n75#2:166\n75#2:167\n75#2:178\n75#2:189\n477#3,4:190\n*S KotlinDebug\n*F\n+ 1 Routing.kt\nio/ktor/server/routing/Routing\n*L\n77#1:168,10\n82#1:179,10\n61#1:165\n67#1:166\n78#1:167\n83#1:178\n88#1:189\n97#1:190,4\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\u000bH\u0002J5\u0010\r\u001a\u00020\u000b2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J%\u0010\u0015\u001a\u00020\u000b2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00100\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0016JV\u0010\u0017\u001a\u0002H\u0018\"\u0008\u0008\u0000\u0010\u0019*\u00020\u001a\"\u0008\u0008\u0001\u0010\u001b*\u00020\u001a\"\u0014\u0008\u0002\u0010\u0018*\u000e\u0012\u0004\u0012\u0002H\u0019\u0012\u0004\u0012\u0002H\u001b0\u001c2\u0006\u0010\u001d\u001a\u0002H\u00182\u0006\u0010\u001e\u001a\u0002H\u00182\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u00180 H\u0082\u0008\u00a2\u0006\u0002\u0010!J\u001a\u0010\"\u001a\u00020\u000b2\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R \u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006%"
    }
    d2 = {
        "Lio/ktor/server/routing/Routing;",
        "Lio/ktor/server/routing/Route;",
        "application",
        "Lio/ktor/server/application/Application;",
        "(Lio/ktor/server/application/Application;)V",
        "getApplication",
        "()Lio/ktor/server/application/Application;",
        "tracers",
        "",
        "Lkotlin/Function1;",
        "Lio/ktor/server/routing/RoutingResolveTrace;",
        "",
        "addDefaultTracing",
        "executeResult",
        "context",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/server/application/ApplicationCall;",
        "route",
        "parameters",
        "Lio/ktor/http/Parameters;",
        "(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "interceptor",
        "(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "merge",
        "P",
        "Subject",
        "",
        "Context",
        "Lio/ktor/util/pipeline/Pipeline;",
        "first",
        "second",
        "build",
        "Lkotlin/Function0;",
        "(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function0;)Lio/ktor/util/pipeline/Pipeline;",
        "trace",
        "block",
        "Plugin",
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


# static fields
.field public static final Plugin:Lio/ktor/server/routing/Routing$Plugin;

.field private static final RoutingCallFinished:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/routing/RoutingApplicationCall;",
            ">;"
        }
    .end annotation
.end field

.field private static final RoutingCallStarted:Lio/ktor/events/EventDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/events/EventDefinition<",
            "Lio/ktor/server/routing/RoutingApplicationCall;",
            ">;"
        }
    .end annotation
.end field

.field private static final key:Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/AttributeKey<",
            "Lio/ktor/server/routing/Routing;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final application:Lio/ktor/server/application/Application;

.field private final tracers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/ktor/server/routing/RoutingResolveTrace;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/routing/Routing$Plugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/routing/Routing$Plugin;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/routing/Routing;->Plugin:Lio/ktor/server/routing/Routing$Plugin;

    .line 129
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/routing/Routing;->RoutingCallStarted:Lio/ktor/events/EventDefinition;

    .line 134
    new-instance v0, Lio/ktor/events/EventDefinition;

    invoke-direct {v0}, Lio/ktor/events/EventDefinition;-><init>()V

    sput-object v0, Lio/ktor/server/routing/Routing;->RoutingCallFinished:Lio/ktor/events/EventDefinition;

    .line 136
    new-instance v0, Lio/ktor/util/AttributeKey;

    const-string v1, "Routing"

    invoke-direct {v0, v1}, Lio/ktor/util/AttributeKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/server/routing/Routing;->key:Lio/ktor/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/application/Application;)V
    .locals 4
    .param p1, "application"    # Lio/ktor/server/application/Application;

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    nop

    .line 31
    nop

    .line 32
    new-instance v0, Lio/ktor/server/routing/RootRouteSelector;

    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationEnvironment;->getRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/server/routing/RootRouteSelector;-><init>(Ljava/lang/String;)V

    check-cast v0, Lio/ktor/server/routing/RouteSelector;

    .line 33
    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/server/application/ApplicationEnvironment;->getDevelopmentMode()Z

    move-result v1

    .line 34
    invoke-virtual {p1}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v2

    .line 30
    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lio/ktor/server/routing/Route;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 29
    iput-object p1, p0, Lio/ktor/server/routing/Routing;->application:Lio/ktor/server/application/Application;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/routing/Routing;->tracers:Ljava/util/List;

    .line 38
    nop

    .line 39
    invoke-direct {p0}, Lio/ktor/server/routing/Routing;->addDefaultTracing()V

    .line 40
    nop

    .line 28
    return-void
.end method

.method public static final synthetic access$executeResult(Lio/ktor/server/routing/Routing;Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/routing/Routing;
    .param p1, "context"    # Lio/ktor/util/pipeline/PipelineContext;
    .param p2, "route"    # Lio/ktor/server/routing/Route;
    .param p3, "parameters"    # Lio/ktor/http/Parameters;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/routing/Routing;->executeResult(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getKey$cp()Lio/ktor/util/AttributeKey;
    .locals 1

    .line 27
    sget-object v0, Lio/ktor/server/routing/Routing;->key:Lio/ktor/util/AttributeKey;

    return-object v0
.end method

.method public static final synthetic access$getRoutingCallFinished$cp()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 27
    sget-object v0, Lio/ktor/server/routing/Routing;->RoutingCallFinished:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method public static final synthetic access$getRoutingCallStarted$cp()Lio/ktor/events/EventDefinition;
    .locals 1

    .line 27
    sget-object v0, Lio/ktor/server/routing/Routing;->RoutingCallStarted:Lio/ktor/events/EventDefinition;

    return-object v0
.end method

.method private final addDefaultTracing()V
    .locals 2

    .line 43
    invoke-static {}, Lio/ktor/server/routing/RoutingKt;->getLOGGER()Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lio/ktor/server/routing/Routing;->tracers:Ljava/util/List;

    sget-object v1, Lio/ktor/server/routing/Routing$addDefaultTracing$1;->INSTANCE:Lio/ktor/server/routing/Routing$addDefaultTracing$1;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private final executeResult(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lio/ktor/server/routing/Route;",
            "Lio/ktor/http/Parameters;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/server/routing/Routing$executeResult$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/server/routing/Routing$executeResult$1;

    iget v2, v1, Lio/ktor/server/routing/Routing$executeResult$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/server/routing/Routing$executeResult$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/server/routing/Routing$executeResult$1;->label:I

    move-object v0, v1

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/server/routing/Routing$executeResult$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2, v0}, Lio/ktor/server/routing/Routing$executeResult$1;-><init>(Lio/ktor/server/routing/Routing;Lkotlin/coroutines/Continuation;)V

    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v3, v1, Lio/ktor/server/routing/Routing$executeResult$1;->result:Ljava/lang/Object;

    .local v3, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 71
    iget v4, v1, Lio/ktor/server/routing/Routing$executeResult$1;->label:I

    packed-switch v4, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "$i$f$execute":I
    iget-object v4, v1, Lio/ktor/server/routing/Routing$executeResult$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/server/routing/RoutingApplicationCall;

    .local v4, "routingCall":Lio/ktor/server/routing/RoutingApplicationCall;
    iget-object v5, v1, Lio/ktor/server/routing/Routing$executeResult$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/server/routing/Routing;

    .local v5, "this":Lio/ktor/server/routing/Routing;
    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 99
    .end local v0    # "$i$f$execute":I
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 71
    .end local v4    # "routingCall":Lio/ktor/server/routing/RoutingApplicationCall;
    .end local v5    # "this":Lio/ktor/server/routing/Routing;
    :pswitch_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "this":Lio/ktor/server/routing/Routing;
    move-object/from16 v8, p2

    .local v8, "route":Lio/ktor/server/routing/Route;
    move-object/from16 v4, p1

    .local v4, "context":Lio/ktor/util/pipeline/PipelineContext;
    move-object/from16 v12, p3

    .line 76
    .local v12, "parameters":Lio/ktor/http/Parameters;
    invoke-virtual {v8}, Lio/ktor/server/routing/Route;->buildPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;

    move-result-object v13

    .line 77
    .local v13, "routingCallPipeline":Lio/ktor/server/application/ApplicationCallPipeline;
    nop

    .line 78
    move-object v6, v4

    .local v6, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v7, 0x0

    .line 167
    .local v7, "$i$f$getCall":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/ktor/server/application/ApplicationCall;

    .line 78
    .end local v6    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v7    # "$i$f$getCall":I
    invoke-interface {v9}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/request/ApplicationRequest;->getPipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v6

    check-cast v6, Lio/ktor/util/pipeline/Pipeline;

    .line 79
    .local v6, "first$iv":Lio/ktor/util/pipeline/Pipeline;
    invoke-virtual {v13}, Lio/ktor/server/application/ApplicationCallPipeline;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v7

    check-cast v7, Lio/ktor/util/pipeline/Pipeline;

    .line 77
    .local v7, "second$iv":Lio/ktor/util/pipeline/Pipeline;
    const/4 v9, 0x0

    .line 168
    .local v9, "$i$f$merge":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/Pipeline;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 169
    move-object v6, v7

    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {v7}, Lio/ktor/util/pipeline/Pipeline;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 172
    goto :goto_1

    .line 174
    :cond_2
    const/4 v10, 0x0

    .line 80
    .local v10, "$i$a$-merge-Routing$executeResult$receivePipeline$1":I
    new-instance v11, Lio/ktor/server/request/ApplicationReceivePipeline;

    invoke-virtual {v5}, Lio/ktor/server/routing/Routing;->getDevelopmentMode()Z

    move-result v14

    invoke-direct {v11, v14}, Lio/ktor/server/request/ApplicationReceivePipeline;-><init>(Z)V

    .line 174
    .end local v10    # "$i$a$-merge-Routing$executeResult$receivePipeline$1":I
    move-object v10, v11

    check-cast v10, Lio/ktor/util/pipeline/Pipeline;

    .local v10, "$this$merge_u24lambda_u242$iv":Lio/ktor/util/pipeline/Pipeline;
    const/4 v14, 0x0

    .line 175
    .local v14, "$i$a$-apply-Routing$merge$1$iv":I
    invoke-virtual {v10, v6}, Lio/ktor/util/pipeline/Pipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 176
    invoke-virtual {v10, v7}, Lio/ktor/util/pipeline/Pipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 177
    nop

    .line 174
    .end local v10    # "$this$merge_u24lambda_u242$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v14    # "$i$a$-apply-Routing$merge$1$iv":I
    check-cast v11, Lio/ktor/util/pipeline/Pipeline;

    move-object v6, v11

    .line 77
    .end local v6    # "first$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v7    # "second$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v9    # "$i$f$merge":I
    :goto_1
    move-object v10, v6

    check-cast v10, Lio/ktor/server/request/ApplicationReceivePipeline;

    .line 82
    .local v10, "receivePipeline":Lio/ktor/server/request/ApplicationReceivePipeline;
    nop

    .line 83
    move-object v6, v4

    .local v6, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v7, 0x0

    .line 178
    .local v7, "$i$f$getCall":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/ktor/server/application/ApplicationCall;

    .line 83
    .end local v6    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v7    # "$i$f$getCall":I
    invoke-interface {v9}, Lio/ktor/server/application/ApplicationCall;->getResponse()Lio/ktor/server/response/ApplicationResponse;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/response/ApplicationResponse;->getPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v6

    check-cast v6, Lio/ktor/util/pipeline/Pipeline;

    .line 84
    .local v6, "first$iv":Lio/ktor/util/pipeline/Pipeline;
    invoke-virtual {v13}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    check-cast v7, Lio/ktor/util/pipeline/Pipeline;

    .line 82
    .local v7, "second$iv":Lio/ktor/util/pipeline/Pipeline;
    const/4 v9, 0x0

    .line 179
    .restart local v9    # "$i$f$merge":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/Pipeline;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 180
    move-object v6, v7

    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual {v7}, Lio/ktor/util/pipeline/Pipeline;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 183
    goto :goto_2

    .line 185
    :cond_4
    const/4 v11, 0x0

    .line 85
    .local v11, "$i$a$-merge-Routing$executeResult$responsePipeline$1":I
    new-instance v14, Lio/ktor/server/response/ApplicationSendPipeline;

    invoke-virtual {v5}, Lio/ktor/server/routing/Routing;->getDevelopmentMode()Z

    move-result v15

    invoke-direct {v14, v15}, Lio/ktor/server/response/ApplicationSendPipeline;-><init>(Z)V

    .line 185
    .end local v11    # "$i$a$-merge-Routing$executeResult$responsePipeline$1":I
    move-object v11, v14

    check-cast v11, Lio/ktor/util/pipeline/Pipeline;

    .local v11, "$this$merge_u24lambda_u242$iv":Lio/ktor/util/pipeline/Pipeline;
    const/4 v15, 0x0

    .line 186
    .local v15, "$i$a$-apply-Routing$merge$1$iv":I
    invoke-virtual {v11, v6}, Lio/ktor/util/pipeline/Pipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 187
    invoke-virtual {v11, v7}, Lio/ktor/util/pipeline/Pipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 188
    nop

    .line 185
    .end local v11    # "$this$merge_u24lambda_u242$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v15    # "$i$a$-apply-Routing$merge$1$iv":I
    check-cast v14, Lio/ktor/util/pipeline/Pipeline;

    move-object v6, v14

    .line 82
    .end local v6    # "first$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v7    # "second$iv":Lio/ktor/util/pipeline/Pipeline;
    .end local v9    # "$i$f$merge":I
    :goto_2
    move-object v11, v6

    check-cast v11, Lio/ktor/server/response/ApplicationSendPipeline;

    .line 87
    .local v11, "responsePipeline":Lio/ktor/server/response/ApplicationSendPipeline;
    new-instance v14, Lio/ktor/server/routing/RoutingApplicationCall;

    .line 88
    move-object v6, v4

    .local v6, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v7, 0x0

    .line 189
    .local v7, "$i$f$getCall":I
    invoke-virtual {v6}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Lio/ktor/server/application/ApplicationCall;

    .line 89
    .end local v6    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v7    # "$i$f$getCall":I
    nop

    .line 90
    .end local v8    # "route":Lio/ktor/server/routing/Route;
    invoke-virtual {v4}, Lio/ktor/util/pipeline/PipelineContext;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    .line 91
    .end local v4    # "context":Lio/ktor/util/pipeline/PipelineContext;
    nop

    .line 92
    .end local v10    # "receivePipeline":Lio/ktor/server/request/ApplicationReceivePipeline;
    nop

    .line 93
    .end local v11    # "responsePipeline":Lio/ktor/server/response/ApplicationSendPipeline;
    nop

    .line 87
    .end local v12    # "parameters":Lio/ktor/http/Parameters;
    move-object v6, v14

    invoke-direct/range {v6 .. v12}, Lio/ktor/server/routing/RoutingApplicationCall;-><init>(Lio/ktor/server/application/ApplicationCall;Lio/ktor/server/routing/Route;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/request/ApplicationReceivePipeline;Lio/ktor/server/response/ApplicationSendPipeline;Lio/ktor/http/Parameters;)V

    move-object v4, v14

    .line 95
    .local v4, "routingCall":Lio/ktor/server/routing/RoutingApplicationCall;
    iget-object v6, v5, Lio/ktor/server/routing/Routing;->application:Lio/ktor/server/application/Application;

    invoke-virtual {v6}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/application/ApplicationEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v6

    sget-object v7, Lio/ktor/server/routing/Routing;->RoutingCallStarted:Lio/ktor/events/EventDefinition;

    invoke-virtual {v6, v7, v4}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    .line 96
    nop

    .line 97
    :try_start_1
    move-object v6, v13

    check-cast v6, Lio/ktor/util/pipeline/Pipeline;

    .end local v13    # "routingCallPipeline":Lio/ktor/server/application/ApplicationCallPipeline;
    .local v6, "$this$execute$iv":Lio/ktor/util/pipeline/Pipeline;
    const/4 v7, 0x0

    .line 190
    .local v7, "$i$f$execute":I
    new-instance v8, Lio/ktor/server/routing/Routing$executeResult$$inlined$execute$1;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v4, v9}, Lio/ktor/server/routing/Routing$executeResult$$inlined$execute$1;-><init>(Lio/ktor/util/pipeline/Pipeline;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iput-object v5, v1, Lio/ktor/server/routing/Routing$executeResult$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/server/routing/Routing$executeResult$1;->L$1:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lio/ktor/server/routing/Routing$executeResult$1;->label:I

    invoke-static {v8, v1}, Lio/ktor/util/debug/ContextUtilsKt;->initContextInDebugMode(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "$this$execute$iv":Lio/ktor/util/pipeline/Pipeline;
    if-ne v8, v0, :cond_5

    .line 71
    return-object v0

    .line 190
    :cond_5
    move v0, v7

    .line 193
    .end local v7    # "$i$f$execute":I
    .restart local v0    # "$i$f$execute":I
    :goto_3
    nop

    .line 99
    .end local v0    # "$i$f$execute":I
    iget-object v0, v5, Lio/ktor/server/routing/Routing;->application:Lio/ktor/server/application/Application;

    invoke-virtual {v0}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v0

    sget-object v6, Lio/ktor/server/routing/Routing;->RoutingCallFinished:Lio/ktor/events/EventDefinition;

    invoke-virtual {v0, v6, v4}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    .line 100
    .end local v4    # "routingCall":Lio/ktor/server/routing/RoutingApplicationCall;
    .end local v5    # "this":Lio/ktor/server/routing/Routing;
    move-object v0, v5

    .line 101
    .local v0, "this":Lio/ktor/server/routing/Routing;
    .restart local v4    # "routingCall":Lio/ktor/server/routing/RoutingApplicationCall;
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v5

    .line 99
    .end local v0    # "this":Lio/ktor/server/routing/Routing;
    .restart local v5    # "this":Lio/ktor/server/routing/Routing;
    :goto_4
    iget-object v6, v5, Lio/ktor/server/routing/Routing;->application:Lio/ktor/server/application/Application;

    invoke-virtual {v6}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v6

    invoke-interface {v6}, Lio/ktor/server/application/ApplicationEnvironment;->getMonitor()Lio/ktor/events/Events;

    move-result-object v6

    sget-object v7, Lio/ktor/server/routing/Routing;->RoutingCallFinished:Lio/ktor/events/EventDefinition;

    invoke-virtual {v6, v7, v4}, Lio/ktor/events/Events;->raise(Lio/ktor/events/EventDefinition;Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final merge(Lio/ktor/util/pipeline/Pipeline;Lio/ktor/util/pipeline/Pipeline;Lkotlin/jvm/functions/Function0;)Lio/ktor/util/pipeline/Pipeline;
    .locals 4
    .param p1, "first"    # Lio/ktor/util/pipeline/Pipeline;
    .param p2, "second"    # Lio/ktor/util/pipeline/Pipeline;
    .param p3, "build"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Subject:",
            "Ljava/lang/Object;",
            "Context:",
            "Ljava/lang/Object;",
            "P:",
            "Lio/ktor/util/pipeline/Pipeline<",
            "TSubject;TContext;>;>(TP;TP;",
            "Lkotlin/jvm/functions/Function0<",
            "+TP;>;)TP;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    .local v0, "$i$f$merge":I
    invoke-virtual {p1}, Lio/ktor/util/pipeline/Pipeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    return-object p2

    .line 111
    :cond_0
    invoke-virtual {p2}, Lio/ktor/util/pipeline/Pipeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    return-object p1

    .line 114
    :cond_1
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/ktor/util/pipeline/Pipeline;

    .local v2, "$this$merge_u24lambda_u242":Lio/ktor/util/pipeline/Pipeline;
    const/4 v3, 0x0

    .line 115
    .local v3, "$i$a$-apply-Routing$merge$1":I
    invoke-virtual {v2, p1}, Lio/ktor/util/pipeline/Pipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 116
    invoke-virtual {v2, p2}, Lio/ktor/util/pipeline/Pipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 117
    nop

    .line 114
    .end local v2    # "$this$merge_u24lambda_u242":Lio/ktor/util/pipeline/Pipeline;
    .end local v3    # "$i$a$-apply-Routing$merge$1":I
    check-cast v1, Lio/ktor/util/pipeline/Pipeline;

    return-object v1
.end method


# virtual methods
.method public final getApplication()Lio/ktor/server/application/Application;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/ktor/server/routing/Routing;->application:Lio/ktor/server/application/Application;

    return-object v0
.end method

.method public final interceptor(Lio/ktor/util/pipeline/PipelineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1, "context"    # Lio/ktor/util/pipeline/PipelineContext;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 61
    new-instance v0, Lio/ktor/server/routing/RoutingResolveContext;

    move-object v1, p0

    check-cast v1, Lio/ktor/server/routing/Route;

    move-object v2, p1

    .local v2, "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 165
    .local v3, "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 61
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    iget-object v2, p0, Lio/ktor/server/routing/Routing;->tracers:Ljava/util/List;

    invoke-direct {v0, v1, v4, v2}, Lio/ktor/server/routing/RoutingResolveContext;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/application/ApplicationCall;Ljava/util/List;)V

    .line 62
    .local v0, "resolveContext":Lio/ktor/server/routing/RoutingResolveContext;
    invoke-virtual {v0}, Lio/ktor/server/routing/RoutingResolveContext;->resolve()Lio/ktor/server/routing/RoutingResolveResult;

    move-result-object v1

    .line 63
    .local v1, "resolveResult":Lio/ktor/server/routing/RoutingResolveResult;
    instance-of v2, v1, Lio/ktor/server/routing/RoutingResolveResult$Success;

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v1}, Lio/ktor/server/routing/RoutingResolveResult;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v2

    invoke-virtual {v1}, Lio/ktor/server/routing/RoutingResolveResult;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3, p2}, Lio/ktor/server/routing/Routing;->executeResult(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    return-object v2

    :cond_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 69
    return-object v2

    .line 66
    :cond_1
    instance-of v2, v1, Lio/ktor/server/routing/RoutingResolveResult$Failure;

    if-eqz v2, :cond_2

    .line 67
    move-object v2, p1

    .restart local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    const/4 v3, 0x0

    .line 166
    .restart local v3    # "$i$f$getCall":I
    invoke-virtual {v2}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/server/application/ApplicationCall;

    .line 67
    .end local v2    # "$this$call$iv":Lio/ktor/util/pipeline/PipelineContext;
    .end local v3    # "$i$f$getCall":I
    invoke-interface {v4}, Lio/ktor/server/application/ApplicationCall;->getAttributes()Lio/ktor/util/Attributes;

    move-result-object v2

    invoke-static {}, Lio/ktor/server/routing/RoutingKt;->getRoutingFailureStatusCode()Lio/ktor/util/AttributeKey;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lio/ktor/server/routing/RoutingResolveResult$Failure;

    invoke-virtual {v4}, Lio/ktor/server/routing/RoutingResolveResult$Failure;->getErrorStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/ktor/util/Attributes;->put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V

    .line 69
    .end local v1    # "resolveResult":Lio/ktor/server/routing/RoutingResolveResult;
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final trace(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/RoutingResolveTrace;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lio/ktor/server/routing/Routing;->tracers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method
