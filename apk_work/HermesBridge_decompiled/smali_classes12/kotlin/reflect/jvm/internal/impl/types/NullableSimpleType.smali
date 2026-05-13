.class final Lkotlin/reflect/jvm/internal/impl/types/NullableSimpleType;
.super Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;
.source "KotlinTypeFactory.kt"


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-void
.end method


# virtual methods
.method public isMarkedNullable()Z
    .locals 1

    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;
    .locals 1
    .param p1, "delegate"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    .line 286
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/NullableSimpleType;->replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/NullableSimpleType;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/DelegatingSimpleType;

    return-object v0
.end method

.method public replaceDelegate(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/NullableSimpleType;
    .locals 1
    .param p1, "delegate"    # Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/NullableSimpleType;

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/NullableSimpleType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    return-object v0
.end method
