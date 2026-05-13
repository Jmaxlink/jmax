.class public Lio/netty/handler/codec/http2/Http2FrameLogger;
.super Lio/netty/channel/ChannelHandlerAdapter;
.source "Http2FrameLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH_THRESHOLD:I = 0x40


# instance fields
.field private final level:Lio/netty/util/internal/logging/InternalLogLevel;

.field private final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method public constructor <init>(Lio/netty/handler/logging/LogLevel;)V
    .locals 2
    .param p1, "level"    # Lio/netty/handler/logging/LogLevel;

    .line 46
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger;->checkAndConvertLevel(Lio/netty/handler/logging/LogLevel;)Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    const-class v1, Lio/netty/handler/codec/http2/Http2FrameLogger;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;Ljava/lang/Class;)V
    .locals 2
    .param p1, "level"    # Lio/netty/handler/logging/LogLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/logging/LogLevel;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 54
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger;->checkAndConvertLevel(Lio/netty/handler/logging/LogLevel;)Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    const-string v1, "clazz"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/logging/LogLevel;Ljava/lang/String;)V
    .locals 2
    .param p1, "level"    # Lio/netty/handler/logging/LogLevel;
    .param p2, "name"    # Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger;->checkAndConvertLevel(Lio/netty/handler/logging/LogLevel;)Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    const-string v1, "name"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/Http2FrameLogger;-><init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V

    .line 51
    return-void
.end method

.method private constructor <init>(Lio/netty/util/internal/logging/InternalLogLevel;Lio/netty/util/internal/logging/InternalLogger;)V
    .locals 0
    .param p1, "level"    # Lio/netty/util/internal/logging/InternalLogLevel;
    .param p2, "logger"    # Lio/netty/util/internal/logging/InternalLogger;

    .line 57
    invoke-direct {p0}, Lio/netty/channel/ChannelHandlerAdapter;-><init>()V

    .line 58
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 59
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 60
    return-void
.end method

.method private static checkAndConvertLevel(Lio/netty/handler/logging/LogLevel;)Lio/netty/util/internal/logging/InternalLogLevel;
    .locals 1
    .param p0, "level"    # Lio/netty/handler/logging/LogLevel;

    .line 63
    const-string v0, "level"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/logging/LogLevel;

    invoke-virtual {v0}, Lio/netty/handler/logging/LogLevel;->toInternalLevel()Lio/netty/util/internal/logging/InternalLogLevel;

    move-result-object v0

    return-object v0
.end method

.method private toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 3
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 167
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    sget-object v1, Lio/netty/util/internal/logging/InternalLogLevel;->TRACE:Lio/netty/util/internal/logging/InternalLogLevel;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 174
    .local v0, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p1, v2, v0}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 169
    .end local v0    # "length":I
    :cond_1
    :goto_0
    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->isEnabled(Lio/netty/util/internal/logging/InternalLogLevel;)Z

    move-result v0

    return v0
.end method

.method public logData(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;ILio/netty/buffer/ByteBuf;IZ)V
    .locals 9
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "data"    # Lio/netty/buffer/ByteBuf;
    .param p5, "padding"    # I
    .param p6, "endStream"    # Z

    .line 72
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, p4}, Lio/netty/handler/codec/http2/Http2FrameLogger;->toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 73
    const-string v3, "{} {} DATA: streamId={} padding={} endStream={} length={} bytes={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_0
    return-void
.end method

.method public logGoAway(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IJLio/netty/buffer/ByteBuf;)V
    .locals 8
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "lastStreamId"    # I
    .param p4, "errorCode"    # J
    .param p6, "debugData"    # Lio/netty/buffer/ByteBuf;

    .line 144
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, p6}, Lio/netty/handler/codec/http2/Http2FrameLogger;->toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 145
    const-string v3, "{} {} GO_AWAY: lastStreamId={} errorCode={} length={} bytes={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :cond_0
    return-void
.end method

