.class public final Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;
.super Lio/ktor/server/routing/RouteSelector;
.source "RouteSelector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteSelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/PathSegmentTailcardRouteSelector\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,700:1\n1766#2,2:701\n1#3:703\n731#4,9:704\n1559#4:713\n1590#4,4:714\n*S KotlinDebug\n*F\n+ 1 RouteSelector.kt\nio/ktor/server/routing/PathSegmentTailcardRouteSelector\n*L\n445#1:701,2\n449#1:704,9\n461#1:713\n461#1:714,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0008\u0017\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0019\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001J\u0008\u0010\u0019\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;",
        "Lio/ktor/server/routing/RouteSelector;",
        "name",
        "",
        "prefix",
        "hasTrailingSlash",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "getPrefix",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "",
        "evaluate",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "context",
        "Lio/ktor/server/routing/RoutingResolveContext;",
        "segmentIndex",
        "",
        "hashCode",
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
.field private final name:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lio/ktor/server/routing/RouteSelector;-><init>()V

    .line 432
    iput-object p1, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    .line 433
    iput-object p2, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    .line 444
    nop

    .line 445
    iget-object v0, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$none$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 701
    .local v1, "$i$f$none":I
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .local v4, "element$iv":C
    move v6, v4

    .local v6, "it":C
    const/4 v7, 0x0

    .line 445
    .local v7, "$i$a$-none-PathSegmentTailcardRouteSelector$1":I
    const/16 v8, 0x2f

    if-ne v6, v8, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    .line 701
    .end local v6    # "it":C
    .end local v7    # "$i$a$-none-PathSegmentTailcardRouteSelector$1":I
    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    .end local v4    # "element$iv":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 702
    :cond_2
    move v2, v5

    .line 445
    .end local v0    # "$this$none$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$none":I
    :goto_2
    if-eqz v2, :cond_3

    .line 446
    nop

    .line 431
    return-void

    .line 703
    :cond_3
    const/4 v0, 0x0

    .line 445
    .local v0, "$i$a$-require-PathSegmentTailcardRouteSelector$2":I
    nop

    .end local v0    # "$i$a$-require-PathSegmentTailcardRouteSelector$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multisegment prefix is not supported"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 431
    and-int/lit8 p4, p3, 0x1

    const-string v0, ""

    if-eqz p4, :cond_0

    .line 432
    move-object p1, v0

    .line 431
    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 433
    move-object p2, v0

    .line 431
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "hasTrailingSlash"    # Z
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "hasTrailingSlash is not used anymore. This is going to be removed"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "PathSegmentTailcardRouteSelector(name, prefix)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, p1, p2}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 442
    and-int/lit8 p5, p4, 0x1

    const-string v0, ""

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->copy(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;

    invoke-direct {v0, p1, p2}, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;

    iget-object v3, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    iget-object v4, v1, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    iget-object v1, v1, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public evaluate(Lio/ktor/server/routing/RoutingResolveContext;I)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 16
    .param p1, "context"    # Lio/ktor/server/routing/RoutingResolveContext;
    .param p2, "segmentIndex"    # I

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p1 .. p1}, Lio/ktor/server/routing/RoutingResolveContext;->getSegments()Ljava/util/List;

    move-result-object v2

    .local v2, "$this$dropLastWhile$iv":Ljava/util/List;
    const/4 v4, 0x0

    .line 704
    .local v4, "$i$f$dropLastWhile":I
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    .line 705
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 706
    .local v5, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 707
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "it":Ljava/lang/String;
    const/4 v9, 0x0

    .line 449
    .local v9, "$i$a$-dropLastWhile-PathSegmentTailcardRouteSelector$evaluate$segments$1":I
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    move v10, v7

    goto :goto_0

    :cond_1
    move v10, v6

    .line 707
    .end local v8    # "it":Ljava/lang/String;
    .end local v9    # "$i$a$-dropLastWhile-PathSegmentTailcardRouteSelector$evaluate$segments$1":I
    :goto_0
    if-nez v10, :cond_0

    .line 708
    move-object v8, v2

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/util/ListIterator;->nextIndex()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v8, v9}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v8

    goto :goto_1

    .line 712
    .end local v5    # "iterator$iv":Ljava/util/ListIterator;
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 449
    .end local v2    # "$this$dropLastWhile$iv":Ljava/util/List;
    .end local v4    # "$i$f$dropLastWhile":I
    :goto_1
    move-object v2, v8

    .line 450
    .local v2, "segments":Ljava/util/List;
    iget-object v4, v0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v7

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-eqz v4, :cond_5

    .line 451
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 452
    .local v4, "segmentText":Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, v0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v4, v5, v6, v8, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 453
    :cond_4
    sget-object v5, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v5}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedPath()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v5

    check-cast v5, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v5

    .line 457
    .end local v4    # "segmentText":Ljava/lang/String;
    :cond_5
    nop

    .line 458
    iget-object v4, v0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    move v6, v7

    :cond_6
    if-eqz v6, :cond_7

    invoke-static {}, Lio/ktor/http/ParametersKt;->parametersOf()Lio/ktor/http/Parameters;

    move-result-object v4

    goto :goto_5

    .line 460
    :cond_7
    iget-object v4, v0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    .line 461
    move-object v5, v2

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 713
    .local v6, "$i$f$mapIndexed":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 714
    .local v9, "$i$f$mapIndexedTo":I
    const/4 v10, 0x0

    .line 715
    .local v10, "index$iv$iv":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 716
    .local v12, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "index$iv$iv":I
    .local v13, "index$iv$iv":I
    if-gez v10, :cond_8

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_8
    move-object v14, v12

    check-cast v14, Ljava/lang/String;

    .local v10, "index":I
    .local v14, "segment":Ljava/lang/String;
    const/4 v15, 0x0

    .line 462
    .local v15, "$i$a$-mapIndexed-PathSegmentTailcardRouteSelector$evaluate$values$1":I
    if-nez v10, :cond_9

    .line 463
    iget-object v3, v0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v14, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 465
    :cond_9
    move-object v3, v14

    .line 462
    :goto_4
    nop

    .line 716
    .end local v10    # "index":I
    .end local v14    # "segment":Ljava/lang/String;
    .end local v15    # "$i$a$-mapIndexed-PathSegmentTailcardRouteSelector$evaluate$values$1":I
    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move v10, v13

    goto :goto_3

    .line 717
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    .end local v13    # "index$iv$iv":I
    .local v10, "index$iv$iv":I
    :cond_a
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapIndexedTo":I
    .end local v10    # "index$iv$iv":I
    move-object v3, v7

    check-cast v3, Ljava/util/List;

    .line 713
    nop

    .line 459
    .end local v5    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapIndexed":I
    invoke-static {v4, v3}, Lio/ktor/http/ParametersKt;->parametersOf(Ljava/lang/String;Ljava/util/List;)Lio/ktor/http/Parameters;

    move-result-object v4

    .line 457
    :goto_5
    move-object v3, v4

    .line 470
    .local v3, "values":Lio/ktor/http/Parameters;
    nop

    .line 471
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    const-wide v4, 0x3fb999999999999aL    # 0.1

    goto :goto_6

    .line 472
    :cond_b
    const-wide v4, 0x3fc999999999999aL    # 0.2

    .line 470
    :goto_6
    nop

    .line 474
    .local v4, "quality":D
    new-instance v6, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    .line 475
    nop

    .line 476
    nop

    .line 477
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v1

    .line 474
    invoke-direct {v6, v4, v5, v3, v7}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;I)V

    check-cast v6, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v6
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrefix()Ljava/lang/String;
    .locals 1

    .line 433
    iget-object v0, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/ktor/server/routing/PathSegmentTailcardRouteSelector;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 481
    const-string v0, "{...}"

    return-object v0
.end method
