.class public Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;
.super Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;
.source "DefaultSpdyDataFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyDataFrame;


# instance fields
.field private final data:Lio/netty/buffer/ByteBuf;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "streamId"    # I

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "data"    # Lio/netty/buffer/ByteBuf;

    .line 47
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;-><init>(I)V

    .line 48
    nop

    .line 49
    const-string v0, "data"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 48
    invoke-static {v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->validate(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    .line 50
    return-void
.end method

.method private static validate(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "data"    # Lio/netty/buffer/ByteBuf;

    .line 53
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const v1, 0xffffff

    if-gt v0, v1, :cond_0

    .line 57
    return-object p0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data payload cannot exceed 16777215 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->copy()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->duplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public refCnt()I
    .locals 1

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 135
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 2
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 94
    new-instance v0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;

    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;-><init>(ILio/netty/buffer/ByteBuf;)V

    .line 95
    .local v0, "frame":Lio/netty/handler/codec/spdy/SpdyDataFrame;
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isLast()Z

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/spdy/SpdyDataFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    .line 96
    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 107
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1
    .param p1, "increment"    # I

    .line 112
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 113
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retain(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->retainedDuplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 0
    .param p1, "last"    # Z

    .line 68
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    .line 69
    return-object p0
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 0
    .param p1, "streamId"    # I

    .line 62
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    .line 63
    return-object p0
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 142
    const-string v1, "(last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->streamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    const-string v1, "--> Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->refCnt()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "(freed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1

    .line 118
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    .line 119
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->data:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 125
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch()Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyDataFrame;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/spdy/SpdyDataFrame;

    move-result-object p1

    return-object p1
.end method
