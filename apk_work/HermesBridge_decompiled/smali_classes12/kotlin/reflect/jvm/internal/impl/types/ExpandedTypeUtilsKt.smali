.class public final Lkotlin/reflect/jvm/internal/impl/types/ExpandedTypeUtilsKt;
.super Ljava/lang/Object;
.source "expandedTypeUtils.kt"


# direct methods
.method public static final computeExpandedTypeForInlineClass(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .locals 1
    .param p0, "$this$computeExpandedTypeForInlineClass"    # Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;
    .param p1, "inlineClassType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inlineClassType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/ExpandedTypeUtilsKt;->computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v0

    return-object v0
.end method

.method private static final computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .locals 7
    .param p0, "$this$computeExpandedTypeInner"    # Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;
    .param p1, "kotlinType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p2, "visitedClassifiers"    # Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;",
            "Ljava/util/HashSet<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;"
        }
    .end annotation

    .line 18
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    .line 19
    .local v0, "classifier":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 21
    :cond_0
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getTypeParameterClassifier(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v1

    .line 23
    .local v1, "typeParameter":Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;
    nop

    .line 24
    if-eqz v1, :cond_7

    .line 25
    invoke-interface {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getRepresentativeUpperBound(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v3

    .line 26
    .local v3, "upperBound":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-static {p0, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/ExpandedTypeUtilsKt;->computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v4

    .line 27
    if-eqz v4, :cond_6

    .line 26
    nop

    .line 27
    move-object v2, v4

    .local v2, "expandedUpperBound":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    const/4 v4, 0x0

    .line 29
    .local v4, "$i$a$-let-ExpandedTypeUtilsKt$computeExpandedTypeInner$1":I
    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v5

    invoke-interface {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v5

    if-nez v5, :cond_2

    instance-of v5, v3, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    invoke-interface {p0, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 28
    :goto_1
    nop

    .line 30
    .local v5, "upperBoundIsPrimitiveOrInlineClass":Z
    nop

    .line 31
    instance-of v6, v2, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    if-eqz v6, :cond_3

    move-object v6, v2

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    invoke-interface {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 32
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    invoke-interface {p0, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v6

    goto :goto_3

    .line 33
    :cond_3
    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 34
    :cond_4
    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v6

    goto :goto_3

    .line 33
    :cond_5
    :goto_2
    move-object v6, v2

    .line 30
    :goto_3
    nop

    .line 27
    .end local v2    # "expandedUpperBound":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v4    # "$i$a$-let-ExpandedTypeUtilsKt$computeExpandedTypeInner$1":I
    .end local v5    # "upperBoundIsPrimitiveOrInlineClass":Z
    move-object v2, v6

    goto :goto_5

    .end local v3    # "upperBound":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    :cond_6
    goto :goto_5

    .line 39
    :cond_7
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isInlineClass(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 42
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->getUnsubstitutedUnderlyingType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v3

    if-nez v3, :cond_8

    return-object v2

    .line 43
    .local v3, "underlyingType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    :cond_8
    invoke-static {p0, v3, p2}, Lkotlin/reflect/jvm/internal/impl/types/ExpandedTypeUtilsKt;->computeExpandedTypeInner(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Ljava/util/HashSet;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v4

    if-nez v4, :cond_9

    return-object v2

    :cond_9
    move-object v2, v4

    .line 44
    .local v2, "expandedUnderlyingType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    nop

    .line 45
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    .line 50
    :cond_a
    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_4

    .line 53
    :cond_b
    instance-of v4, v2, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    if-eqz v4, :cond_c

    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    invoke-interface {p0, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->isPrimitiveType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_4

    .line 56
    :cond_c
    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;->makeNullable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    .end local v2    # "expandedUnderlyingType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v3    # "underlyingType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    goto :goto_5

    .line 60
    :cond_d
    nop

    .line 23
    :goto_4
    move-object v2, p1

    :goto_5
    return-object v2
.end method
