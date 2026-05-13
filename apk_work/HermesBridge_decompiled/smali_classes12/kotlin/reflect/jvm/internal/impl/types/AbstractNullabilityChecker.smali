.class public final Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;
.super Ljava/lang/Object;
.source "AbstractTypeChecker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractTypeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractNullabilityChecker\n+ 2 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/TypeCheckerState\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,835:1\n132#2,16:836\n148#2,13:853\n132#2,16:866\n148#2,13:883\n1#3:852\n1#3:882\n*S KotlinDebug\n*F\n+ 1 AbstractTypeChecker.kt\norg/jetbrains/kotlin/types/AbstractNullabilityChecker\n*L\n779#1:836,16\n779#1:853,13\n793#1:866,16\n793#1:883,13\n779#1:852\n793#1:882\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
    .locals 4
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "end"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    .line 801
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v0

    .local v0, "$this$isApplicableAsEndNode_u24lambda_u2410":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v1, 0x0

    .line 802
    .local v1, "$i$a$-with-AbstractNullabilityChecker$isApplicableAsEndNode$1":I
    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isNothing(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 803
    :cond_0
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 805
    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isStubTypeEqualsToAnything()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isStubType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    .line 807
    :cond_2
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v2

    invoke-interface {v0, v2, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->areEqualTypeConstructors(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v2

    return v2
.end method

.method private final runIsPossibleSubtype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 6
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 726
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v0

    .local v0, "$this$runIsPossibleSubtype_u24lambda_u243":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v1, 0x0

    .line 727
    .local v1, "$i$a$-with-AbstractNullabilityChecker$runIsPossibleSubtype$1":I
    sget-boolean v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractTypeChecker;->RUN_SLOW_ASSERTIONS:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 730
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isSingleClassifierType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isIntersection(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 731
    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 730
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isAllowedTypeVariable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 729
    :goto_1
    if-eqz v2, :cond_5

    .line 736
    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isSingleClassifierType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, p3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->isAllowedTypeVariable(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    .line 737
    .local v2, "$i$a$-assert-AbstractNullabilityChecker$runIsPossibleSubtype$1$2":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not singleClassifierType superType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 736
    .end local v2    # "$i$a$-assert-AbstractNullabilityChecker$runIsPossibleSubtype$1$2":I
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 729
    :cond_5
    const/4 v2, 0x0

    .line 734
    .local v2, "$i$a$-assert-AbstractNullabilityChecker$runIsPossibleSubtype$1$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not singleClassifierType and not intersection subType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 729
    .end local v2    # "$i$a$-assert-AbstractNullabilityChecker$runIsPossibleSubtype$1$1":I
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 742
    :cond_6
    :goto_4
    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v4

    .line 746
    :cond_7
    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isNotNullTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 749
    :cond_8
    instance-of v2, p2, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    if-eqz v2, :cond_9

    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isProjectionNotNull(Lkotlin/reflect/jvm/internal/impl/types/model/CapturedTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v4

    .line 752
    :cond_9
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    invoke-virtual {v2, p1, p2, v5}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;)Z

    move-result v2

    if-eqz v2, :cond_a

    return v4

    .line 755
    :cond_a
    move-object v2, p3

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v3

    .line 758
    :cond_b
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$UpperIfFlexible;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$UpperIfFlexible;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    invoke-virtual {v2, p1, p3, v4}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v3

    .line 772
    :cond_c
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v3

    .line 774
    :cond_d
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->hasPathByNotMarkedNullableNodes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v2

    return v2

    .line 746
    :cond_e
    :goto_5
    return v4
.end method


# virtual methods
.method public final hasNotNullSupertype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;)Z
    .locals 19
    .param p1, "$this$hasNotNullSupertype"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "type"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "supertypesPolicy"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    move-object/from16 v0, p2

    const-string v1, "<this>"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "supertypesPolicy"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 778
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v1

    .local v1, "$this$hasNotNullSupertype_u24lambda_u246":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v4, 0x0

    .line 779
    .local v4, "$i$a$-with-AbstractNullabilityChecker$hasNotNullSupertype$1":I
    move-object/from16 v5, p1

    .local v5, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/4 v6, 0x0

    .line 836
    .local v6, "$i$f$anySupertype":I
    move-object/from16 v7, p2

    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v8, 0x0

    .line 780
    .local v8, "$i$a$-anySupertype-AbstractNullabilityChecker$hasNotNullSupertype$1$1":I
    invoke-interface {v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_0

    invoke-interface {v1, v7}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move-object v9, v7

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v1, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move v7, v11

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    .line 836
    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v8    # "$i$a$-anySupertype-AbstractNullabilityChecker$hasNotNullSupertype$1$1":I
    :goto_0
    if-eqz v7, :cond_3

    move v10, v11

    goto/16 :goto_6

    .line 838
    :cond_3
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 840
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesDeque()Ljava/util/ArrayDeque;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 841
    .local v7, "deque$iv":Ljava/util/ArrayDeque;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesSet()Ljava/util/Set;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 843
    .local v8, "visitedSupertypes$iv":Ljava/util/Set;
    invoke-virtual {v7, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 844
    :goto_1
    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v11

    if-eqz v9, :cond_e

    .line 845
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    const/16 v12, 0x3e8

    if-gt v9, v12, :cond_d

    .line 848
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 849
    .local v9, "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const-string v12, "current"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 851
    move-object v12, v9

    .local v12, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v13, 0x0

    .line 782
    .local v13, "$i$a$-anySupertype-AbstractNullabilityChecker$hasNotNullSupertype$1$2":I
    invoke-interface {v1, v12}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    goto :goto_2

    :cond_4
    move-object v14, v3

    .line 851
    .end local v12    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v13    # "$i$a$-anySupertype-AbstractNullabilityChecker$hasNotNullSupertype$1$2":I
    :goto_2
    move-object v12, v14

    .line 852
    .local v12, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    const/4 v13, 0x0

    .line 851
    .local v13, "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v12, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .end local v12    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v13    # "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    xor-int/lit8 v12, v15, 0x1

    if-eqz v12, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :goto_3
    if-nez v14, :cond_6

    goto :goto_1

    :cond_6
    move-object v12, v14

    .line 853
    .local v12, "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v13

    .line 852
    .local v13, "$this$anySupertype_u24lambda_u243$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v14, 0x0

    .line 853
    .local v14, "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    invoke-interface {v13, v9}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v15

    invoke-interface {v13, v15}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v13

    .line 854
    .end local v14    # "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    .local v13, "supertypes$iv":Ljava/util/Collection;
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 855
    .local v15, "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {v12, v5, v15}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v10

    .line 856
    .local v10, "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    move-object/from16 v17, v10

    .local v17, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v18, 0x0

    .line 780
    .local v18, "$i$a$-anySupertype-AbstractNullabilityChecker$hasNotNullSupertype$1$1":I
    move-object/from16 v11, v17

    .end local v17    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .local v11, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    invoke-interface {v1, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isClassType(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v1, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v17

    if-eqz v17, :cond_8

    :cond_7
    move-object v2, v11

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/4 v2, 0x1

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    .line 856
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v18    # "$i$a$-anySupertype-AbstractNullabilityChecker$hasNotNullSupertype$1$1":I
    :goto_5
    if-eqz v2, :cond_a

    .line 857
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 858
    const/4 v10, 0x1

    goto :goto_6

    .line 860
    :cond_a
    invoke-virtual {v7, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p1

    const/4 v11, 0x1

    goto :goto_4

    .line 854
    .end local v10    # "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v15    # "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    :cond_b
    move-object/from16 v2, p1

    const/4 v11, 0x1

    goto/16 :goto_1

    .line 849
    .end local v12    # "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v13    # "supertypes$iv":Ljava/util/Collection;
    :cond_c
    move-object/from16 v2, p1

    const/4 v11, 0x1

    goto/16 :goto_1

    .line 845
    .end local v9    # "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 846
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

    invoke-direct {v2, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 864
    :cond_e
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 865
    const/4 v10, 0x0

    .line 779
    .end local v5    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v6    # "$i$f$anySupertype":I
    .end local v7    # "deque$iv":Ljava/util/ArrayDeque;
    .end local v8    # "visitedSupertypes$iv":Ljava/util/Set;
    :goto_6
    nop

    .line 778
    .end local v1    # "$this$hasNotNullSupertype_u24lambda_u246":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .end local v4    # "$i$a$-with-AbstractNullabilityChecker$hasNotNullSupertype$1":I
    nop

    .line 784
    return v10
.end method

.method public final hasPathByNotMarkedNullableNodes(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z
    .locals 20
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "start"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "end"    # Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "state"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "start"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "end"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v3

    .local v3, "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v4, 0x0

    .line 793
    .local v4, "$i$a$-with-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1":I
    move-object/from16 v5, p1

    .local v5, "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    const/4 v6, 0x0

    .line 866
    .local v6, "$i$f$anySupertype":I
    move-object/from16 v7, p2

    .local v7, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v8, 0x0

    .line 795
    .local v8, "$i$a$-anySupertype-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1$1":I
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    invoke-direct {v9, v0, v7, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v7

    .line 866
    .end local v7    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v8    # "$i$a$-anySupertype-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1$1":I
    const/4 v8, 0x1

    if-eqz v7, :cond_0

    move-object/from16 v19, v3

    goto/16 :goto_4

    .line 868
    :cond_0
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->initialize()V

    .line 870
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesDeque()Ljava/util/ArrayDeque;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 871
    .local v7, "deque$iv":Ljava/util/ArrayDeque;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getSupertypesSet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 873
    .local v9, "visitedSupertypes$iv":Ljava/util/Set;
    invoke-virtual {v7, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 874
    :goto_0
    move-object v10, v7

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    xor-int/2addr v10, v8

    if-eqz v10, :cond_8

    .line 875
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    const/16 v11, 0x3e8

    if-gt v10, v11, :cond_7

    .line 878
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    .line 879
    .local v10, "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const-string v11, "current"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 881
    move-object v11, v10

    .local v11, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/4 v12, 0x0

    .line 796
    .local v12, "$i$a$-anySupertype-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1$2":I
    invoke-interface {v3, v11}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->isMarkedNullable(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    goto :goto_1

    :cond_1
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$LowerIfFlexible;

    :goto_1
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;

    .line 881
    .end local v11    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v12    # "$i$a$-anySupertype-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1$2":I
    move-object v11, v13

    .line 882
    .local v11, "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    const/4 v12, 0x0

    .line 881
    .local v12, "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy$None;

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    .end local v11    # "it$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v12    # "$i$a$-takeIf-TypeCheckerState$anySupertype$policy$1$iv":I
    xor-int/lit8 v11, v14, 0x1

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    if-nez v13, :cond_3

    goto :goto_0

    :cond_3
    move-object v11, v13

    .line 883
    .local v11, "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->getTypeSystemContext()Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;

    move-result-object v12

    .line 882
    .local v12, "$this$anySupertype_u24lambda_u243$iv":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v13, 0x0

    .line 883
    .local v13, "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    invoke-interface {v12, v10}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->typeConstructor(Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;

    move-result-object v14

    invoke-interface {v12, v14}, Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;->supertypes(Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Ljava/util/Collection;

    move-result-object v12

    .line 884
    .end local v13    # "$i$a$-with-TypeCheckerState$anySupertype$supertypes$1$iv":I
    .local v12, "supertypes$iv":Ljava/util/Collection;
    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    .line 885
    .local v14, "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    invoke-virtual {v11, v5, v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;->transformType(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    move-result-object v15

    .line 886
    .local v15, "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    move-object/from16 v16, v15

    .local v16, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    const/16 v17, 0x0

    .line 795
    .local v17, "$i$a$-anySupertype-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1$1":I
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;

    move-object/from16 v19, v3

    move-object/from16 v3, v16

    .end local v16    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .local v3, "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .local v19, "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    invoke-direct {v8, v0, v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->isApplicableAsEndNode(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/TypeConstructorMarker;)Z

    move-result v3

    .line 886
    .end local v3    # "it":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v17    # "$i$a$-anySupertype-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1$1":I
    if-eqz v3, :cond_4

    .line 887
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 888
    const/4 v8, 0x1

    goto :goto_4

    .line 890
    :cond_4
    invoke-virtual {v7, v15}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v19

    const/4 v8, 0x1

    goto :goto_3

    .line 884
    .end local v14    # "supertype$iv":Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;
    .end local v15    # "newType$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .local v3, "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    :cond_5
    move-object/from16 v19, v3

    .end local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 879
    .end local v11    # "policy$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState$SupertypesPolicy;
    .end local v12    # "supertypes$iv":Ljava/util/Collection;
    .end local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    :cond_6
    move-object/from16 v19, v3

    .end local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 875
    .end local v10    # "current$iv":Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .end local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    :cond_7
    move-object/from16 v19, v3

    .end local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 876
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Too many supertypes for type: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ". Supertypes = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v10, v9

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

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 894
    .end local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    :cond_8
    move-object/from16 v19, v3

    .end local v3    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    .restart local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;->clear()V

    .line 895
    const/4 v8, 0x0

    .line 793
    .end local v5    # "this_$iv":Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .end local v6    # "$i$f$anySupertype":I
    .end local v7    # "deque$iv":Ljava/util/ArrayDeque;
    .end local v9    # "visitedSupertypes$iv":Ljava/util/Set;
    :goto_4
    nop

    .line 792
    .end local v4    # "$i$a$-with-AbstractNullabilityChecker$hasPathByNotMarkedNullableNodes$1":I
    .end local v19    # "$this$hasPathByNotMarkedNullableNodes_u24lambda_u249":Lkotlin/reflect/jvm/internal/impl/types/model/TypeSystemContext;
    nop

    .line 798
    return v8
.end method

.method public final isPossibleSubtype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z
    .locals 1
    .param p1, "state"    # Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;
    .param p2, "subType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;
    .param p3, "superType"    # Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/AbstractNullabilityChecker;->runIsPossibleSubtype(Lkotlin/reflect/jvm/internal/impl/types/TypeCheckerState;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;Lkotlin/reflect/jvm/internal/impl/types/model/SimpleTypeMarker;)Z

    move-result v0

    return v0
.end method
