.class final Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;
.super Ljava/lang/Object;
.source "HttpPostStandardRequestDecoder.java"

# interfaces
.implements Lio/netty/util/ByteProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UrlDecoder"
.end annotation


# instance fields
.field private hiByte:B

.field private nextEscapedIdx:I

.field private final output:Lio/netty/buffer/ByteBuf;


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "output"    # Lio/netty/buffer/ByteBuf;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    .line 756
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;

    .line 748
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    return v0
.end method


# virtual methods
.method public process(B)Z
    .locals 6
    .param p1, "value"    # B

    .line 760
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 761
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    if-ne v0, v1, :cond_0

    .line 762
    iput-byte p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->hiByte:B

    .line 763
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    goto :goto_1

    .line 765
    :cond_0
    iget-byte v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->hiByte:B

    int-to-char v0, v0

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v0

    .line 766
    .local v0, "hi":I
    int-to-char v2, p1

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(C)I

    move-result v2

    .line 767
    .local v2, "lo":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 771
    :cond_1
    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    shl-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 772
    iput v3, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    .line 773
    .end local v0    # "hi":I
    .end local v2    # "lo":I
    goto :goto_1

    .line 768
    .restart local v0    # "hi":I
    .restart local v2    # "lo":I
    :cond_2
    :goto_0
    iget v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    add-int/2addr v4, v1

    iput v4, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    .line 769
    return v3

    .line 774
    .end local v0    # "hi":I
    .end local v2    # "lo":I
    :cond_3
    const/16 v0, 0x25

    if-ne p1, v0, :cond_4

    .line 775
    iput v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->nextEscapedIdx:I

    goto :goto_1

    .line 776
    :cond_4
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_5

    .line 777
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 779
    :cond_5
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder$UrlDecoder;->output:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 781
    :goto_1
    return v1
.end method
