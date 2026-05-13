.class public abstract Lio/ktor/network/sockets/NIOSocketImpl;
.super Lio/ktor/network/selector/SelectableBase;
.source "NIOSocketImpl.kt"

# interfaces
.implements Lio/ktor/network/sockets/ReadWriteSocket;
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/nio/channels/SelectableChannel;",
        ":",
        "Ljava/nio/channels/ByteChannel;",
        ">",
        "Lio/ktor/network/selector/SelectableBase;",
        "Lio/ktor/network/sockets/ReadWriteSocket;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNIOSocketImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NIOSocketImpl.kt\nio/ktor/network/sockets/NIOSocketImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,152:1\n1#2:153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008 \u0018\u0000*\u000e\u0008\u0000\u0010\u0001 \u0001*\u00020\u0002*\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B1\u0012\u0006\u0010\u0007\u001a\u00028\u0000\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fJ\n\u00104\u001a\u0004\u0018\u00010/H\u0002JE\u00105\u001a\u0002H6\"\u0008\u0008\u0001\u00106*\u00020+2\u0006\u00107\u001a\u0002082\u0006\u0010\u0007\u001a\u0002092\u000e\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H60\u001c2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u0002H60<H\u0002\u00a2\u0006\u0002\u0010=J\u000e\u0010>\u001a\u00020\'2\u0006\u0010\u0007\u001a\u000209J\u000e\u0010?\u001a\u00020\u001d2\u0006\u0010\u0007\u001a\u000209J\u0008\u0010@\u001a\u00020AH\u0002J\u0008\u0010B\u001a\u00020AH\u0016J\u001e\u0010C\u001a\u0004\u0018\u00010/2\u0008\u0010D\u001a\u0004\u0018\u00010/2\u0008\u0010E\u001a\u0004\u0018\u00010/H\u0002J\u0008\u0010F\u001a\u00020AH\u0016R\u0016\u0010\u0007\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001d0\u001cX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020#X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010&\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\'0\u001cX\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008(\u0010\u001fR\"\u0010)\u001a\u00020**\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010+0\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R*\u0010.\u001a\u0004\u0018\u00010/*\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010+0\u001c8BX\u0082\u0004\u00a2\u0006\u000c\u0012\u0004\u00080\u00101\u001a\u0004\u00082\u00103\u00a8\u0006G"
    }
    d2 = {
        "Lio/ktor/network/sockets/NIOSocketImpl;",
        "S",
        "Ljava/nio/channels/ByteChannel;",
        "Ljava/nio/channels/SelectableChannel;",
        "Lio/ktor/network/sockets/ReadWriteSocket;",
        "Lio/ktor/network/selector/SelectableBase;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "channel",
        "selector",
        "Lio/ktor/network/selector/SelectorManager;",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "Ljava/nio/ByteBuffer;",
        "socketOptions",
        "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
        "(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V",
        "getChannel",
        "()Ljava/nio/channels/SelectableChannel;",
        "Ljava/nio/channels/SelectableChannel;",
        "closeFlag",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "getPool",
        "()Lio/ktor/utils/io/pool/ObjectPool;",
        "readerJob",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "Lio/ktor/utils/io/ReaderJob;",
        "getReaderJob$annotations",
        "()V",
        "getSelector",
        "()Lio/ktor/network/selector/SelectorManager;",
        "socketContext",
        "Lkotlinx/coroutines/CompletableJob;",
        "getSocketContext",
        "()Lkotlinx/coroutines/CompletableJob;",
        "writerJob",
        "Lio/ktor/utils/io/WriterJob;",
        "getWriterJob$annotations",
        "completedOrNotStarted",
        "",
        "Lkotlinx/coroutines/Job;",
        "getCompletedOrNotStarted",
        "(Ljava/util/concurrent/atomic/AtomicReference;)Z",
        "exception",
        "",
        "getException$annotations",
        "(Ljava/util/concurrent/atomic/AtomicReference;)V",
        "getException",
        "(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;",
        "actualClose",
        "attachFor",
        "J",
        "name",
        "",
        "Lio/ktor/utils/io/ByteChannel;",
        "ref",
        "producer",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;",
        "attachForReading",
        "attachForWriting",
        "checkChannels",
        "",
        "close",
        "combine",
        "e1",
        "e2",
        "dispose",
        "ktor-network"
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
.field private final channel:Ljava/nio/channels/SelectableChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final readerJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/ktor/utils/io/ReaderJob;",
            ">;"
        }
    .end annotation
.end field

.field private final selector:Lio/ktor/network/selector/SelectorManager;

.field private final socketContext:Lkotlinx/coroutines/CompletableJob;

.field private final socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

