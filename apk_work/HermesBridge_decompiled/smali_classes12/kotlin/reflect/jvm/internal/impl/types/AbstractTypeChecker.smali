.class public final Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;
.super Ljava/lang/Object;
.source "AbstractTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractTypeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractTypeChecker\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/TypeCheckerState\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 TypeSystemContext.kt\norg/jetbrains/kotlin/types/model/TypeSystemContextKt\n*L\n1#1,835:1\n1#2:836\n1#2:853\n1#2:905\n1#2:943\n132#3,16:837\n148#3,13:854\n46#3,8:875\n132#3,16:889\n148#3,13:906\n132#3,16:927\n148#3,13:944\n1549#4:867\n1620#4,3:868\n1549#4:871\n1620#4,3:872\n1726#4,3:883\n1726#4,3:886\n766#4:919\n857#4:920\n858#4:926\n1360#4:957\n1446#4,5:958\n1747#4,3:963\n1747#4,3:966\n556#5,5:921\n*S KotlinDebug\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractTypeChecker\n*L\n342#1:853\n622#1:905\n692#1:943\n342#1:837,16\n342#1:854,13\n475#1:875,8\n622#1:889,16\n622#1:906,13\n692#1:927,16\n692#1:944,13\n378#1:867\n378#1:868,3\n389#1:871\n389#1:872,3\n561#1:883,3\n572#1:886,3\n667#1:919\n667#1:920\n667#1:926\n701#1:957\n701#1:958,5\n295#1:963,3\n303#1:966,3\n668#1:921,5\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

