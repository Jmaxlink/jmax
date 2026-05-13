.class public final Lio/ktor/server/routing/RoutingResolveTrace;
.super Ljava/lang/Object;
.source "RoutingResolveTrace.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRoutingResolveTrace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoutingResolveTrace.kt\nio/ktor/server/routing/RoutingResolveTrace\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,151:1\n1#2:152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0005J\u0016\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0006J\u001e\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bJ\u0010\u0010 \u001a\u00020\u00162\u0006\u0010!\u001a\u00020\u0010H\u0002J\u000e\u0010\"\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u000bJ\u001e\u0010#\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u000bJ\u0008\u0010$\u001a\u00020\u0006H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00050\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lio/ktor/server/routing/RoutingResolveTrace;",
        "",
        "call",
        "Lio/ktor/server/application/ApplicationCall;",
        "segments",
        "",
        "",
        "(Lio/ktor/server/application/ApplicationCall;Ljava/util/List;)V",
        "getCall",
        "()Lio/ktor/server/application/ApplicationCall;",
        "finalResult",
        "Lio/ktor/server/routing/RoutingResolveResult;",
        "resolveCandidates",
        "",
        "Lio/ktor/server/routing/RoutingResolveResult$Success;",
        "routing",
        "Lio/ktor/server/routing/RoutingResolveTraceEntry;",
        "getSegments",
        "()Ljava/util/List;",
        "stack",
        "Lio/ktor/server/routing/Stack;",
        "addCandidate",
        "",
        "trait",
        "begin",
        "route",
        "Lio/ktor/server/routing/Route;",
        "segmentIndex",
        "",
        "buildText",
        "finish",
        "result",
        "register",
        "entry",
        "registerFinalResult",
        "skip",
        "toString",
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

.field private finalResult:Lio/ktor/server/routing/RoutingResolveResult;

.field private final resolveCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;>;"
        }
    .end annotation
.end field

.field private routing:Lio/ktor/server/routing/RoutingResolveTraceEntry;

.field private final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stack:Lio/ktor/server/routing/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/server/routing/Stack<",
            "Lio/ktor/server/routing/RoutingResolveTraceEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/server/application/ApplicationCall;Ljava/util/List;)V
    .locals 1
    .param p1, "call"    # Lio/ktor/server/application/ApplicationCall;
    .param p2, "segments"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/application/ApplicationCall;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "segments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/routing/RoutingResolveTrace;->call:Lio/ktor/server/application/ApplicationCall;

    iput-object p2, p0, Lio/ktor/server/routing/RoutingResolveTrace;->segments:Ljava/util/List;

    .line 50
    new-instance v0, Lio/ktor/server/routing/Stack;

    invoke-direct {v0}, Lio/ktor/server/routing/Stack;-><init>()V

    iput-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->stack:Lio/ktor/server/routing/Stack;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->resolveCandidates:Ljava/util/List;

    .line 49
    return-void
.end method

.method private final register(Lio/ktor/server/routing/RoutingResolveTraceEntry;)V
    .locals 1
    .param p1, "entry"    # Lio/ktor/server/routing/RoutingResolveTraceEntry;

    .line 56
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->stack:Lio/ktor/server/routing/Stack;

    invoke-virtual {v0}, Lio/ktor/server/routing/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iput-object p1, p0, Lio/ktor/server/routing/RoutingResolveTrace;->routing:Lio/ktor/server/routing/RoutingResolveTraceEntry;

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->stack:Lio/ktor/server/routing/Stack;

    invoke-virtual {v0}, Lio/ktor/server/routing/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/RoutingResolveTraceEntry;

    invoke-virtual {v0, p1}, Lio/ktor/server/routing/RoutingResolveTraceEntry;->append(Lio/ktor/server/routing/RoutingResolveTraceEntry;)V

    .line 61
    :goto_0
    return-void
.end method


