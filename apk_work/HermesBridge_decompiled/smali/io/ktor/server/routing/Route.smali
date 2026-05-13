.class public Lio/ktor/server/routing/Route;
.super Lio/ktor/server/application/ApplicationCallPipeline;
.source "Route.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoute.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Route.kt\nio/ktor/server/routing/Route\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,152:1\n288#2,2:153\n1855#2,2:155\n*S KotlinDebug\n*F\n+ 1 Route.kt\nio/ktor/server/routing/Route\n*L\n60#1:153,2\n93#1:155,2\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0017\u0018\u00002\u00020\u0001B%\u0008\u0017\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B-\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\"\u001a\u00020\u0017H\u0016J\r\u0010#\u001a\u00020\u0001H\u0000\u00a2\u0006\u0002\u0008$J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004JI\u0010&\u001a\u00020\u001729\u0010\'\u001a5\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0015\u00a2\u0006\u0002\u0008\u001b\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020\u0017H\u0002J\"\u0010*\u001a\u00020\u00172\u0017\u0010+\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00170,\u00a2\u0006\u0002\u0008\u001bH\u0086\u0002J\u0008\u0010-\u001a\u00020.H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00000\rX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013RV\u0010\u0014\u001a;\u00127\u00125\u0008\u0001\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016\u0012\u0004\u0012\u00020\u0017\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u0019\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0015\u00a2\u0006\u0002\u0008\u001b0\rX\u0080\u0004\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u000f\u001a\u0004\u0008\u001d\u0010\u0013R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006/"
    }
    d2 = {
        "Lio/ktor/server/routing/Route;",
        "Lio/ktor/server/application/ApplicationCallPipeline;",
        "parent",
        "selector",
        "Lio/ktor/server/routing/RouteSelector;",
        "environment",
        "Lio/ktor/server/application/ApplicationEnvironment;",
        "(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/application/ApplicationEnvironment;)V",
        "developmentMode",
        "",
        "(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V",
        "cachedPipeline",
        "childList",
        "",
        "getChildList$annotations",
        "()V",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "handlers",
        "Lkotlin/Function3;",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "",
        "Lio/ktor/server/application/ApplicationCall;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getHandlers$ktor_server_core$annotations",
        "getHandlers$ktor_server_core",
        "getParent",
        "()Lio/ktor/server/routing/Route;",
        "getSelector",
        "()Lio/ktor/server/routing/RouteSelector;",
        "afterIntercepted",
        "buildPipeline",
        "buildPipeline$ktor_server_core",
        "createChild",
        "handle",
        "handler",
        "(Lkotlin/jvm/functions/Function3;)V",
        "invalidateCachesRecursively",
        "invoke",
        "body",
        "Lkotlin/Function1;",
        "toString",
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


# instance fields
.field private cachedPipeline:Lio/ktor/server/application/ApplicationCallPipeline;

.field private final childList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/routing/Route;",
            ">;"
        }
    .end annotation
.end field

.field private final handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parent:Lio/ktor/server/routing/Route;

.field private final selector:Lio/ktor/server/routing/RouteSelector;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/application/ApplicationEnvironment;)V
    .locals 1
    .param p1, "parent"    # Lio/ktor/server/routing/Route;
    .param p2, "selector"    # Lio/ktor/server/routing/RouteSelector;
    .param p3, "environment"    # Lio/ktor/server/application/ApplicationEnvironment;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Please use constructor with developmentMode parameter"
    .end annotation

    const-string v0, "selector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lio/ktor/server/routing/Route;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/application/ApplicationEnvironment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 37
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 40
    const/4 p3, 0x0

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/routing/Route;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;Lio/ktor/server/application/ApplicationEnvironment;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V
    .locals 1
    .param p1, "parent"    # Lio/ktor/server/routing/Route;
    .param p2, "selector"    # Lio/ktor/server/routing/RouteSelector;
    .param p3, "developmentMode"    # Z
    .param p4, "environment"    # Lio/ktor/server/application/ApplicationEnvironment;

    const-string v0, "selector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p3, p4}, Lio/ktor/server/application/ApplicationCallPipeline;-><init>(ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 24
    iput-object p1, p0, Lio/ktor/server/routing/Route;->parent:Lio/ktor/server/routing/Route;

    .line 25
    iput-object p2, p0, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/routing/Route;->childList:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/routing/Route;->handlers:Ljava/util/List;

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 26
    const/4 p3, 0x0

    .line 23
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 27
    const/4 p4, 0x0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/server/routing/Route;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 135
    return-void
.end method

.method private static synthetic getChildList$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getHandlers$ktor_server_core$annotations()V
    .locals 0

    return-void
.end method

