.class final Lio/netty/handler/codec/http2/HpackDecoder;
.super Ljava/lang/Object;
.source "HpackDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;,
        Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

.field private static final READ_HEADER_REPRESENTATION:B = 0x0t

.field private static final READ_INDEXED_HEADER:B = 0x1t

.field private static final READ_INDEXED_HEADER_NAME:B = 0x2t

.field private static final READ_LITERAL_HEADER_NAME:B = 0x5t

.field private static final READ_LITERAL_HEADER_NAME_LENGTH:B = 0x4t

.field private static final READ_LITERAL_HEADER_NAME_LENGTH_PREFIX:B = 0x3t

.field private static final READ_LITERAL_HEADER_VALUE:B = 0x8t

.field private static final READ_LITERAL_HEADER_VALUE_LENGTH:B = 0x7t

.field private static final READ_LITERAL_HEADER_VALUE_LENGTH_PREFIX:B = 0x6t

.field private static final READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;


# instance fields
.field private encoderMaxDynamicTableSize:J

.field private final hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

.field private final huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

.field private maxDynamicTableSize:J

.field private maxDynamicTableSizeChangeRequired:Z

.field private maxHeaderListSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 54
    nop

    .line 55
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 56
    const-string v2, "HPACK - decompression failure"

    const-class v3, Lio/netty/handler/codec/http2/HpackDecoder;

    const-string v4, "decodeULE128(..)"

    invoke-static {v0, v2, v1, v3, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    .line 59
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 60
    const-string v2, "HPACK - long overflow"

    invoke-static {v0, v2, v1, v3, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    .line 62
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 63
    const-string v2, "HPACK - int overflow"

    const-string v4, "decodeULE128ToInt(..)"

    invoke-static {v0, v2, v1, v3, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    .line 65
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 66
    const-string v2, "HPACK - illegal index value"

    const-string v4, "decode(..)"

    invoke-static {v0, v2, v1, v3, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 68
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 69
    const-string v5, "indexHeader(..)"

    invoke-static {v0, v2, v1, v3, v5}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 71
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 72
    const-string v5, "readName(..)"

    invoke-static {v0, v2, v1, v3, v5}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 74
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 75
    const-string v2, "HPACK - invalid max dynamic table size"

    const-string v5, "setDynamicTableSize(..)"

    invoke-static {v0, v2, v1, v3, v5}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

    .line 78
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 79
    const-string v2, "HPACK - max dynamic table size change required"

    invoke-static {v0, v2, v1, v3, v4}, Lio/netty/handler/codec/http2/Http2Exception;->newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

    .line 78
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "maxHeaderListSize"    # J

    .line 106
    const/16 v0, 0x1000

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/HpackDecoder;-><init>(JI)V

    .line 107
    return-void
.end method

.method constructor <init>(JI)V
    .locals 3
    .param p1, "maxHeaderListSize"    # J
    .param p3, "maxHeaderTableSize"    # I

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    .line 114
    const-string v0, "maxHeaderListSize"

    invoke-static {p1, p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    .line 116
    int-to-long v0, p3

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    .line 118
    new-instance v0, Lio/netty/handler/codec/http2/HpackDynamicTable;

    int-to-long v1, p3

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http2/HpackDynamicTable;-><init>(J)V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    .line 119
    return-void
.end method

.method static synthetic access$000(ILio/netty/util/AsciiString;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Lio/netty/util/AsciiString;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder;->validateHeader(ILio/netty/util/AsciiString;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    move-result-object v0

    return-object v0
.end method

.method private decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;)V
    .locals 12
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "sink"    # Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "index":I
    const/4 v1, 0x0

    .line 155
    .local v1, "nameLength":I
    const/4 v2, 0x0

    .line 156
    .local v2, "valueLength":I
    const/4 v3, 0x0

    .line 157
    .local v3, "state":B
    const/4 v4, 0x0

    .line 158
    .local v4, "huffmanEncoded":Z
    const/4 v5, 0x0

    .line 159
    .local v5, "name":Lio/netty/util/AsciiString;
    sget-object v6, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    .line 160
    .local v6, "indexType":Lio/netty/handler/codec/http2/HpackUtil$IndexType;
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_b

    .line 161
    const/4 v7, 0x1

    const/16 v9, 0x80

    packed-switch v3, :pswitch_data_0

    .line 308
    new-instance v7, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "should not reach here state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    if-lt v7, v2, :cond_0

    .line 302
    invoke-direct {p0, p1, v2, v4}, Lio/netty/handler/codec/http2/HpackDecoder;->readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Lio/netty/util/AsciiString;

    move-result-object v7

    .line 303
    .local v7, "value":Lio/netty/util/AsciiString;
    invoke-direct {p0, p2, v5, v7, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V

    .line 304
    const/4 v3, 0x0

    .line 305
    goto :goto_0

    .line 299
    .end local v7    # "value":Lio/netty/util/AsciiString;
    :cond_0
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackDecoder;->notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7

    .line 291
    :pswitch_1
    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v2

    .line 293
    const/16 v3, 0x8

    .line 294
    goto :goto_0

    .line 271
    :pswitch_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v10

    .line 272
    .local v10, "b":B
    and-int/lit16 v11, v10, 0x80

    if-ne v11, v9, :cond_1

    move v8, v7

    :cond_1
    move v4, v8

    .line 273
    and-int/lit8 v0, v10, 0x7f

    .line 274
    sparse-switch v0, :sswitch_data_0

    .line 283
    move v2, v0

    .line 284
    const/16 v3, 0x8

    .line 287
    goto :goto_0

    .line 276
    :sswitch_0
    const/4 v3, 0x7

    .line 277
    goto :goto_0

    .line 279
    :sswitch_1
    sget-object v7, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-direct {p0, p2, v5, v7, v6}, Lio/netty/handler/codec/http2/HpackDecoder;->insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V

    .line 280
    const/4 v3, 0x0

    .line 281
    goto :goto_0

    .line 261
    .end local v10    # "b":B
    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    if-lt v7, v1, :cond_2

    .line 265
    invoke-direct {p0, p1, v1, v4}, Lio/netty/handler/codec/http2/HpackDecoder;->readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Lio/netty/util/AsciiString;

    move-result-object v5

    .line 267
    const/4 v3, 0x6

    .line 268
    goto :goto_0

    .line 262
    :cond_2
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackDecoder;->notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;

    move-result-object v7

    throw v7

    .line 254
    :pswitch_4
    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v1

    .line 256
    const/4 v3, 0x5

    .line 257
    goto :goto_0

    .line 241
    :pswitch_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v10

    .line 242
    .restart local v10    # "b":B
    and-int/lit16 v11, v10, 0x80

    if-ne v11, v9, :cond_3

    move v8, v7

    :cond_3
    move v4, v8

    .line 243
    and-int/lit8 v0, v10, 0x7f

    .line 244
    const/16 v7, 0x7f

    if-ne v0, v7, :cond_4

    .line 245
    const/4 v3, 0x4

    goto/16 :goto_0

    .line 247
    :cond_4
    move v1, v0

    .line 248
    const/4 v3, 0x5

    .line 250
    goto/16 :goto_0

    .line 235
    .end local v10    # "b":B
    :pswitch_6
    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v7

    invoke-direct {p0, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Lio/netty/util/AsciiString;

    move-result-object v5

    .line 236
    invoke-virtual {v5}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    .line 237
    const/4 v3, 0x6

    .line 238
    goto/16 :goto_0

    .line 226
    :pswitch_7
    invoke-static {p1, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;I)I

    move-result v7

    invoke-direct {p0, v7}, Lio/netty/handler/codec/http2/HpackDecoder;->getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v7

    .line 227
    .local v7, "indexedHeader":Lio/netty/handler/codec/http2/HpackHeaderField;
    iget-object v8, v7, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    check-cast v8, Lio/netty/util/AsciiString;

    iget-object v9, v7, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    check-cast v9, Lio/netty/util/AsciiString;

    invoke-virtual {p2, v8, v9}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->appendToHeaderList(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)V

    .line 230
    const/4 v3, 0x0

    .line 231
    goto/16 :goto_0

    .line 163
    .end local v7    # "indexedHeader":Lio/netty/handler/codec/http2/HpackHeaderField;
    :pswitch_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v7

    .line 164
    .local v7, "b":B
    iget-boolean v9, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    const/16 v10, 0x20

    if-eqz v9, :cond_6

    and-int/lit16 v9, v7, 0xe0

    if-ne v9, v10, :cond_5

    goto :goto_1

    .line 166
    :cond_5
    sget-object v8, Lio/netty/handler/codec/http2/HpackDecoder;->MAX_DYNAMIC_TABLE_SIZE_CHANGE_REQUIRED:Lio/netty/handler/codec/http2/Http2Exception;

    throw v8

    .line 168
    :cond_6
    :goto_1
    if-gez v7, :cond_7

    .line 170
    and-int/lit8 v0, v7, 0x7f

    .line 171
    sparse-switch v0, :sswitch_data_1

    .line 178
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v8

    .line 179
    .local v8, "indexedHeader":Lio/netty/handler/codec/http2/HpackHeaderField;
    iget-object v9, v8, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    check-cast v9, Lio/netty/util/AsciiString;

    iget-object v10, v8, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    check-cast v10, Lio/netty/util/AsciiString;

    invoke-virtual {p2, v9, v10}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->appendToHeaderList(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)V

    goto :goto_2

    .line 175
    .end local v8    # "indexedHeader":Lio/netty/handler/codec/http2/HpackHeaderField;
    :sswitch_2
    const/4 v3, 0x1

    .line 176
    goto :goto_2

    .line 173
    :sswitch_3
    sget-object v8, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw v8

    .line 179
    :goto_2
    goto/16 :goto_0

    .line 183
    :cond_7
    and-int/lit8 v9, v7, 0x40

    const/16 v11, 0x40

    if-ne v9, v11, :cond_8

    .line 185
    sget-object v6, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    .line 186
    and-int/lit8 v0, v7, 0x3f

    .line 187
    sparse-switch v0, :sswitch_data_2

    .line 196
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Lio/netty/util/AsciiString;

    move-result-object v5

    .line 197
    invoke-virtual {v5}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    .line 198
    const/4 v3, 0x6

    goto/16 :goto_0

    .line 192
    :sswitch_4
    const/4 v3, 0x2

    .line 193
    goto/16 :goto_0

    .line 189
    :sswitch_5
    const/4 v3, 0x3

    .line 190
    goto/16 :goto_0

    .line 200
    :cond_8
    and-int/lit8 v9, v7, 0x20

    if-eq v9, v10, :cond_a

    .line 207
    and-int/lit8 v8, v7, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_9

    sget-object v8, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NEVER:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    goto :goto_3

    :cond_9
    sget-object v8, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    :goto_3
    move-object v6, v8

    .line 208
    and-int/lit8 v0, v7, 0xf

    .line 209
    sparse-switch v0, :sswitch_data_3

    .line 218
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->readName(I)Lio/netty/util/AsciiString;

    move-result-object v5

    .line 219
    invoke-virtual {v5}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    .line 220
    const/4 v3, 0x6

    .line 223
    goto/16 :goto_0

    .line 214
    :sswitch_6
    const/4 v3, 0x2

    .line 215
    goto/16 :goto_0

    .line 211
    :sswitch_7
    const/4 v3, 0x3

    .line 212
    goto/16 :goto_0

    .line 203
    :cond_a
    sget-object v9, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v10, "Dynamic table size update must happen at the beginning of the header block"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v8}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v8

    throw v8

    .line 312
    .end local v7    # "b":B
    :cond_b
    if-nez v3, :cond_c

    .line 315
    return-void

    .line 313
    :cond_c
    sget-object v7, Lio/netty/handler/codec/http2/Http2Error;->COMPRESSION_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v9, "Incomplete header block fragment."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v9, v8}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v7

    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_5
        0x3f -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_7
        0xf -> :sswitch_6
    .end sparse-switch
.end method

.method private decodeDynamicTableSizeUpdates(Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 141
    nop

    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    move v1, v0

    .local v1, "b":B
    const/16 v2, 0x20

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1

    and-int/lit16 v0, v1, 0xc0

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    .line 143
    and-int/lit8 v0, v1, 0x1f

    .line 144
    .local v0, "index":I
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_0

    .line 145
    int-to-long v2, v0

    invoke-static {p1, v2, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->setDynamicTableSize(J)V

    goto :goto_1

    .line 147
    :cond_0
    int-to-long v2, v0

    invoke-direct {p0, v2, v3}, Lio/netty/handler/codec/http2/HpackDecoder;->setDynamicTableSize(J)V

    .line 149
    .end local v0    # "index":I
    :goto_1
    goto :goto_0

    .line 150
    .end local v1    # "b":B
    :cond_1
    return-void
.end method

.method static decodeULE128(Lio/netty/buffer/ByteBuf;I)I
    .locals 5
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 470
    .local v0, "readerIndex":I
    int-to-long v1, p1

    invoke-static {p0, v1, v2}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeULE128(Lio/netty/buffer/ByteBuf;J)J

    move-result-wide v1

    .line 471
    .local v1, "v":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 480
    long-to-int v3, v1

    return v3

    .line 477
    :cond_0
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 478
    sget-object v3, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_INT_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw v3
.end method

.method static decodeULE128(Lio/netty/buffer/ByteBuf;J)J
    .locals 9
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;
    .param p1, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 489
    const-wide/16 v0, 0x7f

    cmp-long v2, p1, v0

    if-gtz v2, :cond_5

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_5

    .line 490
    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 491
    .local v2, "resultStartedAtZero":Z
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    .line 492
    .local v3, "writerIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .local v4, "readerIndex":I
    const/4 v5, 0x0

    .local v5, "shift":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 493
    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    .line 494
    .local v6, "b":B
    const/16 v7, 0x38

    if-ne v5, v7, :cond_2

    and-int/lit16 v7, v6, 0x80

    if-nez v7, :cond_1

    const/16 v7, 0x7f

    if-ne v6, v7, :cond_2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 502
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_TO_LONG_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw v0

    .line 505
    :cond_2
    :goto_2
    and-int/lit16 v7, v6, 0x80

    if-nez v7, :cond_3

    .line 506
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 507
    int-to-long v7, v6

    and-long/2addr v0, v7

    shl-long/2addr v0, v5

    add-long/2addr v0, p1

    return-wide v0

    .line 509
    :cond_3
    int-to-long v7, v6

    and-long/2addr v7, v0

    shl-long/2addr v7, v5

    add-long/2addr p1, v7

    .line 492
    .end local v6    # "b":B
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x7

    goto :goto_1

    .line 512
    .end local v4    # "readerIndex":I
    .end local v5    # "shift":I
    :cond_4
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->DECODE_ULE_128_DECOMPRESSION_EXCEPTION:Lio/netty/handler/codec/http2/Http2Exception;

    throw v0

    .line 489
    .end local v2    # "resultStartedAtZero":Z
    .end local v3    # "writerIndex":I
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getIndexedHeader(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 424
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    if-gt p1, v0, :cond_0

    .line 425
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    return-object v0

    .line 427
    :cond_0
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 428
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    sget v1, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    return-object v0

    .line 430
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->INDEX_HEADER_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw v0
.end method

.method private insertHeader(Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/handler/codec/http2/HpackUtil$IndexType;)V
    .locals 2
    .param p1, "sink"    # Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;
    .param p2, "name"    # Lio/netty/util/AsciiString;
    .param p3, "value"    # Lio/netty/util/AsciiString;
    .param p4, "indexType"    # Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    .line 434
    invoke-virtual {p1, p2, p3}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->appendToHeaderList(Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;)V

    .line 436
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/Error;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :pswitch_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    new-instance v1, Lio/netty/handler/codec/http2/HpackHeaderField;

    invoke-direct {v1, p2, p3}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->add(Lio/netty/handler/codec/http2/HpackHeaderField;)V

    .line 443
    goto :goto_0

    .line 439
    :pswitch_1
    nop

    .line 448
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static notEnoughDataException(Lio/netty/buffer/ByteBuf;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "in"    # Lio/netty/buffer/ByteBuf;

    .line 460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode only works with an entire header block! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readName(I)Lio/netty/util/AsciiString;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 412
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    if-gt p1, v0, :cond_0

    .line 413
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    .line 414
    .local v0, "hpackHeaderField":Lio/netty/handler/codec/http2/HpackHeaderField;
    iget-object v1, v0, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    check-cast v1, Lio/netty/util/AsciiString;

    return-object v1

    .line 416
    .end local v0    # "hpackHeaderField":Lio/netty/handler/codec/http2/HpackHeaderField;
    :cond_0
    sget v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 417
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    sget v1, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    .line 418
    .restart local v0    # "hpackHeaderField":Lio/netty/handler/codec/http2/HpackHeaderField;
    iget-object v1, v0, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    check-cast v1, Lio/netty/util/AsciiString;

    return-object v1

    .line 420
    .end local v0    # "hpackHeaderField":Lio/netty/handler/codec/http2/HpackHeaderField;
    :cond_1
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->READ_NAME_ILLEGAL_INDEX_VALUE:Lio/netty/handler/codec/http2/Http2Exception;

    throw v0
.end method

.method private readStringLiteral(Lio/netty/buffer/ByteBuf;IZ)Lio/netty/util/AsciiString;
    .locals 3
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I
    .param p3, "huffmanEncoded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 451
    if-eqz p3, :cond_0

    .line 452
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->huffmanDecoder:Lio/netty/handler/codec/http2/HpackHuffmanDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanDecoder;->decode(Lio/netty/buffer/ByteBuf;I)Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    new-array v0, p2, [B

    .line 455
    .local v0, "buf":[B
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 456
    new-instance v1, Lio/netty/util/AsciiString;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lio/netty/util/AsciiString;-><init>([BZ)V

    return-object v1
.end method

.method private setDynamicTableSize(J)V
    .locals 2
    .param p1, "dynamicTableSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 377
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 380
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    .line 382
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    .line 383
    return-void

    .line 378
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder;->INVALID_MAX_DYNAMIC_TABLE_SIZE:Lio/netty/handler/codec/http2/Http2Exception;

    throw v0
.end method

.method private static validateHeader(ILio/netty/util/AsciiString;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;)Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .locals 5
    .param p0, "streamId"    # I
    .param p1, "name"    # Lio/netty/util/AsciiString;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "previousHeaderType"    # Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 387
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 388
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REGULAR_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    if-eq p3, v0, :cond_3

    .line 392
    invoke-static {p1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->getPseudoHeader(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    move-result-object v0

    .line 393
    .local v0, "pseudoHeader":Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->isRequestOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REQUEST_PSEUDO_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    goto :goto_0

    :cond_0
    sget-object v2, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->RESPONSE_PSEUDO_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    .line 395
    .local v2, "currentHeaderType":Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    :goto_0
    if-eqz p3, :cond_2

    if-ne v2, p3, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v4, "Mix of request and response pseudo-headers."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 398
    :cond_2
    :goto_1
    return-object v2

    .line 389
    .end local v0    # "pseudoHeader":Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;
    .end local v2    # "currentHeaderType":Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;
    :cond_3
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "Pseudo-header field \'%s\' found after regular header."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 400
    :cond_4
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->isConnectionHeader(Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 403
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpHeaderValidationUtil;->isTeNotTrailers(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 408
    sget-object v0, Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;->REGULAR_HEADER:Lio/netty/handler/codec/http2/HpackDecoder$HeaderType;

    return-object v0

    .line 404
    :cond_5
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Illegal value specified for the \'TE\' header (only \'trailers\' is allowed)."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v1}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0

    .line 401
    :cond_6
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "Illegal connection-specific header \'%s\' encountered."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method decode(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Z)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "validateHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 127
    new-instance v6, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;

    iget-wide v3, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    move-object v0, v6

    move v1, p1

    move-object v2, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;-><init>(ILio/netty/handler/codec/http2/Http2Headers;JZ)V

    .line 131
    .local v0, "sink":Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/HpackDecoder;->decodeDynamicTableSizeUpdates(Lio/netty/buffer/ByteBuf;)V

    .line 132
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http2/HpackDecoder;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;)V

    .line 136
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDecoder$Http2HeadersSink;->finish()V

    .line 137
    return-void
.end method

.method getHeaderField(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 2
    .param p1, "index"    # I

    .line 373
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http2/HpackDynamicTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    return-object v0
.end method

.method getMaxHeaderListSize()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    return-wide v0
.end method

.method getMaxHeaderTableSize()J
    .locals 2

    .line 352
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->capacity()J

    move-result-wide v0

    return-wide v0
.end method

.method length()I
    .locals 1

    .line 359
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->length()I

    move-result v0

    return v0
.end method

.method setMaxHeaderListSize(J)V
    .locals 5
    .param p1, "maxHeaderListSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 336
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide v3, 0xffffffffL

    if-ltz v2, :cond_0

    cmp-long v2, p1, v3

    if-gtz v2, :cond_0

    .line 340
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxHeaderListSize:J

    .line 341
    return-void

    .line 337
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 338
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 337
    const-string v1, "Header List Size must be >= %d and <= %d but was %d"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method setMaxHeaderTableSize(J)V
    .locals 5
    .param p1, "maxHeaderTableSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 322
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide v3, 0xffffffffL

    if-ltz v2, :cond_1

    cmp-long v2, p1, v3

    if-gtz v2, :cond_1

    .line 326
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    .line 327
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackDecoder;->encoderMaxDynamicTableSize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSizeChangeRequired:Z

    .line 331
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    iget-wide v1, p0, Lio/netty/handler/codec/http2/HpackDecoder;->maxDynamicTableSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/HpackDynamicTable;->setCapacity(J)V

    .line 333
    :cond_0
    return-void

    .line 323
    :cond_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 324
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 323
    const-string v1, "Header Table Size must be >= %d and <= %d but was %d"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method size()J
    .locals 2

    .line 366
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackDecoder;->hpackDynamicTable:Lio/netty/handler/codec/http2/HpackDynamicTable;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackDynamicTable;->size()J

    move-result-wide v0

    return-wide v0
.end method
