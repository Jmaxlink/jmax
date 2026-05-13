.class public final Lio/ktor/server/engine/OverridingClassLoader;
.super Ljava/lang/ClassLoader;
.source "OverridingClassLoader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOverridingClassLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OverridingClassLoader.kt\nio/ktor/server/engine/OverridingClassLoader\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,70:1\n37#2,2:71\n*S KotlinDebug\n*F\n+ 1 OverridingClassLoader.kt\nio/ktor/server/engine/OverridingClassLoader\n*L\n18#1:71,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0012B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u001c\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0014R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/server/engine/OverridingClassLoader;",
        "Ljava/lang/ClassLoader;",
        "Ljava/io/Closeable;",
        "classpath",
        "",
        "Ljava/net/URL;",
        "parentClassLoader",
        "(Ljava/util/List;Ljava/lang/ClassLoader;)V",
        "childClassLoader",
        "Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;",
        "close",
        "",
        "loadClass",
        "Ljava/lang/Class;",
        "name",
        "",
        "resolve",
        "",
        "ChildURLClassLoader",
        "ktor-server-host-common"
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
.field private final childClassLoader:Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1, "classpath"    # Ljava/util/List;
    .param p2, "parentClassLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;",
            "Ljava/lang/ClassLoader;",
            ")V"
        }
    .end annotation

    const-string v0, "classpath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 18
    new-instance v0, Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 72
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/net/URL;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/net/URL;

    .line 18
    invoke-virtual {p0}, Lio/ktor/server/engine/OverridingClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "parent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lio/ktor/server/engine/OverridingClassLoader;->childClassLoader:Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;

    .line 14
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 30
    iget-object v0, p0, Lio/ktor/server/engine/OverridingClassLoader;->childClassLoader:Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;

    invoke-virtual {v0}, Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;->close()V

    .line 31
    return-void
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    nop

    .line 23
    :try_start_1
    iget-object v0, p0, Lio/ktor/server/engine/OverridingClassLoader;->childClassLoader:Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;

    invoke-virtual {v0, p1}, Lio/ktor/server/engine/OverridingClassLoader$ChildURLClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    .end local p0    # "this":Lio/ktor/server/engine/OverridingClassLoader;
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v1

    .line 24
    const-string v2, "{\n        // didn\'t find\u2026lass(name, resolve)\n    }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 27
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 20
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "resolve":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
