.class public abstract Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;
.super Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;
.source "KotlinTypePreparator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$Default;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinTypePreparator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 5 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt$transformComponents$1\n*L\n1#1,76:1\n1#2:77\n1549#3:78\n1620#3,3:79\n1549#3:82\n1620#3,3:83\n1549#3:92\n1620#3,2:93\n1622#3:101\n98#4,6:86\n104#4:95\n105#4,4:97\n112#4,7:102\n99#5:96\n*S KotlinDebug\n*F\n+ 1 KotlinTypePreparator.kt\norg/jetbrains/kotlin/types/checker/KotlinTypePreparator\n*L\n27#1:78\n27#1:79,3\n37#1:82\n37#1:83,3\n48#1:92\n48#1:93,2\n48#1:101\n48#1:86,6\n48#1:95\n48#1:97,4\n48#1:102,7\n48#1:96\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypePreparator;-><init>()V

    return-void
.end method

.method private final transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 16
    .param p1, "type"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    .line 21
    .local v0, "constructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 22
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    move-object v5, v1

    .line 77
    .local v5, "it":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    const/4 v6, 0x0

    .line 22
    .local v6, "$i$a$-takeIf-KotlinTypePreparator$transformToNewType$lowerType$1":I
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v7, v8, :cond_0

    const/4 v2, 0x1

    .end local v5    # "it":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v6    # "$i$a$-takeIf-KotlinTypePreparator$transformToNewType$lowerType$1":I
    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    :cond_2
    move-object v8, v4

    .line 25
    .local v8, "lowerType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getNewTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v1

    if-nez v1, :cond_4

    .line 26
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    .line 27
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getProjection()Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v10

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getSupertypes()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 78
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 79
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 80
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v9

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .local v11, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v12, 0x0

    .line 27
    .local v12, "$i$a$-map-KotlinTypePreparator$transformToNewType$1":I
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v11

    .line 80
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v12    # "$i$a$-map-KotlinTypePreparator$transformToNewType$1":I
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    move-object v11, v3

    check-cast v11, Ljava/util/List;

    .line 78
    nop

    .line 27
    .end local v2    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    const/4 v12, 0x0

    const/4 v13, 0x4

    const/4 v14, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->setNewTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;)V

    .line 29
    :cond_4
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    .line 30
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/calls/inference/CapturedTypeConstructorImpl;->getNewTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v10

    .line 29
    const/16 v12, 0x20

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v13}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v1

    .line 35
    .end local v8    # "lowerType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    :cond_5
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;

    if-eqz v1, :cond_7

    .line 37
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerValueTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 82
    .restart local v4    # "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    check-cast v3, Ljava/util/Collection;

    .restart local v3    # "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .restart local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 83
    .restart local v6    # "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 84
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .local v9, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v10, 0x0

    .line 37
    .local v10, "$i$a$-map-KotlinTypePreparator$transformToNewType$newConstructor$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v11

    invoke-static {v9, v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableAsSpecified(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v11

    const-string v12, "makeNullableAsSpecified(it, type.isMarkedNullable)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .end local v9    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v10    # "$i$a$-map-KotlinTypePreparator$transformToNewType$newConstructor$1":I
    invoke-interface {v3, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    :cond_6
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 82
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v3, Ljava/util/Collection;

    .line 37
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    .line 36
    nop

    .line 39
    .local v1, "newConstructor":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v3

    .line 40
    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 41
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 42
    nop

    .line 43
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v6

    .line 38
    invoke-static {v3, v4, v5, v2, v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    return-object v2

    .line 47
    .end local v1    # "newConstructor":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    :cond_7
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 48
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 86
    .local v1, "$this$transformComponents_u24default$iv":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    const/4 v2, 0x0

    .line 90
    .local v2, "$i$f$transformComponents":I
    const/4 v5, 0x0

    .line 91
    .local v5, "changed$iv":Z
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$map$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 92
    .local v7, "$i$f$map":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v8

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v8, v6

    .local v8, "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 93
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 94
    .local v11, "item$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .local v12, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v13, 0x0

    .line 95
    .local v13, "$i$a$-map-IntersectionTypeConstructorKt$transformComponents$newSupertypes$1$iv":I
    const/4 v14, 0x0

    .local v14, "$i$a$-transformComponents-IntersectionTypeConstructorKt$transformComponents$1":I
    move-object v15, v12

    .line 96
    .local v15, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    nop

    .line 95
    .end local v14    # "$i$a$-transformComponents-IntersectionTypeConstructorKt$transformComponents$1":I
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    nop

    .line 97
    const/4 v5, 0x1

    .line 98
    move-object v14, v12

    .local v14, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v15, 0x0

    .line 48
    .local v15, "$i$a$-transformComponents$default-KotlinTypePreparator$transformToNewType$newConstructor$2":I
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v14

    .line 98
    .end local v14    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v15    # "$i$a$-transformComponents$default-KotlinTypePreparator$transformToNewType$newConstructor$2":I
    nop

    .line 95
    nop

    .line 94
    .end local v12    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v13    # "$i$a$-map-IntersectionTypeConstructorKt$transformComponents$newSupertypes$1$iv":I
    invoke-interface {v3, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 101
    .end local v11    # "item$iv$iv$iv":Ljava/lang/Object;
    :cond_8
    nop

    .end local v3    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v3, Ljava/util/List;

    .line 92
    nop

    .line 91
    .end local v6    # "$this$map$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$map":I
    nop

    .line 102
    .local v3, "newSupertypes$iv":Ljava/util/List;
    if-nez v5, :cond_9

    goto :goto_4

    .line 104
    :cond_9
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    if-eqz v6, :cond_a

    move-object v4, v6

    .local v4, "alternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-let-IntersectionTypeConstructorKt$transformComponents$updatedAlternative$1$iv":I
    const/4 v7, 0x0

    .local v7, "$i$a$-transformComponents-IntersectionTypeConstructorKt$transformComponents$1":I
    move-object v8, v4

    .line 96
    .local v8, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    nop

    .line 105
    .end local v7    # "$i$a$-transformComponents-IntersectionTypeConstructorKt$transformComponents$1":I
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    move-object v7, v4

    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v8, 0x0

    .line 48
    .local v8, "$i$a$-transformComponents$default-KotlinTypePreparator$transformToNewType$newConstructor$2":I
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    .line 105
    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v8    # "$i$a$-transformComponents$default-KotlinTypePreparator$transformToNewType$newConstructor$2":I
    nop

    .line 104
    .end local v4    # "alternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v6    # "$i$a$-let-IntersectionTypeConstructorKt$transformComponents$updatedAlternative$1$iv":I
    move-object v4, v7

    .line 108
    .local v4, "updatedAlternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    :cond_a
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-object v7, v3

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v6

    move-object v4, v6

    .line 48
    .end local v1    # "$this$transformComponents_u24default$iv":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .end local v2    # "$i$f$transformComponents":I
    .end local v3    # "newSupertypes$iv":Ljava/util/List;
    .end local v4    # "updatedAlternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v5    # "changed$iv":Z
    :goto_4
    if-nez v4, :cond_b

    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    :cond_b
    move-object v1, v4

    .line 49
    .local v1, "newConstructor":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    return-object v2

    .line 54
    .end local v0    # "constructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .end local v1    # "newConstructor":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    :cond_c
    return-object p1
.end method


# virtual methods
.method public prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 4
    .param p1, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_4

    .line 59
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .line 60
    .local v0, "unwrappedType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    nop

    .line 61
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    goto :goto_1

    .line 62
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v1, :cond_3

    .line 63
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    .line 64
    .local v1, "newLower":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->transformToNewType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .line 65
    .local v2, "newUpper":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    if-ne v1, v3, :cond_2

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    move-object v1, v0

    .end local v1    # "newLower":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v2    # "newUpper":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    goto :goto_1

    .line 66
    .restart local v1    # "newLower":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .restart local v2    # "newUpper":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    :cond_2
    :goto_0
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v3

    move-object v1, v3

    .line 71
    .end local v1    # "newLower":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v2    # "newUpper":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    :goto_1
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;

    invoke-direct {v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator$prepareType$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    .line 60
    return-object v1

    .line 68
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 58
    .end local v0    # "unwrappedType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .locals 1
    .param p1, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 16
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypePreparator;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    return-object v0
.end method