.method private final invalidateCachesRecursively()V
    .locals 6

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/server/routing/Route;->cachedPipeline:Lio/ktor/server/application/ApplicationCallPipeline;

    .line 93
    iget-object v0, p0, Lio/ktor/server/routing/Route;->childList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 155
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/routing/Route;

    .local v4, "it":Lio/ktor/server/routing/Route;
    const/4 v5, 0x0

    .line 93
    .local v5, "$i$a$-forEach-Route$invalidateCachesRecursively$1":I
    invoke-direct {v4}, Lio/ktor/server/routing/Route;->invalidateCachesRecursively()V

    .line 155
    .end local v4    # "it":Lio/ktor/server/routing/Route;
    .end local v5    # "$i$a$-forEach-Route$invalidateCachesRecursively$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 156
    :cond_0
    nop

    .line 94
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method


# virtual methods
.method public afterIntercepted()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lio/ktor/server/routing/Route;->invalidateCachesRecursively()V

    .line 89
    return-void
.end method

.method public final buildPipeline$ktor_server_core()Lio/ktor/server/application/ApplicationCallPipeline;
    .locals 11

    .line 96
    iget-object v0, p0, Lio/ktor/server/routing/Route;->cachedPipeline:Lio/ktor/server/application/ApplicationCallPipeline;

    if-nez v0, :cond_3

    move-object v0, p0

    check-cast v0, Lio/ktor/server/routing/Route;

    .local v0, "$this$buildPipeline_u24lambda_u242":Lio/ktor/server/routing/Route;
    const/4 v1, 0x0

    .line 97
    .local v1, "$i$a$-run-Route$buildPipeline$1":I
    move-object v2, v0

    .line 98
    .local v2, "current":Lio/ktor/server/routing/Route;
    new-instance v3, Lio/ktor/server/application/ApplicationCallPipeline;

    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->getDevelopmentMode()Z

    move-result v4

    invoke-static {v0}, Lio/ktor/server/routing/RoutingKt;->getApplication(Lio/ktor/server/routing/Route;)Lio/ktor/server/application/Application;

    move-result-object v5

    invoke-virtual {v5}, Lio/ktor/server/application/Application;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lio/ktor/server/application/ApplicationCallPipeline;-><init>(ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 99
    .local v3, "pipeline":Lio/ktor/server/application/ApplicationCallPipeline;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 100
    .local v4, "routePipelines":Ljava/util/List;
    :goto_0
    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v2, v2, Lio/ktor/server/routing/Route;->parent:Lio/ktor/server/routing/Route;

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    .local v5, "index":I
    :goto_1
    const/4 v6, -0x1

    if-ge v6, v5, :cond_1

    .line 106
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/ktor/server/application/ApplicationCallPipeline;

    .line 107
    .local v6, "routePipeline":Lio/ktor/server/application/ApplicationCallPipeline;
    move-object v7, v6

    check-cast v7, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v3, v7}, Lio/ktor/server/application/ApplicationCallPipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 108
    invoke-virtual {v3}, Lio/ktor/server/application/ApplicationCallPipeline;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v7

    invoke-virtual {v6}, Lio/ktor/server/application/ApplicationCallPipeline;->getReceivePipeline()Lio/ktor/server/request/ApplicationReceivePipeline;

    move-result-object v8

    check-cast v8, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v7, v8}, Lio/ktor/server/request/ApplicationReceivePipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 109
    invoke-virtual {v3}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v7

    invoke-virtual {v6}, Lio/ktor/server/application/ApplicationCallPipeline;->getSendPipeline()Lio/ktor/server/response/ApplicationSendPipeline;

    move-result-object v8

    check-cast v8, Lio/ktor/util/pipeline/Pipeline;

    invoke-virtual {v7, v8}, Lio/ktor/server/response/ApplicationSendPipeline;->merge(Lio/ktor/util/pipeline/Pipeline;)V

    .line 105
    .end local v6    # "routePipeline":Lio/ktor/server/application/ApplicationCallPipeline;
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 112
    .end local v5    # "index":I
    :cond_1
    iget-object v5, v0, Lio/ktor/server/routing/Route;->handlers:Ljava/util/List;

    .line 113
    .local v5, "handlers":Ljava/util/List;
    const/4 v6, 0x0

    .local v6, "index":I
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v6, v7, :cond_2

    .line 114
    :goto_2
    sget-object v8, Lio/ktor/server/application/ApplicationCallPipeline;->ApplicationPhase:Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;

    invoke-virtual {v8}, Lio/ktor/server/application/ApplicationCallPipeline$ApplicationPhase;->getCall()Lio/ktor/util/pipeline/PipelinePhase;

    move-result-object v8

    new-instance v9, Lio/ktor/server/routing/Route$buildPipeline$1$1;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v6, v10}, Lio/ktor/server/routing/Route$buildPipeline$1$1;-><init>(Ljava/util/List;ILkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function3;

    invoke-virtual {v3, v8, v9}, Lio/ktor/server/application/ApplicationCallPipeline;->intercept(Lio/ktor/util/pipeline/PipelinePhase;Lkotlin/jvm/functions/Function3;)V

    .line 113
    if-eq v6, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    .end local v6    # "index":I
    :cond_2
    iput-object v3, v0, Lio/ktor/server/routing/Route;->cachedPipeline:Lio/ktor/server/application/ApplicationCallPipeline;

    .line 120
    nop

    .line 96
    .end local v0    # "$this$buildPipeline_u24lambda_u242":Lio/ktor/server/routing/Route;
    .end local v1    # "$i$a$-run-Route$buildPipeline$1":I
    .end local v2    # "current":Lio/ktor/server/routing/Route;
    .end local v3    # "pipeline":Lio/ktor/server/application/ApplicationCallPipeline;
    .end local v4    # "routePipelines":Ljava/util/List;
    .end local v5    # "handlers":Ljava/util/List;
    move-object v0, v3

    .line 121
    :cond_3
    return-object v0
.end method

.method public final createChild(Lio/ktor/server/routing/RouteSelector;)Lio/ktor/server/routing/Route;
    .locals 7
    .param p1, "selector"    # Lio/ktor/server/routing/RouteSelector;

    const-string v0, "selector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lio/ktor/server/routing/Route;->childList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 153
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lio/ktor/server/routing/Route;

    .local v4, "it":Lio/ktor/server/routing/Route;
    const/4 v5, 0x0

    .line 60
    .local v5, "$i$a$-firstOrNull-Route$createChild$existingEntry$1":I
    iget-object v6, v4, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 153
    .end local v4    # "it":Lio/ktor/server/routing/Route;
    .end local v5    # "$i$a$-firstOrNull-Route$createChild$existingEntry$1":I
    if-eqz v4, :cond_0

    goto :goto_0

    .line 154
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    .line 60
    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_0
    move-object v0, v3

    check-cast v0, Lio/ktor/server/routing/Route;

    .line 61
    .local v0, "existingEntry":Lio/ktor/server/routing/Route;
    if-nez v0, :cond_2

    .line 62
    new-instance v1, Lio/ktor/server/routing/Route;

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getDevelopmentMode()Z

    move-result v2

    invoke-virtual {p0}, Lio/ktor/server/routing/Route;->getEnvironment()Lio/ktor/server/application/ApplicationEnvironment;

    move-result-object v3

    invoke-direct {v1, p0, p1, v2, v3}, Lio/ktor/server/routing/Route;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/server/routing/RouteSelector;ZLio/ktor/server/application/ApplicationEnvironment;)V

    .line 63
    .local v1, "entry":Lio/ktor/server/routing/Route;
    iget-object v2, p0, Lio/ktor/server/routing/Route;->childList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    return-object v1

    .line 66
    .end local v1    # "entry":Lio/ktor/server/routing/Route;
    :cond_2
    return-object v0
