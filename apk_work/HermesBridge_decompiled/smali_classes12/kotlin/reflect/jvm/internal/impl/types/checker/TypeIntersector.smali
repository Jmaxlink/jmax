.class public final Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;
.super Ljava/lang/Object;
.source "IntersectionType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntersectionType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/TypeIntersector\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1549#2:184\n1620#2,2:185\n1622#2:188\n1789#2,3:189\n1620#2,3:192\n1549#2:195\n1620#2,3:196\n2661#2,7:199\n1747#2,3:206\n1#3:187\n*S KotlinDebug\n*F\n+ 1 IntersectionType.kt\norg/jetbrains/kotlin/types/checker/TypeIntersector\n*L\n80#1:184\n80#1:185,2\n80#1:188\n87#1:189,3\n98#1:192,3\n104#1:195\n104#1:196,3\n104#1:199,7\n137#1:206,3\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isStrictSupertype(Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1
    .param p0, "$this"    # Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;
    .param p1, "subtype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p2, "supertype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 70
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->isStrictSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    return v0
.end method

.method private final filterTypes(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;
    .locals 12
    .param p1, "inputTypes"    # Ljava/util/Collection;
    .param p2, "predicate"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;"
        }
    .end annotation

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v0, "filteredTypes":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "filteredTypes.iterator()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 137
    .local v2, "upper":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 206
    .local v4, "$i$f$any":I
    instance-of v5, v3, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 207
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .local v8, "lower":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v9, 0x0

    .line 137
    .local v9, "$i$a$-any-TypeIntersector$filterTypes$shouldFilter$1":I
    const/4 v10, 0x1

    if-eq v8, v2, :cond_3

    const-string v11, "lower"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "upper"

    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v8, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_3

    move v8, v10

    goto :goto_1

    :cond_3
    move v8, v6

    .line 207
    .end local v8    # "lower":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v9    # "$i$a$-any-TypeIntersector$filterTypes$shouldFilter$1":I
    :goto_1
    if-eqz v8, :cond_2

    move v6, v10

    goto :goto_2

    .line 208
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .line 137
    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$any":I
    :goto_2
    move v3, v6

    .line 139
    .local v3, "shouldFilter":Z
    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .end local v2    # "upper":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v3    # "shouldFilter":Z
    goto :goto_0

    .line 141
    :cond_5
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    return-object v2
.end method

