.class public final Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;
.super Ljava/lang/Object;
.source "KotlinType.kt"


# direct methods
.method public static final isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 3
    .param p0, "$this$isError"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    .local v0, "unwrapped":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    const/4 v1, 0x0

    .line 229
    .local v1, "$i$a$-let-KotlinTypeKt$isError$1":I
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    if-nez v2, :cond_1

    .line 230
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->getDelegate()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v2

    instance-of v2, v2, Lkotlin/reflect/jvm/internal/impl/types/error/ErrorType;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 229
    :goto_1
    nop

    .line 228
    .end local v0    # "unwrapped":Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;
    .end local v1    # "$i$a$-let-KotlinTypeKt$isError$1":I
    nop

    .line 231
    return v2
.end method

.method public static final isNullable(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1
    .param p0, "$this$isNullable"    # Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    return v0
.end method
