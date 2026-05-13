.class final Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;
.super Ljava/lang/Object;
.source "DefaultHttp2ConnectionDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentLength"
.end annotation


# instance fields
.field private final expected:J

.field private seen:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .param p1, "expected"    # J

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 811
    iput-wide p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    .line 812
    return-void
.end method


# virtual methods
.method increaseReceivedBytes(ZIIZ)V
    .locals 6
    .param p1, "server"    # Z
    .param p2, "streamId"    # I
    .param p3, "bytes"    # I
    .param p4, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 815
    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    .line 817
    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 822
    iget-wide v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    iget-wide v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    cmp-long v0, v0, v4

    const-string v1, "Received amount of data %d does not match content-length header %d"

    if-gtz v0, :cond_3

    .line 827
    if-eqz p4, :cond_2

    .line 828
    iget-wide v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 830
    return-void

    .line 834
    :cond_0
    iget-wide v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    iget-wide v4, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    goto :goto_0

    .line 835
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    iget-wide v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    .line 836
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 835
    invoke-static {p2, v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 839
    :cond_2
    :goto_0
    return-void

    .line 823
    :cond_3
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    iget-wide v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->seen:J

    .line 824
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 823
    invoke-static {p2, v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 818
    :cond_4
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    iget-wide v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2ConnectionDecoder$ContentLength;->expected:J

    .line 819
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 818
    const-string v2, "Received amount of data did overflow and so not match content-length header %d"

    invoke-static {p2, v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method
