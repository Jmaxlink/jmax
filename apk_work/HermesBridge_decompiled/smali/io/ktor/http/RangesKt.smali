.class public final Lio/ktor/http/RangesKt;
.super Ljava/lang/Object;
.source "Ranges.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRanges.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Ranges.kt\nio/ktor/http/RangesKt\n+ 2 Text.kt\nio/ktor/util/TextKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,119:1\n38#2,4:120\n38#2,4:127\n1549#3:124\n1620#3,2:125\n1622#3:131\n1549#3:132\n1620#3,3:133\n819#3:136\n847#3,2:137\n1045#3:139\n1789#3,3:140\n*S KotlinDebug\n*F\n+ 1 Ranges.kt\nio/ktor/http/RangesKt\n*L\n61#1:120,4\n66#1:127,4\n62#1:124\n62#1:125,2\n62#1:131\n85#1:132\n85#1:133,3\n91#1:136\n91#1:137,2\n95#1:139\n95#1:140,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u001a\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u001a \u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005*\u0008\u0012\u0004\u0012\u00020\u00080\u00052\u0006\u0010\t\u001a\u00020\nH\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "parseRangesSpecifier",
        "Lio/ktor/http/RangesSpecifier;",
        "rangeSpec",
        "",
        "mergeRangesKeepOrder",
        "",
        "Lkotlin/ranges/LongRange;",
        "toLongRanges",
        "Lio/ktor/http/ContentRange;",
        "contentLength",
        "",
        "ktor-http"
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
.method public static final mergeRangesKeepOrder(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p0, "$this$mergeRangesKeepOrder"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lkotlin/ranges/LongRange;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/ranges/LongRange;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$sortedBy$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 139
    .local v2, "$i$f$sortedBy":I
    new-instance v3, Lio/ktor/http/RangesKt$mergeRangesKeepOrder$$inlined$sortedBy$1;

    invoke-direct {v3}, Lio/ktor/http/RangesKt$mergeRangesKeepOrder$$inlined$sortedBy$1;-><init>()V

    check-cast v3, Ljava/util/Comparator;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .end local v1    # "$this$sortedBy$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$sortedBy":I
    check-cast v1, Ljava/lang/Iterable;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .local v1, "$this$fold$iv":Ljava/lang/Iterable;
    .local v2, "initial$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 140
    .local v3, "$i$f$fold":I
    move-object v4, v2

    .line 141
    .local v4, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/ranges/LongRange;

    .local v7, "range":Lkotlin/ranges/LongRange;
    move-object v8, v4

    .local v8, "acc":Ljava/util/ArrayList;
    const/4 v9, 0x0

    .line 96
    .local v9, "$i$a$-fold-RangesKt$mergeRangesKeepOrder$sortedMerged$2":I
    nop

    .line 97
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto :goto_1

    .line 98
    :cond_0
    move-object v10, v8

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/ranges/LongRange;

    invoke-virtual {v10}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    goto :goto_1

    .line 100
    :cond_1
    move-object v10, v8

    check-cast v10, Ljava/util/List;

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/ranges/LongRange;

    .line 101
    .local v10, "last":Lkotlin/ranges/LongRange;
    move-object v11, v8

    check-cast v11, Ljava/util/List;

    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    new-instance v12, Lkotlin/ranges/LongRange;

    invoke-virtual {v10}, Lkotlin/ranges/LongRange;->getStart()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .end local v1    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v2    # "initial$iv":Ljava/lang/Object;
    .local v16, "$this$fold$iv":Ljava/lang/Iterable;
    .local v17, "initial$iv":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v7}, Lkotlin/ranges/LongRange;->getEndInclusive()Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    .end local v6    # "element$iv":Ljava/lang/Object;
    .local v19, "element$iv":Ljava/lang/Object;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-direct {v12, v13, v14, v1, v2}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    invoke-virtual {v8, v11, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v10    # "last":Lkotlin/ranges/LongRange;
    :goto_1
    nop

    .line 141
    .end local v7    # "range":Lkotlin/ranges/LongRange;
    .end local v8    # "acc":Ljava/util/ArrayList;
    .end local v9    # "$i$a$-fold-RangesKt$mergeRangesKeepOrder$sortedMerged$2":I
    move-object v4, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    .end local v19    # "element$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 142
    .end local v16    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v17    # "initial$iv":Ljava/lang/Object;
    .restart local v1    # "$this$fold$iv":Ljava/lang/Iterable;
    .restart local v2    # "initial$iv":Ljava/lang/Object;
    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    .line 95
    .end local v1    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v2    # "initial$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$fold":I
    .end local v4    # "accumulator$iv":Ljava/lang/Object;
    move-object v1, v4

    .line 106
    .local v1, "sortedMerged":Ljava/util/ArrayList;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lkotlin/ranges/LongRange;

    .line 108
    .local v2, "result":[Lkotlin/ranges/LongRange;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/ranges/LongRange;

    .line 109
    .local v4, "range":Lkotlin/ranges/LongRange;
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v6

    :goto_3
    if-ge v5, v6, :cond_3

    .line 110
    const-string v7, "range"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/ranges/LongRange;

    invoke-static {v4, v7}, Lio/ktor/util/RangesKt;->contains(Lkotlin/ranges/LongRange;Lkotlin/ranges/LongRange;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 111
    aput-object v4, v2, v5

    .line 112
    goto :goto_2

    .line 109
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 117
    .end local v4    # "range":Lkotlin/ranges/LongRange;
    .end local v5    # "i":I
    :cond_5
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public static final parseRangesSpecifier(Ljava/lang/String;)Lio/ktor/http/RangesSpecifier;
    .locals 29
    .param p0, "rangeSpec"    # Ljava/lang/String;

    const-string v0, ""

    const-string v1, "this as java.lang.String).substring(startIndex)"

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    const-string v9, "-"

    const-string v3, "rangeSpec"

    move-object/from16 v10, p0

    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    nop

    .line 61
    const/4 v11, 0x0

    :try_start_0
    const-string v3, "="

    move-object v13, v3

    .local v13, "separator$iv":Ljava/lang/String;
    move-object/from16 v3, p0

    .local v3, "$this$chomp$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, "$i$f$chomp":I
    move-object v12, v3

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v16, 0x6

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v5

    .line 121
    .local v5, "idx$iv":I
    nop

    .line 122
    const/4 v12, -0x1

    if-ne v5, v12, :cond_0

    const/4 v0, 0x0

    .line 61
    .local v0, "$i$a$-chomp-RangesKt$parseRangesSpecifier$1":I
    return-object v11

    .line 123
    .end local v0    # "$i$a$-chomp-RangesKt$parseRangesSpecifier$1":I
    :cond_0
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 121
    nop

    .line 61
    .end local v3    # "$this$chomp$iv":Ljava/lang/String;
    .end local v4    # "$i$f$chomp":I
    .end local v5    # "idx$iv":I
    .end local v13    # "separator$iv":Ljava/lang/String;
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v13, v3

    .local v13, "unit":Ljava/lang/String;
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v15, v3

    .line 62
    .local v15, "allRangesString":Ljava/lang/String;
    move-object v3, v15

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v8, 0x1

    new-array v4, v8, [C

    const/16 v5, 0x2c

    aput-char v5, v4, v14

    const/4 v7, 0x6

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v8, v16

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    move-object v8, v3

    .local v8, "$this$map$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 124
    .local v16, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v8, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    move-object v7, v3

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v17, v8

    .local v17, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v18, 0x0

    .line 125
    .local v18, "$i$f$mapTo":I
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    .line 126
    .local v20, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v3, v20

    check-cast v3, Ljava/lang/String;

    move-object v6, v3

    .local v6, "it":Ljava/lang/String;
    const/16 v21, 0x0

    .line 63
    .local v21, "$i$a$-map-RangesKt$parseRangesSpecifier$allRanges$1":I
    const/4 v3, 0x2

    invoke-static {v6, v9, v14, v3, v11}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    new-instance v3, Lio/ktor/http/ContentRange$Suffix;

    move-object v4, v9

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v6, v4}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/ktor/http/ContentRange$Suffix;-><init>(J)V

    check-cast v3, Lio/ktor/http/ContentRange;

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    move-object/from16 v23, v8

    move-object v11, v15

    goto/16 :goto_3

    .line 66
    :cond_1
    move-object v4, v9

    .local v4, "separator$iv":Ljava/lang/String;
    move-object v5, v6

    .local v5, "$this$chomp$iv":Ljava/lang/String;
    const/16 v22, 0x0

    .line 127
    .local v22, "$i$f$chomp":I
    move-object v3, v5

    check-cast v3, Ljava/lang/CharSequence;

    const/16 v23, 0x6

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v11, v5

    .end local v5    # "$this$chomp$iv":Ljava/lang/String;
    .local v11, "$this$chomp$iv":Ljava/lang/String;
    move/from16 v5, v25

    move-object/from16 v25, v6

    .end local v6    # "it":Ljava/lang/String;
    .local v25, "it":Ljava/lang/String;
    move/from16 v6, v26

    move-object/from16 v28, v7

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .local v28, "destination$iv$iv":Ljava/util/Collection;
    move/from16 v7, v23

    move-object/from16 v23, v8

    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .local v23, "$this$map$iv":Ljava/lang/Iterable;
    move-object/from16 v8, v24

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    .line 128
    .local v3, "idx$iv":I
    nop

    .line 129
    if-ne v3, v12, :cond_2

    const/4 v5, 0x0

    .line 66
    .local v5, "$i$a$-chomp-RangesKt$parseRangesSpecifier$allRanges$1$1":I
    invoke-static {v0, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 129
    .end local v5    # "$i$a$-chomp-RangesKt$parseRangesSpecifier$allRanges$1$1":I
    goto :goto_1

    .line 130
    :cond_2
    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 128
    :goto_1
    nop

    .line 66
    .end local v3    # "idx$iv":I
    .end local v4    # "separator$iv":Ljava/lang/String;
    .end local v11    # "$this$chomp$iv":Ljava/lang/String;
    .end local v22    # "$i$f$chomp":I
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "from":Ljava/lang/String;
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "to":Ljava/lang/String;
    nop

    .line 68
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    move v8, v14

    :goto_2
    if-eqz v8, :cond_4

    new-instance v5, Lio/ktor/http/ContentRange$Bounded;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v11, v15

    .end local v15    # "allRangesString":Ljava/lang/String;
    .local v11, "allRangesString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v5, v6, v7, v14, v15}, Lio/ktor/http/ContentRange$Bounded;-><init>(JJ)V

    check-cast v5, Lio/ktor/http/ContentRange;

    move-object v3, v5

    goto :goto_3

    .line 69
    .end local v11    # "allRangesString":Ljava/lang/String;
    .restart local v15    # "allRangesString":Ljava/lang/String;
    :cond_4
    move-object v11, v15

    .end local v15    # "allRangesString":Ljava/lang/String;
    .restart local v11    # "allRangesString":Ljava/lang/String;
    new-instance v5, Lio/ktor/http/ContentRange$TailFrom;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lio/ktor/http/ContentRange$TailFrom;-><init>(J)V

    check-cast v5, Lio/ktor/http/ContentRange;

    move-object v3, v5

    .line 63
    .end local v3    # "from":Ljava/lang/String;
    .end local v4    # "to":Ljava/lang/String;
    :goto_3
    nop

    .line 126
    .end local v21    # "$i$a$-map-RangesKt$parseRangesSpecifier$allRanges$1":I
    .end local v25    # "it":Ljava/lang/String;
    move-object/from16 v4, v28

    .end local v28    # "destination$iv$iv":Ljava/util/Collection;
    .local v4, "destination$iv$iv":Ljava/util/Collection;
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v7, v4

    move-object v15, v11

    move-object/from16 v8, v23

    const/4 v11, 0x0

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 131
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "allRangesString":Ljava/lang/String;
    .end local v20    # "item$iv$iv":Ljava/lang/Object;
    .end local v23    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v7    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v15    # "allRangesString":Ljava/lang/String;
    :cond_5
    move-object v4, v7

    move-object/from16 v23, v8

    move-object v11, v15

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v15    # "allRangesString":Ljava/lang/String;
    .end local v17    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$mapTo":I
    .restart local v11    # "allRangesString":Ljava/lang/String;
    .restart local v23    # "$this$map$iv":Ljava/lang/Iterable;
    move-object v0, v4

    check-cast v0, Ljava/util/List;

    .line 124
    nop

    .line 62
    .end local v16    # "$i$f$map":I
    .end local v23    # "$this$map$iv":Ljava/lang/Iterable;
    nop

    .line 74
    .local v0, "allRanges":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    move-object v1, v13

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v14, 0x1

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_7

    goto :goto_6

    .line 78
    :cond_7
    new-instance v1, Lio/ktor/http/RangesSpecifier;

    invoke-direct {v1, v13, v0}, Lio/ktor/http/RangesSpecifier;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 79
    .local v1, "spec":Lio/ktor/http/RangesSpecifier;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lio/ktor/http/RangesSpecifier;->isValid$default(Lio/ktor/http/RangesSpecifier;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_8

    move-object/from16 v27, v1

    goto :goto_5

    :cond_8
    const/16 v27, 0x0

    :goto_5
    return-object v27

    .line 75
    .end local v1    # "spec":Lio/ktor/http/RangesSpecifier;
    :cond_9
    :goto_6
    const/4 v1, 0x0

    return-object v1

    .line 80
    .end local v0    # "allRanges":Ljava/util/List;
    .end local v11    # "allRangesString":Ljava/lang/String;
    .end local v13    # "unit":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static final toLongRanges(Ljava/util/List;J)Ljava/util/List;
    .locals 21
    .param p0, "$this$toLongRanges"    # Ljava/util/List;
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/http/ContentRange;",
            ">;J)",
            "Ljava/util/List<",
            "Lkotlin/ranges/LongRange;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 133
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 134
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lio/ktor/http/ContentRange;

    .local v10, "it":Lio/ktor/http/ContentRange;
    const/4 v11, 0x0

    .line 86
    .local v11, "$i$a$-map-RangesKt$toLongRanges$1":I
    nop

    .line 87
    instance-of v12, v10, Lio/ktor/http/ContentRange$Bounded;

    if-eqz v12, :cond_0

    new-instance v12, Lkotlin/ranges/LongRange;

    move-object v13, v10

    check-cast v13, Lio/ktor/http/ContentRange$Bounded;

    invoke-virtual {v13}, Lio/ktor/http/ContentRange$Bounded;->getFrom()J

    move-result-wide v13

    move-object v15, v10

    check-cast v15, Lio/ktor/http/ContentRange$Bounded;

    move-object/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    .local v16, "$this$map$iv":Ljava/lang/Iterable;
    .local v17, "$i$f$map":I
    invoke-virtual {v15}, Lio/ktor/http/ContentRange$Bounded;->getTo()J

    move-result-wide v3

    const-wide/16 v18, 0x1

    move-object v15, v6

    move/from16 v20, v7

    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    .local v15, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .local v20, "$i$f$mapTo":I
    sub-long v6, v1, v18

    invoke-static {v3, v4, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v3

    invoke-direct {v12, v13, v14, v3, v4}, Lkotlin/ranges/LongRange;-><init>(JJ)V

    goto :goto_1

    .line 88
    .end local v15    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$map":I
    .end local v20    # "$i$f$mapTo":I
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v4    # "$i$f$map":I
    .restart local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v7    # "$i$f$mapTo":I
    :cond_0
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object v15, v6

    move/from16 v20, v7

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    .restart local v15    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v17    # "$i$f$map":I
    .restart local v20    # "$i$f$mapTo":I
    instance-of v3, v10, Lio/ktor/http/ContentRange$TailFrom;

    if-eqz v3, :cond_1

    move-object v3, v10

    check-cast v3, Lio/ktor/http/ContentRange$TailFrom;

    invoke-virtual {v3}, Lio/ktor/http/ContentRange$TailFrom;->getFrom()J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->until(JJ)Lkotlin/ranges/LongRange;

    move-result-object v12

    goto :goto_1

    .line 89
    :cond_1
    instance-of v3, v10, Lio/ktor/http/ContentRange$Suffix;

    if-eqz v3, :cond_2

    move-object v3, v10

    check-cast v3, Lio/ktor/http/ContentRange$Suffix;

    invoke-virtual {v3}, Lio/ktor/http/ContentRange$Suffix;->getLastCount()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v6, 0x0

    invoke-static {v3, v4, v6, v7}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lkotlin/ranges/RangesKt;->until(JJ)Lkotlin/ranges/LongRange;

    move-result-object v12

    .line 86
    :goto_1
    nop

    .line 134
    .end local v10    # "it":Lio/ktor/http/ContentRange;
    .end local v11    # "$i$a$-map-RangesKt$toLongRanges$1":I
    invoke-interface {v5, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v7, v20

    goto :goto_0

    .line 89
    .restart local v10    # "it":Lio/ktor/http/ContentRange;
    .restart local v11    # "$i$a$-map-RangesKt$toLongRanges$1":I
    :cond_2
    new-instance v3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v3

    .line 135
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    .end local v10    # "it":Lio/ktor/http/ContentRange;
    .end local v11    # "$i$a$-map-RangesKt$toLongRanges$1":I
    .end local v15    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$map":I
    .end local v20    # "$i$f$mapTo":I
    .restart local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v4    # "$i$f$map":I
    .restart local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v7    # "$i$f$mapTo":I
    :cond_3
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-object v15, v6

    move/from16 v20, v7

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    .restart local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .restart local v17    # "$i$f$map":I
    move-object v3, v5

    check-cast v3, Ljava/util/List;

    .line 132
    nop

    .end local v16    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$map":I
    check-cast v3, Ljava/lang/Iterable;

    .line 91
    nop

    .local v3, "$this$filterNot$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 136
    .local v4, "$i$f$filterNot":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .restart local v5    # "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 137
    .local v7, "$i$f$filterNotTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lkotlin/ranges/LongRange;

    .local v10, "it":Lkotlin/ranges/LongRange;
    const/4 v11, 0x0

    .line 91
    .local v11, "$i$a$-filterNot-RangesKt$toLongRanges$2":I
    invoke-virtual {v10}, Lkotlin/ranges/LongRange;->isEmpty()Z

    move-result v10

    .line 137
    .end local v10    # "it":Lkotlin/ranges/LongRange;
    .end local v11    # "$i$a$-filterNot-RangesKt$toLongRanges$2":I
    if-nez v10, :cond_4

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    :cond_5
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$filterNotTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$filterNotTo":I
    check-cast v5, Ljava/util/List;

    .line 136
    nop

    .line 91
    .end local v3    # "$this$filterNot$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$filterNot":I
    return-object v5
.end method