.field public static RUN_SLOW_ASSERTIONS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final checkSubtypeForIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 291
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v0

    .local v0, "$this$checkSubtypeForIntegerLiteralType_u24lambda_u247":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v1, 0x0

    .line 292
    .local v1, "$i$a$-with-AbstractTypeChecker$checkSubtypeForIntegerLiteralType$1":I
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v3

    .line 314
    :cond_0
    nop

    .line 315
    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-static {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 319
    :cond_1
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    const/4 v2, 0x0

    invoke-static {v0, p1, p2, p3, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 321
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 325
    :cond_2
    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeInIntersectionComponents(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 328
    invoke-static {v0, p1, p3, p2, v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 334
    :cond_4
    return-object v3
.end method

.method private static final checkSubtypeForIntegerLiteralType$lambda$7$isCapturedIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 3
    .param p0, "$this_with"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p1, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 307
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 308
    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeConstructorMarker;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->projection(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v0

    .line 309
    .local v0, "projection":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static final checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeInIntersectionComponents(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 10
    .param p0, "$this_with"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p1, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 300
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    .line 302
    .local v0, "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/model/IntersectionTypeConstructorMarker;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 303
    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 966
    .local v3, "$i$f$any":I
    instance-of v4, v1, Ljava/util/Collection;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    goto :goto_1

    .line 967
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    const/4 v8, 0x0

    .line 303
    .local v8, "$i$a$-any-AbstractTypeChecker$checkSubtypeForIntegerLiteralType$1$isIntegerLiteralTypeInIntersectionComponents$1":I
    invoke-interface {p0, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {p0, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v9

    if-ne v9, v5, :cond_2

    move v7, v5

    goto :goto_0

    :cond_2
    move v7, v2

    .line 967
    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v8    # "$i$a$-any-AbstractTypeChecker$checkSubtypeForIntegerLiteralType$1$isIntegerLiteralTypeInIntersectionComponents$1":I
    :goto_0
    if-eqz v7, :cond_1

    move v1, v5

    goto :goto_1

    .line 968
    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_3
    move v1, v2

    .end local v1    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$any":I
    :goto_1
    if-eqz v1, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    nop

    .line 302
    :goto_2
    return v2
.end method

.method private static final checkSubtypeForIntegerLiteralType$lambda$7$isIntegerLiteralTypeOrCapturedOne(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 1
    .param p0, "$this_with"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p1, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 312
    invoke-interface {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType$lambda$7$isCapturedIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static final checkSubtypeForIntegerLiteralType$lambda$7$isTypeInIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Z
    .locals 18
    .param p0, "$this_with"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p1, "$state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "integerLiteralType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p4, "checkSupertypes"    # Z

    .line 295
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->possibleIntegerTypes(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 963
    .local v4, "$i$f$any":I
    instance-of v5, v3, Ljava/util/Collection;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 964
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v15, v7

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .local v15, "possibleType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    const/16 v16, 0x0

    .line 296
    .local v16, "$i$a$-any-AbstractTypeChecker$checkSubtypeForIntegerLiteralType$1$isTypeInIntegerLiteralType$1":I
    invoke-interface {v0, v15}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v8

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/16 v17, 0x1

    if-nez v8, :cond_3

    if-eqz p4, :cond_2

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    move-object v10, v1

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p1

    move-object v11, v15

    invoke-static/range {v8 .. v14}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    move v8, v6

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v8, v17

    .line 964
    .end local v15    # "possibleType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v16    # "$i$a$-any-AbstractTypeChecker$checkSubtypeForIntegerLiteralType$1$isTypeInIntegerLiteralType$1":I
    :goto_1
    if-eqz v8, :cond_1

    move/from16 v6, v17

    goto :goto_2

    .line 965
    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_4
    nop

    .line 297
    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$any":I
    :goto_2
    return v6
.end method

.method private final checkSubtypeForSpecialCases(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Ljava/lang/Boolean;
    .locals 24
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 519
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v2

    .local v2, "$this$checkSubtypeForSpecialCases_u24lambda_u2425":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v3, 0x0

    .line 520
    .local v3, "$i$a$-with-AbstractTypeChecker$checkSubtypeForSpecialCases$1":I
    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    const/4 v6, 0x1

    .line 521
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 520
    if-nez v4, :cond_17

    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isError(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v11, p1

    goto/16 :goto_8

    .line 532
    :cond_0
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStubTypeForBuilderInference(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStubTypeForBuilderInference(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v4, v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isStubTypeSubtypeOfAnother(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isStubTypeEqualsToAnything()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 535
    :cond_3
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v11, p1

    goto/16 :goto_7

    .line 539
    :cond_4
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->original(Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_5
    move-object v4, v1

    .line 540
    .local v4, "superOriginalType":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_6
    invoke-interface {v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    move-result-object v8

    .line 541
    .local v8, "superTypeCaptured":Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;
    const/4 v9, 0x0

    if-eqz v8, :cond_7

    invoke-interface {v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v10

    goto :goto_2

    :cond_7
    move-object v10, v9

    .line 542
    .local v10, "lowerType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    :goto_2
    if-eqz v8, :cond_a

    if-eqz v10, :cond_a

    .line 545
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 546
    invoke-interface {v2, v10, v6}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v11

    move-object v15, v11

    goto :goto_3

    .line 548
    :cond_8
    move-object v11, v1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v2, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v2, v10}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->makeDefinitelyNotNullOrNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v11

    move-object v15, v11

    goto :goto_3

    :cond_9
    move-object v15, v10

    .line 545
    :goto_3
    nop

    .line 550
    .local v15, "nullableLowerType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    move-object/from16 v11, p1

    invoke-virtual {v11, v0, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getLowerCapturedTypePolicy(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;

    move-result-object v12

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$LowerCapturedTypePolicy;->ordinal()I

    move-result v12

    aget v12, v13, v12

    packed-switch v12, :pswitch_data_0

    goto :goto_4

    .line 553
    :pswitch_0
    goto :goto_4

    .line 552
    :pswitch_1
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    move-object v14, v0

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-static/range {v12 .. v18}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    return-object v7

    .line 551
    :pswitch_2
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, p1

    move-object/from16 v19, v15

    invoke-static/range {v16 .. v22}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 542
    .end local v15    # "nullableLowerType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    :cond_a
    move-object/from16 v11, p1

    .line 557
    :cond_b
    :goto_4
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v12

    .line 558
    .local v12, "superTypeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    invoke-interface {v2, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 559
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_f

    .line 561
    invoke-interface {v2, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 883
    .local v9, "$i$f$all":I
    instance-of v13, v7, Ljava/util/Collection;

    if-eqz v13, :cond_c

    move-object v13, v7

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v13}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_c

    move v5, v6

    goto :goto_5

    .line 884
    :cond_c
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .local v15, "it":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    const/16 v23, 0x0

    .line 561
    .local v23, "$i$a$-all-AbstractTypeChecker$checkSubtypeForSpecialCases$1$2":I
    sget-object v16, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    move-object/from16 v18, v0

    check-cast v18, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const/16 v21, 0x8

    const/16 v22, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, p1

    move-object/from16 v19, v15

    invoke-static/range {v16 .. v22}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v15

    .line 884
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v23    # "$i$a$-all-AbstractTypeChecker$checkSubtypeForSpecialCases$1$2":I
    if-nez v15, :cond_d

    const/4 v5, 0x0

    goto :goto_5

    .line 885
    .end local v14    # "element$iv":Ljava/lang/Object;
    :cond_e
    move v5, v6

    .end local v7    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$all":I
    :goto_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 561
    return-object v5

    .line 836
    :cond_f
    const/4 v5, 0x0

    .line 559
    .local v5, "$i$a$-assert-AbstractTypeChecker$checkSubtypeForSpecialCases$1$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intersection type should not be marked nullable!: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-assert-AbstractTypeChecker$checkSubtypeForSpecialCases$1$1":I
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 570
    :cond_10
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v13

    .line 571
    .local v13, "subTypeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    instance-of v14, v0, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-nez v14, :cond_14

    .line 572
    invoke-interface {v2, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v2, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v14

    check-cast v14, Ljava/lang/Iterable;

    .local v14, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 886
    .local v15, "$i$f$all":I
    instance-of v6, v14, Ljava/util/Collection;

    if-eqz v6, :cond_11

    move-object v6, v14

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v5, 0x1

    goto :goto_6

    .line 887
    :cond_11
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "element$iv":Ljava/lang/Object;
    move-object/from16 v5, v17

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .local v5, "it":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    const/16 v19, 0x0

    .line 572
    .local v19, "$i$a$-all-AbstractTypeChecker$checkSubtypeForSpecialCases$1$3":I
    instance-of v5, v5, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    .line 887
    .end local v5    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v19    # "$i$a$-all-AbstractTypeChecker$checkSubtypeForSpecialCases$1$3":I
    if-nez v5, :cond_12

    const/4 v5, 0x0

    goto :goto_6

    .line 888
    .end local v17    # "element$iv":Ljava/lang/Object;
    :cond_13
    const/4 v5, 0x1

    .line 572
    .end local v14    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$all":I
    :goto_6
    if-eqz v5, :cond_15

    .line 574
    :cond_14
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v6

    move-object v14, v1

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-object v15, v0

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-direct {v5, v6, v14, v15}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v5

    .line 573
    nop

    .line 575
    .local v5, "typeParameter":Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;
    if-eqz v5, :cond_15

    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->hasRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 576
    return-object v7

    .line 580
    .end local v5    # "typeParameter":Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;
    :cond_15
    return-object v9

    .line 535
    .end local v4    # "superOriginalType":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v8    # "superTypeCaptured":Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;
    .end local v10    # "lowerType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v12    # "superTypeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .end local v13    # "subTypeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    :cond_16
    move-object/from16 v11, p1

    .line 536
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isStubTypeEqualsToAnything()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 520
    :cond_17
    move-object/from16 v11, p1

    .line 521
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything()Z

    move-result v4

    if-eqz v4, :cond_18

    return-object v7

    .line 523
    :cond_18
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    :cond_19
    const/4 v4, 0x0

    .line 525
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker;

    .line 526
    nop

    .line 527
    invoke-interface {v2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 528
    invoke-interface {v2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->withNullability(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Z)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 525
    invoke-virtual {v5, v2, v6, v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractStrictEqualityTypeChecker;->strictEqualTypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 20
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superConstructor"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            ">;"
        }
    .end annotation

    .line 606
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v2

    .local v2, "$this$collectAllSupertypesWithGivenTypeConstructor_u24lambda_u2431":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v3, 0x0

    .line 607
    .local v3, "$i$a$-with-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1":I
    invoke-interface {v2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->fastCorrespondingSupertypes(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .local v4, "it":Ljava/util/List;
    const/4 v5, 0x0

    .line 608
    .local v5, "$i$a$-let-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$1":I
    return-object v4

    .line 611
    .end local v4    # "it":Ljava/util/List;
    .end local v5    # "$i$a$-let-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$1":I
    :cond_0
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 613
    :cond_1
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isCommonFinalClassConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 614
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 615
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-interface {v2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v0

    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 617
    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 614
    :goto_0
    return-object v4

    .line 620
    :cond_4
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v4}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 622
    .local v4, "result":Ljava/util/List;
    move-object/from16 v5, p1

    .local v5, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/4 v6, 0x0

    .line 889
    .local v6, "$i$f$anySupertype":I
    move-object/from16 v7, p2

    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v8, 0x0

    .line 622
    .local v8, "$i$a$-anySupertype-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$2":I
    nop

    .line 889
    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v8    # "$i$a$-anySupertype-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$2":I
    nop

    .line 891
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 893
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesDeque()Ljava/util/ArrayDeque;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 894
    .local v7, "deque$iv":Ljava/util/ArrayDeque;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesSet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 896
    .local v8, "visitedSupertypes$iv":Ljava/util/Set;
    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 897
    :cond_5
    :goto_1
    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_c

    .line 898
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    const/16 v10, 0x3e8

    if-gt v9, v10, :cond_b

    .line 901
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 902
    .local v9, "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const-string v10, "current"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 904
    move-object v10, v9

    .local v10, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v11, 0x0

    .line 624
    .local v11, "$i$a$-anySupertype-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$3":I
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    invoke-interface {v2, v10, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->captureFromArguments(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v12

    if-nez v12, :cond_6

    move-object v12, v10

    .line 626
    .local v12, "current":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_6
    nop

    .line 627
    invoke-interface {v2, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v13

    invoke-interface {v2, v13, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 628
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    goto :goto_2

    .line 631
    :cond_7
    move-object v13, v12

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v2, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v13

    if-nez v13, :cond_8

    .line 632
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    goto :goto_2

    .line 635
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v13

    invoke-interface {v13, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->substitutionSupertypePolicy(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    move-result-object v13

    .line 626
    :goto_2
    nop

    .line 904
    .end local v10    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v11    # "$i$a$-anySupertype-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$3":I
    .end local v12    # "current":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    move-object v10, v13

    .line 905
    .local v10, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    const/4 v11, 0x0

    .line 904
    .local v11, "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    .end local v10    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v11    # "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    xor-int/lit8 v10, v12, 0x1

    if-eqz v10, :cond_9

    goto :goto_3

    :cond_9
    const/4 v13, 0x0

    :goto_3
    if-nez v13, :cond_a

    goto :goto_1

    :cond_a
    move-object v10, v13

    .line 906
    .local v10, "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v11

    .line 905
    .local v11, "$this$anySupertype_u24lambda_u243$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v12, 0x0

    .line 906
    .local v12, "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    invoke-interface {v11, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v13

    invoke-interface {v11, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v11

    .line 907
    .end local v12    # "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    .local v11, "supertypes$iv":Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 908
    .local v13, "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {v10, v5, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v14

    .line 909
    .local v14, "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    move-object v15, v14

    .local v15, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v16, 0x0

    .line 622
    .local v16, "$i$a$-anySupertype-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$2":I
    nop

    .line 909
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v16    # "$i$a$-anySupertype-AbstractTypeChecker$collectAllSupertypesWithGivenTypeConstructor$1$2":I
    nop

    .line 913
    invoke-virtual {v7, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 898
    .end local v9    # "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v10    # "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v11    # "supertypes$iv":Ljava/util/Collection;
    .end local v13    # "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v14    # "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_b
    new-instance v9, Ljava/lang/IllegalStateException;

    .line 899
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Too many supertypes for type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Supertypes = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v8

    check-cast v11, Ljava/lang/Iterable;

    const/16 v18, 0x3f

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 917
    :cond_c
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 918
    nop

    .line 640
    .end local v5    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v6    # "$i$f$anySupertype":I
    .end local v7    # "deque$iv":Ljava/util/ArrayDeque;
    .end local v8    # "visitedSupertypes$iv":Ljava/util/Set;
    return-object v4
.end method

.method private final collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "classType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "constructor"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            ">;"
        }
    .end annotation

    .line 648
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->selectOnlyPureKotlinSupertypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final completeIsSubTypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Z
    .locals 7
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p4, "isFromNullabilityConstraint"    # Z

    .line 272
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v0

    .local v0, "$this$completeIsSubTypeOf_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v1, 0x0

    .line 273
    .local v1, "$i$a$-with-AbstractTypeChecker$completeIsSubTypeOf$1":I
    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    .line 274
    .local v2, "preparedSubType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v3

    invoke-virtual {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v3

    .line 276
    .local v3, "preparedSuperType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v5

    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForSpecialCases(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .local v4, "it":Z
    const/4 v5, 0x0

    .line 277
    .local v5, "$i$a$-let-AbstractTypeChecker$completeIsSubTypeOf$1$1":I
    invoke-virtual {p1, v2, v3, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->addSubtypeConstraint(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Ljava/lang/Boolean;

    .line 278
    return v4

    .line 282
    .end local v4    # "it":Z
    .end local v5    # "$i$a$-let-AbstractTypeChecker$completeIsSubTypeOf$1$1":I
    :cond_0
    invoke-virtual {p1, v2, v3, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->addSubtypeConstraint(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 836
    .restart local v4    # "it":Z
    const/4 v5, 0x0

    .line 282
    .local v5, "$i$a$-let-AbstractTypeChecker$completeIsSubTypeOf$1$2":I
    return v4

    .line 284
    .end local v4    # "it":Z
    .end local v5    # "$i$a$-let-AbstractTypeChecker$completeIsSubTypeOf$1$2":I
    :cond_1
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v5

    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v6

    invoke-direct {v4, p1, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOfForSingleClassifierType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    return v4
.end method

.method private final getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;
    .locals 7
    .param p1, "$this$getTypeParameterForArgumentInBaseIfItEqualToTarget"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p2, "baseType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p3, "targetType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 587
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_6

    .line 588
    invoke-interface {p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v3

    move-object v4, v3

    .line 836
    .local v4, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    const/4 v5, 0x0

    .line 588
    .local v5, "$i$a$-takeIf-AbstractTypeChecker$getTypeParameterForArgumentInBaseIfItEqualToTarget$typeArgument$1":I
    invoke-interface {p1, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Z

    move-result v6

    .end local v4    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .end local v5    # "$i$a$-takeIf-AbstractTypeChecker$getTypeParameterForArgumentInBaseIfItEqualToTarget$typeArgument$1":I
    const/4 v4, 0x1

    xor-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_0

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_5

    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 589
    .local v2, "typeArgument":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    :cond_1
    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->originalIfDefinitelyNotNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 590
    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->originalIfDefinitelyNotNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {p1, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 589
    :goto_1
    move v3, v4

    .line 592
    .local v3, "areBothTypesCaptured":Z
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v4

    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    .line 596
    :cond_3
    invoke-direct {p0, p1, v2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->getTypeParameterForArgumentInBaseIfItEqualToTarget(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v1, v4

    .line 836
    .local v1, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;
    const/4 v4, 0x0

    .line 596
    .local v4, "$i$a$-let-AbstractTypeChecker$getTypeParameterForArgumentInBaseIfItEqualToTarget$1":I
    return-object v1

    .line 593
    .end local v1    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;
    .end local v4    # "$i$a$-let-AbstractTypeChecker$getTypeParameterForArgumentInBaseIfItEqualToTarget$1":I
    :cond_4
    :goto_2
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v1

    return-object v1

    .line 587
    .end local v2    # "typeArgument":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v3    # "areBothTypesCaptured":Z
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    .end local v0    # "i":I
    :cond_6
    return-object v2
.end method

.method private final hasNothingSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 19
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 337
    move-object/from16 v0, p2

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v1

    .local v1, "$this$hasNothingSupertype_u24lambda_u2410":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v2, 0x0

    .line 338
    .local v2, "$i$a$-with-AbstractTypeChecker$hasNothingSupertype$1":I
    invoke-interface {v1, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v3

    .line 339
    .local v3, "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v4

    return v4

    .line 342
    :cond_0
    move-object/from16 v4, p1

    .local v4, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/4 v5, 0x0

    .line 837
    .local v5, "$i$f$anySupertype":I
    move-object/from16 v6, p2

    .local v6, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v7, 0x0

    .line 342
    .local v7, "$i$a$-anySupertype-AbstractTypeChecker$hasNothingSupertype$1$1":I
    invoke-interface {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v8

    invoke-interface {v1, v8}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v6

    .line 837
    .end local v6    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v7    # "$i$a$-anySupertype-AbstractTypeChecker$hasNothingSupertype$1$1":I
    const/4 v7, 0x1

    if-eqz v6, :cond_1

    goto/16 :goto_4

    .line 839
    :cond_1
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 841
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesDeque()Ljava/util/ArrayDeque;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 842
    .local v6, "deque$iv":Ljava/util/ArrayDeque;
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesSet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 844
    .local v8, "visitedSupertypes$iv":Ljava/util/Set;
    invoke-virtual {v6, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 845
    :goto_0
    move-object v9, v6

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_9

    .line 846
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    const/16 v10, 0x3e8

    if-gt v9, v10, :cond_8

    .line 849
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 850
    .local v9, "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const-string v10, "current"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 852
    move-object v10, v9

    .local v10, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v11, 0x0

    .line 343
    .local v11, "$i$a$-anySupertype-AbstractTypeChecker$hasNothingSupertype$1$2":I
    invoke-interface {v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 344
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    goto :goto_1

    .line 346
    :cond_2
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    .line 343
    :goto_1
    nop

    .line 852
    .end local v10    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v11    # "$i$a$-anySupertype-AbstractTypeChecker$hasNothingSupertype$1$2":I
    move-object v10, v12

    .line 853
    .local v10, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    const/4 v11, 0x0

    .line 852
    .local v11, "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    .end local v10    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v11    # "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    xor-int/lit8 v10, v13, 0x1

    if-eqz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_4

    goto :goto_0

    :cond_4
    move-object v10, v12

    .line 854
    .local v10, "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v11

    .line 853
    .local v11, "$this$anySupertype_u24lambda_u243$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v12, 0x0

    .line 854
    .local v12, "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    invoke-interface {v11, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v13

    invoke-interface {v11, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v11

    .line 855
    .end local v12    # "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    .local v11, "supertypes$iv":Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 856
    .local v13, "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {v10, v4, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v14

    .line 857
    .local v14, "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    move-object v15, v14

    .local v15, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v16, 0x0

    .line 342
    .local v16, "$i$a$-anySupertype-AbstractTypeChecker$hasNothingSupertype$1$1":I
    invoke-interface {v1, v15}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v7

    invoke-interface {v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isNothingConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v7

    .line 857
    .end local v15    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v16    # "$i$a$-anySupertype-AbstractTypeChecker$hasNothingSupertype$1$1":I
    if-eqz v7, :cond_5

    .line 858
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 859
    const/4 v7, 0x1

    goto :goto_4

    .line 861
    :cond_5
    invoke-virtual {v6, v14}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_3

    .line 855
    .end local v13    # "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v14    # "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_6
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 850
    .end local v10    # "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v11    # "supertypes$iv":Ljava/util/Collection;
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 846
    .end local v9    # "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_8
    new-instance v7, Ljava/lang/IllegalStateException;

    .line 847
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many supertypes for type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". Supertypes = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v8

    check-cast v10, Ljava/lang/Iterable;

    const/16 v17, 0x3f

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v18}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 865
    :cond_9
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 866
    const/4 v7, 0x0

    .line 342
    .end local v4    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v5    # "$i$f$anySupertype":I
    .end local v6    # "deque$iv":Ljava/util/ArrayDeque;
    .end local v8    # "visitedSupertypes$iv":Ljava/util/Set;
    :goto_4
    return v7
.end method

.method private final isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 2
    .param p1, "$this$isCommonDenotableType"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p2, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 489
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDenotable(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isStubTypeSubtypeOfAnother(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 5
    .param p1, "$this$isStubTypeSubtypeOfAnother"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p2, "a"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "b"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 505
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->original(Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p2

    .line 506
    .local v0, "originalA":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_1
    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->original(Lkotlin/reflect/jvm/internal/impl/types/model/DefinitelyNotNullTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move-object v1, p3

    .line 508
    .local v1, "originalB":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_3
    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v2

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    return v4

    .line 509
    :cond_4
    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, p3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v4

    .line 510
    :cond_5
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_6

    return v4

    .line 512
    :cond_6
    const/4 v2, 0x1

    return v2
.end method

.method public static synthetic isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z
    .locals 0

    .line 234
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 238
    const/4 p4, 0x0

    .line 234
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Z

    move-result p0

    return p0
.end method

.method private final isSubtypeOfForSingleClassifierType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 26
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 355
    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v9

    .local v9, "$this$isSubtypeOfForSingleClassifierType_u24lambda_u2417":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v10, 0x0

    .line 356
    .local v10, "$i$a$-with-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1":I
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->RUN_SLOW_ASSERTIONS:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 357
    invoke-interface {v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isSingleClassifierType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v7

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isAllowedTypeVariable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 360
    invoke-interface {v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isSingleClassifierType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v8

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isAllowedTypeVariable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 361
    .local v0, "$i$a$-assert-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not singleClassifierType superType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    .end local v0    # "$i$a$-assert-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$2":I
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 357
    :cond_5
    const/4 v0, 0x0

    .line 358
    .local v0, "$i$a$-assert-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not singleClassifierType and not intersection subType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .end local v0    # "$i$a$-assert-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$1":I
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 365
    :cond_6
    :goto_4
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    invoke-virtual {v0, v6, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->isPossibleSubtype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 367
    :cond_7
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    move-object v3, v7

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v9, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v3

    move-object v4, v8

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v9, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->upperBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v4

    invoke-direct {v0, v6, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->checkSubtypeForIntegerLiteralType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .local v11, "it":Z
    const/4 v12, 0x0

    .line 368
    .local v12, "$i$a$-let-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$3":I
    move-object v1, v7

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-object v2, v8

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->addSubtypeConstraint$default(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Ljava/lang/Boolean;

    .line 369
    return v11

    .line 372
    .end local v11    # "it":Z
    .end local v12    # "$i$a$-let-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$3":I
    :cond_8
    invoke-interface {v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v0

    .line 374
    .local v0, "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    invoke-interface {v9, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v3

    invoke-interface {v9, v3, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v3

    if-nez v3, :cond_9

    return v2

    .line 375
    :cond_9
    invoke-interface {v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v3

    invoke-interface {v9, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isAnyConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    if-eqz v3, :cond_a

    return v2

    .line 377
    :cond_a
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {v3, v6, v7, v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->findCorrespondingSupertypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 378
    nop

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 867
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v12, v3

    .local v12, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v13, 0x0

    .line 868
    .local v13, "$i$f$mapTo":I
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 869
    .local v15, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v16, v15

    check-cast v16, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .local v16, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v17, 0x0

    .line 378
    .local v17, "$i$a$-map-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$supertypesWithSameConstructor$1":I
    move-object/from16 v1, v16

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {v6, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v1

    invoke-interface {v9, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v1

    if-nez v1, :cond_b

    move-object/from16 v1, v16

    .line 869
    .end local v16    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v17    # "$i$a$-map-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$supertypesWithSameConstructor$1":I
    :cond_b
    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_5

    .line 870
    .end local v15    # "item$iv$iv":Ljava/lang/Object;
    :cond_c
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v12    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v13    # "$i$f$mapTo":I
    move-object v1, v5

    check-cast v1, Ljava/util/List;

    .line 867
    nop

    .line 377
    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    nop

    .line 379
    .local v1, "supertypesWithSameConstructor":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 384
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;

    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v4

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;-><init>(I)V

    .line 385
    .local v3, "newArguments":Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;
    const/4 v4, 0x0

    .line 386
    .local v4, "anyNonOutParameter":Z
    const/4 v5, 0x0

    .local v5, "index":I
    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v12

    goto :goto_6

    .line 381
    .end local v3    # "newArguments":Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;
    .end local v4    # "anyNonOutParameter":Z
    .end local v5    # "index":I
    :pswitch_0
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    invoke-interface {v9, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    move-result-object v3

    invoke-virtual {v2, v6, v3, v8}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    return v2

    .line 380
    :pswitch_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v2, v6, v7}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->hasNothingSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    return v2

    .line 386
    .restart local v3    # "newArguments":Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;
    .restart local v4    # "anyNonOutParameter":Z
    .restart local v5    # "index":I
    :goto_6
    if-ge v5, v12, :cond_15

    .line 387
    if-nez v4, :cond_e

    invoke-interface {v9, v0, v5}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v13

    invoke-interface {v9, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v13

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-eq v13, v14, :cond_d

    goto :goto_7

    :cond_d
    const/4 v13, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    move v13, v2

    :goto_8
    move v4, v13

    .line 388
    if-nez v4, :cond_14

    .line 389
    move-object v13, v1

    check-cast v13, Ljava/lang/Iterable;

    .local v13, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v14, 0x0

    .line 871
    .local v14, "$i$f$map":I
    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v13, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v15

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v15, v13

    .local v15, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 872
    .local v17, "$i$f$mapTo":I
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_9
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 873
    .local v19, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v11, v19

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .local v11, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v20, 0x0

    .line 390
    .local v20, "$i$a$-map-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$allProjections$1":I
    invoke-interface {v9, v11, v5}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getArgumentOrNull(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v21

    if-eqz v21, :cond_11

    move-object/from16 v22, v21

    .line 836
    .local v22, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    const/16 v23, 0x0

    .line 390
    .local v23, "$i$a$-takeIf-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$allProjections$1$1":I
    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move/from16 v22, v4

    .end local v4    # "anyNonOutParameter":Z
    .local v0, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .local v22, "anyNonOutParameter":Z
    .local v24, "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v4

    move-object/from16 v25, v0

    .end local v0    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .local v25, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne v4, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    .end local v23    # "$i$a$-takeIf-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$allProjections$1$1":I
    .end local v25    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    :goto_a
    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    const/16 v21, 0x0

    :goto_b
    move-object/from16 v0, v21

    if-eqz v0, :cond_12

    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 873
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v20    # "$i$a$-map-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$allProjections$1":I
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v4, v22

    move-object/from16 v0, v24

    const/16 v11, 0xa

    goto :goto_9

    .line 390
    .end local v22    # "anyNonOutParameter":Z
    .end local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .local v0, "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .restart local v4    # "anyNonOutParameter":Z
    .restart local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .restart local v20    # "$i$a$-map-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$allProjections$1":I
    :cond_11
    move-object/from16 v24, v0

    move/from16 v22, v4

    .end local v0    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .end local v4    # "anyNonOutParameter":Z
    .restart local v22    # "anyNonOutParameter":Z
    .restart local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Incorrect type: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", subType: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v12, ", superType: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 874
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v19    # "item$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-map-AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$allProjections$1":I
    .end local v22    # "anyNonOutParameter":Z
    .end local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .restart local v0    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .restart local v4    # "anyNonOutParameter":Z
    :cond_13
    move-object/from16 v24, v0

    move/from16 v22, v4

    .end local v0    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "anyNonOutParameter":Z
    .end local v15    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapTo":I
    .restart local v22    # "anyNonOutParameter":Z
    .restart local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 871
    nop

    .line 389
    .end local v13    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v14    # "$i$f$map":I
    nop

    .line 395
    .local v0, "allProjections":Ljava/util/List;
    invoke-interface {v9, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->intersectTypes(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    invoke-interface {v9, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asTypeArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v2

    .line 396
    .local v2, "intersection":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    invoke-virtual {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/ArgumentList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 388
    .end local v2    # "intersection":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .end local v22    # "anyNonOutParameter":Z
    .end local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .local v0, "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .restart local v4    # "anyNonOutParameter":Z
    :cond_14
    move-object/from16 v24, v0

    move/from16 v22, v4

    .line 386
    .end local v0    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .end local v4    # "anyNonOutParameter":Z
    .restart local v22    # "anyNonOutParameter":Z
    .restart local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    :goto_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v22

    move-object/from16 v0, v24

    const/4 v2, 0x1

    const/16 v11, 0xa

    goto/16 :goto_6

    .end local v22    # "anyNonOutParameter":Z
    .end local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .restart local v0    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .restart local v4    # "anyNonOutParameter":Z
    :cond_15
    move-object/from16 v24, v0

    .line 399
    .end local v0    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .end local v5    # "index":I
    .restart local v24    # "superConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    if-nez v4, :cond_16

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    move-object v2, v3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    invoke-virtual {v0, v6, v2, v8}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    .line 401
    :cond_16
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4;

    invoke-direct {v0, v1, v6, v9, v8}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$isSubtypeOfForSingleClassifierType$1$4;-><init>(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v6, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->runForkingPoint(Lkotlin/jvm/functions/Function1;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
    .locals 5
    .param p1, "$this$isTypeVariableAgainstStarProjectionForSelfType"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .param p2, "subArgumentType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p3, "superArgumentType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p4, "selfConstructor"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    .line 415
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v0

    .line 417
    .local v0, "simpleSubArgumentType":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isOldCapturedType(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 418
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeConstructorMarker;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->projection(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->captureStatus(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;->FOR_SUBTYPING:Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    if-eq v1, v3, :cond_1

    return v2

    .line 424
    :cond_1
    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v1

    instance-of v3, v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariableTypeConstructorMarker;

    if-eqz v3, :cond_2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariableTypeConstructorMarker;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    return v2

    .line 426
    .local v1, "typeVariableConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariableTypeConstructorMarker;
    :cond_3
    invoke-interface {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariableTypeConstructorMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {p1, v3, p4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->hasRecursiveBounds(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move v2, v4

    :cond_4
    return v2

    .line 419
    .end local v1    # "typeVariableConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariableTypeConstructorMarker;
    :cond_5
    :goto_1
    return v2
.end method

.method private final selectOnlyPureKotlinSupertypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "supertypes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            ">;"
        }
    .end annotation

    .line 664
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v0

    .local v0, "$this$selectOnlyPureKotlinSupertypes_u24lambda_u2434":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v1, 0x0

    .line 665
    .local v1, "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    return-object p2

    .line 667
    :cond_0
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 919
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v2

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 920
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v8

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .local v10, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v11, 0x0

    .line 668
    .local v11, "$i$a$-filter-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1$allPureSupertypes$1":I
    invoke-interface {v0, v10}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asArgumentList(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;

    move-result-object v12

    .local v12, "$this$all$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;
    const/4 v13, 0x0

    .line 921
    .local v13, "$i$f$all":I
    move-object v14, v0

    .local v14, "$this$all_u24lambda_u241$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v15, 0x0

    .line 922
    .local v15, "$i$a$-with-TypeSystemContextKt$all$1$iv":I
    invoke-interface {v14, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I

    move-result v9

    const/16 v16, 0x0

    move/from16 v17, v1

    move/from16 v1, v16

    .end local v1    # "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    .local v17, "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    :goto_1
    if-ge v1, v9, :cond_3

    move/from16 v18, v1

    .local v18, "index$iv":I
    const/16 v19, 0x0

    .line 923
    .local v19, "$i$a$-repeat-TypeSystemContextKt$all$1$1$iv":I
    move-object/from16 v20, v2

    move/from16 v2, v18

    move/from16 v18, v3

    .end local v3    # "$i$f$filter":I
    .local v2, "index$iv":I
    .local v18, "$i$f$filter":I
    .local v20, "$this$filter$iv":Ljava/lang/Iterable;
    invoke-interface {v14, v12, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v3

    .local v3, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    const/16 v21, 0x0

    .line 668
    .local v21, "$i$a$-all-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1$allPureSupertypes$1$1":I
    move/from16 v22, v2

    .end local v2    # "index$iv":I
    .local v22, "index$iv":I
    invoke-interface {v0, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/FlexibleTypeMarker;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move/from16 v2, v16

    .line 923
    .end local v3    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .end local v21    # "$i$a$-all-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1$allPureSupertypes$1$1":I
    :goto_2
    if-nez v2, :cond_2

    move/from16 v9, v16

    goto :goto_3

    .line 924
    :cond_2
    nop

    .line 922
    .end local v19    # "$i$a$-repeat-TypeSystemContextKt$all$1$1$iv":I
    .end local v22    # "index$iv":I
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v18

    move-object/from16 v2, v20

    goto :goto_1

    .line 925
    .end local v18    # "$i$f$filter":I
    .end local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    .local v2, "$this$filter$iv":Ljava/lang/Iterable;
    .local v3, "$i$f$filter":I
    :cond_3
    move-object/from16 v20, v2

    move/from16 v18, v3

    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    .restart local v18    # "$i$f$filter":I
    .restart local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v9, 0x1

    .line 668
    .end local v12    # "$this$all$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;
    .end local v13    # "$i$f$all":I
    .end local v14    # "$this$all_u24lambda_u241$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .end local v15    # "$i$a$-with-TypeSystemContextKt$all$1$iv":I
    :goto_3
    nop

    .line 920
    .end local v10    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v11    # "$i$a$-filter-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1$allPureSupertypes$1":I
    if-eqz v9, :cond_4

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v1, v17

    move/from16 v3, v18

    move-object/from16 v2, v20

    goto :goto_0

    .line 926
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    .end local v18    # "$i$f$filter":I
    .end local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v1    # "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    .restart local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .restart local v3    # "$i$f$filter":I
    :cond_5
    move/from16 v17, v1

    move-object/from16 v20, v2

    move/from16 v18, v3

    .end local v1    # "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    .end local v2    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$filter":I
    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    .restart local v17    # "$i$a$-with-AbstractTypeChecker$selectOnlyPureKotlinSupertypes$1":I
    .restart local v18    # "$i$f$filter":I
    .restart local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    move-object v1, v4

    check-cast v1, Ljava/util/List;

    .line 919
    nop

    .line 667
    .end local v18    # "$i$f$filter":I
    .end local v20    # "$this$filter$iv":Ljava/lang/Iterable;
    nop

    .line 670
    .local v1, "allPureSupertypes":Ljava/util/List;
    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_6

    move-object v2, v1

    goto :goto_4

    :cond_6
    move-object/from16 v2, p2

    :goto_4
    return-object v2
.end method


# virtual methods
.method public final effectiveVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .locals 1
    .param p1, "declared"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .param p2, "useSite"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    const-string v0, "declared"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "useSite"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne p1, v0, :cond_0

    return-object p2

    .line 495
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne p2, v0, :cond_1

    return-object p1

    .line 498
    :cond_1
    if-ne p1, p2, :cond_2

    return-object p1

    .line 501
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final equalTypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 14
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "a"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p3, "b"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-object v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v10

    .local v10, "$this$equalTypes_u24lambda_u241":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v11, 0x0

    .line 249
    .local v11, "$i$a$-with-AbstractTypeChecker$equalTypes$1":I
    const/4 v12, 0x1

    if-ne v8, v9, :cond_0

    return v12

    .line 251
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v0, v10, v8}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v0, v10, v9}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isCommonDenotableType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 252
    invoke-virtual/range {p1 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v0

    .line 253
    .local v0, "refinedA":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {p1, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->refineType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->prepareType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v1

    .line 254
    .local v1, "refinedB":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-interface {v10, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v2

    .line 255
    .local v2, "simpleA":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    invoke-interface {v10, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v3

    invoke-interface {v10, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v4

    invoke-interface {v10, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    if-nez v3, :cond_1

    return v13

    .line 256
    :cond_1
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v10, v3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v3

    if-nez v3, :cond_5

    .line 257
    invoke-interface {v10, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v10, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->hasFlexibleNullability(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 259
    :cond_2
    invoke-interface {v10, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v3

    invoke-interface {v10, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->lowerBoundIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v4

    invoke-interface {v10, v4}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v12, v13

    :goto_0
    return v12

    .line 257
    :cond_4
    :goto_1
    return v12

    .line 263
    .end local v0    # "refinedA":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v1    # "refinedB":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v2    # "simpleA":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_5
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v12, v13

    :goto_2
    return v12
.end method

.method public final findCorrespondingSupertypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;
    .locals 21
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superConstructor"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            "Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "state"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "subType"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "superConstructor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v3

    .local v3, "$this$findCorrespondingSupertypes_u24lambda_u2438":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v4, 0x0

    .line 681
    .local v4, "$i$a$-with-AbstractTypeChecker$findCorrespondingSupertypes$1":I
    invoke-interface {v3, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 682
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v5, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 686
    :cond_0
    invoke-interface {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntegerLiteralTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 687
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v5, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->collectAllSupertypesWithGivenTypeConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 691
    :cond_1
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;

    invoke-direct {v5}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;-><init>()V

    .line 692
    .local v5, "classTypeSupertypes":Lkotlin/reflect/jvm/internal/impl/utils/SmartList;
    move-object/from16 v6, p1

    .local v6, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/4 v7, 0x0

    .line 927
    .local v7, "$i$f$anySupertype":I
    move-object/from16 v8, p2

    .local v8, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v9, 0x0

    .line 692
    .local v9, "$i$a$-anySupertype-AbstractTypeChecker$findCorrespondingSupertypes$1$1":I
    nop

    .line 927
    .end local v8    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v9    # "$i$a$-anySupertype-AbstractTypeChecker$findCorrespondingSupertypes$1$1":I
    nop

    .line 929
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 931
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesDeque()Ljava/util/ArrayDeque;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 932
    .local v8, "deque$iv":Ljava/util/ArrayDeque;
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesSet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 934
    .local v9, "visitedSupertypes$iv":Ljava/util/Set;
    invoke-virtual {v8, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 935
    :cond_2
    :goto_0
    move-object v10, v8

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_7

    .line 936
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    const/16 v11, 0x3e8

    if-gt v10, v11, :cond_6

    .line 939
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 940
    .local v10, "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const-string v11, "current"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 942
    move-object v11, v10

    .local v11, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v12, 0x0

    .line 693
    .local v12, "$i$a$-anySupertype-AbstractTypeChecker$findCorrespondingSupertypes$1$2":I
    invoke-interface {v3, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 694
    invoke-virtual {v5, v11}, Lkotlin/reflect/jvm/internal/impl/utils/SmartList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    goto :goto_1

    .line 697
    :cond_3
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    .line 693
    :goto_1
    nop

    .line 942
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v12    # "$i$a$-anySupertype-AbstractTypeChecker$findCorrespondingSupertypes$1$2":I
    move-object v11, v13

    .line 943
    .local v11, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    const/4 v12, 0x0

    .line 942
    .local v12, "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .end local v11    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v12    # "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    xor-int/lit8 v11, v14, 0x1

    if-eqz v11, :cond_4

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_5

    goto :goto_0

    :cond_5
    move-object v11, v13

    .line 944
    .local v11, "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v12

    .line 943
    .local v12, "$this$anySupertype_u24lambda_u243$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v13, 0x0

    .line 944
    .local v13, "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    invoke-interface {v12, v10}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v14

    invoke-interface {v12, v14}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v12

    .line 945
    .end local v13    # "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    .local v12, "supertypes$iv":Ljava/util/Collection;
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 946
    .local v14, "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {v11, v6, v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v15

    .line 947
    .local v15, "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    move-object/from16 v16, v15

    .local v16, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v17, 0x0

    .line 692
    .local v17, "$i$a$-anySupertype-AbstractTypeChecker$findCorrespondingSupertypes$1$1":I
    nop

    .line 947
    .end local v16    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v17    # "$i$a$-anySupertype-AbstractTypeChecker$findCorrespondingSupertypes$1$1":I
    nop

    .line 951
    invoke-virtual {v8, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 936
    .end local v10    # "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v11    # "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v12    # "supertypes$iv":Ljava/util/Collection;
    .end local v14    # "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v15    # "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_6
    new-instance v10, Ljava/lang/IllegalStateException;

    .line 937
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Too many supertypes for type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Supertypes = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v9

    check-cast v12, Ljava/lang/Iterable;

    const/16 v19, 0x3f

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 955
    :cond_7
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 956
    nop

    .line 701
    .end local v6    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v7    # "$i$f$anySupertype":I
    .end local v8    # "deque$iv":Ljava/util/ArrayDeque;
    .end local v9    # "visitedSupertypes$iv":Ljava/util/Set;
    move-object v6, v5

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 957
    .local v7, "$i$f$flatMap":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .local v8, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v6

    .local v9, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 958
    .local v10, "$i$f$flatMapTo":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 959
    .local v12, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .local v13, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v14, 0x0

    .line 701
    .local v14, "$i$a$-flatMap-AbstractTypeChecker$findCorrespondingSupertypes$1$3":I
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const-string v1, "it"

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v0, v13, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->collectAndFilter(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/List;

    move-result-object v1

    .line 959
    .end local v13    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v14    # "$i$a$-flatMap-AbstractTypeChecker$findCorrespondingSupertypes$1$3":I
    check-cast v1, Ljava/lang/Iterable;

    .line 960
    .local v1, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v8, v1}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v1, p2

    goto :goto_4

    .line 962
    .end local v1    # "list$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    :cond_8
    nop

    .end local v8    # "destination$iv$iv":Ljava/util/Collection;
    .end local v9    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$flatMapTo":I
    move-object v1, v8

    check-cast v1, Ljava/util/List;

    .line 957
    nop

    .line 701
    .end local v6    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$flatMap":I
    return-object v1
.end method

.method public final isSubtypeForSameConstructor(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 25
    .param p1, "$this$isSubtypeForSameConstructor"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "capturedSubArguments"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "capturedSubArguments"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "superType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v2

    .local v2, "$this$isSubtypeForSameConstructor_u24lambda_u2421":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v4, 0x0

    .line 436
    .local v4, "$i$a$-with-AbstractTypeChecker$isSubtypeForSameConstructor$1":I
    invoke-interface {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v5

    .line 440
    .local v5, "superTypeConstructor":Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;
    invoke-interface {v2, v0}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->size(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;)I

    move-result v6

    .line 441
    .local v6, "argumentsCount":I
    invoke-interface {v2, v5}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->parametersCount(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)I

    move-result v7

    .line 442
    .local v7, "parametersCount":I
    if-ne v6, v7, :cond_b

    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v2, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->argumentsCount(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)I

    move-result v9

    if-eq v6, v9, :cond_0

    goto/16 :goto_6

    .line 446
    :cond_0
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_0
    if-ge v9, v7, :cond_a

    .line 447
    move-object v11, v1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v2, v11, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getArgument(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v11

    .line 449
    .local v11, "superProjection":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    invoke-interface {v2, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStarProjection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 451
    invoke-interface {v2, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v12

    .line 452
    .local v12, "superArgumentType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-interface {v2, v0, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->get(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentListMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;

    move-result-object v13

    .local v13, "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    const/4 v14, 0x0

    .line 453
    .local v14, "$i$a$-let-AbstractTypeChecker$isSubtypeForSameConstructor$1$subArgumentType$1":I
    invoke-interface {v2, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v15

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne v15, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_8

    .line 454
    invoke-interface {v2, v13}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    move-result-object v8

    .line 452
    .end local v13    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .end local v14    # "$i$a$-let-AbstractTypeChecker$isSubtypeForSameConstructor$1$subArgumentType$1":I
    nop

    .line 457
    .local v8, "subArgumentType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-interface {v2, v5, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getParameter(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;I)Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;

    move-result-object v14

    invoke-interface {v2, v14}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeParameterMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v14

    invoke-interface {v2, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->getVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->effectiveVariance(Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    move-result-object v13

    if-nez v13, :cond_2

    .line 458
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isErrorTypeEqualsToAnything()Z

    move-result v10

    return v10

    .line 457
    :cond_2
    move-object v15, v13

    .line 460
    .local v15, "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->INV:Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;

    if-ne v15, v13, :cond_5

    .line 461
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v13, v2, v8, v12, v5}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 462
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-direct {v13, v2, v12, v8, v5}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isTypeVariableAgainstStarProjectionForSelfType(Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v13

    if-eqz v13, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v13, 0x1

    goto :goto_3

    .line 463
    :cond_5
    const/4 v13, 0x0

    .line 460
    :goto_3
    move/from16 v20, v13

    .line 472
    .local v20, "isTypeVariableAgainstStarProjectionForSelfType":Z
    if-eqz v20, :cond_6

    .line 473
    goto/16 :goto_5

    .line 475
    :cond_6
    move-object/from16 v14, p1

    .local v14, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/16 v21, 0x0

    .line 875
    .local v21, "$i$f$runWithArgumentsSettings$compiler_common":I
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->access$getArgumentsDepth(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;)I

    move-result v13

    const/16 v10, 0x64

    if-gt v13, v10, :cond_7

    .line 879
    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->access$getArgumentsDepth(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;)I

    move-result v10

    const/4 v13, 0x1

    add-int/2addr v10, v13

    invoke-static {v14, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->access$setArgumentsDepth(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;I)V

    .line 880
    move-object v10, v14

    .local v10, "$this$isSubtypeForSameConstructor_u24lambda_u2421_u24lambda_u2420":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/16 v22, 0x0

    .line 476
    .local v22, "$i$a$-runWithArgumentsSettings$compiler_common-AbstractTypeChecker$isSubtypeForSameConstructor$1$correctArgument$1":I
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v15}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;->ordinal()I

    move-result v16

    aget v13, v13, v16

    packed-switch v13, :pswitch_data_0

    .line 479
    new-instance v13, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v13}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v13

    :pswitch_0
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object/from16 v23, v14

    .end local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .local v23, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    move-object v14, v10

    move-object/from16 v24, v15

    .end local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .local v24, "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    move-object v15, v12

    move-object/from16 v16, v8

    invoke-static/range {v13 .. v19}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v13

    goto :goto_4

    .line 478
    .end local v23    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .restart local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    :pswitch_1
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v23    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .restart local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    const/16 v18, 0x8

    const/16 v19, 0x0

    const/16 v17, 0x0

    move-object v14, v10

    move-object v15, v8

    move-object/from16 v16, v12

    invoke-static/range {v13 .. v19}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v13

    goto :goto_4

    .line 477
    .end local v23    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .restart local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    :pswitch_2
    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v23    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .restart local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;

    invoke-virtual {v13, v10, v8, v12}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->equalTypes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v13

    .line 476
    :goto_4
    nop

    .line 880
    .end local v10    # "$this$isSubtypeForSameConstructor_u24lambda_u2421_u24lambda_u2420":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v22    # "$i$a$-runWithArgumentsSettings$compiler_common-AbstractTypeChecker$isSubtypeForSameConstructor$1$correctArgument$1":I
    move v10, v13

    .line 881
    .local v10, "result$iv":Z
    invoke-static/range {v23 .. v23}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->access$getArgumentsDepth(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v14, v23

    .end local v23    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .restart local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    invoke-static {v14, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->access$setArgumentsDepth(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;I)V

    .line 882
    nop

    .line 475
    .end local v10    # "result$iv":Z
    .end local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v21    # "$i$f$runWithArgumentsSettings$compiler_common":I
    nop

    .line 482
    .local v10, "correctArgument":Z
    if-nez v10, :cond_9

    const/4 v13, 0x0

    return v13

    .line 875
    .end local v10    # "correctArgument":Z
    .end local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v14    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .restart local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v21    # "$i$f$runWithArgumentsSettings$compiler_common":I
    :cond_7
    move-object/from16 v24, v15

    .end local v15    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    new-instance v10, Ljava/lang/IllegalStateException;

    .line 876
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Arguments depth is too high. Some related argument: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 836
    .end local v8    # "subArgumentType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v20    # "isTypeVariableAgainstStarProjectionForSelfType":Z
    .end local v21    # "$i$f$runWithArgumentsSettings$compiler_common":I
    .end local v24    # "variance":Lkotlin/reflect/jvm/internal/impl/types/model/TypeVariance;
    .restart local v13    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .local v14, "$i$a$-let-AbstractTypeChecker$isSubtypeForSameConstructor$1$subArgumentType$1":I
    :cond_8
    const/4 v8, 0x0

    .line 453
    .local v8, "$i$a$-assert-AbstractTypeChecker$isSubtypeForSameConstructor$1$subArgumentType$1$1":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incorrect sub argument: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8    # "$i$a$-assert-AbstractTypeChecker$isSubtypeForSameConstructor$1$subArgumentType$1$1":I
    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 446
    .end local v11    # "superProjection":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .end local v12    # "superArgumentType":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v13    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/TypeArgumentMarker;
    .end local v14    # "$i$a$-let-AbstractTypeChecker$isSubtypeForSameConstructor$1$subArgumentType$1":I
    :cond_9
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 484
    .end local v9    # "index":I
    :cond_a
    const/4 v8, 0x1

    return v8

    .line 443
    :cond_b
    :goto_6
    const/4 v8, 0x0

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z
    .locals 8

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->isSubtypeOf$default(Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Z
    .locals 1
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .param p4, "isFromNullabilityConstraint"    # Z

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    if-ne p2, p3, :cond_0

    const/4 v0, 0x1

    return v0

    .line 242
    :cond_0
    invoke-virtual {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->customIsSubtypeOf(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 244
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->completeIsSubTypeOf(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;Z)Z

    move-result v0

    return v0
.end method
