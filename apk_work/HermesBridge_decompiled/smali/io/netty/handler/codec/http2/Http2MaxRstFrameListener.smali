.class final Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;
.super Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;
.source "Http2MaxRstFrameListener.java"


# static fields
.field private static final RST_FRAME_RATE_EXCEEDED:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private lastRstFrameNano:J

.field private final maxRstFramesPerWindow:I

.field private final nanosPerWindow:J

.field private receivedRstInWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 26
    const-class v0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 27
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->ENHANCE_YOUR_CALM:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v2, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    const-string v3, "onRstStreamRead(..)"

    const-string v4, "Maximum number of RST frames reached"

    invoke-static {v1, v4, v2, v0, v3}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->RST_FRAME_RATE_EXCEEDED:Lio/netty/handler/codec/http2/Http2Exception;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2FrameListener;II)V
    .locals 3
    .param p1, "listener"    # Lio/netty/handler/codec/http2/Http2FrameListener;
    .param p2, "maxRstFramesPerWindow"    # I
    .param p3, "secondsPerWindow"    # I

    .line 37
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;-><init>(Lio/netty/handler/codec/http2/Http2FrameListener;)V

    .line 33
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->lastRstFrameNano:J

    .line 38
    iput p2, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->maxRstFramesPerWindow:I

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->nanosPerWindow:J

    .line 40
    return-void
.end method


# virtual methods
.method public onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "streamId"    # I
    .param p3, "errorCode"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 45
    .local v0, "currentNano":J
    iget-wide v2, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->lastRstFrameNano:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->nanosPerWindow:J

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-ltz v2, :cond_0

    .line 46
    iput-wide v0, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->lastRstFrameNano:J

    .line 47
    iput v3, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->receivedRstInWindow:I

    goto :goto_0

    .line 49
    :cond_0
    iget v2, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->receivedRstInWindow:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->receivedRstInWindow:I

    .line 50
    iget v2, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->receivedRstInWindow:I

    iget v3, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->maxRstFramesPerWindow:I

    if-gt v2, v3, :cond_1

    .line 58
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2FrameListenerDecorator;->onRstStreamRead(Lio/netty/channel/ChannelHandlerContext;IJ)V

    .line 59
    return-void

    .line 51
    :cond_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 52
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    iget v4, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->maxRstFramesPerWindow:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v6, p0, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->nanosPerWindow:J

    .line 53
    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->RST_FRAME_RATE_EXCEEDED:Lio/netty/handler/codec/http2/Http2Exception;

    invoke-virtual {v6}, Lio/netty/handler/codec/http2/Http2Exception;->error()Lio/netty/handler/codec/http2/Http2Error;

    move-result-object v6

    sget-object v7, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->RST_FRAME_RATE_EXCEEDED:Lio/netty/handler/codec/http2/Http2Exception;

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    .line 51
    const-string v4, "{} Maximum number {} of RST frames reached within {} seconds, closing connection with {} error"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    sget-object v2, Lio/netty/handler/codec/http2/Http2MaxRstFrameListener;->RST_FRAME_RATE_EXCEEDED:Lio/netty/handler/codec/http2/Http2Exception;

    throw v2
.end method