.method public logHeaders(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;ISZIZ)V
    .locals 12
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "streamDependency"    # I
    .param p6, "weight"    # S
    .param p7, "exclusive"    # Z
    .param p8, "padding"    # I
    .param p9, "endStream"    # Z

    .line 88
    move-object v0, p0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, v0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v2, v0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 90
    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    .line 91
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v8

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v6, p4

    filled-new-array/range {v3 .. v11}, [Ljava/lang/Object;

    move-result-object v3

    .line 89
    const-string v4, "{} {} HEADERS: streamId={} headers={} streamDependency={} weight={} exclusive={} padding={} endStream={}"

    invoke-interface {v1, v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method

.method public logHeaders(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;ILio/netty/handler/codec/http2/Http2Headers;IZ)V
    .locals 8
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p5, "padding"    # I
    .param p6, "endStream"    # Z

    .line 80
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v5, p4

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 81
    const-string v3, "{} {} HEADERS: streamId={} headers={} padding={} endStream={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    return-void
.end method

.method public logPing(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 5
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "data"    # J

    .line 121
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 123
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 122
    const-string v3, "{} {} PING: ack=false bytes={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public logPingAck(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;J)V
    .locals 5
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "data"    # J

    .line 128
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 130
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 129
    const-string v3, "{} {} PING: ack=true bytes={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    return-void
.end method

.method public logPriority(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IISZ)V
    .locals 8
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "streamDependency"    # I
    .param p5, "weight"    # S
    .param p6, "exclusive"    # Z

    .line 97
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 99
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 98
    const-string v3, "{} {} PRIORITY: streamId={} streamDependency={} weight={} exclusive={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    :cond_0
    return-void
.end method

.method public logPushPromise(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;I)V
    .locals 8
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "promisedStreamId"    # I
    .param p5, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p6, "padding"    # I

    .line 136
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    .line 138
    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v6, p5

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    .line 137
    const-string v3, "{} {} PUSH_PROMISE: streamId={} promisedStreamId={} headers={} padding={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method public logRstStream(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 6
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "errorCode"    # J

    .line 104
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 106
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 105
    const-string v3, "{} {} RST_STREAM: streamId={} errorCode={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    return-void
.end method

.method public logSettings(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Settings;)V
    .locals 4
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "settings"    # Lio/netty/handler/codec/http2/Http2Settings;

    .line 115
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3, p3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "{} {} SETTINGS: ack=false settings={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method

.method public logSettingsAck(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 5
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 111
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "{} {} SETTINGS: ack=true"

    invoke-interface {v0, v1, v4, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public logUnknownFrame(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;BILio/netty/handler/codec/http2/Http2Flags;Lio/netty/buffer/ByteBuf;)V
    .locals 9
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "frameType"    # B
    .param p4, "streamId"    # I
    .param p5, "flags"    # Lio/netty/handler/codec/http2/Http2Flags;
    .param p6, "data"    # Lio/netty/buffer/ByteBuf;

    .line 160
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 162
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    and-int/lit16 v4, p3, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p5}, Lio/netty/handler/codec/http2/Http2Flags;->value()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {p6}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {p0, p6}, Lio/netty/handler/codec/http2/Http2FrameLogger;->toString(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 161
    const-string v3, "{} {} UNKNOWN: frameType={} streamId={} flags={} length={} bytes={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    return-void
.end method

.method public logWindowsUpdate(Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;Lio/netty/channel/ChannelHandlerContext;II)V
    .locals 6
    .param p1, "direction"    # Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "streamId"    # I
    .param p4, "windowSizeIncrement"    # I

    .line 152
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameLogger;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2FrameLogger;->level:Lio/netty/util/internal/logging/InternalLogLevel;

    invoke-interface {p2}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    .line 154
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/Http2FrameLogger$Direction;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 153
    const-string v3, "{} {} WINDOW_UPDATE: streamId={} windowSizeIncrement={}"

    invoke-interface {v0, v1, v3, v2}, Lio/netty/util/internal/logging/InternalLogger;->log(Lio/netty/util/internal/logging/InternalLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    return-void
.end method
