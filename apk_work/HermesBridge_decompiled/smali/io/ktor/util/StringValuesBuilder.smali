.class public interface abstract Lio/ktor/util/StringValuesBuilder;
.super Ljava/lang/Object;
.source "StringValues.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0008\u0005\n\u0002\u0010\"\n\u0002\u0010&\n\u0002\u0010 \n\u0002\u0008\u0008\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH&J\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fH&J\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\rH&J\u001e\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\t0\u000fH&J\u0008\u0010\u0011\u001a\u00020\rH&J\u0008\u0010\u0012\u001a\u00020\u0007H&J\u0011\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\tH\u00a6\u0002J\u0018\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&J \u0010\u0014\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00170\u00160\u0015H&J\u0013\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0008\u001a\u00020\tH\u00a6\u0002J\u0018\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00172\u0006\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\u001a\u001a\u00020\u0003H&J\u000e\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0015H&J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J\u0018\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH&J\u0008\u0010\u001d\u001a\u00020\u0007H&J\u0019\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u00a6\u0002R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/ktor/util/StringValuesBuilder;",
        "",
        "caseInsensitiveName",
        "",
        "getCaseInsensitiveName",
        "()Z",
        "append",
        "",
        "name",
        "",
        "value",
        "appendAll",
        "stringValues",
        "Lio/ktor/util/StringValues;",
        "values",
        "",
        "appendMissing",
        "build",
        "clear",
        "contains",
        "entries",
        "",
        "",
        "",
        "get",
        "getAll",
        "isEmpty",
        "names",
        "remove",
        "removeKeysWithNoEntries",
        "set",
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


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract appendAll(Lio/ktor/util/StringValues;)V
.end method

.method public abstract appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract appendMissing(Lio/ktor/util/StringValues;)V
.end method

.method public abstract appendMissing(Ljava/lang/String;Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract build()Lio/ktor/util/StringValues;
.end method

.method public abstract clear()V
.end method

.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract contains(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract entries()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAll(Ljava/lang/String;)Ljava/util/List;
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

.method public abstract getCaseInsensitiveName()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract names()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract removeKeysWithNoEntries()V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;)V
.end method
