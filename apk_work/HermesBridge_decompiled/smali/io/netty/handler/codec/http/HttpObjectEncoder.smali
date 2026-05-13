.class public abstract Lio/netty/handler/codec/http/HttpObjectEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "HttpObjectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lio/netty/handler/codec/http/HttpMessage;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF_BUF:Lio/netty/buffer/ByteBuf;

.field static final CRLF_SHORT:I = 0xd0a

.field private static final HEADERS_WEIGHT_HISTORICAL:F = 0.8f

.field private static final HEADERS_WEIGHT_NEW:F = 0.2f

.field private static final ST_CONTENT_ALWAYS_EMPTY:I = 0x3

.field private static final ST_CONTENT_CHUNK:I = 0x2

.field private static final ST_CONTENT_NON_CHUNK:I = 0x1

.field private static final ST_INIT:I = 0x0

.field private static final TRAILERS_WEIGHT_HISTORICAL:F = 0.8f

.field private static final TRAILERS_WEIGHT_NEW:F = 0.2f

.field private static final ZERO_CRLF_CRLF:[B

.field private static final ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

.field private static final ZERO_CRLF_MEDIUM:I = 0x300d0a


# instance fields
.field private headersEncodedSizeAccumulator:F

.field private final out:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private trailersEncodedSizeAccumulator:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    nop

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    .line 58
    nop

    .line 59
    const/4 v0, 0x2

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    array-length v0, v0

    .line 61
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    .line 60
    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 79
    const/high16 v0, 0x43800000    # 256.0f

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    .line 85
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->out:Ljava/util/List;

    return-void
.end method

.method private static addEncodedLengthHex(Lio/netty/channel/ChannelHandlerContext;JLjava/util/List;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 543
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "lengthHex":Ljava/lang/String;
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 545
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v0, v2}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 546
    const/16 v2, 0xd0a

    invoke-static {v1, v2}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 547
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    return-void
.end method

.method private static bypassEncoderIfEmpty(Lio/netty/buffer/ByteBuf;Ljava/util/List;)Z
    .locals 1
    .param p0, "msg"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 390
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static checkContentState(I)Z
    .locals 2
    .param p0, "state"    # I

    .line 90
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected static encodeAscii(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0, v0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 594
    return-void
.end method

.method private encodeByteBufAndTrailers(ILio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p4, "content"    # Lio/netty/buffer/ByteBuf;
    .param p5, "trailingHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/http/HttpHeaders;",
            ")V"
        }
    .end annotation

    .line 450
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    packed-switch p1, :pswitch_data_0

    .line 464
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 461
    :pswitch_0
    invoke-direct {p0, p2, p4, p5, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeChunkedHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V

    .line 462
    goto :goto_0

    .line 452
    :pswitch_1
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    goto :goto_0

    .line 458
    :cond_0
    :pswitch_2
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    nop

    .line 466
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private encodeByteBufContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
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

    .line 399
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v0, :cond_1

    .line 400
    invoke-static {p2, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->bypassEncoderIfEmpty(Lio/netty/buffer/ByteBuf;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 401
    return-void

    .line 403
    :cond_0
    :try_start_1
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufAndTrailers(ILio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 406
    nop

    .line 407
    return-void

    .line 405
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 399
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "content":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "content":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 406
    throw v0
.end method

.method private encodeByteBufHttpContent(ILio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p4, "content"    # Lio/netty/buffer/ByteBuf;
    .param p5, "trailingHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/http/HttpHeaders;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 203
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p6, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    packed-switch p1, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 215
    :pswitch_0
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-direct {p0, p2, p4, p5, p6}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeChunkedHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V

    .line 217
    goto :goto_0

    .line 205
    :pswitch_1
    invoke-static {p6, p3, p4}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeContentNonChunk(Ljava/util/List;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    goto :goto_0

    .line 211
    :cond_0
    :pswitch_2
    invoke-interface {p6, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    nop

    .line 221
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private encodeChunkedHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
    .param p3, "trailingHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/handler/codec/http/HttpHeaders;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 470
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p4, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 471
    .local v0, "contentLength":I
    if-lez v0, :cond_0

    .line 472
    int-to-long v1, v0

    invoke-static {p1, v1, v2, p4}, Lio/netty/handler/codec/http/HttpObjectEncoder;->addEncodedLengthHex(Lio/netty/channel/ChannelHandlerContext;JLjava/util/List;)V

    .line 473
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_0
    if-eqz p3, :cond_1

    .line 477
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeTrailingHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V

    goto :goto_0

    .line 478
    :cond_1
    if-nez v0, :cond_2

    .line 481
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    :cond_2
    :goto_0
    return-void
.end method

.method private static encodeContentNonChunk(Ljava/util/List;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            ")Z"
        }
    .end annotation

    .line 332
    .local p0, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 333
    .local v0, "contentLength":I
    if-lez v0, :cond_1

    .line 334
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 336
    invoke-virtual {p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 337
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 344
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static encodeEmptyLastHttpContent(ILjava/util/List;)I
    .locals 1
    .param p0, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 410
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p0, :cond_0

    .line 412
    packed-switch p0, :pswitch_data_0

    .line 421
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 418
    :pswitch_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    goto :goto_0

    .line 415
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    nop

    .line 423
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private encodeFileRegionContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/FileRegion;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/channel/FileRegion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/FileRegion;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v0, :cond_1

    .line 355
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    packed-switch v0, :pswitch_data_0

    .line 377
    new-instance v0, Ljava/lang/Error;

    goto :goto_1

    .line 374
    :pswitch_0
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodedChunkedFileRegionContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/FileRegion;Ljava/util/List;)V

    .line 375
    goto :goto_0

    .line 357
    :pswitch_1
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 358
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->retain()Lio/netty/channel/FileRegion;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    goto :goto_0

    .line 371
    :cond_0
    :pswitch_2
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    nop

    .line 380
    :goto_0
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->release()Z

    .line 381
    nop

    .line 382
    return-void

    .line 377
    :goto_1
    :try_start_1
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Lio/netty/channel/FileRegion;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0

    .line 380
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Lio/netty/channel/FileRegion;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Lio/netty/channel/FileRegion;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Lio/netty/channel/FileRegion;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_2
    invoke-interface {p2}, Lio/netty/channel/FileRegion;->release()Z

    .line 381
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private encodeFullHttpMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
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

    .line 301
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v0, :cond_4

    .line 302
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/FullHttpMessage;

    .line 304
    .local v0, "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    :try_start_0
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v1, :cond_0

    .line 305
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {p2, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V

    .line 308
    :cond_0
    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/HttpMessage;

    .line 310
    .local v1, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    float-to-int v3, v3

    invoke-interface {v2, v3}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 312
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0, v2, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V

    .line 314
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    move v10, v3

    .line 317
    .local v10, "state":I
    if-ne v10, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0, v1, v4}, Lio/netty/handler/codec/http/HttpObjectEncoder;->sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 319
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 320
    const/16 v3, 0xd0a

    invoke-static {v2, v3}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 322
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->padSizeForAccumulation(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    iget v4, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    .line 325
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v8

    move-object v3, p0

    move v4, v10

    move-object v5, p1

    move-object v6, v2

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufHttpContent(ILio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v1    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v10    # "state":I
    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->release()Z

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/FullHttpMessage;->release()Z

    .line 328
    throw v1

    .line 301
    .end local v0    # "msg":Lio/netty/handler/codec/http/FullHttpMessage;
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/HttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 438
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v0, :cond_2

    .line 439
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_1

    .line 440
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-nez v0, :cond_0

    .line 442
    :try_start_0
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufAndTrailers(ILio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->release()Z

    .line 445
    nop

    .line 446
    return-void

    .line 444
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpContent;->release()Z

    .line 445
    throw v0

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 439
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 438
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeHttpMessageLastContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;Ljava/util/List;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TH;",
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

    .line 242
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p2, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_2

    .line 243
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    .line 245
    .local v0, "httpContent":Lio/netty/handler/codec/http/LastHttpContent;
    :try_start_0
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v1, :cond_0

    .line 246
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {p2, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V

    .line 248
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitHttpMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 250
    .local v5, "buf":Lio/netty/buffer/ByteBuf;
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->checkContentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufHttpContent(ILio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V

    .line 254
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->release()Z

    .line 257
    nop

    .line 258
    return-void

    .line 250
    .restart local v5    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "httpContent":Lio/netty/handler/codec/http/LastHttpContent;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "httpContent":Lio/netty/handler/codec/http/LastHttpContent;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->release()Z

    .line 257
    throw v1

    .line 242
    .end local v0    # "httpContent":Lio/netty/handler/codec/http/LastHttpContent;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeHttpMessageNotLastContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;Ljava/util/List;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TH;",
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

    .line 224
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p2, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_3

    .line 225
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-nez v0, :cond_2

    .line 226
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    .line 228
    .local v0, "httpContent":Lio/netty/handler/codec/http/HttpContent;
    :try_start_0
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v1, :cond_0

    .line 229
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {p2, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V

    .line 231
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitHttpMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 233
    .local v5, "buf":Lio/netty/buffer/ByteBuf;
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->checkContentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufHttpContent(ILio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->release()Z

    .line 238
    nop

    .line 239
    return-void

    .line 233
    .restart local v5    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "httpContent":Lio/netty/handler/codec/http/HttpContent;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "httpContent":Lio/netty/handler/codec/http/HttpContent;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->release()Z

    .line 238
    throw v1

    .line 225
    .end local v0    # "httpContent":Lio/netty/handler/codec/http/HttpContent;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeInitHttpMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TH;)",
            "Lio/netty/buffer/ByteBuf;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 500
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p2, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-nez v0, :cond_3

    .line 502
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 504
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0, v0, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V

    .line 505
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    .line 506
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 508
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, p2, v2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 510
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 511
    const/16 v1, 0xd0a

    invoke-static {v0, v1}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 513
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->padSizeForAccumulation(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    .line 515
    return-object v0

    .line 500
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeJustHttpMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;Ljava/util/List;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TH;",
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

    .line 186
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p2, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    if-nez v0, :cond_2

    .line 188
    :try_start_0
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v0, :cond_0

    .line 189
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {p2, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V

    .line 191
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitHttpMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 193
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->checkContentState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    nop

    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 198
    nop

    .line 199
    return-void

    .line 193
    .restart local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 198
    throw v0

    .line 186
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeLastHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/LastHttpContent;Ljava/util/List;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/handler/codec/http/LastHttpContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/LastHttpContent;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-eqz v0, :cond_1

    .line 428
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_0

    .line 430
    :try_start_0
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufAndTrailers(ILio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 431
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->release()Z

    .line 434
    nop

    .line 435
    return-void

    .line 433
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Lio/netty/handler/codec/http/LastHttpContent;->release()Z

    .line 434
    throw v0

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 427
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeNotHttpMessageContentTypes(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 261
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_7

    .line 262
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-nez v0, :cond_1

    .line 264
    :try_start_0
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-static {v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->bypassEncoderIfEmpty(Lio/netty/buffer/ByteBuf;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 265
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 270
    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 270
    throw v0

    .line 272
    :cond_1
    :goto_0
    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    if-ne p2, v0, :cond_2

    .line 273
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeEmptyLastHttpContent(ILjava/util/List;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 274
    return-void

    .line 276
    :cond_2
    instance-of v0, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v0, :cond_3

    .line 277
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeLastHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/LastHttpContent;Ljava/util/List;)V

    .line 278
    return-void

    .line 280
    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_4

    .line 281
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHttpContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpContent;Ljava/util/List;)V

    .line 282
    return-void

    .line 284
    :cond_4
    instance-of v0, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_5

    .line 285
    move-object v0, p2

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeByteBufContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 286
    return-void

    .line 288
    :cond_5
    instance-of v0, p2, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_6

    .line 289
    move-object v0, p2

    check-cast v0, Lio/netty/channel/FileRegion;

    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeFileRegionContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/FileRegion;Ljava/util/List;)V

    .line 290
    return-void

    .line 293
    :cond_6
    :try_start_2
    iget v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-static {p2, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 296
    nop

    .line 297
    return-void

    .line 295
    :catchall_1
    move-exception v0

    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 296
    throw v0

    .line 261
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private encodeTrailingHeaders(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpHeaders;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "trailingHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/handler/codec/http/HttpHeaders;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 486
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 489
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 490
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    const v1, 0x300d0a

    invoke-static {v0, v1}, Lio/netty/buffer/ByteBufUtil;->writeMediumBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 491
    invoke-virtual {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 492
    const/16 v1, 0xd0a

    invoke-static {v0, v1}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 493
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->padSizeForAccumulation(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    iput v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    .line 495
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v0    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    return-void
.end method

.method private static encodedChunkedFileRegionContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/FileRegion;Ljava/util/List;)V
    .locals 5
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p1, "msg"    # Lio/netty/channel/FileRegion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/channel/FileRegion;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 530
    .local p2, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v0

    .line 531
    .local v0, "contentLength":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 532
    invoke-static {p0, v0, v1, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->addEncodedLengthHex(Lio/netty/channel/ChannelHandlerContext;JLjava/util/List;)V

    .line 533
    invoke-interface {p1}, Lio/netty/channel/FileRegion;->retain()Lio/netty/channel/FileRegion;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v2, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 535
    :cond_0
    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 538
    invoke-interface {p1}, Lio/netty/channel/FileRegion;->retain()Lio/netty/channel/FileRegion;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_1
    :goto_0
    return-void
.end method

.method private static padSizeForAccumulation(I)I
    .locals 1
    .param p0, "readableBytes"    # I

    .line 588
    shl-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private static throwUnexpectedMessageTypeEx(Ljava/lang/Object;I)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;
    .param p1, "state"    # I

    .line 348
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static writeOutList(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/netty/channel/ChannelPromise;",
            ")V"
        }
    .end annotation

    .line 115
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    .local v0, "size":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 119
    :cond_0
    if-le v0, v1, :cond_2

    .line 122
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 123
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;)V

    goto :goto_1

    .line 125
    :cond_1
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 129
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 130
    throw v1

    .line 129
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 130
    nop

    .line 131
    return-void
.end method

.method private static writePromiseCombiner(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lio/netty/channel/ChannelPromise;",
            ")V"
        }
    .end annotation

    .line 141
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Lio/netty/util/concurrent/PromiseCombiner;

    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/PromiseCombiner;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 142
    .local v0, "combiner":Lio/netty/util/concurrent/PromiseCombiner;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 143
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/netty/util/concurrent/PromiseCombiner;->add(Lio/netty/util/concurrent/Future;)V

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/util/concurrent/PromiseCombiner;->finish(Lio/netty/util/concurrent/Promise;)V

    .line 146
    return-void
.end method

.method private static writeVoidPromise(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;)V
    .locals 3
    .param p0, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p0}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 135
    .local v0, "voidPromise":Lio/netty/channel/ChannelPromise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 571
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    if-eq p1, v0, :cond_1

    sget-object v0, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    if-eq p1, v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http/FullHttpMessage;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http/LastHttpContent;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpContent;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/channel/FileRegion;

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

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
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

    .line 152
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    if-ne p2, v0, :cond_0

    .line 153
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void

    .line 161
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/FullHttpMessage;

    if-eqz v0, :cond_1

    .line 162
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeFullHttpMessage(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 163
    return-void

    .line 165
    :cond_1
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_4

    .line 168
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v0, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    nop

    .line 173
    instance-of v1, v0, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_2

    .line 174
    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHttpMessageLastContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;Ljava/util/List;)V

    goto :goto_0

    .line 175
    :cond_2
    instance-of v1, v0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v1, :cond_3

    .line 176
    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHttpMessageNotLastContent(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;Ljava/util/List;)V

    goto :goto_0

    .line 178
    :cond_3
    invoke-direct {p0, p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeJustHttpMessage(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http/HttpMessage;Ljava/util/List;)V

    .line 180
    .end local v0    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    :goto_0
    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "rethrow":Ljava/lang/Exception;
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 171
    throw v0

    .line 181
    .end local v0    # "rethrow":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeNotHttpMessageContentTypes(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 183
    :goto_1
    return-void
.end method

.method protected encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 522
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v0

    .line 523
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 525
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, p2}, Lio/netty/handler/codec/http/HttpHeadersEncoder;->encoderHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    .line 526
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method protected abstract encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation

    .line 565
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p1, "msg":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    const/4 v0, 0x0

    return v0
.end method

.method protected sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 0
    .param p2, "isAlwaysEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;Z)V"
        }
    .end annotation

    .line 555
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p1, "msg":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->out:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->out:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lio/netty/handler/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must produce at least one message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0

    .line 103
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :cond_1
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->out:Ljava/util/List;

    invoke-static {p1, v0, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->writeOutList(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/channel/ChannelPromise;)V

    .line 111
    nop

    .line 112
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    new-instance v1, Lio/netty/handler/codec/EncoderException;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v1

    .line 105
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lio/netty/handler/codec/EncoderException;
    nop

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "msg":Ljava/lang/Object;
    .end local p3    # "promise":Lio/netty/channel/ChannelPromise;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    .end local v0    # "e":Lio/netty/handler/codec/EncoderException;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "msg":Ljava/lang/Object;
    .restart local p3    # "promise":Lio/netty/channel/ChannelPromise;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->out:Ljava/util/List;

    invoke-static {p1, v1, p3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->writeOutList(Lio/netty/channel/ChannelHandlerContext;Ljava/util/List;Lio/netty/channel/ChannelPromise;)V

    .line 111
    throw v0
.end method
