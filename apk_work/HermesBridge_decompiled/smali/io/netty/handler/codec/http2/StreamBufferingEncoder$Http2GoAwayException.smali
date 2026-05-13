.class public final Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "StreamBufferingEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/StreamBufferingEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Http2GoAwayException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1269b07e8abc61beL


# instance fields
.field private final goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;


# direct methods
.method public constructor <init>(IJ[B)V
    .locals 1
    .param p1, "lastStreamId"    # I
    .param p2, "errorCode"    # J
    .param p4, "debugData"    # [B

    .line 93
    new-instance v0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    invoke-direct {v0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;-><init>(IJ[B)V

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;-><init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)V
    .locals 1
    .param p1, "goAwayDetail"    # Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 97
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->STREAM_CLOSED:Lio/netty/handler/codec/http2/Http2Error;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 98
    iput-object p1, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    .line 99
    return-void
.end method


# virtual methods
.method public debugData()[B
    .locals 1

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    invoke-static {v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->access$200(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)[B

    move-result-object v0

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public errorCode()J
    .locals 2

    .line 106
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    invoke-static {v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->access$100(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)J

    move-result-wide v0

    return-wide v0
.end method

.method public lastStreamId()I
    .locals 1

    .line 102
    iget-object v0, p0, Lio/netty/handler/codec/http2/StreamBufferingEncoder$Http2GoAwayException;->goAwayDetail:Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;

    invoke-static {v0}, Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;->access$000(Lio/netty/handler/codec/http2/StreamBufferingEncoder$GoAwayDetail;)I

    move-result v0

    return v0
.end method
