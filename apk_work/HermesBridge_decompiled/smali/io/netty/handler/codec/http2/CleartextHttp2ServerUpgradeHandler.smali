.class public final Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "CleartextHttp2ServerUpgradeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;
    }
.end annotation


# static fields
.field private static final CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;


# instance fields
.field private final http2ServerHandler:Lio/netty/channel/ChannelHandler;

.field private final httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

.field private final httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Lio/netty/handler/codec/http2/Http2CodecUtil;->connectionPrefaceBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpServerCodec;Lio/netty/handler/codec/http/HttpServerUpgradeHandler;Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "httpServerCodec"    # Lio/netty/handler/codec/http/HttpServerCodec;
    .param p2, "httpServerUpgradeHandler"    # Lio/netty/handler/codec/http/HttpServerUpgradeHandler;
    .param p3, "http2ServerHandler"    # Lio/netty/channel/ChannelHandler;

    .line 59
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 60
    const-string v0, "httpServerCodec"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpServerCodec;

    iput-object v0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    .line 61
    const-string v0, "httpServerUpgradeHandler"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    iput-object v0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    .line 62
    const-string v0, "http2ServerHandler"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelHandler;

    iput-object v0, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->http2ServerHandler:Lio/netty/channel/ChannelHandler;

    .line 63
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 79
    .local v0, "prefaceLength":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 81
    .local v1, "bytesRead":I
    sget-object v2, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    sget-object v3, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->CONNECTION_PREFACE:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    .line 82
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 81
    invoke-static {v2, v3, p2, v4, v1}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 84
    :cond_0
    if-ne v1, v0, :cond_1

    .line 87
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    .line 88
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    .line 89
    invoke-interface {v2, v3}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 91
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->http2ServerHandler:Lio/netty/channel/ChannelHandler;

    invoke-interface {v2, v3, v4, v5}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 92
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    invoke-interface {v2, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 94
    invoke-static {}, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;->access$000()Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler$PriorKnowledgeUpgradeEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 68
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerUpgradeHandler:Lio/netty/handler/codec/http/HttpServerUpgradeHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 69
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/CleartextHttp2ServerUpgradeHandler;->httpServerCodec:Lio/netty/handler/codec/http/HttpServerCodec;

    invoke-interface {v0, v1, v3, v2}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 70
    return-void
.end method
