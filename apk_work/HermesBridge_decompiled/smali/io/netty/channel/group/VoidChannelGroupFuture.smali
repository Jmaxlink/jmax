.class final Lio/netty/channel/group/VoidChannelGroupFuture;
.super Ljava/lang/Object;
.source "VoidChannelGroupFuture.java"

# interfaces
.implements Lio/netty/channel/group/ChannelGroupFuture;


# static fields
.field private static final EMPTY:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final group:Lio/netty/channel/group/ChannelGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/channel/group/VoidChannelGroupFuture;->EMPTY:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/group/ChannelGroup;)V
    .locals 0
    .param p1, "group"    # Lio/netty/channel/group/ChannelGroup;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/netty/channel/group/VoidChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    .line 35
    return-void
.end method

.method private static reject()Ljava/lang/RuntimeException;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "void future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/ChannelGroupFuture;"
        }
    .end annotation

    .line 69
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/group/VoidChannelGroupFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/ChannelGroupFuture;"
        }
    .end annotation

    .line 74
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/group/VoidChannelGroupFuture;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public await()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .line 89
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->await()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 124
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 119
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public awaitUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .line 94
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->awaitUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .line 134
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 129
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public cause()Lio/netty/channel/group/ChannelGroupException;
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic cause()Ljava/lang/Throwable;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->cause()Lio/netty/channel/group/ChannelGroupException;

    move-result-object v0

    return-object v0
.end method

.method public find(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->get()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/group/VoidChannelGroupFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public get()Ljava/lang/Void;
    .locals 1

    .line 164
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Void;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 169
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic getNow()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->getNow()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getNow()Ljava/lang/Void;
    .locals 1

    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public group()Lio/netty/channel/group/ChannelGroup;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/netty/channel/group/VoidChannelGroupFuture;->group:Lio/netty/channel/group/ChannelGroup;

    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public isPartialFailure()Z
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isPartialSuccess()Z
    .locals 1

    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/channel/ChannelFuture;",
            ">;"
        }
    .end annotation

    .line 109
    sget-object v0, Lio/netty/channel/group/VoidChannelGroupFuture;->EMPTY:Ljava/util/Iterator;

    return-object v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/ChannelGroupFuture;"
        }
    .end annotation

    .line 79
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/group/VoidChannelGroupFuture;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lio/netty/channel/group/ChannelGroupFuture;"
        }
    .end annotation

    .line 84
    .local p1, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-Ljava/lang/Void;>;>;"
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lio/netty/channel/group/VoidChannelGroupFuture;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object p1

    return-object p1
.end method

.method public sync()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .line 104
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->sync()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;
    .locals 1

    .line 99
    invoke-static {}, Lio/netty/channel/group/VoidChannelGroupFuture;->reject()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lio/netty/channel/group/VoidChannelGroupFuture;->syncUninterruptibly()Lio/netty/channel/group/ChannelGroupFuture;

    move-result-object v0

    return-object v0
.end method
