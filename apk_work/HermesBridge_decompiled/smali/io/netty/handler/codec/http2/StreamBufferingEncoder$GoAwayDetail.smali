.class final Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;
.super Ljava/lang/Object;
.source "StreamBufferingEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GoAwayDetail"
.end annotation


# instance fields
.field private final debugData:[B

.field private final errorCode:J

.field private final lastStreamId:I


# direct methods
.method constructor <init>(IJ[B)V
    .locals 1
    .param p1, "lastStreamId"    # I
    .param p2, "errorCode"    # J
    .param p4, "debugData"    # [B

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->lastStreamId:I

    .line 79
    iput-wide p2, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->errorCode:J

    .line 80
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->debugData:[B

    .line 81
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 72
    iget v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->lastStreamId:I

    return v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)J
    .locals 2
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 72
    iget-wide v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->errorCode:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)[B
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 72
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->debugData:[B

    return-object v0
.end method
