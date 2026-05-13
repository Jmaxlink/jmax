.class public final Lio/ktor/server/routing/RouteSelectorKt;
.super Ljava/lang/Object;
.source "RouteSelector.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u001aF\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "evaluatePathSegmentParameter",
        "Lio/ktor/server/routing/RouteSelectorEvaluation;",
        "segments",
        "",
        "",
        "segmentIndex",
        "",
        "name",
        "prefix",
        "suffix",
        "isOptional",
        "",
        "ktor-server-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final evaluatePathSegmentParameter(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 9
    .param p0, "segments"    # Ljava/util/List;
    .param p1, "segmentIndex"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "suffix"    # Ljava/lang/String;
    .param p5, "isOptional"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/ktor/server/routing/RouteSelectorEvaluation;"
        }
    .end annotation

    const-string v0, "segments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 672
    invoke-static {p5, v1}, Lio/ktor/server/routing/RouteSelectorKt;->evaluatePathSegmentParameter$failedEvaluation(ZLjava/lang/String;)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    return-object v0

    .line 675
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 676
    .local v0, "part":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-static {p5, v0}, Lio/ktor/server/routing/RouteSelectorKt;->evaluatePathSegmentParameter$failedEvaluation(ZLjava/lang/String;)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v1

    return-object v1

    .line 678
    :cond_2
    nop

    .line 679
    const/4 v2, 0x2

    if-nez p3, :cond_3

    move-object v5, v0

    goto :goto_1

    .line 680
    :cond_3
    invoke-static {v0, p3, v4, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 678
    :goto_1
    nop

    .line 684
    .local v5, "prefixChecked":Ljava/lang/String;
    nop

    .line 685
    if-nez p4, :cond_4

    move-object v1, v5

    goto :goto_2

    .line 686
    :cond_4
    invoke-static {v5, p4, v4, v2, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v5, v1}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 684
    :goto_2
    nop

    .line 690
    .local v1, "suffixChecked":Ljava/lang/String;
    invoke-static {p2, v1}, Lio/ktor/http/ParametersKt;->parametersOf(Ljava/lang/String;Ljava/lang/String;)Lio/ktor/http/Parameters;

    move-result-object v2

    .line 691
    .local v2, "values":Lio/ktor/http/Parameters;
    new-instance v6, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    .line 692
    nop

    .line 693
    move-object v7, p3

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    move v7, v4

    goto :goto_4

    :cond_6
    :goto_3
    move v7, v3

    :goto_4
    if-eqz v7, :cond_9

    move-object v7, p4

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    move v4, v3

    :cond_8
    if-eqz v4, :cond_9

    const-wide v7, 0x3fe999999999999aL    # 0.8

    goto :goto_5

    .line 694
    :cond_9
    const-wide v7, 0x3feccccccccccccdL    # 0.9

    .line 696
    :goto_5
    nop

    .line 697
    nop

    .line 691
    invoke-direct {v6, v7, v8, v2, v3}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;I)V

    check-cast v6, Lio/ktor/server/routing/RouteSelectorEvaluation;

    return-object v6

    .line 687
    .end local v1    # "suffixChecked":Ljava/lang/String;
    .end local v2    # "values":Lio/ktor/http/Parameters;
    :cond_a
    invoke-static {p5, v0}, Lio/ktor/server/routing/RouteSelectorKt;->evaluatePathSegmentParameter$failedEvaluation(ZLjava/lang/String;)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v1

    return-object v1

    .line 681
    .end local v5    # "prefixChecked":Ljava/lang/String;
    :cond_b
    invoke-static {p5, v0}, Lio/ktor/server/routing/RouteSelectorKt;->evaluatePathSegmentParameter$failedEvaluation(ZLjava/lang/String;)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v1

    return-object v1
.end method

.method public static synthetic evaluatePathSegmentParameter$default(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 7

    .line 652
    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    .line 656
    move-object v4, v0

    goto :goto_0

    .line 652
    :cond_0
    move-object v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    .line 657
    move-object v5, v0

    goto :goto_1

    .line 652
    :cond_1
    move-object v5, p4

    :goto_1
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p5

    invoke-static/range {v1 .. v6}, Lio/ktor/server/routing/RouteSelectorKt;->evaluatePathSegmentParameter(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object p0

    return-object p0
.end method

.method private static final evaluatePathSegmentParameter$failedEvaluation(ZLjava/lang/String;)Lio/ktor/server/routing/RouteSelectorEvaluation;
    .locals 8
    .param p0, "$isOptional"    # Z
    .param p1, "failedPart"    # Ljava/lang/String;

    .line 661
    nop

    .line 662
    if-nez p0, :cond_0

    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getFailedPath()Lio/ktor/server/routing/RouteSelectorEvaluation$Failure;

    move-result-object v0

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation;

    goto :goto_1

    .line 663
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getMissing()Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    goto :goto_1

    .line 664
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 665
    new-instance v0, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/routing/RouteSelectorEvaluation$Success;-><init>(DLio/ktor/http/Parameters;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lio/ktor/server/routing/RouteSelectorEvaluation;

    goto :goto_1

    .line 667
    :cond_3
    sget-object v0, Lio/ktor/server/routing/RouteSelectorEvaluation;->Companion:Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;

    invoke-virtual {v0}, Lio/ktor/server/routing/RouteSelectorEvaluation$Companion;->getMissing()Lio/ktor/server/routing/RouteSelectorEvaluation;

    move-result-object v0

    .line 661
    :goto_1
    return-object v0
.end method
