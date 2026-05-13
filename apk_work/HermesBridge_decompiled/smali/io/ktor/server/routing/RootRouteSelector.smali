.class public final Lio/ktor/server/routing/RootRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/RootRouteSelector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,700:1\n1549#2:701\n1620#2,3:702\n1#3:705\n*S KotlinDebug\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/RootRouteSelector\n*L\n198#1:701\n198#1:702,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/server/routing/RootRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "rootPath",
        "",
        "(Ljava/lang/String;)V",
        "parts",
        "",
        "successEvaluationResult",
        "Lio/ktor/server/routing/RouteSelectorEvaluation$Success;",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
        "",
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
.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final successEvaluationResult:Lio/ktor/server/routing/RouteSelectorEvaluation$Success;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lio/ktor/server/routing/RootRouteSelector;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "rootPath"    # Ljava/lang/String;

    const-string v0, "rootPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 198
    sget-object v0, Lio/ktor/server/routing/RoutingPath;->Companion:Lio/ktor/server/routing/RoutingPath$Companion;

    invoke-virtual {v0, p1}, Lio/ktor/server/routing/RoutingPath$Companion;->parse(Ljava/lang/String;)Lio/ktor/server/routing/RoutingPath;

    move-result-object v0

    invoke-virtual {v0}, Lio/ktor/server/routing/RoutingPath;->getParts()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 701
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

    .line 702
    .local v4, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 703
    .local v6, "item$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lio/ktor/server/routing/RoutingPathSegment;

    .local v7, "it":Lio/ktor/server/routing/RoutingPathSegment;
    const/4 v8, 0x0

    .line 199
    .local v8, "$i$a$-map-RootRouteSelector$parts$1":I
    invoke-virtual {v7}, Lio/ktor/server/routing/RoutingPathSegment;->getKind()Lio/ktor/server/routing/RoutingPathSegmentKind;

    move-result-object v9

    sget-object v10, Lio/ktor/server/routing/RoutingPathSegmentKind;->Constant:Lio/ktor/server/routing/RoutingPathSegmentKind;

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_1

    .line 202
    invoke-virtual {v7}, Lio/ktor/server/routing/RoutingPathSegment;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 703
    .end local v7    # "it":Lio/ktor/server/routing/RoutingPathSegment;
    .end local v8    # "$i$a$-map-RootRouteSelector$parts$1":I
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    .restart local v7    # "it":Lio/ktor/server/routing/RoutingPathSegment;
    .restart local v8    # "$i$a$-map-RootRouteSelector$parts$1":I
    :cond_1
    const/4 v5, 0x0

    .line 200
    .local v5, "$i$a$-require-RootRouteSelector$parts$1$1":I
    nop

    .line 199
    .end local v5    # "$i$a$-require-RootRouteSelector$parts$1$1":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v9, "rootPath should be constant, no wildcards supported."

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 704
    .end local v6    # "item$iv$iv":Ljava/lang/Object;
    .end local v7    # "it":Lio/ktor/server/routing/RoutingPathSegment;
    .end local v8    # "$i$a$-map-RootRouteSelector$parts$1":I
    :cond_2
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 701
    nop

    .line 198
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    iput-object v2, p0, Lio/ktor/server/routing/RootRouteSelector;->parts:Ljava/util/List;

    .line 205
    new-instance v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    .line 206
    nop

    .line 205
    nop

    .line 207
    iget-object v1, p0, Lio/ktor/server/routing/RootRouteSelector;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 205
    const/4 v8, 0x2

    const/4 v9, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lio/ktor/server/routing/RootRouteSelector;->successEvaluationResult:Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    .line 196
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 196
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/server/routing/RootRouteSelector;-><init>(Ljava/lang/String;)V

    .line 232
    return-void
.end method


# virtual methods
.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 6
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 212
    iget-object v0, p0, Lio/ktor/server/routing/RootRouteSelector;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getConstant()Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    return-object v0

    .line 216
    :cond_1
    iget-object v0, p0, Lio/ktor/server/routing/RootRouteSelector;->parts:Ljava/util/List;

    .line 217
    .local v0, "parts":Ljava/util/List;
    invoke-virtual {p1}, Lio/ktor/server/routing/RoutingResolveContext;->getSegments()Ljava/util/List;

    move-result-object v1

    .line 218
    .local v1, "segments":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 219
    sget-object v2, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v2}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedPath()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v2

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v2

    .line 222
    :cond_2
    move v2, p2

    .local v2, "index":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p2

    :goto_1
    if-ge v2, v3, :cond_4

    .line 223
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 224
    sget-object v3, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedPath()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v3

    check-cast v3, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v3

    .line 222
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .end local v2    # "index":I
    :cond_4
    iget-object v2, p0, Lio/ktor/server/routing/RootRouteSelector;->successEvaluationResult:Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    check-cast v2, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v2

    .line 705
    .end local v0    # "parts":Ljava/util/List;
    .end local v1    # "segments":Ljava/util/List;
    :cond_5
    const/4 v0, 0x0

    .line 211
    .local v0, "$i$a$-check-RootRouteSelector$evaluate$1":I
    nop

    .end local v0    # "$i$a$-check-RootRouteSelector$evaluate$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root selector should be evaluated first."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 231
    iget-object v0, p0, Lio/ktor/server/routing/RootRouteSelector;->parts:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, "/"

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
