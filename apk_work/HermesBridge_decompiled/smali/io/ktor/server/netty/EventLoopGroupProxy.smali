.class public final Lio/ktor/server/netty/EventLoopGroupProxy;
.super Ljava/lang/Object;
.source "NettyApplicationEngine.kt"

# interfaces
.implements Lio/netty/channel/EventLoopGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/EventLoopGroupProxy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0010\u001f\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0008\u0008\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 92\u00020\u0001:\u00019B\u001d\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0006J!\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u000e\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\u0019\u0010\u0010\u001a\u00020\u00112\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010\u00120\u0012H\u0096\u0001J\u00dd\u0001\u0010\u0013\u001a^\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u00150\u0015 \u000f*.\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u00150\u0015\u0018\u00010\u00170\u0014\"\u0010\u0008\u0000\u0010\u0016*\n \u000f*\u0004\u0018\u00010\u00180\u00182d\u0010\u000b\u001a`\u0012*\u0008\u0001\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a \u000f*.\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a\u0018\u00010\u001b0\u0019H\u0096\u0001J\u00f5\u0001\u0010\u0013\u001a^\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u00150\u0015 \u000f*.\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u00150\u0015\u0018\u00010\u00170\u0014\"\u0010\u0008\u0000\u0010\u0016*\n \u000f*\u0004\u0018\u00010\u00180\u00182d\u0010\u000b\u001a`\u0012*\u0008\u0001\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a \u000f*.\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a\u0018\u00010\u001b0\u00192\u0006\u0010\r\u001a\u00020\u000c2\u000e\u0010\u001c\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\u008e\u0001\u0010\u001d\u001a\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\"\u0010\u0008\u0000\u0010\u0016*\n \u000f*\u0004\u0018\u00010\u00180\u00182d\u0010\u000b\u001a`\u0012*\u0008\u0001\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a \u000f*.\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a\u0018\u00010\u001b0\u0019H\u0096\u0001\u00a2\u0006\u0002\u0010\u001eJ\u00a6\u0001\u0010\u001d\u001a\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\"\u0010\u0008\u0000\u0010\u0016*\n \u000f*\u0004\u0018\u00010\u00180\u00182d\u0010\u000b\u001a`\u0012*\u0008\u0001\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a \u000f*.\u0012(\u0012&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001a\u0018\u00010\u001b0\u00192\u0006\u0010\r\u001a\u00020\u000c2\u000e\u0010\u001c\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001\u00a2\u0006\u0002\u0010\u001fJ\t\u0010 \u001a\u00020\nH\u0096\u0001J\t\u0010!\u001a\u00020\nH\u0096\u0001J\t\u0010\"\u001a\u00020\nH\u0096\u0001J\u0017\u0010#\u001a\u0010\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010%0%0$H\u0096\u0003J\u0011\u0010&\u001a\n \u000f*\u0004\u0018\u00010\'0\'H\u0096\u0003J!\u0010(\u001a\n \u000f*\u0004\u0018\u00010)0)2\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010*0*H\u0096\u0001J1\u0010(\u001a\n \u000f*\u0004\u0018\u00010)0)2\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010*0*2\u000e\u0010\r\u001a\n \u000f*\u0004\u0018\u00010+0+H\u0097\u0001J!\u0010(\u001a\n \u000f*\u0004\u0018\u00010)0)2\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010+0+H\u0096\u0001JA\u0010,\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u00010-0-2\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00122\u0006\u0010\r\u001a\u00020\u000c2\u000e\u0010\u001c\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\u0083\u0001\u0010,\u001a&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H.H. \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H.H.\u0018\u00010-0-\"\u0010\u0008\u0000\u0010.*\n \u000f*\u0004\u0018\u00010\u00180\u00182*\u0010\u000b\u001a&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H.H. \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H.H.\u0018\u00010\u001a0\u001a2\u0006\u0010\r\u001a\u00020\u000c2\u000e\u0010\u001c\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001JI\u0010/\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u00010-0-2\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c2\u000e\u00100\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001JI\u00101\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u00010-0-2\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00122\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u000c2\u000e\u00100\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J\t\u00102\u001a\u00020\u0011H\u0097\u0001J\u0019\u00103\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u00010404H\u0096\u0001J9\u00103\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u000104042\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u000e\u0010\u001c\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eH\u0096\u0001J-\u00105\u001a&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u00120\u0012 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u00010\u00120\u0012\u0018\u00010\u00170\u0014H\u0097\u0001J)\u00106\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u000104042\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010\u00120\u0012H\u0096\u0001Jd\u00106\u001a&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010404\"\u0010\u0008\u0000\u0010\u0016*\n \u000f*\u0004\u0018\u00010\u00180\u00182\u000e\u0010\u000b\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00122\u000e\u0010\r\u001a\n \u000f*\u0004\u0018\u0001H\u0016H\u0016H\u0096\u0001\u00a2\u0006\u0002\u00107Jk\u00106\u001a&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010404\"\u0010\u0008\u0000\u0010\u0016*\n \u000f*\u0004\u0018\u00010\u00180\u00182*\u0010\u000b\u001a&\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016 \u000f*\u0012\u0012\u000c\u0012\n \u000f*\u0004\u0018\u0001H\u0016H\u0016\u0018\u00010\u001a0\u001aH\u0096\u0001J\u0019\u00108\u001a\u0012\u0012\u0002\u0008\u0003 \u000f*\u0008\u0012\u0002\u0008\u0003\u0018\u00010404H\u0096\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006:"
    }
    d2 = {
        "Lio/ktor/server/netty/EventLoopGroupProxy;",
        "Lio/netty/channel/EventLoopGroup;",
        "channel",
        "Lkotlin/reflect/KClass;",
        "Lio/netty/channel/socket/ServerSocketChannel;",
        "group",
        "(Lkotlin/reflect/KClass;Lio/netty/channel/EventLoopGroup;)V",
        "getChannel",
        "()Lkotlin/reflect/KClass;",
        "awaitTermination",
        "",
        "p0",
        "",
        "p1",
        "Ljava/util/concurrent/TimeUnit;",
        "kotlin.jvm.PlatformType",
        "execute",
        "",
        "Ljava/lang/Runnable;",
        "invokeAll",
        "",
        "Ljava/util/concurrent/Future;",
        "T",
        "",
        "",
        "",
        "Ljava/util/concurrent/Callable;",
        "",
        "p2",
        "invokeAny",
        "(Ljava/util/Collection;)Ljava/lang/Object;",
        "(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;",
        "isShutdown",
        "isShuttingDown",
        "isTerminated",
        "iterator",
        "",
        "Lio/netty/util/concurrent/EventExecutor;",
        "next",
        "Lio/netty/channel/EventLoop;",
        "register",
        "Lio/netty/channel/ChannelFuture;",
        "Lio/netty/channel/Channel;",
        "Lio/netty/channel/ChannelPromise;",
        "schedule",
        "Lio/netty/util/concurrent/ScheduledFuture;",
        "V",
        "scheduleAtFixedRate",
        "p3",
        "scheduleWithFixedDelay",
        "shutdown",
        "shutdownGracefully",
        "Lio/netty/util/concurrent/Future;",
        "shutdownNow",
        "submit",
        "(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;",
        "terminationFuture",
        "Companion",
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


# static fields
.field public static final Companion:Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

.field private static final prohibitParkingFunction$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final synthetic $$delegate_0:Lio/netty/channel/EventLoopGroup;

.field private final channel:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Lio/netty/channel/socket/ServerSocketChannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/netty/EventLoopGroupProxy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->Companion:Lio/ktor/server/netty/EventLoopGroupProxy$Companion;

    .line 309
    sget-object v0, Lio/ktor/server/netty/EventLoopGroupProxy$Companion$prohibitParkingFunction$2;->INSTANCE:Lio/ktor/server/netty/EventLoopGroupProxy$Companion$prohibitParkingFunction$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->prohibitParkingFunction$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/KClass;Lio/netty/channel/EventLoopGroup;)V
    .locals 1
    .param p1, "channel"    # Lkotlin/reflect/KClass;
    .param p2, "group"    # Lio/netty/channel/EventLoopGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lio/netty/channel/socket/ServerSocketChannel;",
            ">;",
            "Lio/netty/channel/EventLoopGroup;",
            ")V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "group"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->channel:Lkotlin/reflect/KClass;

    .line 286
    iput-object p2, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    .line 283
    return-void