.field private final writerJob:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/ktor/utils/io/WriterJob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/SelectableChannel;
    .param p2, "selector"    # Lio/ktor/network/selector/SelectorManager;
    .param p3, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .param p4, "socketOptions"    # Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lio/ktor/network/selector/SelectorManager;",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;",
            ")V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selector"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lio/ktor/network/selector/SelectableBase;-><init>(Ljava/nio/channels/SelectableChannel;)V

    .line 18
    iput-object p1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->channel:Ljava/nio/channels/SelectableChannel;

    .line 19
    iput-object p2, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    .line 20
    iput-object p3, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 21
    iput-object p4, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketContext:Lkotlinx/coroutines/CompletableJob;

    .line 17
    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 17
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 21
    const/4 p4, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/network/sockets/NIOSocketImpl;-><init>(Ljava/nio/channels/SelectableChannel;Lio/ktor/network/selector/SelectorManager;Lio/ktor/utils/io/pool/ObjectPool;Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;)V

    .line 151
    return-void
.end method

.method public static final synthetic access$checkChannels(Lio/ktor/network/sockets/NIOSocketImpl;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/network/sockets/NIOSocketImpl;

    .line 17
    invoke-direct {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->checkChannels()V

    return-void
.end method

.method public static final synthetic access$getSocketOptions$p(Lio/ktor/network/sockets/NIOSocketImpl;)Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;
    .locals 1
    .param p0, "$this"    # Lio/ktor/network/sockets/NIOSocketImpl;

    .line 17
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketOptions:Lio/ktor/network/sockets/SocketOptions$TCPClientSocketOptions;

    return-object v0
.end method

.method private final actualClose()Ljava/lang/Throwable;
    .locals 3

    .line 111
    nop

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 113
    invoke-super {p0}, Lio/ktor/network/selector/SelectableBase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    nop

    .line 118
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    move-object v1, p0

    check-cast v1, Lio/ktor/network/selector/Selectable;

    invoke-interface {v0, v1}, Lio/ktor/network/selector/SelectorManager;->notifyClosed(Lio/ktor/network/selector/Selectable;)V

    .line 119
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    .local v0, "cause":Ljava/lang/Throwable;
    nop

    .line 118
    .end local v0    # "cause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    move-object v2, p0

    check-cast v2, Lio/ktor/network/selector/Selectable;

    invoke-interface {v1, v2}, Lio/ktor/network/selector/SelectorManager;->notifyClosed(Lio/ktor/network/selector/Selectable;)V

    .line 119
    nop

    .line 111
    :goto_0
    return-object v0
.end method

.method private final attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "channel"    # Lio/ktor/utils/io/ByteChannel;
    .param p3, "ref"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p4, "producer"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<J::",
            "Lkotlinx/coroutines/Job;",
            ">(",
            "Ljava/lang/String;",
            "Lio/ktor/utils/io/ByteChannel;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TJ;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TJ;>;)TJ;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    .line 89
    .local v0, "j":Lkotlinx/coroutines/Job;
    const/4 v1, 0x0

    invoke-static {p3, v1, v0}, Lio/ktor/network/selector/ActorSelectorManager$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    invoke-interface {p2, v0}, Lio/ktor/utils/io/ByteChannel;->attachJob(Lkotlinx/coroutines/Job;)V

    .line 103
    new-instance v1, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;

    invoke-direct {v1, p0}, Lio/ktor/network/sockets/NIOSocketImpl$attachFor$1;-><init>(Lio/ktor/network/sockets/NIOSocketImpl;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    .line 107
    return-object v0

    .line 95
    :cond_0
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 96
    .local v2, "e":Ljava/nio/channels/ClosedChannelException;
    invoke-static {v0, v1, v3, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 97
    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {p2, v1}, Lio/ktor/utils/io/ByteChannel;->close(Ljava/lang/Throwable;)Z

    .line 98
    throw v2

    .line 90
    .end local v2    # "e":Ljava/nio/channels/ClosedChannelException;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " channel has already been set"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v0, v1, v3, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 92
    throw v2

    .line 82
    .end local v0    # "j":Lkotlinx/coroutines/Job;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :cond_2
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 83
    .local v0, "e":Ljava/nio/channels/ClosedChannelException;
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-interface {p2, v1}, Lio/ktor/utils/io/ByteChannel;->close(Ljava/lang/Throwable;)Z

    .line 84
    throw v0
.end method

.method private final checkChannels()V
    .locals 5

    .line 123
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getCompletedOrNotStarted(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getCompletedOrNotStarted(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lio/ktor/network/sockets/NIOSocketImpl;->getException(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 125
    .local v0, "e1":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->getException(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v1

    .line 126
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-direct {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->actualClose()Ljava/lang/Throwable;

    move-result-object v2

    .line 128
    .local v2, "e3":Ljava/lang/Throwable;
    invoke-direct {p0, v0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lio/ktor/network/sockets/NIOSocketImpl;->combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    .line 130
    .local v3, "combined":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object v4

    if-nez v3, :cond_0

    invoke-interface {v4}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    goto :goto_0

    :cond_0
    invoke-interface {v4, v3}, Lkotlinx/coroutines/CompletableJob;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 132
    .end local v0    # "e1":Ljava/lang/Throwable;
    .end local v1    # "e2":Ljava/lang/Throwable;
    .end local v2    # "e3":Ljava/lang/Throwable;
    .end local v3    # "combined":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method private final combine(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "e1"    # Ljava/lang/Throwable;
    .param p2, "e2"    # Ljava/lang/Throwable;

    .line 134
    nop

    .line 135
    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_1

    .line 136
    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p1, p2}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 140
    nop

    .line 142
    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private final getCompletedOrNotStarted(Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 3
    .param p1, "$this$completedOrNotStarted"    # Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;)Z"
        }
    .end annotation

    .line 145
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    .line 153
    .local v0, "it":Lkotlinx/coroutines/Job;
    const/4 v1, 0x0

    .line 145
    .local v1, "$i$a$-let-NIOSocketImpl$completedOrNotStarted$1":I
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .end local v0    # "it":Lkotlinx/coroutines/Job;
    .end local v1    # "$i$a$-let-NIOSocketImpl$completedOrNotStarted$1":I
    :goto_1
    return v2
.end method

.method private final getException(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;
    .locals 4
    .param p1, "$this$exception"    # Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "+",
            "Lkotlinx/coroutines/Job;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v2, v0

    .line 153
    .local v2, "it":Lkotlinx/coroutines/Job;
    const/4 v3, 0x0

    .line 149
    .local v3, "$i$a$-takeIf-NIOSocketImpl$exception$1":I
    invoke-interface {v2}, Lkotlinx/coroutines/Job;->isCancelled()Z

    move-result v2

    .end local v2    # "it":Lkotlinx/coroutines/Job;
    .end local v3    # "$i$a$-takeIf-NIOSocketImpl$exception$1":I
    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 150
    :goto_0
    if-eqz v0, :cond_1

    .line 149
    nop

    .line 150
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CancellationException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 149
    :cond_1
    nop

    .line 150
    :goto_1
    return-object v1
.end method

.method private static synthetic getException$annotations(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    return-void
.end method

.method private static synthetic getReaderJob$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getWriterJob$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final attachForReading(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/WriterJob;
    .locals 3
    .param p1, "channel"    # Lio/ktor/utils/io/ByteChannel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;

    invoke-direct {v1, p0, p1}, Lio/ktor/network/sockets/NIOSocketImpl$attachForReading$1;-><init>(Lio/ktor/network/sockets/NIOSocketImpl;Lio/ktor/utils/io/ByteChannel;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "reading"

    invoke-direct {p0, v2, p1, v0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/WriterJob;

    return-object v0
.end method

.method public final attachForWriting(Lio/ktor/utils/io/ByteChannel;)Lio/ktor/utils/io/ReaderJob;
    .locals 3
    .param p1, "channel"    # Lio/ktor/utils/io/ByteChannel;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;

    invoke-direct {v1, p0, p1}, Lio/ktor/network/sockets/NIOSocketImpl$attachForWriting$1;-><init>(Lio/ktor/network/sockets/NIOSocketImpl;Lio/ktor/utils/io/ByteChannel;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    const-string v2, "writing"

    invoke-direct {p0, v2, p1, v0, v1}, Lio/ktor/network/sockets/NIOSocketImpl;->attachFor(Ljava/lang/String;Lio/ktor/utils/io/ByteChannel;Ljava/util/concurrent/atomic/AtomicReference;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/Job;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ReaderJob;

    return-object v0
.end method

.method public close()V
    .locals 3

    .line 67
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->closeFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->readerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/ReaderJob;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 70
    :cond_1
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->writerJob:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/WriterJob;

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 71
    :cond_2
    invoke-direct {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->checkChannels()V

    .line 72
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->close()V

    .line 64
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->channel:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public final getSelector()Lio/ktor/network/selector/SelectorManager;
    .locals 1

    .line 19
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->selector:Lio/ktor/network/selector/SelectorManager;

    return-object v0
.end method

.method public getSocketContext()Lkotlinx/coroutines/CompletableJob;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/ktor/network/sockets/NIOSocketImpl;->socketContext:Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method

.method public bridge synthetic getSocketContext()Lkotlinx/coroutines/Job;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lio/ktor/network/sockets/NIOSocketImpl;->getSocketContext()Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    return-object v0
.end method
