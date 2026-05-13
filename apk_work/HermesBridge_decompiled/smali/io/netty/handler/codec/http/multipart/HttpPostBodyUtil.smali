.class final Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;
.super Ljava/lang/Object;
.source "HttpPostBodyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;,
        Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
    }
.end annotation


# static fields
.field public static final DEFAULT_BINARY_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TEXT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final chunkSize:I = 0x1fa0


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method static findDelimiter(Lio/netty/buffer/ByteBuf;I[BZ)I
    .locals 10
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "delimiter"    # [B
    .param p3, "precededByLineBreak"    # Z

    .line 221
    array-length v0, p2

    .line 222
    .local v0, "delimiterLength":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 223
    .local v1, "readerIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v2

    .line 224
    .local v2, "writerIndex":I
    sub-int v3, v2, p1

    .line 225
    .local v3, "toRead":I
    move v4, p1

    .line 226
    .local v4, "newOffset":I
    const/4 v5, 0x1

    .line 227
    .local v5, "delimiterNotFound":Z
    :goto_0
    const/4 v6, -0x1

    if-eqz v5, :cond_6

    if-gt v0, v3, :cond_6

    .line 229
    const/4 v7, 0x0

    aget-byte v7, p2, v7

    invoke-virtual {p0, v4, v3, v7}, Lio/netty/buffer/ByteBuf;->bytesBefore(IIB)I

    move-result v7

    .line 230
    .local v7, "posDelimiter":I
    if-gez v7, :cond_0

    .line 231
    return v6

    .line 233
    :cond_0
    add-int/2addr v4, v7

    .line 234
    sub-int/2addr v3, v7

    .line 236
    if-lt v3, v0, :cond_2

    .line 237
    const/4 v5, 0x0

    .line 238
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_2

    .line 239
    add-int v8, v4, v6

    invoke-virtual {p0, v8}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v8

    aget-byte v9, p2, v6

    if-eq v8, v9, :cond_1

    .line 240
    add-int/lit8 v4, v4, 0x1

    .line 241
    add-int/lit8 v3, v3, -0x1

    .line 242
    const/4 v5, 0x1

    .line 243
    goto :goto_2

    .line 238
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 247
    .end local v6    # "i":I
    :cond_2
    :goto_2
    if-nez v5, :cond_5

    .line 249
    if-eqz p3, :cond_4

    if-le v4, v1, :cond_4

    .line 250
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    const/16 v8, 0xa

    if-ne v6, v8, :cond_3

    .line 251
    add-int/lit8 v4, v4, -0x1

    .line 253
    if-le v4, v1, :cond_4

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    const/16 v8, 0xd

    if-ne v6, v8, :cond_4

    .line 254
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 258
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 259
    add-int/lit8 v3, v3, -0x1

    .line 260
    const/4 v5, 0x1

    .line 261
    goto :goto_0

    .line 264
    :cond_4
    :goto_3
    sub-int v6, v4, v1

    return v6

    .line 266
    .end local v7    # "posDelimiter":I
    :cond_5
    goto :goto_0

    .line 267
    :cond_6
    return v6
.end method

.method static findEndOfString(Ljava/lang/String;)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "result":I
    :goto_0
    if-lez v0, :cond_1

    .line 147
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    goto :goto_1

    .line 146
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    return v0
.end method

.method static findLastLineBreak(Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I

    .line 184
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findLineBreak(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 185
    .local v0, "candidate":I
    const/4 v1, 0x0

    .line 186
    .local v1, "findCRLF":I
    const/16 v2, 0xd

    if-ltz v0, :cond_1

    .line 187
    add-int v3, p1, v0

    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    if-ne v3, v2, :cond_0

    .line 188
    const/4 v1, 0x2

    goto :goto_0

    .line 190
    :cond_0
    const/4 v1, 0x1

    .line 192
    :goto_0
    add-int/2addr v0, v1

    .line 195
    :cond_1
    :goto_1
    if-lez v0, :cond_3

    add-int v3, p1, v0

    invoke-static {p0, v3}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findLineBreak(Lio/netty/buffer/ByteBuf;I)I

    move-result v3

    move v4, v3

    .local v4, "next":I
    if-ltz v3, :cond_3

    .line 196
    add-int/2addr v0, v4

    .line 197
    add-int v3, p1, v0

    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v3

    if-ne v3, v2, :cond_2

    .line 198
    const/4 v1, 0x2

    goto :goto_2

    .line 200
    :cond_2
    const/4 v1, 0x1

    .line 202
    :goto_2
    add-int/2addr v0, v1

    goto :goto_1

    .line 204
    .end local v4    # "next":I
    :cond_3
    sub-int v2, v0, v1

    return v2
.end method

.method static findLineBreak(Lio/netty/buffer/ByteBuf;I)I
    .locals 4
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I

    .line 163
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    sub-int v1, p1, v1

    sub-int/2addr v0, v1

    .line 164
    .local v0, "toRead":I
    const/16 v1, 0xa

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/ByteBuf;->bytesBefore(IIB)I

    move-result v1

    .line 165
    .local v1, "posFirstChar":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 167
    return v2

    .line 169
    :cond_0
    if-lez v1, :cond_1

    add-int v2, p1, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 170
    add-int/lit8 v1, v1, -0x1

    .line 172
    :cond_1
    return v1
.end method

.method static findNonWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "sb"    # Ljava/lang/String;
    .param p1, "offset"    # I

    .line 132
    move v0, p1

    .local v0, "result":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    goto :goto_1

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    :goto_1
    return v0
.end method
