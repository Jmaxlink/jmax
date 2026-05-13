.class public final Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;
.super Ljava/lang/Object;
.source "TypeAliasExpander.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTypeAliasExpander.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeAliasExpander.kt\norg/jetbrains/kotlin/types/TypeAliasExpander\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n1#2:279\n1620#3,3:280\n1559#3:283\n1590#3,4:284\n1559#3:288\n1590#3,4:289\n1864#3,3:293\n*S KotlinDebug\n*F\n+ 1 TypeAliasExpander.kt\norg/jetbrains/kotlin/types/TypeAliasExpander\n*L\n148#1:280,3\n197#1:283\n197#1:284,4\n232#1:288\n232#1:289,4\n249#1:293,3\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;

.field private static final NON_REPORTING:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;


# instance fields
.field private final reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

.field private final shouldCheckBounds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;

    .line 275
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy$DO_NOTHING;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;-><init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;Z)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->NON_REPORTING:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;Z)V
    .locals 1
    .param p1, "reportStrategy"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;
    .param p2, "shouldCheckBounds"    # Z

    const-string v0, "reportStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    .line 19
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->shouldCheckBounds:Z

    .line 17
    return-void
.end method

.method private final checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V
    .locals 7
    .param p1, "existingAnnotations"    # Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .param p2, "newAnnotations"    # Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    .line 148
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapTo$iv":Ljava/lang/Iterable;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .local v1, "destination$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 280
    .local v2, "$i$f$mapTo":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 281
    .local v4, "item$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .local v5, "it":Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    const/4 v6, 0x0

    .line 148
    .local v6, "$i$a$-mapTo-TypeAliasExpander$checkRepeatedAnnotations$existingAnnotationFqNames$1":I
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v5

    .line 281
    .end local v5    # "it":Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    .end local v6    # "$i$a$-mapTo-TypeAliasExpander$checkRepeatedAnnotations$existingAnnotationFqNames$1":I
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v4    # "item$iv":Ljava/lang/Object;
    :cond_0
    nop

    .line 148
    .end local v0    # "$this$mapTo$iv":Ljava/lang/Iterable;
    .end local v1    # "destination$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$mapTo":I
    move-object v0, v1

    check-cast v0, Ljava/util/HashSet;

    .line 150
    .local v0, "existingAnnotationFqNames":Ljava/util/HashSet;
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;

    .line 151
    .local v2, "annotation":Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;->getFqName()Lkotlin/reflect/jvm/internal/impl/name/FqName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    invoke-interface {v3, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;->repeatedAnnotation(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;)V

    .end local v2    # "annotation":Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/AnnotationDescriptor;
    goto :goto_1

    .line 155
    :cond_2
    return-void
.end method

.method private final checkTypeArgumentsSubstitution(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 16
    .param p1, "unsubstitutedType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p2, "substitutedType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 247
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->create(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v1

    const-string v2, "create(substitutedType)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .local v1, "typeSubstitutor":Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;
    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$f$forEachIndexed":I
    const/4 v4, 0x0

    .line 294
    .local v4, "index$iv":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "item$iv":Ljava/lang/Object;
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "index$iv":I
    .local v7, "index$iv":I
    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v8, v6

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .local v4, "i":I
    .local v8, "substitutedArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    const/4 v9, 0x0

    .line 250
    .local v9, "$i$a$-forEachIndexed-TypeAliasExpander$checkTypeArgumentsSubstitution$1":I
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v10

    const-string v11, "substitutedArgument.type"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->containsTypeAliasParameters(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 251
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 252
    .local v10, "unsubstitutedArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v12

    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 253
    .local v12, "typeParameter":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    iget-boolean v13, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->shouldCheckBounds:Z

    if-eqz v13, :cond_1

    .line 254
    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    .line 255
    nop

    .line 256
    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v14

    const-string v15, "unsubstitutedArgument.type"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v15

    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const-string v11, "typeParameter"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-interface {v13, v1, v14, v15, v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;->boundsViolationInSubstitution(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)V

    .line 262
    .end local v10    # "unsubstitutedArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v12    # "typeParameter":Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    :cond_1
    nop

    .line 294
    .end local v4    # "i":I
    .end local v8    # "substitutedArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v9    # "$i$a$-forEachIndexed-TypeAliasExpander$checkTypeArgumentsSubstitution$1":I
    move v4, v7

    .end local v6    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 295
    .end local v7    # "index$iv":I
    .local v4, "index$iv":I
    :cond_2
    nop

    .line 263
    .end local v2    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEachIndexed":I
    .end local v4    # "index$iv":I
    return-void
.end method

.method private final combineAttributes(Lkotlin/reflect/jvm/internal/impl/types/DynamicType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;
    .locals 1
    .param p1, "$this$combineAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/DynamicType;
    .param p2, "newAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 136
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->createdCombinedAttributes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;->replaceAttributes(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    move-result-object v0

    return-object v0
.end method

.method private final combineAttributes(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3
    .param p1, "$this$combineAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .param p2, "newAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 139
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->createdCombinedAttributes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final combineNullability(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2
    .param p1, "$this$combineNullability"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .param p2, "fromType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 158
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    const-string v1, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final combineNullabilityAndAnnotations(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 2
    .param p1, "$this$combineNullabilityAndAnnotations"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .param p2, "fromType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 161
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->combineNullability(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->combineAttributes(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method private final createAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3
    .param p1, "$this$createAbbreviation"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .param p2, "attributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .param p3, "isNullable"    # Z

    .line 66
    nop

    .line 67
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getArguments()Ljava/util/List;

    move-result-object v1

    .line 69
    nop

    .line 70
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$Empty;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .line 65
    invoke-static {p2, v0, v1, p3, v2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->simpleTypeWithNonTrivialMemberScope(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method private final createdCombinedAttributes(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .locals 1
    .param p1, "$this$createdCombinedAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .param p2, "newAttributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    .line 142
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;->add(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v0

    return-object v0
.end method

.method private final expandNonArgumentTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 20
    .param p1, "originalProjection"    # Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .param p2, "typeAliasExpansion"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .param p3, "recursionDepth"    # I

    .line 168
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v9

    .line 170
    .local v9, "originalType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    move-object v0, v9

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 172
    :cond_0
    move-object v0, v9

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v10

    .line 174
    .local v10, "type":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v0, v10

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-nez v0, :cond_a

    move-object v0, v10

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->requiresTypeAliasExpansion(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 178
    :cond_1
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v11

    .line 179
    .local v11, "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;

    move-result-object v12

    .line 181
    .local v12, "typeDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getArguments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_9

    .line 183
    nop

    .line 184
    instance-of v0, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    if-eqz v0, :cond_3

    .line 185
    move-object/from16 v4, p1

    goto/16 :goto_3

    .line 187
    :cond_3
    instance-of v0, v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    if-eqz v0, :cond_8

    .line 188
    move-object v0, v12

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-virtual {v7, v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->isRecursion(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v0, v6, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    move-object v1, v12

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;->recursiveTypeAlias(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)V

    .line 190
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 191
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 193
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;->RECURSIVE_TYPE_ALIAS:Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;

    move-object v3, v12

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/name/Name;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeDescriptor.name.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 192
    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorUtils;->createErrorType(Lkotlin/reflect/jvm/internal/impl/types/error/ErrorTypeKind;[Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 190
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object v0

    .line 197
    :cond_4
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getArguments()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 283
    .local v1, "$i$f$mapIndexed":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 284
    .local v4, "$i$f$mapIndexedTo":I
    const/4 v5, 0x0

    .line 285
    .local v5, "index$iv$iv":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 286
    .local v14, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v15, v5, 0x1

    .end local v5    # "index$iv$iv":I
    .local v15, "index$iv$iv":I
    if-gez v5, :cond_5

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_5
    move-object/from16 v16, v0

    .end local v0    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .local v16, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    move-object v0, v14

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .local v0, "typeAliasArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .local v5, "i":I
    const/16 v17, 0x0

    .line 198
    .local v17, "$i$a$-mapIndexed-TypeAliasExpander$expandNonArgumentTypeProjection$expandedArguments$1":I
    move/from16 v18, v1

    .end local v1    # "$i$f$mapIndexed":I
    .local v18, "$i$f$mapIndexed":I
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-object/from16 v19, v3

    .end local v3    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .local v19, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    add-int/lit8 v3, v8, 0x1

    invoke-direct {v6, v0, v7, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v0

    .line 286
    .end local v0    # "typeAliasArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v5    # "i":I
    .end local v17    # "$i$a$-mapIndexed-TypeAliasExpander$expandNonArgumentTypeProjection$expandedArguments$1":I
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v15

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v3, v19

    goto :goto_1

    .line 287
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    .end local v15    # "index$iv$iv":I
    .end local v16    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$mapIndexed":I
    .end local v19    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .local v0, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .restart local v1    # "$i$f$mapIndexed":I
    .restart local v3    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .local v5, "index$iv$iv":I
    :cond_6
    move-object/from16 v16, v0

    move/from16 v18, v1

    move-object/from16 v19, v3

    .end local v0    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapIndexed":I
    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapIndexedTo":I
    .end local v5    # "index$iv$iv":I
    .restart local v16    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .restart local v18    # "$i$f$mapIndexed":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 283
    nop

    .line 197
    .end local v16    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v18    # "$i$f$mapIndexed":I
    move-object v13, v0

    .line 202
    .local v13, "expandedArguments":Ljava/util/List;
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;

    move-object v1, v12

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    invoke-virtual {v0, v7, v1, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion$Companion;->create(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;

    move-result-object v1

    .line 201
    nop

    .line 204
    .local v1, "nestedExpansion":Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    nop

    .line 205
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v2

    .line 206
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->isMarkedNullable()Z

    move-result v3

    .line 207
    add-int/lit8 v4, v8, 0x1

    .line 208
    nop

    .line 204
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 211
    .local v0, "nestedExpandedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    invoke-direct {v6, v10, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .line 215
    .local v2, "substitutedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/DynamicTypesKt;->isDynamic(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    goto :goto_2

    :cond_7
    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    .line 214
    :goto_2
    nop

    .line 217
    .local v3, "typeWithAbbreviation":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    move-object v14, v3

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {v4, v5, v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .end local v0    # "nestedExpandedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v1    # "nestedExpansion":Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .end local v2    # "substitutedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v3    # "typeWithAbbreviation":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v13    # "expandedArguments":Ljava/util/List;
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    goto :goto_3

    .line 220
    :cond_8
    invoke-direct {v6, v10, v7, v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 222
    .local v0, "substitutedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v1, v10

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {v6, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkTypeArgumentsSubstitution(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 224
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .end local v0    # "substitutedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 183
    :goto_3
    return-object v4

    .line 279
    :cond_9
    const/4 v0, 0x0

    .line 181
    .local v0, "$i$a$-assert-TypeAliasExpander$expandNonArgumentTypeProjection$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected malformed type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-assert-TypeAliasExpander$expandNonArgumentTypeProjection$1":I
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 175
    .end local v11    # "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .end local v12    # "typeDescriptor":Lkotlin/reflect/jvm/internal/impl/descriptors/ClassifierDescriptor;
    :cond_a
    :goto_4
    return-object p1
.end method

.method private final expandRecursively(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 6
    .param p1, "typeAliasExpansion"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .param p2, "attributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;
    .param p3, "isNullable"    # Z
    .param p4, "recursionDepth"    # I
    .param p5, "withAbbreviatedType"    # Z

    .line 41
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 42
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 43
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;->getUnderlyingType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 41
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 45
    .local v0, "underlyingProjection":Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2, p4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v1

    .line 46
    .local v1, "expandedProjection":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v3, "expandedProjection.type"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    .line 48
    .local v2, "expandedType":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    .line 50
    :cond_0
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 54
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v3

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/AnnotationsTypeAttributeKt;->getAnnotations(Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 56
    invoke-direct {p0, v2, p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->combineAttributes(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    .line 279
    .local v3, "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    const/4 v4, 0x0

    .line 56
    .local v4, "$i$a$-let-TypeAliasExpander$expandRecursively$expandedTypeWithExtraAnnotations$1":I
    invoke-static {v3, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    .end local v3    # "it":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .end local v4    # "$i$a$-let-TypeAliasExpander$expandRecursively$expandedTypeWithExtraAnnotations$1":I
    const-string v4, "expandedType.combineAttr\u2026fNeeded(it, isNullable) }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    nop

    .line 58
    .local v3, "expandedTypeWithExtraAnnotations":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    if-eqz p5, :cond_2

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->createAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->withAbbreviation(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v4

    goto :goto_1

    .line 61
    :cond_2
    move-object v4, v3

    .line 58
    :goto_1
    return-object v4

    .line 50
    .end local v3    # "expandedTypeWithExtraAnnotations":Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    :cond_3
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-assert-TypeAliasExpander$expandRecursively$1":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type alias expansion: result for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", should be invariant"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 50
    .end local v3    # "$i$a$-assert-TypeAliasExpander$expandRecursively$1":I
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method private final expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .locals 16
    .param p1, "underlyingProjection"    # Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .param p2, "typeAliasExpansion"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .param p3, "typeParameterDescriptor"    # Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .param p4, "recursionDepth"    # I

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->Companion:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;->access$assertRecursionDepth(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander$Companion;ILkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;)V

    .line 82
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v4

    const-string v5, "makeStarProjection(typeParameterDescriptor!!)"

    if-eqz v4, :cond_0

    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    .line 84
    :cond_0
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v4

    const-string v6, "underlyingProjection.type"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .local v4, "underlyingType":Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v6

    invoke-virtual {v1, v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getReplacement(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v6

    if-nez v6, :cond_1

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 86
    move-object/from16 v7, p1

    invoke-direct {v0, v7, v1, v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandNonArgumentTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v5

    return-object v5

    .line 85
    :cond_1
    move-object/from16 v7, p1

    .line 92
    .local v6, "argument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeStarProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    .line 94
    :cond_2
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v5

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v5

    .line 96
    .local v5, "argumentType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    move-object v8, v0

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;

    .local v8, "$this$expandTypeProjection_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;
    const/4 v9, 0x0

    .line 97
    .local v9, "$i$a$-run-TypeAliasExpander$expandTypeProjection$resultingVariance$1":I
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v10

    const-string v11, "argument.projectionKind"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .local v10, "argumentVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v11

    const-string v12, "underlyingProjection.projectionKind"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .local v11, "underlyingVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    nop

    .line 102
    if-ne v11, v10, :cond_3

    goto :goto_0

    .line 103
    :cond_3
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v11, v12, :cond_4

    goto :goto_0

    .line 104
    :cond_4
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v10, v12, :cond_5

    move-object v12, v11

    goto :goto_1

    .line 106
    :cond_5
    iget-object v12, v8, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-result-object v13

    move-object v14, v5

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v12, v13, v2, v14}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;->conflictingProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 107
    nop

    .line 100
    :goto_0
    move-object v12, v10

    :goto_1
    nop

    .line 111
    .local v12, "substitutionVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    if-eqz v2, :cond_6

    invoke-interface/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v13

    if-nez v13, :cond_7

    :cond_6
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_7
    const-string v14, "typeParameterDescriptor?\u2026nce ?: Variance.INVARIANT"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .local v13, "parameterVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    nop

    .line 114
    if-ne v13, v12, :cond_8

    goto :goto_2

    .line 115
    :cond_8
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v13, v14, :cond_9

    goto :goto_2

    .line 116
    :cond_9
    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v12, v14, :cond_a

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_3

    .line 118
    :cond_a
    iget-object v14, v8, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->reportStrategy:Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;

    invoke-virtual/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;->getDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;

    move-result-object v15

    move-object v1, v5

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v14, v15, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansionReportStrategy;->conflictingProjection(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeAliasDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 119
    nop

    .line 113
    :goto_2
    move-object v14, v12

    :goto_3
    nop

    .line 96
    .end local v8    # "$this$expandTypeProjection_u24lambda_u242":Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;
    .end local v9    # "$i$a$-run-TypeAliasExpander$expandTypeProjection$resultingVariance$1":I
    .end local v10    # "argumentVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .end local v11    # "underlyingVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .end local v12    # "substitutionVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .end local v13    # "parameterVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    move-object v1, v14

    .line 124
    .local v1, "resultingVariance":Lkotlin/reflect/jvm/internal/impl/types/Variance;
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v8

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->checkRepeatedAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;)V

    .line 127
    instance-of v8, v5, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    if-eqz v8, :cond_b

    .line 128
    move-object v8, v5

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAttributes()Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->combineAttributes(Lkotlin/reflect/jvm/internal/impl/types/DynamicType;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/DynamicType;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    goto :goto_4

    .line 130
    :cond_b
    move-object v8, v5

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v8}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->asSimpleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    invoke-direct {v0, v8, v4}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->combineNullabilityAndAnnotations(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    .line 126
    :goto_4
    nop

    .line 132
    .local v8, "substitutedType":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    new-instance v9, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    move-object v10, v8

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {v9, v1, v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    return-object v9
.end method

.method private final substituteArguments(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;I)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 20
    .param p1, "$this$substituteArguments"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .param p2, "typeAliasExpansion"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .param p3, "recursionDepth"    # I

    .line 230
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    .line 232
    .local v0, "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    invoke-virtual/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getArguments()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 288
    .local v2, "$i$f$mapIndexed":I
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 289
    .local v5, "$i$f$mapIndexedTo":I
    const/4 v6, 0x0

    .line 290
    .local v6, "index$iv$iv":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 291
    .local v8, "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "index$iv$iv":I
    .local v9, "index$iv$iv":I
    if-gez v6, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v10, v8

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .local v6, "i":I
    .local v10, "originalArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    const/4 v11, 0x0

    .line 233
    .local v11, "$i$a$-mapIndexed-TypeAliasExpander$substituteArguments$substitutedArguments$1":I
    nop

    .line 234
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    add-int/lit8 v13, p3, 0x1

    .line 233
    move-object/from16 v14, p0

    move-object/from16 v15, p2

    invoke-direct {v14, v10, v15, v12, v13}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandTypeProjection(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;I)Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    move-result-object v12

    .line 236
    .local v12, "projection":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v19, v2

    move-object v13, v12

    goto :goto_1

    .line 237
    :cond_1
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;

    .line 238
    move-object/from16 v16, v0

    .end local v0    # "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .local v16, "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getProjectionKind()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    .line 239
    move-object/from16 v17, v1

    .end local v1    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .local v17, "$this$mapIndexed$iv":Ljava/lang/Iterable;
    invoke-interface {v12}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    invoke-interface {v10}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v18

    move/from16 v19, v2

    .end local v2    # "$i$f$mapIndexed":I
    .local v19, "$i$f$mapIndexed":I
    invoke-virtual/range {v18 .. v18}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->makeNullableIfNeeded(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v1

    .line 237
    invoke-direct {v13, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 236
    :goto_1
    nop

    .line 291
    .end local v6    # "i":I
    .end local v10    # "originalArgument":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    .end local v11    # "$i$a$-mapIndexed-TypeAliasExpander$substituteArguments$substitutedArguments$1":I
    .end local v12    # "projection":Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;
    invoke-interface {v3, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v6, v9

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v19

    goto :goto_0

    .line 292
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    .end local v9    # "index$iv$iv":I
    .end local v16    # "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .end local v17    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapIndexed":I
    .restart local v0    # "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .restart local v1    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .restart local v2    # "$i$f$mapIndexed":I
    .local v6, "index$iv$iv":I
    :cond_2
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move/from16 v19, v2

    .end local v0    # "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .end local v1    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$mapIndexed":I
    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapIndexedTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapIndexedTo":I
    .end local v6    # "index$iv$iv":I
    .restart local v16    # "typeConstructor":Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;
    .restart local v17    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .restart local v19    # "$i$f$mapIndexed":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 288
    nop

    .line 232
    .end local v17    # "$this$mapIndexed$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapIndexed":I
    nop

    .line 243
    .local v0, "substitutedArguments":Ljava/util/List;
    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object/from16 v3, p1

    invoke-static {v3, v0, v2, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutionKt;->replace$default(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final expand(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 7
    .param p1, "typeAliasExpansion"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;
    .param p2, "attributes"    # Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;

    const-string v0, "typeAliasExpansion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    nop

    .line 24
    nop

    .line 25
    nop

    .line 23
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpander;->expandRecursively(Lkotlin/reflect/jvm/internal/impl/types/TypeAliasExpansion;Lkotlin/reflect/jvm/internal/impl/types/TypeAttributes;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v0

    .line 26
    return-object v0
.end method
