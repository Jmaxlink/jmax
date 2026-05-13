.class public final Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypesKt;
.super Ljava/lang/Object;
.source "javaTypes.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\njavaTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 javaTypes.kt\norg/jetbrains/kotlin/load/java/structure/JavaTypesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,48:1\n1#2:49\n*E\n"
.end annotation


# direct methods
.method public static final isSuperWildcard(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;)Z
    .locals 4
    .param p0, "$this$isSuperWildcard"    # Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    .line 47
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    .local v0, "it":Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-let-JavaTypesKt$isSuperWildcard$1":I
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;->getBound()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;->isExtends()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .end local v0    # "it":Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;
    .end local v2    # "$i$a$-let-JavaTypesKt$isSuperWildcard$1":I
    :cond_1
    return v1
.end method