.end method

.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/Route;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lio/ktor/server/routing/Route;->childList:Ljava/util/List;

    return-object v0
.end method

.method public final getHandlers$ktor_server_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;",
            "Lkotlin/Unit;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/ktor/server/routing/Route;->handlers:Ljava/util/List;

    return-object v0
.end method

.method public final getParent()Lio/ktor/server/routing/Route;
    .locals 1

    .line 24
    iget-object v0, p0, Lio/ktor/server/routing/Route;->parent:Lio/ktor/server/routing/Route;

    return-object v0
.end method

.method public final getSelector()Lio/ktor/server/routing/RouteSelector;
    .locals 1

    .line 25
    iget-object v0, p0, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    return-object v0
.end method

.method public final handle(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .param p1, "handler"    # Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lkotlin/Unit;",
            "Lio/ktor/server/application/ApplicationCall;",
            ">;-",
            "Lkotlin/Unit;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lio/ktor/server/routing/Route;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/server/routing/Route;->cachedPipeline:Lio/ktor/server/application/ApplicationCallPipeline;

    .line 82
    return-void
.end method

.method public final invoke(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "body"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/Route;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 124
    iget-object v0, p0, Lio/ktor/server/routing/Route;->parent:Lio/ktor/server/routing/Route;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/server/routing/Route;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 125
    .local v0, "parentRoute":Ljava/lang/String;
    :goto_0
    const/16 v2, 0x2f

    if-nez v0, :cond_2

    iget-object v1, p0, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    .line 126
    instance-of v1, v1, Lio/ktor/server/routing/TrailingSlashRouteSelector;

    if-eqz v1, :cond_1

    const-string v1, "/"

    move-object v0, v1

    goto :goto_2

    .line 127
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 129
    :cond_2
    iget-object v3, p0, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    .line 130
    instance-of v3, v3, Lio/ktor/server/routing/TrailingSlashRouteSelector;

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v2, v5, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_2

    .line 131
    :cond_4
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3, v2, v5, v4, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lio/ktor/server/routing/Route;->selector:Lio/ktor/server/routing/RouteSelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 124
    .end local v0    # "parentRoute":Ljava/lang/String;
    :goto_2
    return-object v0
.end method
