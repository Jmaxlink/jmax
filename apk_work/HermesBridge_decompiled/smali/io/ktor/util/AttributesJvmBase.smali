.class abstract Lio/ktor/util/AttributesJvmBase;
.super Ljava/lang/Object;
.source "AttributesJvm.kt"

# interfaces
.implements Lio/ktor/util/Attributes;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\"\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\r\u001a\u00020\u000e2\n\u0010\u000f\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0086\u0002J%\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0008\u0008\u0000\u0010\u0011*\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0005\u00a2\u0006\u0002\u0010\u0012J+\u0010\u0013\u001a\u00020\u0014\"\u0008\u0008\u0000\u0010\u0011*\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u00052\u0006\u0010\u0015\u001a\u0002H\u0011\u00a2\u0006\u0002\u0010\u0016J\u001e\u0010\u0017\u001a\u00020\u0014\"\u0008\u0008\u0000\u0010\u0011*\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00110\u0005R\u001b\u0010\u0003\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00050\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u0014\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0005\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/ktor/util/AttributesJvmBase;",
        "Lio/ktor/util/Attributes;",
        "()V",
        "allKeys",
        "",
        "Lio/ktor/util/AttributeKey;",
        "getAllKeys",
        "()Ljava/util/List;",
        "map",
        "",
        "",
        "getMap",
        "()Ljava/util/Map;",
        "contains",
        "",
        "key",
        "getOrNull",
        "T",
        "(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;",
        "put",
        "",
        "value",
        "(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V",
        "remove",
        "ktor-utils"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Lio/ktor/util/AttributeKey;)Z
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/AttributeKey<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lio/ktor/util/AttributesJvmBase;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1}, Lio/ktor/util/Attributes$DefaultImpls;->get(Lio/ktor/util/Attributes;Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getAllKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/util/AttributeKey<",
            "*>;>;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lio/ktor/util/AttributesJvmBase;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/ktor/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public final getOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lio/ktor/util/AttributesJvmBase;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Lio/ktor/util/AttributeKey;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lio/ktor/util/AttributesJvmBase;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public final remove(Lio/ktor/util/AttributeKey;)V
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lio/ktor/util/AttributesJvmBase;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public take(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1}, Lio/ktor/util/Attributes$DefaultImpls;->take(Lio/ktor/util/Attributes;Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeOrNull(Lio/ktor/util/AttributeKey;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Lio/ktor/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/util/AttributeKey<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 15
    invoke-static {p0, p1}, Lio/ktor/util/Attributes$DefaultImpls;->takeOrNull(Lio/ktor/util/Attributes;Lio/ktor/util/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
