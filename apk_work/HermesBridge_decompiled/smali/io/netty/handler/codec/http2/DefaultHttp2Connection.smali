.class public Lio/netty/handler/codec/http2/DefaultHttp2Connection;
.super Ljava/lang/Object;
.source "DefaultHttp2Connection.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Connection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;,
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;,
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;,
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;,
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;,
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;,
        Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field final activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

.field closePromise:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final connectionStream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;

.field final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/Http2Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint<",
            "Lio/netty/handler/codec/http2/Http2LocalFlowController;",
            ">;"
        }
    .end annotation
.end field

.field final propertyKeyRegistry:Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;

.field final remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint<",
            "Lio/netty/handler/codec/http2/Http2RemoteFlowController;",
            ">;"
        }
    .end annotation
.end field

.field final streamMap:Lio/netty/util/collection/IntObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/IntObjectMap<",
            "Lio/netty/handler/codec/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "server"    # Z

    .line 91
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;-><init>(ZI)V

    .line 92
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3
    .param p1, "server"    # Z
    .param p2, "maxReservedStreams"    # I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lio/netty/util/collection/IntObjectHashMap;

    invoke-direct {v0}, Lio/netty/util/collection/IntObjectHashMap;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    .line 69
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->propertyKeyRegistry:Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;

    .line 70
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->connectionStream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    .line 100
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;Ljava/util/List;)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    .line 106
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    if-eqz p1, :cond_0

    const v1, 0x7fffffff

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    invoke-direct {v0, p0, p1, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ZI)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    .line 107
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    xor-int/lit8 v1, p1, 0x1

    invoke-direct {v0, p0, v1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ZI)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->connectionStream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;->id()I

    move-result v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->connectionStream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;

    invoke-interface {v0, v1, v2}, Lio/netty/util/collection/IntObjectMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method static synthetic access$400()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 65
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static activeState(ILio/netty/handler/codec/http2/Http2Stream$State;ZZ)Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 3
    .param p0, "streamId"    # I
    .param p1, "initialState"    # Lio/netty/handler/codec/http2/Http2Stream$State;
    .param p2, "isLocal"    # Z
    .param p3, "halfClosed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 331
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$2;->$SwitchMap$io$netty$handler$codec$http2$Http2Stream$State:[I

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2Stream$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to open a stream in an invalid state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 337
    :pswitch_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    return-object v0

    .line 335
    :pswitch_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    return-object v0

    .line 333
    :pswitch_2
    if-eqz p3, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_LOCAL:Lio/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->HALF_CLOSED_REMOTE:Lio/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Stream$State;->OPEN:Lio/netty/handler/codec/http2/Http2Stream$State;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private closeStreamsGreaterThanLastKnownStreamId(ILio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)V
    .locals 1
    .param p1, "lastKnownStream"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 281
    .local p2, "endpoint":Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;, "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint<*>;"
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;ILio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)V

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    .line 290
    return-void
.end method

