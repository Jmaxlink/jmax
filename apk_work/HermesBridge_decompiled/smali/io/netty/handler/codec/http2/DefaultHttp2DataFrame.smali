.class public final Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
.super Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
.source "DefaultHttp2DataFrame.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2DataFrame;


# instance fields
.field private final content:Lio/netty/buffer/ByteBuf;

.field private final endStream:Z

.field private final initialFlowControlledBytes:I

.field private final padding:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Z)V
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;
    .param p2, "endStream"    # Z

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;ZI)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;ZI)V
    .locals 4
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;
    .param p2, "endStream"    # Z
    .param p3, "padding"    # I

    .line 73
    invoke-direct {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;-><init>()V

    .line 74
    const-string v0, "content"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    .line 75
    iput-boolean p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    .line 76
    invoke-static {p3}, Lio/netty/handler/codec/http2/Http2CodecUtil;->verifyPadding(I)V

    .line 77
    iput p3, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    .line 78
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->initialFlowControlledBytes:I

    .line 82
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "content + padding must be <= Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "endStream"    # Z

    .line 52
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    .line 53
    return-void
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 107
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->copy()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->copy()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->duplicate()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1

    .line 122
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->duplicate()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 182
    instance-of v0, p1, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    return v1

    .line 185
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    .line 186
    .local v0, "other":Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    invoke-super {p0, v0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    iget-boolean v3, v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    iget v3, v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 192
    invoke-super {p0}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->hashCode()I

    move-result v0

    .line 193
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 194
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 195
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    add-int/2addr v1, v2

    .line 196
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    return v1
.end method

.method public initialFlowControlledBytes()I
    .locals 1

    .line 112
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->initialFlowControlledBytes:I

    return v0
.end method

.method public isEndStream()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 92
    const-string v0, "DATA"

    return-object v0
.end method

.method public padding()I
    .locals 1

    .line 102
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    return v0
.end method

.method public refCnt()I
    .locals 1

    .line 137
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 147
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 3
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 132
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    iget v2, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    invoke-direct {v0, p1, v1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;-><init>(Lio/netty/buffer/ByteBuf;ZI)V

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain(I)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 153
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1
    .param p1, "increment"    # I

    .line 158
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 159
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain(I)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retain(I)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retainedDuplicate()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->retainedDuplicate()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 86
    invoke-super {p0, p1}, Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/AbstractHttp2StreamFrame;

    .line 87
    return-object p0
.end method

.method public bridge synthetic stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2StreamFrame;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(stream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", endStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->endStream:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", padding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->padding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->touch()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1

    .line 170
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    .line 171
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->content:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 177
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->touch()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2DataFrame;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->touch()Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http2/DefaultHttp2DataFrame;

    move-result-object p1

    return-object p1
.end method
