.class public final Lio/ktor/server/netty/NettyApplicationEngineKt;
.super Ljava/lang/Object;
.source "NettyApplicationEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u0001H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "getChannelClass",
        "Lkotlin/reflect/KClass;",
        "Lio/netty/channel/socket/ServerSocketChannel;",
        "ktor-server-netty"
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
.method public static final synthetic access$getChannelClass()Lkotlin/reflect/KClass;
    .locals 1

    .line 1
    invoke-static {}, Lio/ktor/server/netty/NettyApplicationEngineKt;->getChannelClass()Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method private static final getChannelClass()Lkotlin/reflect/KClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lio/netty/channel/socket/ServerSocketChannel;",
            ">;"
        }
    .end annotation

    .line 327
    nop

    .line 328
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lio/netty/channel/kqueue/KQueueServerSocketChannel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    goto :goto_1

    .line 329
    :cond_0
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lio/netty/channel/epoll/EpollServerSocketChannel;

    goto :goto_0

    :cond_1
    const-class v0, Lio/netty/channel/socket/nio/NioServerSocketChannel;

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 331
    :goto_1
    return-object v0
.end method