.method private final intersectTypesWithoutIntersectionType(Ljava/util/Set;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 5
    .param p1, "inputTypes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    .line 110
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0

    .line 114
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$errorMessage$1;-><init>(Ljava/util/Set;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 116
    .local v0, "errorMessage":Lkotlin/jvm/functions/Function0;
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1;

    invoke-direct {v3, p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredEqualTypes$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->filterTypes(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;

    move-result-object v2

    .line 117
    .local v2, "filteredEqualTypes":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_4

    .line 119
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;->Companion:Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$Companion;

    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor$Companion;->findIntersectionType(Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v1, v3

    .line 187
    .local v1, "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v3, 0x0

    .line 119
    .local v3, "$i$a$-let-TypeIntersector$intersectTypesWithoutIntersectionType$1":I
    return-object v1

    .line 121
    .end local v1    # "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v3    # "$i$a$-let-TypeIntersector$intersectTypesWithoutIntersectionType$1":I
    :cond_1
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$intersectTypesWithoutIntersectionType$filteredSuperAndEqualTypes$1;-><init>(Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->filterTypes(Ljava/util/Collection;Lkotlin/jvm/functions/Function2;)Ljava/util/Collection;

    move-result-object v3

    .line 122
    .local v3, "filteredSuperAndEqualTypes":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v1, v4

    if-eqz v1, :cond_3

    .line 124
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    move-object v1, v3

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v1

    .line 126
    :cond_2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-object v4, p1

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->createType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    return-object v1

    .line 122
    :cond_3
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 117
    .end local v3    # "filteredSuperAndEqualTypes":Ljava/util/Collection;
    :cond_4
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private final isStrictSupertype(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 3
    .param p1, "subtype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p2, "supertype"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 145
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v0

    .local v0, "$this$isStrictSupertype_u24lambda_u248":Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;
    const/4 v1, 0x0

    .line 146
    .local v1, "$i$a$-with-TypeIntersector$isStrictSupertype$1":I
    invoke-virtual {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 145
    .end local v0    # "$this$isStrictSupertype_u24lambda_u248":Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;
    .end local v1    # "$i$a$-with-TypeIntersector$isStrictSupertype$1":I
    :goto_0
    return v2
.end method


# virtual methods
.method public final intersectTypes$descriptors(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 18
    .param p1, "types"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/SimpleType;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "types"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_c

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "inputTypes":Ljava/util/ArrayList;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0xa

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 79
    .local v5, "type":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v7

    instance-of v7, v7, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v7, :cond_3

    .line 80
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v7

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object v7

    const-string v8, "type.constructor.supertypes"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 184
    .local v8, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v7, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v9

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v7

    .local v9, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 185
    .local v10, "$i$f$mapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 186
    .local v12, "item$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .local v13, "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v14, 0x0

    .line 81
    .local v14, "$i$a$-map-TypeIntersector$intersectTypes$2":I
    const-string v15, "it"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;->upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v15

    .line 187
    .local v15, "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/16 v16, 0x0

    .line 81
    .local v16, "$i$a$-let-TypeIntersector$intersectTypes$2$1":I
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v15, v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->makeNullableAsSpecified(Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v17

    move-object/from16 v15, v17

    .line 186
    .end local v13    # "it":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v14    # "$i$a$-map-TypeIntersector$intersectTypes$2":I
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v16    # "$i$a$-let-TypeIntersector$intersectTypes$2$1":I
    :cond_1
    invoke-interface {v6, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 188
    .end local v12    # "item$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 184
    nop

    .end local v7    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$map":I
    check-cast v6, Ljava/util/Collection;

    .line 80
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 87
    .end local v5    # "type":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    :cond_4
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$fold$iv":Ljava/lang/Iterable;
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->START:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    .local v5, "initial$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 189
    .local v7, "$i$f$fold":I
    move-object v8, v5

    .line 190
    .local v8, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .local v11, "p1":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    move-object v12, v8

    .local v12, "p0":Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    const/4 v13, 0x0

    .line 87
    .local v13, "$i$a$-fold-TypeIntersector$intersectTypes$resultNullability$1":I
    invoke-virtual {v12, v11}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->combine(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    move-result-object v11

    .line 190
    .end local v11    # "p1":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .end local v12    # "p0":Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    .end local v13    # "$i$a$-fold-TypeIntersector$intersectTypes$resultNullability$1":I
    move-object v8, v11

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_3

    .line 191
    :cond_5
    nop

    .line 87
    .end local v4    # "$this$fold$iv":Ljava/lang/Iterable;
    .end local v5    # "initial$iv":Ljava/lang/Object;
    .end local v7    # "$i$f$fold":I
    .end local v8    # "accumulator$iv":Ljava/lang/Object;
    move-object v4, v8

    .line 98
    .local v4, "resultNullability":Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$mapTo$iv":Ljava/lang/Iterable;
    new-instance v7, Ljava/util/LinkedHashSet;

    invoke-direct {v7}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv":Ljava/util/Collection;
    const/4 v8, 0x0

    .line 192
    .local v8, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 193
    .local v10, "item$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .local v11, "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v12, 0x0

    .line 99
    .local v12, "$i$a$-mapTo-TypeIntersector$intersectTypes$correctNullability$1":I
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;->NOT_NULL:Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;

    if-ne v4, v13, :cond_7

    .line 100
    instance-of v13, v11, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    if-eqz v13, :cond_6

    move-object v13, v11

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->withNotNullProjection(Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;)Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedType;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    goto :goto_5

    :cond_6
    move-object v13, v11

    :goto_5
    const/4 v14, 0x0

    invoke-static {v13, v2, v3, v14}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->makeSimpleTypeDefinitelyNotNullOrNotNull$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v13

    goto :goto_6

    .line 101
    :cond_7
    move-object v13, v11

    .line 99
    :goto_6
    nop

    .line 193
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v12    # "$i$a$-mapTo-TypeIntersector$intersectTypes$correctNullability$1":I
    invoke-interface {v7, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 194
    .end local v10    # "item$iv":Ljava/lang/Object;
    :cond_8
    nop

    .line 98
    .end local v5    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v7    # "destination$iv":Ljava/util/Collection;
    .end local v8    # "$i$f$mapTo":I
    move-object v2, v7

    check-cast v2, Ljava/util/LinkedHashSet;

    .line 104
    .local v2, "correctNullability":Ljava/util/LinkedHashSet;
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 195
    .local v5, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v7

    check-cast v6, Ljava/util/Collection;

    .restart local v6    # "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v3

    .local v7, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 196
    .restart local v8    # "$i$f$mapTo":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 197
    .local v10, "item$iv$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .restart local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v12, 0x0

    .line 104
    .local v12, "$i$a$-map-TypeIntersector$intersectTypes$resultAttributes$1":I
    invoke-virtual {v11}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v11

    .line 197
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v12    # "$i$a$-map-TypeIntersector$intersectTypes$resultAttributes$1":I
    invoke-interface {v6, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 198
    .end local v10    # "item$iv$iv":Ljava/lang/Object;
    :cond_9
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapTo":I
    check-cast v6, Ljava/util/List;

    .line 195
    nop

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$map":I
    check-cast v6, Ljava/lang/Iterable;

    .line 104
    move-object v3, v6

    .local v3, "$this$reduce$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 199
    .local v5, "$i$f$reduce":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 200
    .local v6, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 201
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 202
    .local v7, "accumulator$iv":Ljava/lang/Object;
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 203
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .local v8, "y":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    move-object v9, v7

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .local v9, "x":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    const/4 v10, 0x0

    .line 104
    .local v10, "$i$a$-reduce-TypeIntersector$intersectTypes$resultAttributes$2":I
    invoke-virtual {v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->intersect(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v8

    .line 203
    .end local v8    # "y":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .end local v9    # "x":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .end local v10    # "$i$a$-reduce-TypeIntersector$intersectTypes$resultAttributes$2":I
    move-object v7, v8

    goto :goto_8

    .line 205
    :cond_a
    nop

    .line 104
    .end local v3    # "$this$reduce$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$reduce":I
    .end local v6    # "iterator$iv":Ljava/util/Iterator;
    .end local v7    # "accumulator$iv":Ljava/lang/Object;
    move-object v3, v7

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 105
    .local v3, "resultAttributes":Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    move-object v5, v2

    check-cast v5, Ljava/util/Set;

    move-object/from16 v7, p0

    invoke-direct {v7, v5}, Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector;->intersectTypesWithoutIntersectionType(Ljava/util/Set;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    invoke-virtual {v5, v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v5

    return-object v5

    .line 200
    .local v3, "$this$reduce$iv":Ljava/lang/Iterable;
    .restart local v5    # "$i$f$reduce":I
    .restart local v6    # "iterator$iv":Ljava/util/Iterator;
    :cond_b
    move-object/from16 v7, p0

    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Empty collection can\'t be reduced."

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 73
    .end local v1    # "inputTypes":Ljava/util/ArrayList;
    .end local v2    # "correctNullability":Ljava/util/LinkedHashSet;
    .end local v3    # "$this$reduce$iv":Ljava/lang/Iterable;
    .end local v4    # "resultNullability":Lkotlin/reflect/jvm/internal/impl/types/checker/TypeIntersector$ResultNullability;
    .end local v5    # "$i$f$reduce":I
    .end local v6    # "iterator$iv":Ljava/util/Iterator;
    :cond_c
    move-object/from16 v7, p0

    const/4 v1, 0x0

    .line 74
    .local v1, "$i$a$-assert-TypeIntersector$intersectTypes$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size should be at least 2, but it is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .end local v1    # "$i$a$-assert-TypeIntersector$intersectTypes$1":I
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
