.class public Lio/netty/handler/codec/http/multipart/MixedAttribute;
.super Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;
.source "MixedAttribute.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/Attribute;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData<",
        "Lio/netty/handler/codec/http/multipart/Attribute;",
        ">;",
        "Lio/netty/handler/codec/http/multipart/Attribute;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitSize"    # J

    .line 29
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "limitSize"    # J

    .line 33
    sget-object v6, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "limitSize"    # J
    .param p6, "charset"    # Ljava/nio/charset/Charset;

    .line 45
    sget-object v7, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v8, Lio/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/nio/charset/Charset;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "limitSize"    # J
    .param p6, "charset"    # Ljava/nio/charset/Charset;
    .param p7, "baseDir"    # Ljava/lang/String;
    .param p8, "deleteOnExit"    # Z

    .line 51
    new-instance v5, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v5, p1, p2, p3, p6}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    move-object v0, p0

    move-wide v1, p4

    move-object v3, p7

    move v4, p8

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;-><init>(JLjava/lang/String;ZLio/netty/handler/codec/http/multipart/HttpData;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitSize"    # J
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 37
    sget-object v5, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitSize"    # J
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "baseDir"    # Ljava/lang/String;
    .param p6, "deleteOnExit"    # Z

    .line 41
    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "limitSize"    # J

    .line 56
    sget-object v5, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sget-object v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v7, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "limitSize"    # J
    .param p5, "charset"    # Ljava/nio/charset/Charset;

    .line 61
    sget-object v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    sget-boolean v7, Lio/netty/handler/codec/http/multipart/DiskFileUpload;->deleteOnExitTemporaryFile:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "limitSize"    # J
    .param p5, "charset"    # Ljava/nio/charset/Charset;
    .param p6, "baseDir"    # Ljava/lang/String;
    .param p7, "deleteOnExit"    # Z

    .line 89
    nop

    .line 90
    invoke-static/range {p1 .. p7}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->makeInitialAttributeFromValue(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v5

    .line 89
    move-object v0, p0

    move-wide v1, p3

    move-object v3, p6

    move v4, p7

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;-><init>(JLjava/lang/String;ZLio/netty/handler/codec/http/multipart/HttpData;)V

    .line 91
    return-void
.end method

.method private static makeInitialAttributeFromValue(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;Ljava/lang/String;Z)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "limitSize"    # J
    .param p4, "charset"    # Ljava/nio/charset/Charset;
    .param p5, "baseDir"    # Ljava/lang/String;
    .param p6, "deleteOnExit"    # Z

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    .line 69
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v1, p0, p1, p4}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 74
    :catch_1
    move-exception v1

    .line 75
    .local v1, "ignore":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 80
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ignore":Ljava/io/IOException;
    :cond_0
    :try_start_2
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p0, p1, p4}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public bridge synthetic addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
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

    .line 27
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->checkSize(J)V

    return-void
.end method

.method public bridge synthetic compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 113
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->copy()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic definedLength()J
    .locals 2

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->definedLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic delete()V
    .locals 0

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->delete()V

    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 119
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->duplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 27
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

    .line 27
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

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 27
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

    .line 27
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxSize()J
    .locals 2

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 27
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

    .line 27
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

    .line 27
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isCompleted()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInMemory()Z
    .locals 1

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic length()J
    .locals 2

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method makeDiskData()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 7

    .line 105
    new-instance v6, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->definedLength()J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->baseDir:Ljava/lang/String;

    iget-boolean v5, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->deleteOnExit:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/lang/String;Z)V

    .line 106
    .local v0, "diskAttribute":Lio/netty/handler/codec/http/multipart/DiskAttribute;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->getMaxSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->setMaxSize(J)V

    .line 107
    return-object v0
.end method

.method bridge synthetic makeDiskData()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->makeDiskData()Lio/netty/handler/codec/http/multipart/Attribute;

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

    .line 27
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 125
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 131
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1
    .param p1, "increment"    # I

    .line 137
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 143
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 27
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

    .line 27
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

    .line 27
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

    .line 27
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setContent(Ljava/io/InputStream;)V

    return-void
.end method

.method public bridge synthetic setMaxSize(J)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->setMaxSize(J)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->wrapped:Lio/netty/handler/codec/http/multipart/HttpData;

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 149
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 155
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMixedHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method
