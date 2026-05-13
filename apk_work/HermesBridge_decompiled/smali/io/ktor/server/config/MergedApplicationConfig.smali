.class public final Lio/ktor/server/config/MergedApplicationConfig;
.super Ljava/lang/Object;
.source "MergedApplicationConfig.kt"

# interfaces
.implements Lio/ktor/server/config/ApplicationConfig;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMergedApplicationConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergedApplicationConfig.kt\nio/ktor/server/config/MergedApplicationConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n2624#2,3:72\n2624#2,3:75\n*S KotlinDebug\n*F\n+ 1 MergedApplicationConfig.kt\nio/ktor/server/config/MergedApplicationConfig\n*L\n56#1:72,3\n57#1:75,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00152\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u000e\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u0016J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0013\u001a\u00020\tH\u0016J\u0016\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R!\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R!\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\r\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lio/ktor/server/config/MergedApplicationConfig;",
        "Lio/ktor/server/config/ApplicationConfig;",
        "first",
        "second",
        "(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)V",
        "getFirst",
        "()Lio/ktor/server/config/ApplicationConfig;",
        "firstKeys",
        "",
        "",
        "getFirstKeys",
        "()Ljava/util/Set;",
        "firstKeys$delegate",
        "Lkotlin/Lazy;",
        "getSecond",
        "secondKeys",
        "getSecondKeys",
        "secondKeys$delegate",
        "config",
        "path",
        "configList",
        "",
        "keys",
        "property",
        "Lio/ktor/server/config/ApplicationConfigValue;",
        "propertyOrNull",
        "toMap",
        "",
        "",
        "ktor-server-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final first:Lio/ktor/server/config/ApplicationConfig;

.field private final firstKeys$delegate:Lkotlin/Lazy;

.field private final second:Lio/ktor/server/config/ApplicationConfig;

.field private final secondKeys$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)V
    .locals 1
    .param p1, "first"    # Lio/ktor/server/config/ApplicationConfig;
    .param p2, "second"    # Lio/ktor/server/config/ApplicationConfig;

    const-string v0, "first"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "second"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    .line 39
    iput-object p2, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    .line 42
    new-instance v0, Lio/ktor/server/config/MergedApplicationConfig$firstKeys$2;

    invoke-direct {v0, p0}, Lio/ktor/server/config/MergedApplicationConfig$firstKeys$2;-><init>(Lio/ktor/server/config/MergedApplicationConfig;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->firstKeys$delegate:Lkotlin/Lazy;

    .line 43
    new-instance v0, Lio/ktor/server/config/MergedApplicationConfig$secondKeys$2;

    invoke-direct {v0, p0}, Lio/ktor/server/config/MergedApplicationConfig$secondKeys$2;-><init>(Lio/ktor/server/config/MergedApplicationConfig;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->secondKeys$delegate:Lkotlin/Lazy;

    .line 37
    return-void
.end method

.method private final getFirstKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->firstKeys$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private final getSecondKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->secondKeys$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getFirstKeys()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$none$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 72
    .local v1, "$i$f$none":I
    instance-of v2, v0, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x2e

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v7

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 56
    .local v10, "$i$a$-none-MergedApplicationConfig$config$1":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v6, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    .line 73
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-none-MergedApplicationConfig$config$1":I
    if-eqz v9, :cond_1

    move v0, v6

    goto :goto_0

    .line 74
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_2
    move v0, v7

    .line 56
    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$none":I
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    return-object v0

    .line 57
    :cond_3
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getSecondKeys()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$none$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 75
    .restart local v1    # "$i$f$none":I
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    move v6, v7

    goto :goto_1

    .line 76
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .restart local v9    # "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 57
    .local v10, "$i$a$-none-MergedApplicationConfig$config$2":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v6, v4, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v9

    .line 76
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-none-MergedApplicationConfig$config$2":I
    if-eqz v9, :cond_5

    goto :goto_1

    .line 77
    .end local v8    # "element$iv":Ljava/lang/Object;
    :cond_6
    move v6, v7

    .line 57
    .end local v0    # "$this$none$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$none":I
    :goto_1
    if-eqz v6, :cond_7

    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v0

    return-object v0

    .line 58
    :cond_7
    new-instance v0, Lio/ktor/server/config/MergedApplicationConfig;

    iget-object v1, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v1, p1}, Lio/ktor/server/config/ApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v1

    iget-object v2, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v2, p1}, Lio/ktor/server/config/ApplicationConfig;->config(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/ktor/server/config/MergedApplicationConfig;-><init>(Lio/ktor/server/config/ApplicationConfig;Lio/ktor/server/config/ApplicationConfig;)V

    check-cast v0, Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public configList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/server/config/ApplicationConfig;",
            ">;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getFirstKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->configList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 63
    .local v0, "firstList":Ljava/util/List;
    :goto_0
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getSecondKeys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v1, p1}, Lio/ktor/server/config/ApplicationConfig;->configList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 64
    .local v1, "secondList":Ljava/util/List;
    :goto_1
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public final getFirst()Lio/ktor/server/config/ApplicationConfig;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public final getSecond()Lio/ktor/server/config/ApplicationConfig;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    return-object v0
.end method

.method public keys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getFirstKeys()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getSecondKeys()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/SetsKt;->plus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public property(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    nop

    .line 46
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getFirstKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->property(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->property(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0
.end method

.method public propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    nop

    .line 51
    invoke-direct {p0}, Lio/ktor/server/config/MergedApplicationConfig;->getFirstKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0, p1}, Lio/ktor/server/config/ApplicationConfig;->propertyOrNull(Ljava/lang/String;)Lio/ktor/server/config/ApplicationConfigValue;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0
.end method

.method public toMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lio/ktor/server/config/MergedApplicationConfig;->second:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v0}, Lio/ktor/server/config/ApplicationConfig;->toMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/server/config/MergedApplicationConfig;->first:Lio/ktor/server/config/ApplicationConfig;

    invoke-interface {v1}, Lio/ktor/server/config/ApplicationConfig;->toMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
