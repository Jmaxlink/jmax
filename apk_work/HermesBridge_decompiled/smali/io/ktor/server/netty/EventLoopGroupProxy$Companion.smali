.class public final Lio/ktor/server/netty/EventLoopGroupProxy$Companion;
.super Ljava/lang/Object;
.source "NettyApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/EventLoopGroupProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0002R\u001d\u0010\u0003\u001a\u0004\u0018\u00010\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/server/netty/EventLoopGroupProxy$Companion;",
        "",
        "()V",
        "prohibitParkingFunction",
        "Ljava/lang/reflect/Method;",
        "getProhibitParkingFunction",
        "()Ljava/lang/reflect/Method;",
        "prohibitParkingFunction$delegate",
        "Lkotlin/Lazy;",
        "create",
        "Lio/ktor/server/netty/EventLoopGroupProxy;",
        "parallelism",
        "",
        "markParkingProhibited",
        "",
        "ktor-server-netty"
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
.method public static synthetic $r8$lambda$-W8F1fLR_nY9jIqnQW-3VF2-Vsc(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->create$lambda$1$lambda$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e27vD6dLRBYKv_z4UnoyFIFmi34(Lio/netty/util/concurrent/DefaultThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    invoke-static {p0, p1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->create$lambda$1(Lio/netty/util/concurrent/DefaultThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;-><init>()V

    return-void
.end method

.method private static final create$lambda$1(Lio/netty/util/concurrent/DefaultThreadFactory;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p0, "$defaultFactory"    # Lio/netty/util/concurrent/DefaultThreadFactory;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    const-string v0, "$defaultFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance v0, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/DefaultThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method private static final create$lambda$1$lambda$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "$runnable"    # Ljava/lang/Runnable;

    .line 295
    sget-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->Companion:Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

    invoke-direct {v0}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->markParkingProhibited()V

    .line 296
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 297
    return-void
.end method

.method private final getProhibitParkingFunction()Ljava/lang/reflect/Method;
    .locals 1

    .line 309
    invoke-static {}, Lio/ktor/server/netty/EventLoopGroupProxy;->access$getProhibitParkingFunction$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private final markParkingProhibited()V
    .locals 3

    .line 319
    nop

    .line 320
    :try_start_0
    invoke-direct {p0}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;->getProhibitParkingFunction()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    .line 323
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final create(I)Lio/ktor/server/netty/EventLoopGroupProxy;
    .locals 5
    .param p1, "parallelism"    # I

    .line 291
    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    const-class v1, Lio/ktor/server/netty/EventLoopGroupProxy;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;Z)V

    .line 293
    .local v0, "defaultFactory":Lio/netty/util/concurrent/DefaultThreadFactory;
    new-instance v1, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$$ExternalSyntheticLambda1;-><init>(Lio/netty/util/concurrent/DefaultThreadFactory;)V

    .line 300
    .local v1, "factory":Ljava/util/concurrent/ThreadFactory;
    invoke-static {}, Lio/ktor/server/netty/NettyApplicationEngineKt;->access$getChannelClass()Lkotlin/reflect/KClass;

    move-result-object v2

    .line 302
    .local v2, "channelClass":Lkotlin/reflect/KClass;
    nop

    .line 303
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lio/ktor/server/netty/EventLoopGroupProxy;

    new-instance v4, Lio/netty/channel/kqueue/KQueueEventLoopGroup;

    invoke-direct {v4, p1, v1}, Lio/netty/channel/kqueue/KQueueEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    check-cast v4, Lio/netty/channel/EventLoopGroup;

    invoke-direct {v3, v2, v4}, Lio/ktor/server/netty/EventLoopGroupProxy;-><init>(Lkotlin/reflect/KClass;Lio/netty/channel/EventLoopGroup;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lio/ktor/server/netty/EventLoopGroupProxy;

    new-instance v4, Lio/netty/channel/epoll/EpollEventLoopGroup;

    invoke-direct {v4, p1, v1}, Lio/netty/channel/epoll/EpollEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    check-cast v4, Lio/netty/channel/EventLoopGroup;

    invoke-direct {v3, v2, v4}, Lio/ktor/server/netty/EventLoopGroupProxy;-><init>(Lkotlin/reflect/KClass;Lio/netty/channel/EventLoopGroup;)V

    goto :goto_0

    .line 305
    :cond_1
    new-instance v3, Lio/ktor/server/netty/EventLoopGroupProxy;

    new-instance v4, Lio/netty/channel/nio/NioEventLoopGroup;

    invoke-direct {v4, p1, v1}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    check-cast v4, Lio/netty/channel/EventLoopGroup;

    invoke-direct {v3, v2, v4}, Lio/ktor/server/netty/EventLoopGroupProxy;-><init>(Lkotlin/reflect/KClass;Lio/netty/channel/EventLoopGroup;)V

    .line 302
    :goto_0
    return-object v3
.end method
