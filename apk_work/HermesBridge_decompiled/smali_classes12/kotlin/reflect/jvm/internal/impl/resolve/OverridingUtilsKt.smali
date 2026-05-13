.class public final Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilsKt;
.super Ljava/lang/Object;
.source "overridingUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\noverridingUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 overridingUtils.kt\norg/jetbrains/kotlin/resolve/OverridingUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n1620#2,3:85\n847#2,2:88\n*S KotlinDebug\n*F\n+ 1 overridingUtils.kt\norg/jetbrains/kotlin/resolve/OverridingUtilsKt\n*L\n40#1:85,3\n72#1:88,2\n*E\n"
.end annotation


# direct methods
.method public static final selectMostSpecificInEachOverridableGroup(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 16
    .param p0, "$this$selectMostSpecificInEachOverridableGroup"    # Ljava/util/Collection;
    .param p1, "descriptorByHandle"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<H:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TH;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TH;+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;",
            ">;)",
            "Ljava/util/Collection<",
            "TH;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "descriptorByHandle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    return-object v0

    .line 53
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 54
    .local v2, "queue":Ljava/util/LinkedList;
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->Companion:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$Companion;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$Companion;->create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    move-result-object v4

    .line 56
    .local v4, "result":Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;
    :goto_0
    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v3

    if-eqz v5, :cond_5

    .line 57
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    .local v5, "nextHandle":Ljava/lang/Object;
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->Companion:Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$Companion;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet$Companion;->create()Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;

    move-result-object v6

    .line 62
    .local v6, "conflictedHandles":Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;
    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    new-instance v8, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilsKt$selectMostSpecificInEachOverridableGroup$overridableGroup$1;

    invoke-direct {v8, v6}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtilsKt$selectMostSpecificInEachOverridableGroup$overridableGroup$1;-><init>(Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;)V

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v7, v1, v8}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->extractMembersOverridableInBothWays(Ljava/lang/Object;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v7

    const-string v8, "conflictedHandles = Smar\u2026nflictedHandles.add(it) }"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    nop

    .line 64
    .local v7, "overridableGroup":Ljava/util/Collection;
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v8

    if-ne v8, v3, :cond_1

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 65
    move-object v8, v7

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "overridableGroup.single()"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    invoke-static {v7, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->selectMostSpecificMember(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "selectMostSpecificMember\u2026roup, descriptorByHandle)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .local v8, "mostSpecific":Ljava/lang/Object;
    invoke-interface {v1, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    .line 72
    .local v9, "mostSpecificDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    move-object v10, v7

    check-cast v10, Ljava/lang/Iterable;

    .local v10, "$this$filterNotTo$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 88
    .local v11, "$i$f$filterNotTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .local v13, "element$iv":Ljava/lang/Object;
    move-object v14, v13

    .local v14, "it":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 73
    .local v15, "$i$a$-filterNotTo-OverridingUtilsKt$selectMostSpecificInEachOverridableGroup$1":I
    const-string v3, "it"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;

    invoke-static {v9, v3}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->isMoreSpecific(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;)Z

    move-result v3

    .line 88
    .end local v14    # "it":Ljava/lang/Object;
    .end local v15    # "$i$a$-filterNotTo-OverridingUtilsKt$selectMostSpecificInEachOverridableGroup$1":I
    if-nez v3, :cond_2

    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    .line 89
    .end local v13    # "element$iv":Ljava/lang/Object;
    :cond_3
    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    .line 76
    .end local v10    # "$this$filterNotTo$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$filterNotTo":I
    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v10, 0x1

    xor-int/2addr v3, v10

    if-eqz v3, :cond_4

    .line 77
    move-object v3, v6

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_4
    invoke-virtual {v4, v8}, Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;->add(Ljava/lang/Object;)Z

    move v3, v10

    goto/16 :goto_0

    .line 82
    .end local v5    # "nextHandle":Ljava/lang/Object;
    .end local v6    # "conflictedHandles":Lkotlin/reflect/jvm/internal/impl/utils/SmartSet;
    .end local v7    # "overridableGroup":Ljava/util/Collection;
    .end local v8    # "mostSpecific":Ljava/lang/Object;
    .end local v9    # "mostSpecificDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;
    :cond_5
    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    return-object v3
.end method
