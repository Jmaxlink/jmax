.class public final Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;
.super Ljava/lang/Object;
.source "SpecialTypes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpecialTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialTypes.kt\norg/jetbrains/kotlin/types/SpecialTypesKt\n+ 2 IntersectionTypeConstructor.kt\norg/jetbrains/kotlin/types/IntersectionTypeConstructorKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,216:1\n102#2,2:217\n104#2,5:222\n112#2,7:228\n1549#3:219\n1620#3,2:220\n1622#3:227\n*S KotlinDebug\n*F\n+ 1 SpecialTypes.kt\norg/jetbrains/kotlin/types/SpecialTypesKt\n*L\n214#1:217,2\n214#1:222,5\n214#1:228,7\n214#1:219\n214#1:220,2\n214#1:227\n*E\n"
.end annotation


# direct methods
.method public static final getAbbreviatedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;
    .locals 2
    .param p0, "$this$getAbbreviatedType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final getAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1
    .param p0, "$this$getAbbreviation"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->getAbbreviatedType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;->getAbbreviation()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1
    .param p0, "$this$isDefinitelyNotNullType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    return v0
.end method

.method private static final makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .locals 18
    .param p0, "$this$makeDefinitelyNotNullOrNotNull"    # Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    .line 214
    move-object/from16 v0, p0

    .local v0, "$this$transformComponents$iv":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    const/4 v1, 0x0

    .line 217
    .local v1, "$i$f$transformComponents":I
    const/4 v2, 0x0

    .line 218
    .local v2, "changed$iv":Z
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 219
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 220
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 221
    .local v9, "item$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v9

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .local v13, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v14, 0x0

    .line 222
    .local v14, "$i$a$-map-IntersectionTypeConstructorKt$transformComponents$newSupertypes$1$iv":I
    move-object v15, v13

    .local v15, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/16 v16, 0x0

    .line 214
    .local v16, "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$1":I
    invoke-static {v15}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v15

    .line 222
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v16    # "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$1":I
    if-eqz v15, :cond_0

    .line 223
    const/4 v2, 0x1

    .line 224
    move-object v15, v13

    .restart local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/16 v16, 0x0

    .line 214
    .local v16, "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$2":I
    move/from16 v17, v1

    .end local v1    # "$i$f$transformComponents":I
    .local v17, "$i$f$transformComponents":I
    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    invoke-static {v1, v11, v10, v12}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeDefinitelyNotNullOrNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 224
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v16    # "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$2":I
    goto :goto_1

    .line 226
    .end local v17    # "$i$f$transformComponents":I
    .restart local v1    # "$i$f$transformComponents":I
    :cond_0
    move/from16 v17, v1

    .end local v1    # "$i$f$transformComponents":I
    .restart local v17    # "$i$f$transformComponents":I
    move-object v1, v13

    .line 222
    :goto_1
    nop

    .line 221
    .end local v13    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v14    # "$i$a$-map-IntersectionTypeConstructorKt$transformComponents$newSupertypes$1$iv":I
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v1, v17

    goto :goto_0

    .line 227
    .end local v9    # "item$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$transformComponents":I
    .restart local v1    # "$i$f$transformComponents":I
    :cond_1
    move/from16 v17, v1

    .end local v1    # "$i$f$transformComponents":I
    .end local v5    # "destination$iv$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    .restart local v17    # "$i$f$transformComponents":I
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 219
    nop

    .line 218
    .end local v3    # "$this$map$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    nop

    .line 228
    .local v1, "newSupertypes$iv":Ljava/util/List;
    if-nez v2, :cond_2

    goto :goto_3

    .line 230
    :cond_2
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->getAlternativeType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    if-eqz v3, :cond_4

    .local v3, "alternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v4, 0x0

    .line 231
    .local v4, "$i$a$-let-IntersectionTypeConstructorKt$transformComponents$updatedAlternative$1$iv":I
    move-object v5, v3

    .local v5, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v6, 0x0

    .line 214
    .local v6, "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$1":I
    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    .line 231
    .end local v5    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v6    # "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$1":I
    if-eqz v5, :cond_3

    move-object v5, v3

    .restart local v5    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v6, 0x0

    .line 214
    .local v6, "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$2":I
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    invoke-static {v7, v11, v10, v12}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeDefinitelyNotNullOrNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 231
    .end local v5    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v6    # "$i$a$-transformComponents-SpecialTypesKt$makeDefinitelyNotNullOrNotNull$2":I
    move-object v12, v7

    goto :goto_2

    :cond_3
    move-object v12, v3

    .line 230
    .end local v3    # "alternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v4    # "$i$a$-let-IntersectionTypeConstructorKt$transformComponents$updatedAlternative$1$iv":I
    :cond_4
    :goto_2
    move-object v3, v12

    .line 234
    .local v3, "updatedAlternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v3}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->setAlternative(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v12

    .line 214
    .end local v0    # "$this$transformComponents$iv":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .end local v1    # "newSupertypes$iv":Ljava/util/List;
    .end local v2    # "changed$iv":Z
    .end local v3    # "updatedAlternative$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v17    # "$i$f$transformComponents":I
    :goto_3
    return-object v12
.end method

.method public static final makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 7
    .param p0, "$this$makeDefinitelyNotNullOrNotNull"    # Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .param p1, "useCorrectedNullabilityForTypeParameters"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->Companion:Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;->makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    goto :goto_1

    .line 203
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeIntersectionTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static synthetic makeDefinitelyNotNullOrNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .locals 0

    .line 201
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Z)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    return-object p0
.end method

.method private static final makeIntersectionTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3
    .param p0, "$this$makeIntersectionTypeDefinitelyNotNullOrNotNull"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 207
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-object v2

    .line 208
    .local v0, "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    :cond_1
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v2

    .line 210
    .local v1, "definitelyNotNullConstructor":Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    :cond_2
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    return-object v2
.end method

.method public static final makeSimpleTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7
    .param p0, "$this$makeSimpleTypeDefinitelyNotNullOrNotNull"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .param p1, "useCorrectedNullabilityForTypeParameters"    # Z

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;->Companion:Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;

    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;->makeDefinitelyNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType$Companion;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;ZZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/DefinitelyNotNullType;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    goto :goto_0

    .line 195
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeIntersectionTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 194
    if-nez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic makeSimpleTypeDefinitelyNotNullOrNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 0

    .line 193
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeSimpleTypeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p0

    return-object p0
.end method

.method public static final withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 1
    .param p0, "$this$withAbbreviation"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .param p1, "abbreviatedType"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 72
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method

.method public static final withNotNullProjection(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;
    .locals 8
    .param p0, "$this$withNotNullProjection"    # Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->getCaptureStatus()Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->getLowerType()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;->isMarkedNullable()Z

    move-result v6

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZZ)V

    return-object v0
.end method
