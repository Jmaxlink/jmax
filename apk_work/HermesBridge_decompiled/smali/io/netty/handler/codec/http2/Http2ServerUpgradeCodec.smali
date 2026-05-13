.class public Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;
.super Ljava/lang/Object;
.source "Http2ServerUpgradeCodec.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpServerUpgradeHandler$UpgradeCodec;


# static fields
.field private static final EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

.field private static final REQUIRED_UPGRADE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

.field private final frameReader:Lio/netty/handler/codec/http2/Http2FrameReader;

.field private final handlerName:Ljava/lang/String;

.field private final handlers:[Lio/netty/channel/ChannelHandler;

.field private settings:Lio/netty/handler/codec/http2/Http2Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 48
    sget-object v0, Lio/netty/handler/codec/http2/Http2CodecUtil;->HTTP_UPGRADE_SETTINGS_HEADER:Ljava/lang/CharSequence;

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->REQUIRED_UPGRADE_HEADERS:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Lio/netty/channel/ChannelHandler;

    sput-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2ConnectionHandler;)V
    .locals 2
    .param p1, "connectionHandler"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 66
    const/4 v0, 0x0

    sget-object v1, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, v0, p1, v1}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    .line 67
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/handler/codec/http2/Http2FrameCodec;[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "http2Codec"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p2, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 2
    .param p1, "http2Codec"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 76
    const/4 v0, 0x0

    sget-object v1, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, v0, p1, v1}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "connectionHandler"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 87
    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    .line 88
    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "connectionHandler"    # Lio/netty/handler/codec/http2/Http2ConnectionHandler;
    .param p3, "handlers"    # [Lio/netty/channel/ChannelHandler;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlerName:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    .line 115
    iput-object p3, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    .line 116
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2FrameReader;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->frameReader:Lio/netty/handler/codec/http2/Http2FrameReader;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2MultiplexCodec;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "http2Codec"    # Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 97
    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->EMPTY_HANDLERS:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;-><init>(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2ConnectionHandler;[Lio/netty/channel/ChannelHandler;)V

    .line 98
    return-void
.end method

.method private static createSettingsFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "payload"    # Lio/netty/buffer/ByteBuf;

    .line 207
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 208
    .local v0, "frame":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    new-instance v2, Lio/netty/handler/codec/http2/Http2Flags;

    invoke-direct {v2}, Lio/netty/handler/codec/http2/Http2Flags;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v0, v1, v4, v2, v3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->writeFrameHeader(Lio/netty/buffer/ByteBuf;IBLio/netty/handler/codec/http2/Http2Flags;I)V

    .line 209
    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 210
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 211
    return-object v0
.end method

.method private decodeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Settings;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "frame"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 190
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Settings;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/Http2Settings;-><init>()V

    .line 191
    .local v0, "decodedSettings":Lio/netty/handler/codec/http2/Http2Settings;
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->frameReader:Lio/netty/handler/codec/http2/Http2FrameReader;

    new-instance v2, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec$1;-><init>(Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;Lio/netty/handler/codec/http2/Http2Settings;)V

    invoke-interface {v1, p1, p2, v2}, Lio/netty/handler/codec/http2/Http2FrameReader;->readFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2FrameListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    nop

    .line 199
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 197
    return-object v0

    .line 199
    .end local v0    # "decodedSettings":Lio/netty/handler/codec/http2/Http2Settings;
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 200
    throw v0
.end method

.method private decodeSettingsHeader(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Settings;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "settingsHeader"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 170
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    sget-object v2, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lio/netty/buffer/ByteBufUtil;->encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 173
    .local v0, "header":Lio/netty/buffer/ByteBuf;
    :try_start_0
    sget-object v1, Lio/netty/handler/codec/base64/Base64Dialect;->URL_SAFE:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {v0, v1}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 176
    .local v1, "payload":Lio/netty/buffer/ByteBuf;
    invoke-static {p1, v1}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->createSettingsFrame(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 179
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->decodeSettings(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 179
    return-object v3

    .line 181
    .end local v1    # "payload":Lio/netty/buffer/ByteBuf;
    .end local v2    # "frame":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 182
    throw v1
.end method


# virtual methods
.method public prepareUpgradeResponse(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;Lio/netty/handler/codec/http/HttpHeaders;)Z
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "upgradeRequest"    # Lio/netty/handler/codec/http/FullHttpRequest;
    .param p3, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 130
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/Http2CodecUtil;->HTTP_UPGRADE_SETTINGS_HEADER:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "upgradeHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 135
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->decodeSettingsHeader(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Settings;

    move-result-object v2

    iput-object v2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    .line 137
    return v3

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There must be 1 and only 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2CodecUtil;->HTTP_UPGRADE_SETTINGS_HEADER:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " header."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "upgradeRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    .end local p3    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "upgradeHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "upgradeRequest":Lio/netty/handler/codec/http/FullHttpRequest;
    .restart local p3    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    :catchall_0
    move-exception v1

    .line 139
    .local v1, "cause":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Error during upgrade to HTTP/2"

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    return v0
.end method

.method public requiredUpgradeHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 121
    sget-object v0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->REQUIRED_UPGRADE_HEADERS:Ljava/util/List;

    return-object v0
.end method

.method public upgradeTo(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/FullHttpRequest;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "upgradeRequest"    # Lio/netty/handler/codec/http/FullHttpRequest;

    .line 148
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlerName:Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-interface {v0, v1, v2, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->name()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 155
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    iget-object v3, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->handlers:[Lio/netty/channel/ChannelHandler;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4, v3}, Lio/netty/channel/ChannelPipeline;->addAfter(Ljava/lang/String;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 154
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 158
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->connectionHandler:Lio/netty/handler/codec/http2/Http2ConnectionHandler;

    iget-object v1, p0, Lio/netty/handler/codec/http2/Http2ServerUpgradeCodec;->settings:Lio/netty/handler/codec/http2/Http2Settings;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/Http2ConnectionHandler;->onHttpServerUpgrade(Lio/netty/handler/codec/http2/Http2Settings;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 161
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 163
    .end local v0    # "e":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_1
    return-void
.end method