.method private isStreamMapEmpty()Z
    .locals 2

    .line 296
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lio/netty/handler/codec/http2/Http2Connection$Listener;

    .line 174
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public close(Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/lang/Void;",
            ">;)",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 122
    .local p1, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/lang/Void;>;"
    const-string v0, "promise"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    instance-of v0, p1, Lio/netty/channel/ChannelPromise;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    check-cast v0, Lio/netty/channel/ChannelFuture;

    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    invoke-static {v0, p1}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    goto :goto_0

    .line 134
    :cond_2
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    .line 136
    :goto_0
    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->isStreamMapEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 138
    return-object p1

    .line 141
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/IntObjectMap;->entries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/util/collection/IntObjectMap$PrimitiveEntry<Lio/netty/handler/codec/http2/Http2Stream;>;>;"
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 145
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->incrementPendingIterations()V

    .line 147
    :goto_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;

    invoke-interface {v1}, Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    .line 149
    .local v1, "stream":Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->id()I

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    invoke-virtual {v1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->close(Ljava/util/Iterator;)Lio/netty/handler/codec/http2/Http2Stream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .end local v1    # "stream":Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    :cond_4
    goto :goto_1

    .line 157
    :cond_5
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    .line 158
    goto :goto_3

    .line 157
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    .line 158
    throw v1

    .line 160
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;

    invoke-interface {v1}, Lio/netty/util/collection/IntObjectMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Stream;

    .line 162
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;

    .line 167
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :cond_7
    goto :goto_2

    .line 169
    :cond_8
    :goto_3
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    return-object v1
.end method

.method public connectionStream()Lio/netty/handler/codec/http2/Http2Stream;
    .locals 1

    .line 189
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->connectionStream:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ConnectionStream;

    return-object v0
.end method

.method public forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 1
    .param p1, "visitor"    # Lio/netty/handler/codec/http2/Http2StreamVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v0

    return-object v0
.end method

.method public goAwayReceived(IJLio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "lastKnownStream"    # I
    .param p2, "errorCode"    # J
    .param p4, "debugData"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v0

    if-lt v0, p1, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    .line 231
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 230
    const-string v2, "lastStreamId MUST NOT increase. Current value: %d new value: %d"

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;I)V

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 237
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onGoAwayReceived(IJLio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    goto :goto_2

    .line 238
    :catchall_0
    move-exception v1

    .line 239
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Caught Throwable from listener onGoAwayReceived."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closeStreamsGreaterThanLastKnownStreamId(ILio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)V

    .line 244
    return-void
.end method

.method public goAwayReceived()Z
    .locals 1

    .line 224
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goAwaySent()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-static {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->access$100(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public goAwaySent(IJLio/netty/buffer/ByteBuf;)Z
    .locals 4
    .param p1, "lastKnownStream"    # I
    .param p2, "errorCode"    # J
    .param p4, "debugData"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v0

    if-ltz v0, :cond_2

    .line 256
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 257
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    .line 262
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->lastStreamKnownByPeer()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 260
    const-string v2, "Last stream identifier must not increase between sending multiple GOAWAY frames (was \'%d\', is \'%d\')."

    invoke-static {v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 266
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->access$200(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;I)V

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 269
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onGoAwaySent(IJLio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    goto :goto_2

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Caught Throwable from listener onGoAwaySent."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 267
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closeStreamsGreaterThanLastKnownStreamId(ILio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;)V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method final isClosed()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServer()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->isServer()Z

    move-result v0

    return v0
.end method

.method public local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
            "Lio/netty/handler/codec/http2/Http2LocalFlowController;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    return-object v0
.end method

.method public newKey()Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .locals 1

    .line 366
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->propertyKeyRegistry:Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$PropertyKeyRegistry;->newKey()Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;

    move-result-object v0

    return-object v0
.end method

.method notifyClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onStreamClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    goto :goto_1

    .line 358
    :catchall_0
    move-exception v1

    .line 359
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Caught Throwable from listener onStreamClosed."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method notifyHalfClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 345
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 347
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onStreamHalfClosed(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    goto :goto_1

    .line 348
    :catchall_0
    move-exception v1

    .line 349
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Caught Throwable from listener onStreamHalfClosed."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public numActiveStreams()I
    .locals 1

    .line 204
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->activeStreams:Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->size()I

    move-result v0

    return v0
.end method

.method public remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/Http2Connection$Endpoint<",
            "Lio/netty/handler/codec/http2/Http2RemoteFlowController;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    return-object v0
.end method

.method public removeListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lio/netty/handler/codec/http2/Http2Connection$Listener;

    .line 179
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method removeStream(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
    .locals 5
    .param p1, "stream"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 307
    .local p2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p2, :cond_1

    .line 308
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->id()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/util/collection/IntObjectMap;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .local v0, "removed":Z
    :goto_0
    goto :goto_1

    .line 310
    .end local v0    # "removed":Z
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 311
    const/4 v0, 0x1

    .line 314
    .restart local v0    # "removed":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 315
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 317
    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v2, p1}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onStreamRemoved(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    goto :goto_3

    .line 318
    :catchall_0
    move-exception v2

    .line 319
    .local v2, "cause":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Caught Throwable from listener onStreamRemoved."

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 315
    .end local v2    # "cause":Ljava/lang/Throwable;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 323
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->isStreamMapEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 324
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->closePromise:Lio/netty/util/concurrent/Promise;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Promise;->trySuccess(Ljava/lang/Object;)Z

    .line 327
    :cond_3
    return-void
.end method

.method public stream(I)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 1
    .param p1, "streamId"    # I

    .line 194
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->streamMap:Lio/netty/util/collection/IntObjectMap;

    invoke-interface {v0, p1}, Lio/netty/util/collection/IntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Stream;

    return-object v0
.end method

.method public streamMayHaveExisted(I)Z
    .locals 1
    .param p1, "streamId"    # I

    .line 199
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->remoteEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->mayHaveCreatedStream(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->localEndpoint:Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->mayHaveCreatedStream(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method final verifyKey(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
    .locals 2
    .param p1, "key"    # Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    .line 377
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;

    const-string v1, "key"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;

    invoke-virtual {v0, p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->verifyConnection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;

    move-result-object v0

    return-object v0
.end method
