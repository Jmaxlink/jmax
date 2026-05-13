.class public final Lio/ktor/server/netty/NettyHttpHandlerState;
.super Ljava/lang/Object;
.source "NettyHttpHandlerState.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\u0008\u0000\u0018\u00002\u00020\rB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0002\u001a\u00020\u00018\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyHttpHandlerState;",
        "",
        "runningLimit",
        "<init>",
        "(I)V",
        "Lio/netty/channel/ChannelHandlerContext;",
        "context",
        "",
        "onLastResponseMessage$ktor_server_netty",
        "(Lio/netty/channel/ChannelHandlerContext;)V",
        "onLastResponseMessage",
        "I",
        "ktor-server-netty",
        ""
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
.field public static final synthetic activeRequests$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic isChannelReadCompleted$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic isCurrentRequestFullyRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic skippedRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public volatile synthetic activeRequests$internal:J

.field public volatile synthetic isChannelReadCompleted$internal:I

.field public volatile synthetic isCurrentRequestFullyRead$internal:I

.field private final runningLimit:I

.field public volatile synthetic skippedRead$internal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "activeRequests$internal"

    const-class v1, Lio/ktor/server/netty/NettyHttpHandlerState;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "isCurrentRequestFullyRead$internal"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "isChannelReadCompleted$internal"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "skippedRead$internal"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/NettyHttpHandlerState;->skippedRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "runningLimit"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->runningLimit:I

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$internal:J

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$internal:I

    .line 14
    iput v0, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$internal:I

    .line 15
    iput v0, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->skippedRead$internal:I

    .line 10
    return-void
.end method


# virtual methods
.method public final onLastResponseMessage$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->decrementAndGet(Ljava/lang/Object;)J

    .line 20
    sget-object v0, Lio/ktor/server/netty/NettyHttpHandlerState;->skippedRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$internal:J

    iget v2, p0, Lio/ktor/server/netty/NettyHttpHandlerState;->runningLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 21
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 23
    :cond_0
    return-void
.end method
