.class Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
.super Ljava/lang/Object;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderParser"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final maxLength:I

.field protected final seq:Lio/netty/buffer/ByteBuf;

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1030
    const-class v0, Lio/netty/handler/codec/http/HttpObjectDecoder;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p1, "seq"    # Lio/netty/buffer/ByteBuf;
    .param p2, "maxLength"    # I

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/buffer/ByteBuf;

    .line 1037
    iput p2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    .line 1038
    return-void
.end method


# virtual methods
.method protected newException(I)Lio/netty/handler/codec/TooLongFrameException;
    .locals 3
    .param p1, "maxLength"    # I

    .line 1091
    new-instance v0, Lio/netty/handler/codec/http/TooLongHttpHeaderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP header is larger than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/TooLongHttpHeaderException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 12
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 1041
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 1042
    .local v0, "readableBytes":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 1043
    .local v1, "readerIndex":I
    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    sub-int/2addr v2, v3

    .line 1044
    .local v2, "maxBodySize":I
    if-ltz v2, :cond_6

    .line 1047
    int-to-long v3, v2

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 1048
    .local v3, "maxBodySizeWithCRLF":J
    int-to-long v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 1049
    .local v5, "toProcess":I
    add-int v6, v1, v5

    .line 1050
    .local v6, "toIndexExclusive":I
    if-lt v6, v1, :cond_5

    .line 1051
    const/16 v7, 0xa

    invoke-virtual {p1, v1, v6, v7}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v7

    .line 1052
    .local v7, "indexOfLf":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 1053
    if-gt v0, v2, :cond_0

    .line 1060
    const/4 v8, 0x0

    return-object v8

    .line 1058
    :cond_0
    iget v8, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    invoke-virtual {p0, v8}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->newException(I)Lio/netty/handler/codec/TooLongFrameException;

    move-result-object v8

    throw v8

    .line 1063
    :cond_1
    if-le v7, v1, :cond_2

    add-int/lit8 v8, v7, -0x1

    invoke-virtual {p1, v8}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    const/16 v9, 0xd

    if-ne v8, v9, :cond_2

    .line 1065
    add-int/lit8 v8, v7, -0x1

    .local v8, "endOfSeqIncluded":I
    goto :goto_0

    .line 1067
    .end local v8    # "endOfSeqIncluded":I
    :cond_2
    move v8, v7

    .line 1069
    .restart local v8    # "endOfSeqIncluded":I
    :goto_0
    sub-int v9, v8, v1

    .line 1070
    .local v9, "newSize":I
    if-nez v9, :cond_3

    .line 1071
    iget-object v10, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 1072
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {p1, v10}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1073
    iget-object v10, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/buffer/ByteBuf;

    return-object v10

    .line 1075
    :cond_3
    iget v10, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    add-int/2addr v10, v9

    .line 1076
    .local v10, "size":I
    iget v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    if-gt v10, v11, :cond_4

    .line 1079
    iput v10, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    .line 1080
    iget-object v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v11}, Lio/netty/buffer/ByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 1081
    iget-object v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v11, p1, v1, v9}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1082
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p1, v11}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1083
    iget-object v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->seq:Lio/netty/buffer/ByteBuf;

    return-object v11

    .line 1077
    :cond_4
    iget v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->maxLength:I

    invoke-virtual {p0, v11}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->newException(I)Lio/netty/handler/codec/TooLongFrameException;

    move-result-object v11

    throw v11

    .line 1050
    .end local v7    # "indexOfLf":I
    .end local v8    # "endOfSeqIncluded":I
    .end local v9    # "newSize":I
    .end local v10    # "size":I
    :cond_5
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1044
    .end local v3    # "maxBodySizeWithCRLF":J
    .end local v5    # "toProcess":I
    .end local v6    # "toIndexExclusive":I
    :cond_6
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
.end method

.method public reset()V
    .locals 1

    .line 1087
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    .line 1088
    return-void
.end method
