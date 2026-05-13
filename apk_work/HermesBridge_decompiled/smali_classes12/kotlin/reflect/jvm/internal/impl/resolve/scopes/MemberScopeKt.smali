.class public final Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScopeKt;
.super Ljava/lang/Object;
.source "MemberScope.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/MemberScopeKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 addToStdlib.kt\norg/jetbrains/kotlin/utils/addToStdlib/AddToStdlibKt\n*L\n1#1,261:1\n223#2,2:262\n288#2,2:264\n766#2:271\n857#2,2:272\n196#3,5:266\n*S KotlinDebug\n*F\n+ 1 MemberScope.kt\norg/jetbrains/kotlin/resolve/scopes/MemberScopeKt\n*L\n71#1:262,2\n74#1:264,2\n87#1:271\n87#1:272,2\n77#1:266,5\n*E\n"
.end annotation


# direct methods
.method public static final flatMapClassifierNamesOrNull(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 7
    .param p0, "$this$flatMapClassifierNamesOrNull"    # Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            ">;)",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv":Ljava/util/Collection;
    move-object v1, p0

    .local v1, "$this$flatMapToNullable$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 266
    .local v2, "$i$f$flatMapToNullable":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 267
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    .local v5, "p0":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    const/4 v6, 0x0

    .line 77
    .local v6, "$i$a$-flatMapToNullable-MemberScopeKt$flatMapClassifierNamesOrNull$1":I
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;->getClassifierNames()Ljava/util/Set;

    move-result-object v5

    .line 267
    .end local v5    # "p0":Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .end local v6    # "$i$a$-flatMapToNullable-MemberScopeKt$flatMapClassifierNamesOrNull$1":I
    check-cast v5, Ljava/lang/Iterable;

    if-nez v5, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1

    .line 268
    .local v5, "list$iv":Ljava/lang/Iterable;
    :cond_0
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 270
    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "list$iv":Ljava/lang/Iterable;
    :cond_1
    nop

    .end local v0    # "destination$iv":Ljava/util/Collection;
    .end local v1    # "$this$flatMapToNullable$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$flatMapToNullable":I
    :goto_1
    check-cast v0, Ljava/util/Set;

    .line 77
    return-object v0
.end method
