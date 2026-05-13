.class public abstract Lio/ktor/server/response/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponseHeaders.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseHeaders.kt\nio/ktor/server/response/ResponseHeaders\n+ 2 Headers.kt\nio/ktor/http/Headers$Companion\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,84:1\n24#2:85\n1855#3,2:86\n*S KotlinDebug\n*F\n+ 1 ResponseHeaders.kt\nio/ktor/server/response/ResponseHeaders\n*L\n38#1:85\n39#1:86,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0008\u001a\u00020\tJ \u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0011\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u0005H\u0086\u0002J\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0005H$J\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\u0005H\u0096\u0002J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0014H$J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00142\u0006\u0010\u000c\u001a\u00020\u0005H$J\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00142\u0006\u0010\u000c\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/ktor/server/response/ResponseHeaders;",
        "",
        "()V",
        "managedByEngineHeaders",
        "",
        "",
        "getManagedByEngineHeaders",
        "()Ljava/util/Set;",
        "allValues",
        "Lio/ktor/http/Headers;",
        "append",
        "",
        "name",
        "value",
        "safeOnly",
        "",
        "contains",
        "engineAppendHeader",
        "get",
        "getEngineHeaderNames",
        "",
        "getEngineHeaderValues",
        "values",
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
.field private final managedByEngineHeaders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/response/ResponseHeaders;->managedByEngineHeaders:Ljava/util/Set;

    .line 13
    return-void
.end method

.method public static synthetic append$default(Lio/ktor/server/response/ResponseHeaders;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 48
    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/server/response/ResponseHeaders;->append(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: append"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final allValues()Lio/ktor/http/Headers;
    .locals 12

    .line 38
    sget-object v0, Lio/ktor/http/Headers;->Companion:Lio/ktor/http/Headers$Companion;

    .local v0, "this_$iv":Lio/ktor/http/Headers$Companion;
    const/4 v1, 0x0

    .line 85
    .local v1, "$i$f$build":I
    new-instance v2, Lio/ktor/http/HeadersBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Lio/ktor/http/HeadersBuilder;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v2

    .local v3, "$this$allValues_u24lambda_u241":Lio/ktor/http/HeadersBuilder;
    const/4 v4, 0x0

    .line 39
    .local v4, "$i$a$-build-ResponseHeaders$allValues$1":I
    invoke-virtual {p0}, Lio/ktor/server/response/ResponseHeaders;->getEngineHeaderNames()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 86
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .local v9, "it":Ljava/lang/String;
    const/4 v10, 0x0

    .line 40
    .local v10, "$i$a$-forEach-ResponseHeaders$allValues$1$1":I
    invoke-virtual {p0, v9}, Lio/ktor/server/response/ResponseHeaders;->getEngineHeaderValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    check-cast v11, Ljava/lang/Iterable;

    invoke-virtual {v3, v9, v11}, Lio/ktor/http/HeadersBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 41
    nop

    .line 86
    .end local v9    # "it":Ljava/lang/String;
    .end local v10    # "$i$a$-forEach-ResponseHeaders$allValues$1$1":I
    nop

    .end local v8    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 87
    :cond_0
    nop

    .line 42
    .end local v5    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .line 85
    .end local v3    # "$this$allValues_u24lambda_u241":Lio/ktor/http/HeadersBuilder;
    .end local v4    # "$i$a$-build-ResponseHeaders$allValues$1":I
    invoke-virtual {v2}, Lio/ktor/http/HeadersBuilder;->build()Lio/ktor/http/Headers;

    move-result-object v0

    .line 42
    .end local v0    # "this_$iv":Lio/ktor/http/Headers$Companion;
    .end local v1    # "$i$f$build":I
    return-object v0
.end method

.method public final append(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "safeOnly"    # Z

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lio/ktor/server/response/ResponseHeaders;->getManagedByEngineHeaders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    if-eqz p3, :cond_2

    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/ktor/http/HttpHeaders;->isUnsafe(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v0, Lio/ktor/http/UnsafeHeaderException;

    invoke-direct {v0, p1}, Lio/ktor/http/UnsafeHeaderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    :goto_0
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lio/ktor/http/HttpHeaders;->checkHeaderName(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0, p2}, Lio/ktor/http/HttpHeaders;->checkHeaderValue(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/response/ResponseHeaders;->engineAppendHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p1}, Lio/ktor/server/response/ResponseHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract engineAppendHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1}, Lio/ktor/server/response/ResponseHeaders;->getEngineHeaderValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getEngineHeaderNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getEngineHeaderValues(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getManagedByEngineHeaders()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lio/ktor/server/response/ResponseHeaders;->managedByEngineHeaders:Ljava/util/Set;

    return-object v0
.end method

.method public final values(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p1}, Lio/ktor/server/response/ResponseHeaders;->getEngineHeaderValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
