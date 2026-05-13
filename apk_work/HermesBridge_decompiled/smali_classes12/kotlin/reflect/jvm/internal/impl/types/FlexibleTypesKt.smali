.class public final Lkotlin/reflect/jvm/internal/impl/types/FlexibleTypesKt;
.super Ljava/lang/Object;
.source "flexibleTypes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nflexibleTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 flexibleTypes.kt\norg/jetbrains/kotlin/types/FlexibleTypesKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n288#2:186\n1726#2,3:187\n289#2:190\n1549#2:191\n1620#2,3:192\n1549#2:195\n1620#2,3:196\n*S KotlinDebug\n*F\n+ 1 flexibleTypes.kt\norg/jetbrains/kotlin/types/FlexibleTypesKt\n*L\n50#1:186\n51#1:187,3\n50#1:190\n62#1:191\n62#1:192,3\n65#1:195\n65#1:196,3\n*E\n"
.end annotation


# direct methods
.method public static final asFlexibleType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;
    .locals 2
    .param p0, "$this$asFlexibleType"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    return-object v0
.end method

.method public static final isFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1
    .param p0, "$this$isFlexible"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    instance-of v0, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    return v0
.end method

.method public static final lowerIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3
    .param p0, "$this$lowerIfFlexible"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .local v0, "$this$lowerIfFlexible_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    const/4 v1, 0x0

    .line 71
    .local v1, "$i$a$-with-FlexibleTypesKt$lowerIfFlexible$1":I
    nop

    .line 72
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getLowerBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_0
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 71
    :goto_0
    nop

    .line 70
    .end local v0    # "$this$lowerIfFlexible_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .end local v1    # "$i$a$-with-FlexibleTypesKt$lowerIfFlexible$1":I
    nop

    .line 75
    return-object v2

    .line 73
    .restart local v0    # "$this$lowerIfFlexible_u24lambda_u244":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .restart local v1    # "$i$a$-with-FlexibleTypesKt$lowerIfFlexible$1":I
    :cond_1
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2
.end method

.method public static final upperIfFlexible(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3
    .param p0, "$this$upperIfFlexible"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .local v0, "$this$upperIfFlexible_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    const/4 v1, 0x0

    .line 78
    .local v1, "$i$a$-with-FlexibleTypesKt$upperIfFlexible$1":I
    nop

    .line 79
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getUpperBound()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_0
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 78
    :goto_0
    nop

    .line 77
    .end local v0    # "$this$upperIfFlexible_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .end local v1    # "$i$a$-with-FlexibleTypesKt$upperIfFlexible$1":I
    nop

    .line 82
    return-object v2

    .line 80
    .restart local v0    # "$this$upperIfFlexible_u24lambda_u245":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .restart local v1    # "$i$a$-with-FlexibleTypesKt$upperIfFlexible$1":I
    :cond_1
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v2
.end method