# virtual methods
.method public final addCandidate(Ljava/util/List;)V
    .locals 6
    .param p1, "trait"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/server/routing/RoutingResolveResult$Success;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trait"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 152
    move v3, v2

    .local v3, "it":I
    const/4 v4, 0x0

    .line 123
    .local v4, "$i$a$-List-RoutingResolveTrace$addCandidate$candidate$1":I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/ktor/server/routing/RoutingResolveResult$Success;

    .end local v3    # "it":I
    .end local v4    # "$i$a$-List-RoutingResolveTrace$addCandidate$candidate$1":I
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    .line 124
    .local v0, "candidate":Ljava/util/List;
    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveTrace;->resolveCandidates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public final begin(Lio/ktor/server/routing/Route;I)V
    .locals 8
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "segmentIndex"    # I

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->stack:Lio/ktor/server/routing/Stack;

    new-instance v7, Lio/ktor/server/routing/RoutingResolveTraceEntry;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/routing/RoutingResolveTraceEntry;-><init>(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lio/ktor/server/routing/Stack;->push(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public final buildText()Ljava/lang/String;
    .locals 17

    .line 97
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v1

    .local v2, "$this$buildText_u24lambda_u242":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 98
    .local v3, "$i$a$-buildString-RoutingResolveTrace$buildText$1":I
    invoke-virtual/range {p0 .. p0}, Lio/ktor/server/routing/RoutingResolveTrace;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "append(value)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "append(\'\\n\')"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v4, v0, Lio/ktor/server/routing/RoutingResolveTrace;->routing:Lio/ktor/server/routing/RoutingResolveTraceEntry;

    if-eqz v4, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Lio/ktor/server/routing/RoutingResolveTraceEntry;->buildText(Ljava/lang/StringBuilder;I)V

    .line 100
    :cond_0
    iget-object v4, v0, Lio/ktor/server/routing/RoutingResolveTrace;->finalResult:Lio/ktor/server/routing/RoutingResolveResult;

    if-nez v4, :cond_1

    .line 101
    goto/16 :goto_1

    .line 103
    :cond_1
    const-string v4, "Matched routes:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v4, v0, Lio/ktor/server/routing/RoutingResolveTrace;->resolveCandidates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    const-string v4, "  No results"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_2
    nop

    .line 108
    iget-object v4, v0, Lio/ktor/server/routing/RoutingResolveTrace;->resolveCandidates:Ljava/util/List;

    move-object v8, v4

    check-cast v8, Ljava/lang/Iterable;

    const-string v4, "\n"

    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    sget-object v4, Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;->INSTANCE:Lio/ktor/server/routing/RoutingResolveTrace$buildText$1$2;

    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/16 v15, 0x1e

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :goto_0
    const-string v4, "Route resolve result:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lio/ktor/server/routing/RoutingResolveTrace;->finalResult:Lio/ktor/server/routing/RoutingResolveResult;

    if-nez v5, :cond_3

    const-string v5, "finalResult"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    nop

    .line 97
    .end local v2    # "$this$buildText_u24lambda_u242":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-RoutingResolveTrace$buildText$1":I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    return-object v1
.end method

.method public final finish(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V
    .locals 3
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "segmentIndex"    # I
    .param p3, "result"    # Lio/ktor/server/routing/RoutingResolveResult;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->stack:Lio/ktor/server/routing/Stack;

    invoke-virtual {v0}, Lio/ktor/server/routing/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/RoutingResolveTraceEntry;

    .line 75
    .local v0, "entry":Lio/ktor/server/routing/RoutingResolveTraceEntry;
    invoke-virtual {v0}, Lio/ktor/server/routing/RoutingResolveTraceEntry;->getRoute()Lio/ktor/server/routing/Route;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {v0}, Lio/ktor/server/routing/RoutingResolveTraceEntry;->getSegmentIndex()I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0, p3}, Lio/ktor/server/routing/RoutingResolveTraceEntry;->setResult(Lio/ktor/server/routing/RoutingResolveResult;)V

    .line 78
    invoke-direct {p0, v0}, Lio/ktor/server/routing/RoutingResolveTrace;->register(Lio/ktor/server/routing/RoutingResolveTraceEntry;)V

    .line 79
    return-void

    .line 152
    :cond_1
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-require-RoutingResolveTrace$finish$2":I
    nop

    .end local v1    # "$i$a$-require-RoutingResolveTrace$finish$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "end should be called for the same segmentIndex as begin"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_2
    const/4 v1, 0x0

    .line 75
    .local v1, "$i$a$-require-RoutingResolveTrace$finish$1":I
    nop

    .end local v1    # "$i$a$-require-RoutingResolveTrace$finish$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "end should be called for the same route as begin"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final getCall()Lio/ktor/server/application/ApplicationCall;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->call:Lio/ktor/server/application/ApplicationCall;

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

    .line 49
    iget-object v0, p0, Lio/ktor/server/routing/RoutingResolveTrace;->segments:Ljava/util/List;

    return-object v0
.end method

.method public final registerFinalResult(Lio/ktor/server/routing/RoutingResolveResult;)V
    .locals 1
    .param p1, "result"    # Lio/ktor/server/routing/RoutingResolveResult;

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lio/ktor/server/routing/RoutingResolveTrace;->finalResult:Lio/ktor/server/routing/RoutingResolveResult;

    .line 90
    return-void
.end method

.method public final skip(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V
    .locals 1
    .param p1, "route"    # Lio/ktor/server/routing/Route;
    .param p2, "segmentIndex"    # I
    .param p3, "result"    # Lio/ktor/server/routing/RoutingResolveResult;

    const-string v0, "route"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lio/ktor/server/routing/RoutingResolveTraceEntry;

    invoke-direct {v0, p1, p2, p3}, Lio/ktor/server/routing/RoutingResolveTraceEntry;-><init>(Lio/ktor/server/routing/Route;ILio/ktor/server/routing/RoutingResolveResult;)V

    invoke-direct {p0, v0}, Lio/ktor/server/routing/RoutingResolveTrace;->register(Lio/ktor/server/routing/RoutingResolveTraceEntry;)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trace for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/routing/RoutingResolveTrace;->segments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
