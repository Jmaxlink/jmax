.class public final Lio/ktor/server/routing/RoutingResolveContext;
.super Ljava/lang/Object;
.source "RoutingResolveContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoutingResolveContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoutingResolveContext.kt\nio/ktor/server/routing/RoutingResolveContext\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,245:1\n1099#2,3:246\n1#3:249\n1855#4,2:250\n1774#4,4:252\n1774#4,4:256\n1726#4,3:260\n*S KotlinDebug\n*F\n+ 1 RoutingResolveContext.kt\nio/ktor/server/routing/RoutingResolveContext\n*L\n57#1:246,3\n88#1:250,2\n224#1:252,4\n225#1:256,4\n235#1:260,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0018\u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00080\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010!\u001a\u00020\"H\u0002J8\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u00112\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u00192\u0006\u0010(\u001a\u00020$H\u0002J\u0016\u0010)\u001a\u00020\u00132\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0007H\u0002J\u0016\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u00072\u0006\u0010,\u001a\u00020\u001dH\u0002J\u0006\u0010-\u001a\u00020\"J(\u0010.\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u000f2\u0016\u0010\'\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019H\u0002R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0006\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "",
        "routing",
        "Lio/ktor/server/routing/Route;",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "tracers",
        "",
        "Lkotlin/Function1;",
        "Lio/ktor/server/routing/RoutingResolveTrace;",
        "",
        "(Lio/ktor/server/routing/Route;Lio/ktor/server/application/ApplicationCall;Ljava/util/List;)V",
        "getCall",
        "()Lio/ktor/server/application/ApplicationCall;",
        "failedEvaluation",
        "Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;",
        "failedEvaluationDepth",
        "",
        "hasTrailingSlash",
        "",
        "getHasTrailingSlash",
        "()Z",
        "resolveResult",
        "Ljava/util/ArrayList;",
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
        "Lkotlin/collections/ArrayList;",
        "getRouting",
        "()Lio/ktor/server/routing/Route;",
        "segments",
        "",
        "getSegments",
        "()Ljava/util/List;",
        "trace",
        "findBestRoute",
        "Lio/ktor/server/routing/RoutingResolveResult;",
        "handleRoute",
        "",
        "entry",
        "segmentIndex",
        "trait",
        "matchedQuality",
        "isBetterResolve",
        "new",
        "parse",
        "path",
        "resolve",
        "updateFailedEvaluation",
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
.field private final call:Lio/ktor/server/application/ApplicationCall;

.field private failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

.field private failedEvaluationDepth:I

.field private final hasTrailingSlash:Z

.field private final resolveResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;"
        }
    .end annotation
.end field

.field private final routing:Lio/ktor/server/routing/Route;

