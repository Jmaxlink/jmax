.class final Lio/netty/handler/codec/http2/HpackEncoder;
.super Ljava/lang/Object;
.source "HpackEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;,
        Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final HUFF_CODE_THRESHOLD:I = 0x200

.field static final NOT_FOUND:I = -0x1


# instance fields
.field private final hashMask:B

.field private final head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

.field private final hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

.field private final huffCodeThreshold:I

.field private final ignoreMaxHeaderListSize:Z

.field private latest:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

.field private maxHeaderListSize:J

.field private maxHeaderTableSize:J

.field private final nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

.field private final nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 63
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>(Z)V

    .line 90
    return-void
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "ignoreMaxHeaderListSize"    # Z

    .line 96
    const/16 v0, 0x40

    const/16 v1, 0x200

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;-><init>(ZII)V

    .line 97
    return-void
.end method

.method constructor <init>(ZII)V
    .locals 7
    .param p1, "ignoreMaxHeaderListSize"    # Z
    .param p2, "arraySizeHint"    # I
    .param p3, "huffCodeThreshold"    # I

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v6, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    const v4, 0x7fffffff

    const/4 v5, 0x0

    const/4 v1, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;)V

    iput-object v6, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 75
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->latest:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 77
    new-instance v0, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    .line 103
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->ignoreMaxHeaderListSize:Z

    .line 104
    const-wide/16 v0, 0x1000

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    .line 105
    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    .line 108
    const/16 v0, 0x80

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/MathUtil;->findNextPositivePowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    .line 109
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    array-length v0, v0

    new-array v0, v0, [Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 110
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hashMask:B

    .line 111
    iput p3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->huffCodeThreshold:I

    .line 112
    return-void
.end method

.method private addNameEntry(Ljava/lang/CharSequence;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "nameHash"    # I
    .param p3, "nextCounter"    # I

    .line 427
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->bucket(I)I

    move-result v0

    .line 428
    .local v0, "bucket":I
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    new-instance v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    aget-object v3, v3, v0

    invoke-direct {v2, p2, p1, p3, v3}, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;-><init>(ILjava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$NameEntry;)V

    aput-object v2, v1, v0

    .line 429
    return-void
.end method

.method private addNameValueEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "nameHash"    # I
    .param p4, "valueHash"    # I
    .param p5, "nextCounter"    # I

    .line 433
    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->hash(II)I

    move-result v6

    .line 434
    .local v6, "hash":I
    invoke-direct {p0, v6}, Lio/netty/handler/codec/http2/HpackEncoder;->bucket(I)I

    move-result v7

    .line 435
    .local v7, "bucket":I
    new-instance v8, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    aget-object v5, v0, v7

    move-object v0, v8

    move v1, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;ILio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;)V

    .line 436
    .local v0, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    aput-object v0, v1, v7

    .line 437
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->latest:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iput-object v0, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 438
    iput-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->latest:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 439
    return-void
.end method

.method private bucket(I)I
    .locals 1
    .param p1, "h"    # I

    .line 502
    iget-byte v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hashMask:B

    and-int/2addr v0, p1

    return v0
.end method

.method private encodeAndAddEntries(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)V
    .locals 12
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "nameHash"    # I
    .param p4, "value"    # Ljava/lang/CharSequence;
    .param p5, "valueHash"    # I

    .line 208
    move-object v6, p0

    move-object v7, p2

    move v8, p3

    invoke-static {p2}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndex(Ljava/lang/CharSequence;)I

    move-result v9

    .line 209
    .local v9, "staticTableIndex":I
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->latestCounter()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 210
    .local v10, "nextCounter":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_1

    .line 211
    invoke-direct {p0, p2, p3}, Lio/netty/handler/codec/http2/HpackEncoder;->getEntry(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    move-result-object v11

    .line 212
    .local v11, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    if-nez v11, :cond_0

    .line 213
    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    .line 214
    invoke-direct {p0, p2, p3, v10}, Lio/netty/handler/codec/http2/HpackEncoder;->addNameEntry(Ljava/lang/CharSequence;II)V

    .line 215
    move-object v1, p2

    move-object/from16 v2, p4

    move v3, p3

    move/from16 v4, p5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->addNameValueEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 217
    :cond_0
    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    iget v0, v11, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->counter:I

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndexPlusOffset(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    .line 218
    iget-object v1, v11, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->name:Ljava/lang/CharSequence;

    move-object/from16 v2, p4

    move v3, p3

    move/from16 v4, p5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->addNameValueEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    .line 221
    iput v10, v11, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->counter:I

    .line 223
    .end local v11    # "e":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    :goto_0
    goto :goto_1

    .line 224
    :cond_1
    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->INCREMENTAL:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move v5, v9

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    .line 226
    nop

    .line 227
    invoke-static {v9}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    move-result-object v0

    iget-object v1, v0, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    .line 226
    move-object v0, p0

    move-object/from16 v2, p4

    move v3, p3

    move/from16 v4, p5

    move v5, v10

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->addNameValueEntry(Ljava/lang/CharSequence;Ljava/lang/CharSequence;III)V

    .line 229
    :goto_1
    return-void
.end method

.method private encodeHeader(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJ)V
    .locals 16
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;
    .param p4, "sensitive"    # Z
    .param p5, "headerSize"    # J

    .line 163
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v9, p5

    if-eqz p4, :cond_0

    .line 164
    invoke-direct {v6, v8}, Lio/netty/handler/codec/http2/HpackEncoder;->getNameIndex(Ljava/lang/CharSequence;)I

    move-result v11

    .line 165
    .local v11, "nameIndex":I
    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NEVER:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    .line 166
    return-void

    .line 170
    .end local v11    # "nameIndex":I
    :cond_0
    iget-wide v0, v6, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    const/4 v2, 0x7

    const/16 v3, 0x80

    if-nez v0, :cond_2

    .line 171
    invoke-static/range {p2 .. p3}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndexInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v11

    .line 172
    .local v11, "staticTableIndex":I
    if-ne v11, v1, :cond_1

    .line 173
    invoke-static/range {p2 .. p2}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndex(Ljava/lang/CharSequence;)I

    move-result v12

    .line 174
    .local v12, "nameIndex":I
    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    .line 175
    .end local v12    # "nameIndex":I
    goto :goto_0

    .line 176
    :cond_1
    invoke-static {v7, v3, v2, v11}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    .line 178
    :goto_0
    return-void

    .line 182
    .end local v11    # "staticTableIndex":I
    :cond_2
    iget-wide v4, v6, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    cmp-long v0, v9, v4

    if-lez v0, :cond_3

    .line 183
    invoke-direct {v6, v8}, Lio/netty/handler/codec/http2/HpackEncoder;->getNameIndex(Ljava/lang/CharSequence;)I

    move-result v11

    .line 184
    .local v11, "nameIndex":I
    sget-object v4, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->NONE:Lio/netty/handler/codec/http2/HpackUtil$IndexType;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V

    .line 185
    return-void

    .line 188
    .end local v11    # "nameIndex":I
    :cond_3
    invoke-static/range {p2 .. p2}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v11

    .line 189
    .local v11, "nameHash":I
    invoke-static/range {p3 .. p3}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v12

    .line 190
    .local v12, "valueHash":I
    move-object/from16 v13, p3

    invoke-direct {v6, v8, v11, v13, v12}, Lio/netty/handler/codec/http2/HpackEncoder;->getEntryInsensitive(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    move-result-object v14

    .line 191
    .local v14, "headerField":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    if-eqz v14, :cond_4

    .line 193
    iget v0, v14, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->counter:I

    invoke-direct {v6, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndexPlusOffset(I)I

    move-result v0

    invoke-static {v7, v3, v2, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    goto :goto_1

    .line 195
    :cond_4
    invoke-static/range {p2 .. p3}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndexInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v15

    .line 196
    .local v15, "staticTableIndex":I
    if-eq v15, v1, :cond_5

    .line 198
    invoke-static {v7, v3, v2, v15}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    goto :goto_1

    .line 200
    :cond_5
    invoke-direct {v6, v9, v10}, Lio/netty/handler/codec/http2/HpackEncoder;->ensureCapacity(J)V

    .line 201
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move-object/from16 v4, p3

    move v5, v12

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeAndAddEntries(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)V

    .line 202
    iget-wide v0, v6, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    add-long/2addr v0, v9

    iput-wide v0, v6, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    .line 205
    .end local v15    # "staticTableIndex":I
    :goto_1
    return-void
.end method

.method private encodeHeadersEnforceMaxHeaderListSize(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 131
    const-wide/16 v0, 0x0

    .line 133
    .local v0, "headerSize":J
    invoke-interface {p3}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 134
    .local v3, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 135
    .local v4, "name":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 138
    .local v5, "value":Ljava/lang/CharSequence;
    invoke-static {v4, v5}, Lio/netty/handler/codec/http2/HpackHeaderField;->sizeOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 139
    iget-wide v6, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 140
    iget-wide v6, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    const/4 v8, 0x0

    invoke-static {p1, v6, v7, v8}, Lio/netty/handler/codec/http2/Http2CodecUtil;->headerListSizeExceeded(IJZ)V

    .line 142
    .end local v3    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v4    # "name":Ljava/lang/CharSequence;
    .end local v5    # "value":Ljava/lang/CharSequence;
    :cond_0
    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeadersIgnoreMaxHeaderListSize(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    .line 144
    return-void
.end method

.method private encodeHeadersIgnoreMaxHeaderListSize(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 11
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p3, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;

    .line 148
    invoke-interface {p2}, Lio/netty/handler/codec/http2/Http2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 150
    .local v2, "name":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/CharSequence;

    .line 151
    .local v10, "value":Ljava/lang/CharSequence;
    invoke-interface {p3, v2, v10}, Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;->isSensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    .line 152
    invoke-static {v2, v10}, Lio/netty/handler/codec/http2/HpackHeaderField;->sizeOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)J

    move-result-wide v8

    .line 151
    move-object v3, p0

    move-object v4, p1

    move-object v5, v2

    move-object v6, v10

    invoke-direct/range {v3 .. v9}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeader(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJ)V

    .line 153
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v2    # "name":Ljava/lang/CharSequence;
    .end local v10    # "value":Ljava/lang/CharSequence;
    goto :goto_0

    .line 154
    :cond_0
    return-void
.end method

.method private static encodeInteger(Lio/netty/buffer/ByteBuf;III)V
    .locals 2
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "mask"    # I
    .param p2, "n"    # I
    .param p3, "i"    # I

    .line 271
    int-to-long v0, p3

    invoke-static {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;IIJ)V

    .line 272
    return-void
.end method

.method private static encodeInteger(Lio/netty/buffer/ByteBuf;IIJ)V
    .locals 7
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "mask"    # I
    .param p2, "n"    # I
    .param p3, "i"    # J

    .line 278
    if-ltz p2, :cond_2

    const/16 v0, 0x8

    if-gt p2, v0, :cond_2

    .line 279
    rsub-int/lit8 v0, p2, 0x8

    const/16 v1, 0xff

    ushr-int v0, v1, v0

    .line 280
    .local v0, "nbits":I
    int-to-long v1, v0

    cmp-long v1, p3, v1

    if-gez v1, :cond_0

    .line 281
    int-to-long v1, p1

    or-long/2addr v1, p3

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 283
    :cond_0
    or-int v1, p1, v0

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 284
    int-to-long v1, v0

    sub-long v1, p3, v1

    .line 285
    .local v1, "length":J
    :goto_0
    const-wide/16 v3, -0x80

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 286
    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    const-wide/16 v5, 0x80

    or-long/2addr v3, v5

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 285
    const/4 v3, 0x7

    ushr-long/2addr v1, v3

    goto :goto_0

    .line 288
    :cond_1
    long-to-int v3, v1

    invoke-virtual {p0, v3}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 290
    .end local v1    # "length":J
    :goto_1
    return-void

    .line 278
    .end local v0    # "nbits":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "N: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private encodeLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/HpackUtil$IndexType;I)V
    .locals 4
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;
    .param p4, "indexType"    # Lio/netty/handler/codec/http2/HpackUtil$IndexType;
    .param p5, "nameIndex"    # I

    .line 320
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 321
    .local v0, "nameIndexValid":Z
    :goto_0
    sget-object v2, Lio/netty/handler/codec/http2/HpackEncoder$1;->$SwitchMap$io$netty$handler$codec$http2$HpackUtil$IndexType:[I

    invoke-virtual {p4}, Lio/netty/handler/codec/http2/HpackUtil$IndexType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    packed-switch v2, :pswitch_data_0

    .line 332
    new-instance v1, Ljava/lang/Error;

    const-string v2, "should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :pswitch_0
    if-eqz v0, :cond_1

    move v1, p5

    :cond_1
    const/16 v2, 0x10

    invoke-static {p1, v2, v3, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    .line 330
    goto :goto_2

    .line 326
    :pswitch_1
    if-eqz v0, :cond_2

    move v2, p5

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {p1, v1, v3, v2}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    .line 327
    goto :goto_2

    .line 323
    :pswitch_2
    if-eqz v0, :cond_3

    move v1, p5

    :cond_3
    const/16 v2, 0x40

    const/4 v3, 0x6

    invoke-static {p1, v2, v3, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    .line 324
    nop

    .line 334
    :goto_2
    if-nez v0, :cond_4

    .line 335
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeStringLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    .line 337
    :cond_4
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeStringLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    .line 338
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private encodeStringLiteral(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "string"    # Ljava/lang/CharSequence;

    .line 297
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->huffCodeThreshold:I

    const/4 v2, 0x7

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    .line 298
    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->getEncodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    move v1, v0

    .local v1, "huffmanLength":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 299
    const/16 v0, 0x80

    invoke-static {p1, v0, v2, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    .line 300
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->hpackHuffmanEncoder:Lio/netty/handler/codec/http2/HpackHuffmanEncoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/HpackHuffmanEncoder;->encode(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 302
    .end local v1    # "huffmanLength":I
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v2, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;III)V

    .line 303
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_1

    .line 305
    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    .line 306
    .local v0, "asciiString":Lio/netty/util/AsciiString;
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Lio/netty/util/AsciiString;->length()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 307
    .end local v0    # "asciiString":Lio/netty/util/AsciiString;
    goto :goto_0

    .line 310
    :cond_1
    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2, v0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 313
    :goto_0
    return-void
.end method

.method private ensureCapacity(J)V
    .locals 4
    .param p1, "headerSize"    # J

    .line 354
    nop

    :goto_0
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 355
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->remove()V

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method private getEntry(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "nameHash"    # I

    .line 403
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    invoke-direct {p0, p2}, Lio/netty/handler/codec/http2/HpackEncoder;->bucket(I)I

    move-result v1

    aget-object v0, v0, v1

    .local v0, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    :goto_0
    if-eqz v0, :cond_1

    .line 404
    iget v1, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->hash:I

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->name:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Lio/netty/handler/codec/http2/HpackUtil;->equalsConstantTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    return-object v0

    .line 403
    :cond_0
    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    goto :goto_0

    .line 408
    .end local v0    # "e":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getEntryInsensitive(Ljava/lang/CharSequence;ILjava/lang/CharSequence;I)Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "nameHash"    # I
    .param p3, "value"    # Ljava/lang/CharSequence;
    .param p4, "valueHash"    # I

    .line 389
    invoke-static {p2, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->hash(II)I

    move-result v0

    .line 390
    .local v0, "h":I
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->bucket(I)I

    move-result v2

    aget-object v1, v1, v2

    .local v1, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    :goto_0
    if-eqz v1, :cond_1

    .line 391
    iget v2, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->hash:I

    if-ne v2, v0, :cond_0

    iget-object v2, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->value:Ljava/lang/CharSequence;

    invoke-static {p3, v2}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->name:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    return-object v1

    .line 390
    :cond_0
    iget-object v1, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    goto :goto_0

    .line 395
    .end local v1    # "e":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getIndex(I)I
    .locals 1
    .param p1, "counter"    # I

    .line 419
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->latestCounter()I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getIndexPlusOffset(I)I
    .locals 2
    .param p1, "counter"    # I

    .line 412
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndex(I)I

    move-result v0

    sget v1, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getNameIndex(Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 341
    invoke-static {p1}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndex(Ljava/lang/CharSequence;)I

    move-result v0

    .line 342
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 343
    return v0

    .line 345
    :cond_0
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {p0, p1, v2}, Lio/netty/handler/codec/http2/HpackEncoder;->getEntry(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    move-result-object v2

    .line 346
    .local v2, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->counter:I

    invoke-direct {p0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndexPlusOffset(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method private static hash(II)I
    .locals 1
    .param p0, "nameHash"    # I
    .param p1, "valueHash"    # I

    .line 506
    mul-int/lit8 v0, p0, 0x1f

    add-int/2addr v0, p1

    return v0
.end method

.method private isEmpty()Z
    .locals 4

    .line 457
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private latestCounter()I
    .locals 1

    .line 423
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->latest:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->counter:I

    return v0
.end method

.method private remove()V
    .locals 5

    .line 445
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 446
    .local v0, "eldest":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->removeNameValueEntry(Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;)V

    .line 447
    iget-object v1, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->name:Ljava/lang/CharSequence;

    iget v2, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->counter:I

    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/http2/HpackEncoder;->removeNameEntryMatchingCounter(Ljava/lang/CharSequence;I)V

    .line 448
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget-object v2, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iput-object v2, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 449
    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->unlink()V

    .line 450
    iget-wide v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->size()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    .line 451
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iput-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->latest:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 454
    :cond_0
    return-void
.end method

.method private removeNameEntryMatchingCounter(Ljava/lang/CharSequence;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "counter"    # I

    .line 474
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    .line 475
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->bucket(I)I

    move-result v1

    .line 476
    .local v1, "bucket":I
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    aget-object v2, v2, v1

    .line 477
    .local v2, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    if-nez v2, :cond_0

    .line 478
    return-void

    .line 480
    :cond_0
    iget v3, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->counter:I

    if-ne p2, v3, :cond_1

    .line 481
    iget-object v3, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    iget-object v4, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    aput-object v4, v3, v1

    .line 482
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->unlink()V

    goto :goto_1

    .line 484
    :cond_1
    move-object v3, v2

    .line 485
    .local v3, "prev":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    iget-object v2, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    .line 486
    :goto_0
    if-eqz v2, :cond_3

    .line 487
    iget v4, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->counter:I

    if-ne p2, v4, :cond_2

    .line 488
    iget-object v4, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    iput-object v4, v3, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    .line 489
    invoke-virtual {v2}, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->unlink()V

    .line 490
    goto :goto_1

    .line 492
    :cond_2
    move-object v3, v2

    .line 493
    iget-object v2, v2, Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;

    goto :goto_0

    .line 496
    .end local v3    # "prev":Lio/netty/handler/codec/http2/HpackEncoder$NameEntry;
    :cond_3
    :goto_1
    return-void
.end method

.method private removeNameValueEntry(Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;)V
    .locals 4
    .param p1, "eldest"    # Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 461
    iget v0, p1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->hash:I

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->bucket(I)I

    move-result v0

    .line 462
    .local v0, "bucket":I
    iget-object v1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    aget-object v1, v1, v0

    .line 463
    .local v1, "e":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    if-ne v1, p1, :cond_0

    .line 464
    iget-object v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->nameValueEntries:[Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget-object v3, p1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    aput-object v3, v2, v0

    goto :goto_1

    .line 466
    :cond_0
    :goto_0
    iget-object v2, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    if-eq v2, p1, :cond_1

    .line 467
    iget-object v1, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    goto :goto_0

    .line 469
    :cond_1
    iget-object v2, p1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iput-object v2, v1, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->next:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 471
    :goto_1
    return-void
.end method


# virtual methods
.method public encodeHeaders(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "out"    # Lio/netty/buffer/ByteBuf;
    .param p3, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p4, "sensitivityDetector"    # Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->ignoreMaxHeaderListSize:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeadersIgnoreMaxHeaderListSize(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeHeadersEnforceMaxHeaderListSize(ILio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http2/Http2HeadersEncoder$SensitivityDetector;)V

    .line 126
    :goto_0
    return-void
.end method

.method getHeaderField(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 3
    .param p1, "index"    # I

    .line 377
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    .line 378
    .local v0, "entry":Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;
    :goto_0
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 379
    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    move p1, v1

    goto :goto_0

    .line 381
    :cond_0
    return-object v0
.end method

.method public getMaxHeaderListSize()J
    .locals 2

    .line 264
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    return-wide v0
.end method

.method public getMaxHeaderTableSize()J
    .locals 2

    .line 252
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    return-wide v0
.end method

.method length()I
    .locals 1

    .line 363
    invoke-direct {p0}, Lio/netty/handler/codec/http2/HpackEncoder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->head:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget-object v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->after:Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;

    iget v0, v0, Lio/netty/handler/codec/http2/HpackEncoder$NameValueEntry;->counter:I

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/HpackEncoder;->getIndex(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public setMaxHeaderListSize(J)V
    .locals 5
    .param p1, "maxHeaderListSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const-wide v3, 0xffffffffL

    if-ltz v2, :cond_0

    cmp-long v2, p1, v3

    if-gtz v2, :cond_0

    .line 260
    iput-wide p1, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderListSize:J

    .line 261
    return-void

    .line 257
    :cond_0
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 257
    const-string v1, "Header List Size must be >= %d and <= %d but was %d"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method public setMaxHeaderTableSize(Lio/netty/buffer/ByteBuf;J)V
    .locals 5
    .param p1, "out"    # Lio/netty/buffer/ByteBuf;
    .param p2, "maxHeaderTableSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 235
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const-wide v3, 0xffffffffL

    if-ltz v2, :cond_1

    cmp-long v2, p2, v3

    if-gtz v2, :cond_1

    .line 239
    iget-wide v2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    iput-wide p2, p0, Lio/netty/handler/codec/http2/HpackEncoder;->maxHeaderTableSize:J

    .line 243
    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/http2/HpackEncoder;->ensureCapacity(J)V

    .line 245
    const/16 v0, 0x20

    const/4 v1, 0x5

    invoke-static {p1, v0, v1, p2, p3}, Lio/netty/handler/codec/http2/HpackEncoder;->encodeInteger(Lio/netty/buffer/ByteBuf;IIJ)V

    .line 246
    return-void

    .line 236
    :cond_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    .line 237
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 236
    const-string v1, "Header Table Size must be >= %d and <= %d but was %d"

    invoke-static {v2, v1, v0}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    throw v0
.end method

.method size()J
    .locals 2

    .line 370
    iget-wide v0, p0, Lio/netty/handler/codec/http2/HpackEncoder;->size:J

    return-wide v0
.end method
