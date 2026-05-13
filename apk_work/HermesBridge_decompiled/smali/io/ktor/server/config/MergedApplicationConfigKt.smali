.class public final Lio/ktor/server/config/MergedApplicationConfigKt;
.super Ljava/lang/Object;
.source "MergedApplicationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMergedApplicationConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergedApplicationConfig.kt\nio/ktor/server/config/MergedApplicationConfigKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n1#2:72\n1819#3,8:73\n*S KotlinDebug\n*F\n+ 1 MergedApplicationConfig.kt\nio/ktor/server/config/MergedApplicationConfigKt\n*L\n14#1:73,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00010\u0002H\u0007\u001a\u0012\u0010\u0003\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "merge",
        "Lio/ktor/server/config/ApplicationConfig;",
        "",
        "mergeWith",
        "other",
        "withFallback",
        "ktor-server-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final merge(Ljava/util/List;)Lio/ktor/server/config/ApplicationConfig;
    .locals 8
    .param p0, "$this$merge"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/ktor/server/config/ApplicationConfig;",
            ">;)",
            "Lio/ktor/server/config/ApplicationConfig;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use mergeWith/withFallback instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 14
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    .local v0, "initial$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "$this$foldRight$iv":Ljava/util/List;
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$f$foldRight":I
    move-object v3, v0

    .line 74
    .local v3, "accumulator$iv":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 76
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Lio/ktor/server/config/ApplicationConfig;

    .local v6, "acc":Lio/ktor/server/config/ApplicationConfig;
    check-cast v5, Lio/ktor/server/config/ApplicationConfig;

    .local v5, "config":Lio/ktor/server/config/ApplicationConfig;
    const/4 v7, 0x0

    .line 14
    .local v7, "$i$a$-foldRight-MergedApplicationConfigKt$merge$2":I
    invoke-static {v5, v6}, Lio/ktor/server/config/MergedApplicationConfigKt;->withFallback(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v5

    .line 77
    .end local v5    # "config":Lio/ktor/server/config/ApplicationConfig;
    .end local v6    # "acc":Lio/ktor/server/config/ApplicationConfig;
    .end local v7    # "$i$a$-foldRight-MergedApplicationConfigKt$merge$2":I
    move-object v3, v5

    goto :goto_0

    .line 80
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    nop

    .end local v0    # "initial$iv":Ljava/lang/Object;
    .end local v1    # "$this$foldRight$iv":Ljava/util/List;
    .end local v2    # "$i$f$foldRight":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    .line 14
    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    .line 13
    .local v0, "$i$a$-require-MergedApplicationConfigKt$merge$1":I
    nop

    .end local v0    # "$i$a$-require-MergedApplicationConfigKt$merge$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List of configs can not be empty"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final mergeWith(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)Lio/ktor/server/config/ApplicationConfig;
    .locals 1
    .param p0, "$this$mergeWith"    # Lio/ktor/server/config/ApplicationConfig;
    .param p1, "other"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lio/ktor/server/config/MergedApplicationConfig;

    invoke-direct {v0, p1, p0}, Lio/ktor/server/config/MergedApplicationConfig;-><init>(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public static final withFallback(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)Lio/ktor/server/config/ApplicationConfig;
    .locals 1
    .param p0, "$this$withFallback"    # Lio/ktor/server/config/ApplicationConfig;
    .param p1, "other"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lio/ktor/server/config/MergedApplicationConfig;

    invoke-direct {v0, p0, p1}, Lio/ktor/server/config/MergedApplicationConfig;-><init>(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method
