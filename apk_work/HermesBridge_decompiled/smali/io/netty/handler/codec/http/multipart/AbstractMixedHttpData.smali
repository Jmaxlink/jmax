.class abstract Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;
.super Lio/netty/util/AbstractReferenceCounted;
.source "AbstractMixedHttpData.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/HttpData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D::",
        "Lio/netty/handler/codec/http/multipart/HttpData;",
        ">",
        "Lio/netty/util/AbstractReferenceCounted;",
        "Lio/netty/handler/codec/http/multipart/HttpData;"
    }
.end annotation


# instance fields
.field final baseDir:Ljava/lang/String;

.field final deleteOnExit:Z

.field private final limitSize:J

.field wrapped:Lio/netty/handler/codec/http/multipart/HttpData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLjava/lang/String;ZLio/netty/handler/codec/http/multipart/HttpData;)V
    .locals 0
    .param p1, "limitSize"    # J
    .param p3, "baseDir"    # Ljava/lang/String;
    .param p4, "deleteOnExit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "ZTD;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    .local p5, "initial":Lio/netty/handler/codec/http/multipart/HttpData;, "TD;"
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    .line 34
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->limitSize:J

    .line 35
    iput-object p5, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    .line 36
    iput-object p3, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->baseDir:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->deleteOnExit:Z

    .line 38
    return-void
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 4
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;

    if-eqz v0, :cond_2

    .line 81
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->checkSize(J)V

    .line 82
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    .line 84
    .local v0, "diskData":Lio/netty/handler/codec/http/multipart/HttpData;, "TD;"
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v1, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 85
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 88
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 89
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "diskData":Lio/netty/handler/codec/http/multipart/HttpData;, "TD;"
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    :cond_1
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 93
    throw v0

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/HttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 97
    return-void
.end method

.method public checkSize(J)V
    .locals 1
    .param p1, "newSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/HttpData;->checkSize(J)V

    .line 60
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 1
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 212
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 54
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->copy()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->copy()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method protected deallocate()V
    .locals 0

    .line 101
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->delete()V

    .line 102
    return-void
.end method

.method public definedLength()J
    .locals 2

    .line 64
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->definedLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 1

    .line 106
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->delete()V

    .line 107
    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->duplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->duplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 207
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 69
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 197
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 44
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 74
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 202
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 192
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 131
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 136
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method abstract makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 1
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            ")TD;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-super {p0}, Lio/netty/util/AbstractReferenceCounted;->retain()Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/HttpData;

    return-object v0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .param p1, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TD;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-super {p0, p1}, Lio/netty/util/AbstractReferenceCounted;->retain(I)Lio/netty/util/ReferenceCounted;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/HttpData;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 146
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setCharset(Ljava/nio/charset/Charset;)V

    .line 147
    return-void
.end method

.method public setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    :try_start_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->checkSize(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    nop

    .line 157
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 161
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    .line 164
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Lio/netty/buffer/ByteBuf;)V

    .line 165
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 155
    throw v0
.end method

.method public setContent(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->checkSize(J)V

    .line 170
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 171
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 174
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    .line 177
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Ljava/io/File;)V

    .line 178
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->release()Z

    .line 185
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    .line 187
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->setContent(Ljava/io/InputStream;)V

    .line 188
    return-void
.end method

.method public setMaxSize(J)V
    .locals 1
    .param p1, "maxSize"    # J

    .line 49
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/HttpData;->setMaxSize(J)V

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 217
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/HttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    .line 258
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TD;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/HttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    .line 265
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 26
    .local p0, "this":Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;, "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<TD;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object p1

    return-object p1
.end method
