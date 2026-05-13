.class public final Lio/netty/handler/codec/compression/BrotliEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "BrotliEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final ATTR:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Lio/netty/handler/codec/compression/BrotliEncoder$Writer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isSharable:Z

.field private final parameters:Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

.field private writer:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "BrotliEncoderWriter"

    invoke-static {v0}, Lio/netty/util/AttributeKey;->valueOf(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/BrotliEncoder;->ATTR:Lio/netty/util/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    sget-object v0, Lio/netty/handler/codec/compression/BrotliOptions;->DEFAULT:Lio/netty/handler/codec/compression/BrotliOptions;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/BrotliEncoder;-><init>(Lio/netty/handler/codec/compression/BrotliOptions;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V
    .locals 1
    .param p1, "parameters"    # Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/BrotliEncoder;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;Z)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;Z)V
    .locals 1
    .param p1, "parameters"    # Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;
    .param p2, "isSharable"    # Z

    .line 95
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 96
    const-string v0, "Parameters"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    iput-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->parameters:Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    .line 97
    iput-boolean p2, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->isSharable:Z

    .line 98
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/BrotliOptions;)V
    .locals 1
    .param p1, "brotliOptions"    # Lio/netty/handler/codec/compression/BrotliOptions;

    .line 66
    invoke-virtual {p1}, Lio/netty/handler/codec/compression/BrotliOptions;->parameters()Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/BrotliEncoder;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    .line 67
    return-void
.end method

.method private finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->isSharable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/compression/BrotliEncoder;->ATTR:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v2}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/netty/util/Attribute;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .local v0, "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    goto :goto_0

    .line 165
    .end local v0    # "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->writer:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .line 168
    .restart local v0    # "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    :goto_0
    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->close()V

    .line 170
    iput-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->writer:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .line 172
    :cond_1
    return-object p2
.end method


# virtual methods
.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 129
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->isSharable:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/compression/BrotliEncoder;->ATTR:Lio/netty/util/AttributeKey;

    invoke-interface {v0, v1}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .local v0, "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    goto :goto_0

    .line 132
    .end local v0    # "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->writer:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .line 136
    .restart local v0    # "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    :goto_0
    if-nez v0, :cond_2

    .line 137
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v1

    .line 139
    :cond_2
    invoke-static {v0, p2, p3}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->access$100(Lio/netty/handler/codec/compression/BrotliEncoder$Writer;Lio/netty/buffer/ByteBuf;Z)V

    .line 140
    invoke-static {v0}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->access$200(Lio/netty/handler/codec/compression/BrotliEncoder$Writer;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/BrotliEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/BrotliEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 178
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    invoke-static {p1, v0, p2}, Lio/netty/handler/codec/compression/EncoderUtil;->closeAfterFinishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    .line 179
    return-void
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/BrotliEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public finish(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/compression/BrotliEncoder;->finishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 157
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    new-instance v0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->parameters:Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/compression/BrotliEncoder$1;)V

    .line 103
    .local v0, "writer":Lio/netty/handler/codec/compression/BrotliEncoder$Writer;
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->isSharable:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/compression/BrotliEncoder;->ATTR:Lio/netty/util/AttributeKey;

    invoke-interface {v1, v2}, Lio/netty/channel/Channel;->attr(Lio/netty/util/AttributeKey;)Lio/netty/util/Attribute;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/util/Attribute;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_0
    iput-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->writer:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .line 108
    :goto_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToByteEncoder;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 109
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/compression/BrotliEncoder;->finish(Lio/netty/channel/ChannelHandlerContext;)V

    .line 114
    invoke-super {p0, p1}, Lio/netty/handler/codec/MessageToByteEncoder;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 115
    return-void
.end method

.method public isSharable()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder;->isSharable:Z

    return v0
.end method
