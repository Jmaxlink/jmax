.class Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
.super Ljava/lang/Object;
.source "Http2FrameCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2FrameStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2FrameCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultHttp2FrameStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field attachment:Lio/netty/channel/Channel;

.field private volatile id:I

.field final stateChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

.field private volatile stream:Lio/netty/handler/codec/http2/Http2Stream;

.field final writabilityChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 735
    const-class v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 737
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    .line 740
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->stateChanged(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stateChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    .line 741
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->writabilityChanged(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->writabilityChanged:Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    return-void
.end method

.method static synthetic access$502(Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;I)I
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .param p1, "x1"    # I

    .line 735
    iput p1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    return p1
.end method


# virtual methods
.method public id()I
    .locals 2

    .line 754
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 755
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_0

    iget v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v1

    :goto_0
    return v1
.end method

.method setStreamAndProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Lio/netty/handler/codec/http2/Http2Stream;)Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;
    .locals 2
    .param p1, "streamKey"    # Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 746
    iget v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Stream;->id()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 747
    :cond_1
    :goto_0
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 748
    invoke-interface {p2, p1, p0}, Lio/netty/handler/codec/http2/Http2Stream;->setProperty(Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    return-object p0
.end method

.method public state()Lio/netty/handler/codec/http2/Http2Stream$State;
    .locals 2

    .line 760
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 761
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    if-nez v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/http2/Http2Stream$State;->IDLE:Lio/netty/handler/codec/http2/Http2Stream$State;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2Stream;->state()Lio/netty/handler/codec/http2/Http2Stream$State;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/Http2FrameCodec$DefaultHttp2FrameStream;->id()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