.end method

.method public static final synthetic access$getProhibitParkingFunction$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 283
    sget-object v0, Lio/ktor/server/netty/EventLoopGroupProxy;->prohibitParkingFunction$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/EventLoopGroup;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getChannel()Lkotlin/reflect/KClass;
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

    .line 284
    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->channel:Lkotlin/reflect/KClass;

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/channel/EventLoopGroup;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->invokeAny(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/channel/EventLoopGroup;->invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isShutdown()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->isShutdown()Z

    move-result v0

    return v0
.end method

.method public isShuttingDown()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->isShuttingDown()Z

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->isTerminated()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public next()Lio/netty/channel/EventLoop;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 283
    invoke-virtual {p0}, Lio/ktor/server/netty/EventLoopGroupProxy;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->register(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/channel/EventLoopGroup;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/channel/EventLoopGroup;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Runnable;
    .param p2, "p1"    # J
    .param p4, "p2"    # Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/EventLoopGroupProxy;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "p0"    # Ljava/util/concurrent/Callable;
    .param p2, "p1"    # J
    .param p4, "p2"    # Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/ktor/server/netty/EventLoopGroupProxy;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/channel/EventLoopGroup;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Runnable;
    .param p2, "p1"    # J
    .param p4, "p2"    # J
    .param p6, "p3"    # Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-virtual/range {p0 .. p6}, Lio/ktor/server/netty/EventLoopGroupProxy;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lio/netty/channel/EventLoopGroup;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Runnable;
    .param p2, "p1"    # J
    .param p4, "p2"    # J
    .param p6, "p3"    # Ljava/util/concurrent/TimeUnit;

    .line 283
    invoke-virtual/range {p0 .. p6}, Lio/ktor/server/netty/EventLoopGroupProxy;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->shutdown()V

    return-void
.end method

.method public shutdownGracefully()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lio/netty/channel/EventLoopGroup;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->shutdownNow()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/EventLoopGroup;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Lio/netty/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoopGroup;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Runnable;

    .line 283
    invoke-virtual {p0, p1}, Lio/ktor/server/netty/EventLoopGroupProxy;->submit(Ljava/lang/Runnable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Runnable;
    .param p2, "p1"    # Ljava/lang/Object;

    .line 283
    invoke-virtual {p0, p1, p2}, Lio/ktor/server/netty/EventLoopGroupProxy;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "p0"    # Ljava/util/concurrent/Callable;

    .line 283
    invoke-virtual {p0, p1}, Lio/ktor/server/netty/EventLoopGroupProxy;->submit(Ljava/util/concurrent/Callable;)Lio/netty/util/concurrent/Future;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lio/ktor/server/netty/EventLoopGroupProxy;->$$delegate_0:Lio/netty/channel/EventLoopGroup;

    invoke-interface {v0}, Lio/netty/channel/EventLoopGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