.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trace:Lio/ktor/server/routing/RoutingResolveTrace;

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
.method public constructor <init>(Lio/ktor/server/routing/Route;Lio/ktor/server/application/ApplicationCall;Ljava/util/List;)V
    .locals 5
    .param p1, "routing"    # Lio/ktor/server/routing/Route;
    .param p2, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p3, "tracers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/server/routing/RoutingResolveTrace;",
            "Lkotlin/Unit;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "routing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/ktor/server/routing/RoutingResolveContext;->routing:Lio/ktor/server/routing/Route;

    .line 23
    iput-object p2, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    .line 24
    iput-object p3, p0, Lio/ktor/server/routing/RoutingResolveContext;->tracers:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->path(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->hasTrailingSlash:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->resolveResult:Ljava/util/ArrayList;

    .line 40
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedPath()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    .line 43
    nop

    .line 44
    nop

    .line 45
    :try_start_0
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v0}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->path(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/server/routing/RoutingResolveContext;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->segments:Ljava/util/List;

    .line 46
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->tracers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    new-instance v4, Lio/ktor/server/routing/RoutingResolveTrace;

    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveContext;->segments:Ljava/util/List;

    invoke-direct {v4, v0, v1}, Lio/ktor/server/routing/RoutingResolveTrace;-><init>(Lio/ktor/server/application/ApplicationCall;Ljava/util/List;)V

    goto :goto_0

    :goto_1
    iput-object v4, p0, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;
    :try_end_0
    .catch Lio/ktor/http/URLDecodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    nop

    .line 21
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "cause":Lio/ktor/http/URLDecodeException;
    new-instance v1, Lio/ktor/server/plugins/BadRequestException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url decode failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-interface {v3}, Lio/ktor/server/application/ApplicationCall;->getRequest()Lio/ktor/server/request/ApplicationRequest;

    move-result-object v3

    invoke-static {v3}, Lio/ktor/server/request/ApplicationRequestPropertiesKt;->getUri(Lio/ktor/server/request/ApplicationRequest;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Lio/ktor/server/plugins/BadRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final findBestRoute()Lio/ktor/server/routing/RoutingResolveResult;
    .locals 13

    .line 171
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->resolveResult:Ljava/util/ArrayList;

    .line 173
    .local v0, "finalResolve":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    new-instance v1, Lio/ktor/server/routing/RoutingResolveResult$Failure;

    .line 175
    iget-object v2, p0, Lio/ktor/server/routing/RoutingResolveContext;->routing:Lio/ktor/server/routing/Route;

    .line 176
    nop

    .line 177
    iget-object v3, p0, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->getFailureStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    sget-object v3, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v3}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v3

    .line 174
    :cond_1
    const-string v4, "No matched subtrees found"

    invoke-direct {v1, v2, v4, v3}, Lio/ktor/server/routing/RoutingResolveResult$Failure;-><init>(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    check-cast v1, Lio/ktor/server/routing/RoutingResolveResult;

    return-object v1

    .line 181
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v1

    .line 182
    .local v1, "parameters":Lio/ktor/http/ParametersBuilder;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 184
    .local v4, "quality":D
    const/4 v6, 0x0

    .local v6, "index":I
    move-object v7, v0

    check-cast v7, Ljava/util/List;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-gt v6, v7, :cond_5

    .line 185
    :goto_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "finalResolve[index]"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lio/ktor/server/routing/RoutingResolveResult$Success;

    .line 186
    .local v8, "part":Lio/ktor/server/routing/RoutingResolveResult$Success;
    invoke-virtual {v8}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v9

    check-cast v9, Lio/ktor/util/StringValues;

    invoke-interface {v1, v9}, Lio/ktor/http/ParametersBuilder;->appendAll(Lio/ktor/util/StringValues;)V

    .line 188
    invoke-virtual {v8}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v9

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpg-double v9, v9, v11

    if-nez v9, :cond_3

    move v9, v3

    goto :goto_1

    :cond_3
    move v9, v2

    :goto_1
    if-eqz v9, :cond_4

    .line 189
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    .line 190
    :cond_4
    invoke-virtual {v8}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v9

    .line 188
    :goto_2
    nop

    .line 192
    .local v9, "partQuality":D
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 184
    .end local v8    # "part":Lio/ktor/server/routing/RoutingResolveResult$Success;
    .end local v9    # "partQuality":D
    if-eq v6, v7, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 195
    .end local v6    # "index":I
    :cond_5
    new-instance v2, Lio/ktor/server/routing/RoutingResolveResult$Success;

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/server/routing/RoutingResolveResult$Success;

    invoke-virtual {v3}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v3

    invoke-interface {v1}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v6

    invoke-direct {v2, v3, v6, v4, v5}, Lio/ktor/server/routing/RoutingResolveResult$Success;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;D)V

    check-cast v2, Lio/ktor/server/routing/RoutingResolveResult;

    return-object v2
.end method

.method private final handleRoute(Lio/ktor/server/routing/Route;ILjava/util/ArrayList;D)D
    .locals 21
    .param p1, "entry"    # Lio/ktor/server/routing/Route;
    .param p2, "segmentIndex"    # I
    .param p3, "trait"    # Ljava/util/ArrayList;
    .param p4, "matchedQuality"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/Route;",
            "I",
            "Ljava/util/ArrayList<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;D)D"
        }
    .end annotation

    .line 98
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/Route;->getSelector()Lio/ktor/server/routing/RouteSelector;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lio/ktor/server/routing/RouteSelector;->evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v10

    .line 100
    .local v10, "evaluation":Lio/ktor/server/routing/RouteSelectorEvaluation;
    instance-of v0, v10, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    const-wide v11, -0x10000000000001L

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, v6, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v0, :cond_0

    .line 102
    nop

    .line 103
    nop

    .line 104
    new-instance v1, Lio/ktor/server/routing/RoutingResolveResult$Failure;

    move-object v2, v10

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->getFailureStatusCode()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    const-string v3, "Selector didn\'t match"

    invoke-direct {v1, v7, v3, v2}, Lio/ktor/server/routing/RoutingResolveResult$Failure;-><init>(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    check-cast v1, Lio/ktor/server/routing/RoutingResolveResult;

    .line 101
    invoke-virtual {v0, v7, v8, v1}, Lio/ktor/server/routing/RoutingResolveTrace;->skip(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V

    .line 106
    :cond_0
    iget-object v0, v6, Lio/ktor/server/routing/RoutingResolveContext;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v8, v0, :cond_1

    .line 107
    move-object v0, v10

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    invoke-direct {v6, v0, v9}, Lio/ktor/server/routing/RoutingResolveContext;->updateFailedEvaluation(Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;Ljava/util/ArrayList;)V

    .line 109
    :cond_1
    return-wide v11

    .line 112
    :cond_2
    instance-of v0, v10, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    if-eqz v0, :cond_11

    .line 114
    move-object v0, v10

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 115
    move-object v0, v10

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v2

    cmpg-double v0, v2, p4

    if-gez v0, :cond_5

    .line 117
    iget-object v0, v6, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v0, :cond_4

    .line 118
    nop

    .line 119
    nop

    .line 120
    new-instance v1, Lio/ktor/server/routing/RoutingResolveResult$Failure;

    sget-object v2, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    const-string v3, "Better match was already found"

    invoke-direct {v1, v7, v3, v2}, Lio/ktor/server/routing/RoutingResolveResult$Failure;-><init>(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    check-cast v1, Lio/ktor/server/routing/RoutingResolveResult;

    .line 117
    invoke-virtual {v0, v7, v8, v1}, Lio/ktor/server/routing/RoutingResolveTrace;->skip(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V

    .line 122
    :cond_4
    return-wide v11

    .line 125
    :cond_5
    new-instance v0, Lio/ktor/server/routing/RoutingResolveResult$Success;

    move-object v2, v10

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getParameters()Lio/ktor/http/Parameters;

    move-result-object v2

    move-object v3, v10

    check-cast v3, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v3

    invoke-direct {v0, v7, v2, v3, v4}, Lio/ktor/server/routing/RoutingResolveResult$Success;-><init>(Lio/ktor/server/routing/Route;Lio/ktor/http/Parameters;D)V

    move-object v13, v0

    .line 126
    .local v13, "result":Lio/ktor/server/routing/RoutingResolveResult$Success;
    move-object v0, v10

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getSegmentIncrement()I

    move-result v0

    add-int v14, v8, v0

    .line 128
    .local v14, "newIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/Route;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v6, Lio/ktor/server/routing/RoutingResolveContext;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v14, v0, :cond_7

    .line 129
    iget-object v0, v6, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v0, :cond_6

    .line 130
    nop

    .line 131
    nop

    .line 132
    new-instance v1, Lio/ktor/server/routing/RoutingResolveResult$Failure;

    sget-object v2, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode$Companion;->getNotFound()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    const-string v3, "Not all segments matched"

    invoke-direct {v1, v7, v3, v2}, Lio/ktor/server/routing/RoutingResolveResult$Failure;-><init>(Lio/ktor/server/routing/Route;Ljava/lang/String;Lio/ktor/http/HttpStatusCode;)V

    check-cast v1, Lio/ktor/server/routing/RoutingResolveResult;

    .line 129
    invoke-virtual {v0, v7, v14, v1}, Lio/ktor/server/routing/RoutingResolveTrace;->skip(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V

    .line 135
    :cond_6
    return-wide v11

    .line 138
    :cond_7
    iget-object v0, v6, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7, v14}, Lio/ktor/server/routing/RoutingResolveTrace;->begin(Lio/ktor/server/routing/Route;I)V

    .line 139
    :cond_8
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/Route;->getHandlers$ktor_server_core()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    move v15, v0

    .line 142
    .local v15, "hasHandlers":Z
    const-wide v0, -0x10000000000001L

    .line 144
    .local v0, "bestSucceedChildQuality":D
    if-eqz v15, :cond_b

    iget-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->segments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v14, v2, :cond_b

    .line 145
    iget-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->resolveResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v9

    check-cast v2, Ljava/util/List;

    invoke-direct {v6, v2}, Lio/ktor/server/routing/RoutingResolveContext;->isBetterResolve(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 146
    :cond_9
    move-object v2, v10

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v0

    .line 147
    iget-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->resolveResult:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->resolveResult:Ljava/util/ArrayList;

    move-object v3, v9

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 149
    const/4 v2, 0x0

    iput-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    .line 152
    :cond_a
    iget-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v2, :cond_b

    move-object v3, v9

    check-cast v3, Ljava/util/List;

    invoke-virtual {v2, v3}, Lio/ktor/server/routing/RoutingResolveTrace;->addCandidate(Ljava/util/List;)V

    .line 156
    :cond_b
    const/4 v2, 0x0

    .local v2, "childIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/Route;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const-wide/16 v16, 0x0

    if-gt v2, v4, :cond_e

    move v5, v2

    move-wide v2, v0

    .line 157
    .end local v0    # "bestSucceedChildQuality":D
    .local v2, "bestSucceedChildQuality":D
    .local v5, "childIndex":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/Route;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lio/ktor/server/routing/Route;

    .line 158
    .local v18, "child":Lio/ktor/server/routing/Route;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v19, v2

    .end local v2    # "bestSucceedChildQuality":D
    .local v19, "bestSucceedChildQuality":D
    move v2, v14

    move-object/from16 v3, p3

    move v11, v4

    move v12, v5

    .end local v5    # "childIndex":I
    .local v12, "childIndex":I
    move-wide/from16 v4, v19

    invoke-direct/range {v0 .. v5}, Lio/ktor/server/routing/RoutingResolveContext;->handleRoute(Lio/ktor/server/routing/Route;ILjava/util/ArrayList;D)D

    move-result-wide v0

    .line 159
    .local v0, "childQuality":D
    cmpl-double v2, v0, v16

    if-lez v2, :cond_c

    .line 160
    move-wide/from16 v2, v19

    .end local v19    # "bestSucceedChildQuality":D
    .restart local v2    # "bestSucceedChildQuality":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_2

    .line 159
    .end local v2    # "bestSucceedChildQuality":D
    .restart local v19    # "bestSucceedChildQuality":D
    :cond_c
    move-wide/from16 v2, v19

    .line 156
    .end local v0    # "childQuality":D
    .end local v18    # "child":Lio/ktor/server/routing/Route;
    .end local v19    # "bestSucceedChildQuality":D
    .restart local v2    # "bestSucceedChildQuality":D
    :goto_2
    if-eq v12, v11, :cond_d

    add-int/lit8 v5, v12, 0x1

    move v4, v11

    const-wide v11, -0x10000000000001L

    .end local v12    # "childIndex":I
    .restart local v5    # "childIndex":I
    goto :goto_1

    .end local v5    # "childIndex":I
    .restart local v12    # "childIndex":I
    :cond_d
    move-wide v0, v2

    .line 164
    .end local v2    # "bestSucceedChildQuality":D
    .end local v12    # "childIndex":I
    .local v0, "bestSucceedChildQuality":D
    :cond_e
    move-object v2, v9

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->removeLast(Ljava/util/List;)Ljava/lang/Object;

    .line 166
    iget-object v2, v6, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v2, :cond_f

    move-object v3, v13

    check-cast v3, Lio/ktor/server/routing/RoutingResolveResult;

    invoke-virtual {v2, v7, v14, v3}, Lio/ktor/server/routing/RoutingResolveTrace;->finish(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V

    .line 167
    :cond_f
    cmpl-double v2, v0, v16

    if-lez v2, :cond_10

    move-object v2, v10

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;->getQuality()D

    move-result-wide v11

    goto :goto_3

    :cond_10
    const-wide v11, -0x10000000000001L

    :goto_3
    return-wide v11

    .line 112
    .end local v0    # "bestSucceedChildQuality":D
    .end local v13    # "result":Lio/ktor/server/routing/RoutingResolveResult$Success;
    .end local v14    # "newIndex":I
    .end local v15    # "hasHandlers":Z
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final isBetterResolve(Ljava/util/List;)Z
    .locals 19
    .param p1, "new"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;)Z"
        }
    .end annotation

    .line 199
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 200
    .local v1, "index1":I
    const/4 v2, 0x0

    .line 201
    .local v2, "index2":I
    move-object/from16 v3, p0

    iget-object v4, v3, Lio/ktor/server/routing/RoutingResolveContext;->resolveResult:Ljava/util/ArrayList;

    .line 203
    .local v4, "currentResolve":Ljava/util/ArrayList;
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v1, v5, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 204
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/routing/RoutingResolveResult$Success;

    invoke-virtual {v5}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v10

    .line 205
    .local v10, "quality1":D
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/routing/RoutingResolveResult$Success;

    invoke-virtual {v5}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v12

    .line 206
    .local v12, "quality2":D
    cmpg-double v5, v10, v6

    if-nez v5, :cond_0

    move v5, v9

    goto :goto_1

    :cond_0
    move v5, v8

    :goto_1
    if-eqz v5, :cond_1

    .line 207
    add-int/lit8 v1, v1, 0x1

    .line 208
    goto :goto_0

    .line 211
    :cond_1
    cmpg-double v5, v12, v6

    if-nez v5, :cond_2

    move v5, v9

    goto :goto_2

    :cond_2
    move v5, v8

    :goto_2
    if-eqz v5, :cond_3

    .line 212
    add-int/lit8 v2, v2, 0x1

    .line 213
    goto :goto_0

    .line 216
    :cond_3
    cmpg-double v5, v10, v12

    if-nez v5, :cond_4

    move v5, v9

    goto :goto_3

    :cond_4
    move v5, v8

    :goto_3
    if-nez v5, :cond_6

    .line 217
    cmpl-double v5, v12, v10

    if-lez v5, :cond_5

    move v8, v9

    :cond_5
    return v8

    .line 220
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 221
    nop

    .end local v10    # "quality1":D
    .end local v12    # "quality2":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_7
    move-object v5, v4

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 252
    .local v10, "$i$f$count":I
    instance-of v11, v5, Ljava/util/Collection;

    if-eqz v11, :cond_8

    move-object v11, v5

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    move v11, v8

    goto :goto_6

    .line 253
    :cond_8
    const/4 v11, 0x0

    .line 254
    .local v11, "count$iv":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_9
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lio/ktor/server/routing/RoutingResolveResult$Success;

    .local v14, "it":Lio/ktor/server/routing/RoutingResolveResult$Success;
    const/4 v15, 0x0

    .line 224
    .local v15, "$i$a$-count-RoutingResolveContext$isBetterResolve$firstQuality$1":I
    invoke-virtual {v14}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v16

    cmpg-double v16, v16, v6

    if-nez v16, :cond_a

    move/from16 v16, v9

    goto :goto_5

    :cond_a
    move/from16 v16, v8

    .line 254
    .end local v14    # "it":Lio/ktor/server/routing/RoutingResolveResult$Success;
    .end local v15    # "$i$a$-count-RoutingResolveContext$isBetterResolve$firstQuality$1":I
    :goto_5
    xor-int/lit8 v14, v16, 0x1

    if-eqz v14, :cond_9

    add-int/lit8 v11, v11, 0x1

    if-gez v11, :cond_9

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .end local v13    # "element$iv":Ljava/lang/Object;
    goto :goto_4

    .line 255
    :cond_b
    nop

    .line 224
    .end local v5    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$count":I
    .end local v11    # "count$iv":I
    :goto_6
    move v5, v11

    .line 225
    .local v5, "firstQuality":I
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$count$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 256
    .local v11, "$i$f$count":I
    instance-of v12, v10, Ljava/util/Collection;

    if-eqz v12, :cond_c

    move-object v12, v10

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_c

    move v12, v8

    goto :goto_9

    .line 257
    :cond_c
    const/4 v12, 0x0

    .line 258
    .local v12, "count$iv":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lio/ktor/server/routing/RoutingResolveResult$Success;

    .local v15, "it":Lio/ktor/server/routing/RoutingResolveResult$Success;
    const/16 v16, 0x0

    .line 225
    .local v16, "$i$a$-count-RoutingResolveContext$isBetterResolve$secondQuality$1":I
    invoke-virtual {v15}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v17

    cmpg-double v17, v17, v6

    if-nez v17, :cond_e

    move/from16 v17, v9

    goto :goto_8

    :cond_e
    move/from16 v17, v8

    .line 258
    .end local v15    # "it":Lio/ktor/server/routing/RoutingResolveResult$Success;
    .end local v16    # "$i$a$-count-RoutingResolveContext$isBetterResolve$secondQuality$1":I
    :goto_8
    xor-int/lit8 v15, v17, 0x1

    if-eqz v15, :cond_d

    add-int/lit8 v12, v12, 0x1

    if-gez v12, :cond_d

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    .end local v14    # "element$iv":Ljava/lang/Object;
    goto :goto_7

    .line 259
    :cond_f
    nop

    .line 225
    .end local v10    # "$this$count$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$count":I
    .end local v12    # "count$iv":I
    :goto_9
    move v6, v12

    .line 226
    .local v6, "secondQuality":I
    if-le v6, v5, :cond_10

    move v8, v9

    :cond_10
    return v8
.end method

.method private final parse(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "path"    # Ljava/lang/String;
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

    .line 53
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_9

    const-string v0, "/"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 55
    .local v3, "length":I
    const/4 v4, 0x0

    .line 56
    .local v4, "beginSegment":I
    const/4 v5, 0x0

    .line 57
    .local v5, "nextSegment":I
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    .local v6, "$this$count$iv":Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 246
    .local v7, "$i$f$count":I
    const/4 v8, 0x0

    .line 247
    .local v8, "count$iv":I
    move v9, v1

    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    invoke-interface {v6, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .local v10, "element$iv":C
    move v11, v10

    .local v11, "it":C
    const/4 v12, 0x0

    .line 57
    .local v12, "$i$a$-count-RoutingResolveContext$parse$segmentCount$1":I
    const/16 v13, 0x2f

    if-ne v11, v13, :cond_2

    move v11, v2

    goto :goto_2

    :cond_2
    move v11, v1

    .line 247
    .end local v11    # "it":C
    .end local v12    # "$i$a$-count-RoutingResolveContext$parse$segmentCount$1":I
    :goto_2
    if-eqz v11, :cond_3

    add-int/lit8 v8, v8, 0x1

    .end local v10    # "element$iv":C
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 248
    :cond_4
    nop

    .line 57
    .end local v6    # "$this$count$iv":Ljava/lang/CharSequence;
    .end local v7    # "$i$f$count":I
    .end local v8    # "count$iv":I
    move v2, v8

    .line 58
    .local v2, "segmentCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v6, "segments":Ljava/util/ArrayList;
    :goto_3
    if-ge v5, v3, :cond_7

    .line 60
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/16 v8, 0x2f

    const/4 v10, 0x0

    move v9, v4

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v5

    .line 61
    const/4 v7, -0x1

    if-ne v5, v7, :cond_5

    .line 62
    move v5, v3

    .line 64
    :cond_5
    if-ne v5, v4, :cond_6

    .line 66
    add-int/lit8 v4, v5, 0x1

    .line 67
    goto :goto_3

    .line 69
    :cond_6
    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    move v8, v4

    move v9, v5

    invoke-static/range {v7 .. v12}, Lio/ktor/http/CodecsKt;->decodeURLPart$default(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "segment":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v4, v5, 0x1

    .end local v7    # "segment":Ljava/lang/String;
    goto :goto_3

    .line 73
    :cond_7
    iget-object v7, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    invoke-static {v7}, Lio/ktor/server/routing/IgnoreTrailingSlashKt;->getIgnoreTrailingSlash(Lio/ktor/server/application/ApplicationCall;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {p1, v0, v1, v7, v8}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 74
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_8
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 53
    .end local v2    # "segmentCount":I
    .end local v3    # "length":I
    .end local v4    # "beginSegment":I
    .end local v5    # "nextSegment":I
    .end local v6    # "segments":Ljava/util/ArrayList;
    :cond_9
    :goto_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final updateFailedEvaluation(Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;Ljava/util/ArrayList;)V
    .locals 15
    .param p1, "new"    # Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;
    .param p2, "trait"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;",
            "Ljava/util/ArrayList<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;)V"
        }
    .end annotation

    .line 233
    move-object v0, p0

    iget-object v1, v0, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    if-nez v1, :cond_0

    return-void

    .line 234
    .local v1, "current":Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;
    :cond_0
    invoke-virtual {v1}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->getQuality()D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;->getQuality()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_2

    iget v2, v0, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluationDepth:I

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v2, p1

    goto/16 :goto_6

    .line 235
    :cond_2
    :goto_0
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 260
    .local v3, "$i$f$all":I
    instance-of v4, v2, Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_5

    .line 261
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/ktor/server/routing/RoutingResolveResult$Success;

    .local v7, "it":Lio/ktor/server/routing/RoutingResolveResult$Success;
    const/4 v8, 0x0

    .line 236
    .local v8, "$i$a$-all-RoutingResolveContext$updateFailedEvaluation$1":I
    invoke-virtual {v7}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v9

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpg-double v9, v9, v11

    const/4 v10, 0x0

    if-nez v9, :cond_5

    move v9, v5

    goto :goto_1

    :cond_5
    move v9, v10

    :goto_1
    if-nez v9, :cond_8

    .line 237
    invoke-virtual {v7}, Lio/ktor/server/routing/RoutingResolveResult$Success;->getQuality$ktor_server_core()D

    move-result-wide v11

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v9, v11, v13

    if-nez v9, :cond_6

    move v9, v5

    goto :goto_2

    :cond_6
    move v9, v10

    :goto_2
    if-eqz v9, :cond_7

    goto :goto_3

    :cond_7
    move v9, v10

    goto :goto_4

    :cond_8
    :goto_3
    move v9, v5

    .line 236
    :goto_4
    nop

    .line 261
    .end local v7    # "it":Lio/ktor/server/routing/RoutingResolveResult$Success;
    .end local v8    # "$i$a$-all-RoutingResolveContext$updateFailedEvaluation$1":I
    if-nez v9, :cond_4

    move v5, v10

    goto :goto_5

    .line 262
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_9
    nop

    .line 235
    .end local v2    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$all":I
    :goto_5
    if-eqz v5, :cond_a

    .line 240
    move-object/from16 v2, p1

    iput-object v2, v0, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluation:Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    .line 241
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v0, Lio/ktor/server/routing/RoutingResolveContext;->failedEvaluationDepth:I

    goto :goto_6

    .line 235
    :cond_a
    move-object/from16 v2, p1

    .line 243
    :goto_6
    return-void
.end method


# virtual methods
.method public final getCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 23
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->call:Lio/ktor/server/application/ApplicationCall;

    return-object v0
.end method

.method public final getHasTrailingSlash()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->hasTrailingSlash:Z

    return v0
.end method

.method public final getRouting()Lio/ktor/server/routing/Route;
    .locals 1

    .line 22
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->routing:Lio/ktor/server/routing/Route;

    return-object v0
.end method

.method public final getSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveContext;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final resolve()Lio/ktor/server/routing/RoutingResolveResult;
    .locals 9

    .line 83
    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveContext;->routing:Lio/ktor/server/routing/Route;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-wide v4, -0x10000000000001L

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/ktor/server/routing/RoutingResolveContext;->handleRoute(Lio/ktor/server/routing/Route;ILjava/util/ArrayList;D)D

    .line 85
    invoke-direct {p0}, Lio/ktor/server/routing/RoutingResolveContext;->findBestRoute()Lio/ktor/server/routing/RoutingResolveResult;

    move-result-object v0

    .line 87
    .local v0, "resolveResult":Lio/ktor/server/routing/RoutingResolveResult;
    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lio/ktor/server/routing/RoutingResolveTrace;->registerFinalResult(Lio/ktor/server/routing/RoutingResolveResult;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveContext;->trace:Lio/ktor/server/routing/RoutingResolveTrace;

    if-eqz v1, :cond_2

    .line 249
    .local v1, "$this$resolve_u24lambda_u242":Lio/ktor/server/routing/RoutingResolveTrace;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$a$-apply-RoutingResolveContext$resolve$1":I
    iget-object v3, p0, Lio/ktor/server/routing/RoutingResolveContext;->tracers:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 250
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function1;

    .local v7, "it":Lkotlin/jvm/functions/Function1;
    const/4 v8, 0x0

    .line 88
    .local v8, "$i$a$-forEach-RoutingResolveContext$resolve$1$1":I
    invoke-interface {v7, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .end local v7    # "it":Lkotlin/jvm/functions/Function1;
    .end local v8    # "$i$a$-forEach-RoutingResolveContext$resolve$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 251
    :cond_1
    nop

    .line 88
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 89
    .end local v1    # "$this$resolve_u24lambda_u242":Lio/ktor/server/routing/RoutingResolveTrace;
    .end local v2    # "$i$a$-apply-RoutingResolveContext$resolve$1":I
    :cond_2
    return-object v0
.end method
