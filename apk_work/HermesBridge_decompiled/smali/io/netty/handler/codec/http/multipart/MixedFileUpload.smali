.class public Lio/netty/handler/codec/http/multipart/MixedFileUpload;
.super Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;
.source "MixedFileUpload.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/FileUpload;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<",
        "Lio/netty/handler/codec/http/multipart/FileUpload;",
        ">;",
        "Lio/netty/handler/codec/http/multipart/FileUpload;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJ)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentTransferEncoding"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "size"    # J
    .param p8, "limitSize"    # J

    .line 30
    sget-object v10, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->baseDirectory:Ljava/lang/String;

    sget-boolean v11, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v0 .. v11}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJLjava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JJLjava/lang/String;Z)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentTransferEncoding"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "size"    # J
    .param p8, "limitSize"    # J
    .param p10, "baseDir"    # Ljava/lang/String;
    .param p11, "deleteOnExit"    # Z

    .line 37
    cmp-long v0, p6, p8

    if-lez v0, :cond_0

    new-instance v10, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JLjava/lang/String;Z)V

    move-object v5, v10

    goto :goto_0

    :cond_0
    new-instance v8, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/multipart/MemoryFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    move-object v5, v8

    :goto_0
    move-object v0, p0

    move-wide/from16 v1, p8

    move-object/from16 v3, p10

    move/from16 v4, p11

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;-><init>(JLjava/lang/String;ZLio/netty/handler/codec/http/multipart/HttpData;)V

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    return-void
.end method

.method public bridge synthetic checkSize(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->checkSize(J)V

    return-void
.end method

.method public bridge synthetic compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->copy()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 87
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->copy()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->copy()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic definedLength()J
    .locals 2

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->definedLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic delete()V
    .locals 0

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->delete()V

    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 93
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->duplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->duplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxSize()J
    .locals 2

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isCompleted()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInMemory()Z
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic length()J
    .locals 2

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method makeDiskData()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 11

    .line 77
    new-instance v10, Lio/netty/handler/codec/http/multipart/DiskFileUpload;

    .line 78
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->definedLength()J

    move-result-wide v6

    iget-object v8, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->baseDir:Ljava/lang/String;

    iget-boolean v9, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->deleteOnExit:Z

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;JLjava/lang/String;Z)V

    .line 80
    .local v0, "diskFileUpload":Lio/netty/handler/codec/http/multipart/DiskFileUpload;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->getMaxSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->setMaxSize(J)V

    .line 81
    return-object v0
.end method

.method bridge synthetic makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->makeDiskData()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic renameTo(Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 105
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 123
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1
    .param p1, "increment"    # I

    .line 129
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retain(I)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 99
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setCharset(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public bridge synthetic setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setContent(Lio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public bridge synthetic setContent(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setContent(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic setContent(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentTransferEncoding"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContentTransferEncoding(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setContentType(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->setFilename(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public bridge synthetic setMaxSize(J)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setMaxSize(J)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 25
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1

    .line 111
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 117
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/FileUpload;

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch()Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedFileUpload;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/FileUpload;

    move-result-object p1

    return-object p1
.end method
