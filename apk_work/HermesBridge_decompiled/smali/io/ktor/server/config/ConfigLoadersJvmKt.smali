.class public final Lio/ktor/server/config/ConfigLoadersJvmKt;
.super Ljava/lang/Object;
.source "ConfigLoadersJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigLoadersJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigLoadersJvm.kt\nio/ktor/server/config/ConfigLoadersJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,18:1\n1#2:19\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\"\u001a\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00018@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "CONFIG_PATH",
        "",
        "",
        "getCONFIG_PATH",
        "()Ljava/util/List;",
        "configLoaders",
        "Lio/ktor/server/config/ConfigLoader;",
        "getConfigLoaders",
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


# static fields
.field private static final configLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/ktor/server/config/ConfigLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    const-class v0, Lio/ktor/server/config/ConfigLoader;

    .local v0, "it":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 16
    .local v1, "$i$a$-let-ConfigLoadersJvmKt$configLoaders$1":I
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    const-string v3, "load(it, it.classLoader)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 15
    .end local v0    # "it":Ljava/lang/Class;
    .end local v1    # "$i$a$-let-ConfigLoadersJvmKt$configLoaders$1":I
    sput-object v0, Lio/ktor/server/config/ConfigLoadersJvmKt;->configLoaders:Ljava/util/List;

    return-void
.end method

.method public static final getCONFIG_PATH()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$_get_CONFIG_PATH__u24lambda_u243":Ljava/util/List;
    const/4 v2, 0x0

    .line 10
    .local v2, "$i$a$-buildList-ConfigLoadersJvmKt$CONFIG_PATH$1":I
    const-string v3, "config.file"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "getProperty(\"config.file\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .local v3, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 10
    .local v4, "$i$a$-let-ConfigLoadersJvmKt$CONFIG_PATH$1$1":I
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ConfigLoadersJvmKt$CONFIG_PATH$1$1":I
    :cond_0
    const-string v3, "config.resource"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "getProperty(\"config.resource\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 11
    .local v4, "$i$a$-let-ConfigLoadersJvmKt$CONFIG_PATH$1$2":I
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ConfigLoadersJvmKt$CONFIG_PATH$1$2":I
    :cond_1
    const-string v3, "config.url"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "getProperty(\"config.url\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .restart local v3    # "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 12
    .local v4, "$i$a$-let-ConfigLoadersJvmKt$CONFIG_PATH$1$3":I
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .end local v3    # "it":Ljava/lang/String;
    .end local v4    # "$i$a$-let-ConfigLoadersJvmKt$CONFIG_PATH$1$3":I
    :cond_2
    nop

    .line 9
    .end local v1    # "$this$_get_CONFIG_PATH__u24lambda_u243":Ljava/util/List;
    .end local v2    # "$i$a$-buildList-ConfigLoadersJvmKt$CONFIG_PATH$1":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static final getConfigLoaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/ktor/server/config/ConfigLoader;",
            ">;"
        }
    .end annotation

    .line 15
    sget-object v0, Lio/ktor/server/config/ConfigLoadersJvmKt;->configLoaders:Ljava/util/List;

    return-object v0
.end method
