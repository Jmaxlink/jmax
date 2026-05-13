.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$Companion;
.super Ljava/lang/Object;
.source "TypeParameterUpperBoundEraser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeParameterUpperBoundEraser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeParameterUpperBoundEraser.kt\norg/jetbrains/kotlin/types/TypeParameterUpperBoundEraser$Companion\n+ 2 TypeUtils.kt\norg/jetbrains/kotlin/types/typeUtil/TypeUtilsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,158:1\n261#2,14:159\n276#2:177\n1549#3:173\n1620#3,3:174\n*S KotlinDebug\n*F\n+ 1 TypeParameterUpperBoundEraser.kt\norg/jetbrains/kotlin/types/TypeParameterUpperBoundEraser$Companion\n*L\n140#1:159,14\n140#1:177\n140#1:173\n140#1:174,3\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeParameterUpperBoundEraser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final replaceArgumentsOfUpperBound(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Ljava/util/Set;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 24
    .param p1, "$this$replaceArgumentsOfUpperBound"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p2, "substitutor"    # Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    .param p3, "visitedTypeParameters"    # Ljava/util/Set;
    .param p4, "leaveNonTypeParameterTypes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;Z)",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "<this>"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "substitutor"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    move-object/from16 v2, p1

    .local v2, "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    const/4 v4, 0x0

    .line 159
    .local v4, "$i$f$replaceArgumentsByParametersWith":I
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v5

    .line 160
    .local v5, "unwrapped$iv":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    nop

    .line 161
    instance-of v6, v5, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    const-string v7, "argument.type"

    const-string v8, "type"

    const/16 v10, 0xa

    const-string v11, "constructor.parameters"

    if-eqz v6, :cond_10

    .line 162
    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v6

    .local v6, "$this$replaceArgumentsByParametersWith$iv$iv":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v15, 0x0

    .line 170
    .local v15, "$i$f$replaceArgumentsByParametersWith":I
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v16

    if-nez v16, :cond_0

    move-object/from16 v22, v2

    move/from16 v23, v4

    goto/16 :goto_6

    .line 172
    :cond_0
    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Iterable;

    .local v12, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v16, 0x0

    .line 173
    .local v16, "$i$f$map":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v14

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv$iv$iv":Ljava/util/Collection;
    move-object v14, v12

    .local v14, "$this$mapTo$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/16 v17, 0x0

    .line 174
    .local v17, "$i$f$mapTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 175
    .local v19, "item$iv$iv$iv$iv":Ljava/lang/Object;
    move-object/from16 v10, v19

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .local v10, "typeParameterDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    const/16 v21, 0x0

    .line 141
    .local v21, "$i$a$-replaceArgumentsByParametersWith-TypeParameterUpperBoundEraser$Companion$replaceArgumentsOfUpperBound$replacedArguments$1":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v13

    move-object/from16 v22, v2

    .end local v2    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .local v22, "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getIndex()I

    move-result v2

    invoke-static {v13, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 142
    .local v2, "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    if-eqz p4, :cond_2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->containsTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-eqz v13, :cond_2

    .line 143
    move/from16 v23, v4

    goto :goto_5

    .line 145
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    .line 147
    .local v13, "isTypeParameterVisited":Z
    :goto_2
    if-eqz v2, :cond_5

    if-nez v13, :cond_5

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v3

    move/from16 v23, v4

    .end local v4    # "$i$f$replaceArgumentsByParametersWith":I
    .local v23, "$i$f$replaceArgumentsByParametersWith":I
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 150
    :cond_4
    move-object v3, v2

    goto :goto_4

    .line 147
    .end local v23    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v4    # "$i$f$replaceArgumentsByParametersWith":I
    :cond_5
    move/from16 v23, v4

    .line 148
    .end local v4    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v23    # "$i$f$replaceArgumentsByParametersWith":I
    :goto_3
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v3, v10}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 147
    :goto_4
    move-object v2, v3

    .line 175
    .end local v2    # "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v10    # "typeParameterDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .end local v13    # "isTypeParameterVisited":Z
    .end local v21    # "$i$a$-replaceArgumentsByParametersWith-TypeParameterUpperBoundEraser$Companion$replaceArgumentsOfUpperBound$replacedArguments$1":I
    :goto_5
    invoke-interface {v9, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    move-object/from16 v2, v22

    move/from16 v4, v23

    const/16 v10, 0xa

    goto :goto_0

    .line 176
    .end local v19    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v23    # "$i$f$replaceArgumentsByParametersWith":I
    .local v2, "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v4    # "$i$f$replaceArgumentsByParametersWith":I
    :cond_6
    move-object/from16 v22, v2

    move/from16 v23, v4

    .end local v2    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v4    # "$i$f$replaceArgumentsByParametersWith":I
    .end local v9    # "destination$iv$iv$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$mapTo$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v17    # "$i$f$mapTo":I
    .restart local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v23    # "$i$f$replaceArgumentsByParametersWith":I
    move-object v2, v9

    check-cast v2, Ljava/util/List;

    .line 173
    nop

    .line 172
    .end local v12    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .end local v16    # "$i$f$map":I
    nop

    .line 177
    .local v2, "newArguments$iv$iv":Ljava/util/List;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v6, v2, v4, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v9

    move-object v6, v9

    goto :goto_6

    .line 170
    .end local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v23    # "$i$f$replaceArgumentsByParametersWith":I
    .local v2, "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v4    # "$i$f$replaceArgumentsByParametersWith":I
    :cond_7
    move-object/from16 v22, v2

    move/from16 v23, v4

    .line 163
    .end local v2    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v4    # "$i$f$replaceArgumentsByParametersWith":I
    .end local v6    # "$this$replaceArgumentsByParametersWith$iv$iv":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v15    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v23    # "$i$f$replaceArgumentsByParametersWith":I
    :goto_6
    move-object v2, v5

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .local v2, "$this$replaceArgumentsByParametersWith$iv$iv":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v3, 0x0

    .line 170
    .local v3, "$i$f$replaceArgumentsByParametersWith":I
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v4

    if-nez v4, :cond_8

    move/from16 v17, v3

    goto/16 :goto_d

    .line 172
    :cond_8
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 173
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v4, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv$iv$iv":Ljava/util/Collection;
    move-object v11, v4

    .local v11, "$this$mapTo$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 174
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 175
    .local v14, "item$iv$iv$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .local v15, "typeParameterDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    const/16 v16, 0x0

    .line 141
    .local v16, "$i$a$-replaceArgumentsByParametersWith-TypeParameterUpperBoundEraser$Companion$replaceArgumentsOfUpperBound$replacedArguments$1":I
    move/from16 v17, v3

    .end local v3    # "$i$f$replaceArgumentsByParametersWith":I
    .local v17, "$i$f$replaceArgumentsByParametersWith":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    move-object/from16 v18, v4

    .end local v4    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .local v18, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    invoke-interface {v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getIndex()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 142
    .local v3, "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    if-eqz p4, :cond_a

    if-eqz v3, :cond_9

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->containsTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_8

    :cond_9
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_a

    .line 143
    move/from16 v20, v9

    goto :goto_c

    .line 145
    :cond_a
    if-eqz v1, :cond_b

    invoke-interface {v1, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    .line 147
    .local v4, "isTypeParameterVisited":Z
    :goto_9
    if-eqz v3, :cond_d

    if-nez v4, :cond_d

    move/from16 v19, v4

    .end local v4    # "isTypeParameterVisited":Z
    .local v19, "isTypeParameterVisited":Z
    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v4

    move/from16 v20, v9

    .end local v9    # "$i$f$map":I
    .local v20, "$i$f$map":I
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_a

    .line 150
    :cond_c
    move-object v4, v3

    goto :goto_b

    .line 147
    .end local v19    # "isTypeParameterVisited":Z
    .end local v20    # "$i$f$map":I
    .restart local v4    # "isTypeParameterVisited":Z
    .restart local v9    # "$i$f$map":I
    :cond_d
    move/from16 v19, v4

    move/from16 v20, v9

    .line 148
    .end local v4    # "isTypeParameterVisited":Z
    .end local v9    # "$i$f$map":I
    .restart local v19    # "isTypeParameterVisited":Z
    .restart local v20    # "$i$f$map":I
    :goto_a
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v4, v15}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 147
    :goto_b
    move-object v3, v4

    .line 175
    .end local v3    # "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v15    # "typeParameterDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .end local v16    # "$i$a$-replaceArgumentsByParametersWith-TypeParameterUpperBoundEraser$Companion$replaceArgumentsOfUpperBound$replacedArguments$1":I
    .end local v19    # "isTypeParameterVisited":Z
    :goto_c
    invoke-interface {v10, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v3, v17

    move-object/from16 v4, v18

    move/from16 v9, v20

    goto :goto_7

    .line 176
    .end local v14    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$replaceArgumentsByParametersWith":I
    .end local v18    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$map":I
    .local v3, "$i$f$replaceArgumentsByParametersWith":I
    .local v4, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v9    # "$i$f$map":I
    :cond_e
    move/from16 v17, v3

    move-object/from16 v18, v4

    move/from16 v20, v9

    .end local v3    # "$i$f$replaceArgumentsByParametersWith":I
    .end local v4    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map":I
    .end local v10    # "destination$iv$iv$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v18    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .restart local v20    # "$i$f$map":I
    move-object v3, v10

    check-cast v3, Ljava/util/List;

    .line 173
    nop

    .line 172
    .end local v18    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .end local v20    # "$i$f$map":I
    nop

    .line 177
    .local v3, "newArguments$iv$iv":Ljava/util/List;
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v2, v3, v7, v4, v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    move-object v2, v4

    goto :goto_d

    .line 170
    .end local v17    # "$i$f$replaceArgumentsByParametersWith":I
    .local v3, "$i$f$replaceArgumentsByParametersWith":I
    :cond_f
    move/from16 v17, v3

    .line 161
    .end local v2    # "$this$replaceArgumentsByParametersWith$iv$iv":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v3    # "$i$f$replaceArgumentsByParametersWith":I
    :goto_d
    invoke-static {v6, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->flexibleType(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v2

    goto/16 :goto_15

    .line 165
    .end local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v23    # "$i$f$replaceArgumentsByParametersWith":I
    .local v2, "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .local v4, "$i$f$replaceArgumentsByParametersWith":I
    :cond_10
    move-object/from16 v22, v2

    move/from16 v23, v4

    .end local v2    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v4    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v23    # "$i$f$replaceArgumentsByParametersWith":I
    instance-of v2, v5, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v2, :cond_19

    move-object v2, v5

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .local v2, "$this$replaceArgumentsByParametersWith$iv$iv":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v3, 0x0

    .line 170
    .restart local v3    # "$i$f$replaceArgumentsByParametersWith":I
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v4

    if-nez v4, :cond_11

    move/from16 v16, v3

    goto/16 :goto_14

    .line 172
    :cond_11
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v4

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 173
    .local v6, "$i$f$map":I
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv$iv$iv":Ljava/util/Collection;
    move-object v10, v4

    .local v10, "$this$mapTo$iv$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 174
    .local v11, "$i$f$mapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 175
    .local v13, "item$iv$iv$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .local v14, "typeParameterDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    const/4 v15, 0x0

    .line 141
    .local v15, "$i$a$-replaceArgumentsByParametersWith-TypeParameterUpperBoundEraser$Companion$replaceArgumentsOfUpperBound$replacedArguments$1":I
    move/from16 v16, v3

    .end local v3    # "$i$f$replaceArgumentsByParametersWith":I
    .local v16, "$i$f$replaceArgumentsByParametersWith":I
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v3

    move-object/from16 v17, v4

    .end local v4    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .local v17, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getIndex()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 142
    .local v3, "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    if-eqz p4, :cond_13

    if-eqz v3, :cond_12

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->containsTypeParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x1

    goto :goto_f

    :cond_12
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_13

    .line 143
    goto :goto_13

    .line 145
    :cond_13
    if-eqz v1, :cond_14

    invoke-interface {v1, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_10

    :cond_14
    const/4 v4, 0x0

    .line 147
    .local v4, "isTypeParameterVisited":Z
    :goto_10
    if-eqz v3, :cond_16

    if-nez v4, :cond_16

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v1

    move/from16 v18, v4

    .end local v4    # "isTypeParameterVisited":Z
    .local v18, "isTypeParameterVisited":Z
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;->get(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    if-nez v1, :cond_15

    goto :goto_11

    .line 150
    :cond_15
    move-object v1, v3

    goto :goto_12

    .line 147
    .end local v18    # "isTypeParameterVisited":Z
    .restart local v4    # "isTypeParameterVisited":Z
    :cond_16
    move/from16 v18, v4

    .line 148
    .end local v4    # "isTypeParameterVisited":Z
    .restart local v18    # "isTypeParameterVisited":Z
    :goto_11
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;

    invoke-direct {v1, v14}, Lkotlin/reflect/jvm/internal/impl/types/StarProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 147
    :goto_12
    move-object v3, v1

    .line 175
    .end local v3    # "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v14    # "typeParameterDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .end local v15    # "$i$a$-replaceArgumentsByParametersWith-TypeParameterUpperBoundEraser$Companion$replaceArgumentsOfUpperBound$replacedArguments$1":I
    .end local v18    # "isTypeParameterVisited":Z
    :goto_13
    invoke-interface {v9, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p3

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_e

    .line 176
    .end local v13    # "item$iv$iv$iv$iv":Ljava/lang/Object;
    .end local v16    # "$i$f$replaceArgumentsByParametersWith":I
    .end local v17    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .local v3, "$i$f$replaceArgumentsByParametersWith":I
    .local v4, "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    :cond_17
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "$i$f$replaceArgumentsByParametersWith":I
    .end local v4    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "destination$iv$iv$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$mapTo$iv$iv$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$mapTo":I
    .restart local v16    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v17    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    move-object v1, v9

    check-cast v1, Ljava/util/List;

    .line 173
    nop

    .line 172
    .end local v6    # "$i$f$map":I
    .end local v17    # "$this$map$iv$iv$iv":Ljava/lang/Iterable;
    nop

    .line 177
    .local v1, "newArguments$iv$iv":Ljava/util/List;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    move-object v2, v3

    goto :goto_14

    .line 170
    .end local v1    # "newArguments$iv$iv":Ljava/util/List;
    .end local v16    # "$i$f$replaceArgumentsByParametersWith":I
    .restart local v3    # "$i$f$replaceArgumentsByParametersWith":I
    :cond_18
    move/from16 v16, v3

    .line 177
    .end local v2    # "$this$replaceArgumentsByParametersWith$iv$iv":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v3    # "$i$f$replaceArgumentsByParametersWith":I
    :goto_14
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 166
    :goto_15
    move-object v1, v5

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeWithEnhancementKt;->inheritEnhancement(Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 160
    nop

    .line 140
    .end local v5    # "unwrapped$iv":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .end local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .end local v23    # "$i$f$replaceArgumentsByParametersWith":I
    nop

    .line 154
    .local v1, "replacedArguments":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->safeSubstitute(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/Variance;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v3, "substitutor.safeSubstitu\u2026s, Variance.OUT_VARIANCE)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    .line 177
    .end local v1    # "replacedArguments":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v5    # "unwrapped$iv":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .restart local v22    # "$this$replaceArgumentsByParametersWith$iv":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .restart local v23    # "$i$f$replaceArgumentsByParametersWith":I
    :cond_19
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
