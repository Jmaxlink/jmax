.class final Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;
.super Ljava/lang/Object;
.source "HpackHuffmanEncoder.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/HpackHuffmanEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EncodeProcessor"
.end annotation


# instance fields
.field private current:J

.field private n:I

.field out:Lio/netty/buffer/ByteBuf;

.field final synthetic this$0:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->this$0:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;Lio/netty/handler/codec/http2/HpackHuffmanEncoder$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http2/HpackHuffmanEncoder;
    .param p2, "x1"    # Lio/netty/handler/codec/http2/HpackHuffmanEncoder$1;

    .line 141
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;-><init>(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)V

    return-void
.end method


# virtual methods
.method end()V
    .locals 8

    .line 164
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    if-lez v4, :cond_0

    .line 165
    iget-wide v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    iget v6, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    rsub-int/lit8 v6, v6, 0x8

    shl-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    .line 166
    iget-wide v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    iget v6, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    const/16 v7, 0xff

    ushr-int v6, v7, v6

    int-to-long v6, v6

    or-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    .line 167
    iget-object v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->out:Lio/netty/buffer/ByteBuf;

    iget-wide v5, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    long-to-int v5, v5

    invoke-virtual {v4, v5}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    iput-object v3, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->out:Lio/netty/buffer/ByteBuf;

    .line 171
    iput-wide v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    .line 172
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    .line 173
    nop

    .line 174
    return-void

    .line 170
    :catchall_0
    move-exception v4

    iput-object v3, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->out:Lio/netty/buffer/ByteBuf;

    .line 171
    iput-wide v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    .line 172
    iput v0, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    .line 173
    throw v4
.end method

.method public process(B)Z
    .locals 6
    .param p1, "value"    # B

    .line 148
    and-int/lit16 v0, p1, 0xff

    .line 149
    .local v0, "b":I
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->this$0:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->access$200(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    .line 151
    .local v1, "nbits":I
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    shl-long/2addr v2, v1

    iput-wide v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    .line 152
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    iget-object v4, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->this$0:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-static {v4}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->access$300(Lio/netty/handler/codec/http2/HpackHuffmanEncoder;)[I

    move-result-object v4

    aget v4, v4, v0

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    .line 153
    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    .line 155
    :goto_0
    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    .line 156
    iget v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    sub-int/2addr v2, v3

    iput v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    .line 157
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->out:Lio/netty/buffer/ByteBuf;

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->current:J

    iget v5, p0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder$EncodeProcessor;->n:I

    shr-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 159
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
