.class public final Lio/netty/handler/codec/http/HttpClientCodec;
.super Lio/netty/channel/CombinedChannelDuplexHandler;
.source "HttpClientCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpClientCodec$Decoder;,
        Lio/netty/handler/codec/http/HttpClientCodec$Encoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/CombinedChannelDuplexHandler<",
        "Lio/netty/handler/codec/http/HttpResponseDecoder;",
        "Lio/netty/handler/codec/http/HttpRequestEncoder;",
        ">;",
        "Lio/netty/handler/codec/http/HttpClientUpgradeHandler$SourceCodec;"
    }
.end annotation


# static fields
.field public static final DEFAULT_FAIL_ON_MISSING_RESPONSE:Z = false

.field public static final DEFAULT_PARSE_HTTP_AFTER_CONNECT_REQUEST:Z = false


# instance fields
.field private done:Z

.field private final failOnMissingResponse:Z

.field private final parseHttpAfterConnectRequest:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http/HttpMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 72
    const/16 v0, 0x2000

    const/4 v1, 0x0

    const/16 v2, 0x1000

    invoke-direct {p0, v2, v0, v0, v1}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z

    .line 88
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZ)V

    .line 89
    return-void
.end method

.method public constructor <init>(IIIZZ)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z
    .param p5, "validateHeaders"    # Z

    .line 97
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(IIIZZI)V
    .locals 8
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I

    .line 118
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZIZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(IIIZZIZ)V
    .locals 9
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I
    .param p7, "parseHttpAfterConnectRequest"    # Z

    .line 128
    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZIZZ)V

    .line 130
    return-void
.end method

.method public constructor <init>(IIIZZIZZ)V
    .locals 10
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I
    .param p7, "parseHttpAfterConnectRequest"    # Z
    .param p8, "allowDuplicateContentLengths"    # Z

    .line 139
    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/http/HttpClientCodec;-><init>(IIIZZIZZZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(IIIZZIZZZ)V
    .locals 11
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I
    .param p7, "parseHttpAfterConnectRequest"    # Z
    .param p8, "allowDuplicateContentLengths"    # Z
    .param p9, "allowPartialChunks"    # Z

    .line 150
    move-object v9, p0

    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 151
    new-instance v10, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZIZZ)V

    new-instance v0, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;Lio/netty/handler/codec/http/HttpClientCodec$1;)V

    invoke-virtual {p0, v10, v0}, Lio/netty/handler/codec/http/HttpClientCodec;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 154
    move/from16 v0, p7

    iput-boolean v0, v9, Lio/netty/handler/codec/http/HttpClientCodec;->parseHttpAfterConnectRequest:Z

    .line 155
    move v1, p4

    iput-boolean v1, v9, Lio/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    .line 156
    return-void
.end method

.method public constructor <init>(IIIZZZ)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "failOnMissingResponse"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "parseHttpAfterConnectRequest"    # Z

    .line 106
    invoke-direct {p0}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 107
    new-instance v0, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpClientCodec$Decoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;IIIZ)V

    new-instance v1, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;-><init>(Lio/netty/handler/codec/http/HttpClientCodec;Lio/netty/handler/codec/http/HttpClientCodec$1;)V

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpClientCodec;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 108
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    .line 109
    iput-boolean p6, p0, Lio/netty/handler/codec/http/HttpClientCodec;->parseHttpAfterConnectRequest:Z

    .line 110
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpClientCodec;

    .line 51
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http/HttpClientCodec;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpClientCodec;

    .line 51
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->failOnMissingResponse:Z

    return v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http/HttpClientCodec;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpClientCodec;

    .line 51
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->done:Z

    return v0
.end method

.method static synthetic access$302(Lio/netty/handler/codec/http/HttpClientCodec;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpClientCodec;
    .param p1, "x1"    # Z

    .line 51
    iput-boolean p1, p0, Lio/netty/handler/codec/http/HttpClientCodec;->done:Z

    return p1
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http/HttpClientCodec;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpClientCodec;

    .line 51
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->requestResponseCounter:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/handler/codec/http/HttpClientCodec;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpClientCodec;

    .line 51
    iget-boolean v0, p0, Lio/netty/handler/codec/http/HttpClientCodec;->parseHttpAfterConnectRequest:Z

    return v0
.end method


# virtual methods
.method public isSingleDecode()Z
    .locals 1

    .line 181
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpClientCodec;->inboundHandler()Lio/netty/channel/ChannelInboundHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseDecoder;->isSingleDecode()Z

    move-result v0

    return v0
.end method

.method public prepareUpgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 163
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpClientCodec;->outboundHandler()Lio/netty/channel/ChannelOutboundHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/netty/handler/codec/http/HttpClientCodec$Encoder;->upgraded:Z

    .line 164
    return-void
.end method

.method public setSingleDecode(Z)V
    .locals 1
    .param p1, "singleDecode"    # Z

    .line 177
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpClientCodec;->inboundHandler()Lio/netty/channel/ChannelInboundHandler;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseDecoder;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpResponseDecoder;->setSingleDecode(Z)V

    .line 178
    return-void
.end method

.method public upgradeFrom(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 172
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 173
    .local v0, "p":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 174
    return-void
.end method
