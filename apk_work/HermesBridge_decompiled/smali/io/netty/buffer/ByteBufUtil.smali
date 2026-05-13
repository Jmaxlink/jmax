.class public final Lio/netty/buffer/ByteBufUtil;
.super Ljava/lang/Object;
.source "ByteBufUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;,
        Lio/netty/buffer/ByteBufUtil$HexUtil;,
        Lio/netty/buffer/ByteBufUtil$SWARByteSearch;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field static final DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

.field private static final FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

.field private static final MAX_BYTES_PER_CHAR_UTF8:I

.field private static final MAX_CHAR_BUFFER_SIZE:I

.field static final MAX_TL_ARRAY_LEN:I = 0x400

.field private static final THREAD_LOCAL_BUFFER_SIZE:I

.field static final WRITE_CHUNK_SIZE:I = 0x2000

.field private static final WRITE_UTF_UNKNOWN:B = 0x3ft

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    nop

    .line 61
    const-class v0, Lio/netty/buffer/ByteBufUtil;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 62
    new-instance v0, Lio/netty/buffer/ByteBufUtil$1;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$1;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;

    .line 72
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {v0}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lio/netty/buffer/ByteBufUtil;->MAX_BYTES_PER_CHAR_UTF8:I

    .line 79
    nop

    .line 80
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isAndroid()Z

    move-result v0

    const-string v1, "unpooled"

    const-string v2, "pooled"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 79
    :goto_0
    const-string v3, "io.netty.allocator.type"

    invoke-static {v3, v0}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "allocType":Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "-Dio.netty.allocator.type: {}"

    if-eqz v1, :cond_1

    .line 85
    sget-object v1, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 86
    .local v1, "alloc":Lio/netty/buffer/ByteBufAllocator;
    sget-object v2, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 87
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 89
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    sget-object v2, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 91
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    :cond_2
    sget-object v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 92
    .restart local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    sget-object v2, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "-Dio.netty.allocator.type: pooled (unknown: {})"

    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    :goto_1
    sput-object v1, Lio/netty/buffer/ByteBufUtil;->DEFAULT_ALLOCATOR:Lio/netty/buffer/ByteBufAllocator;

    .line 97
    const-string v2, "io.netty.threadLocalDirectBufferSize"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    .line 98
    sget-object v2, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.threadLocalDirectBufferSize: {}"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v2, "io.netty.maxThreadLocalCharBufferSize"

    const/16 v3, 0x4000

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lio/netty/buffer/ByteBufUtil;->MAX_CHAR_BUFFER_SIZE:I

    .line 101
    sget-object v2, Lio/netty/buffer/ByteBufUtil;->logger:Lio/netty/util/internal/logging/InternalLogger;

    sget v3, Lio/netty/buffer/ByteBufUtil;->MAX_CHAR_BUFFER_SIZE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "-Dio.netty.maxThreadLocalCharBufferSize: {}"

    invoke-interface {v2, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1764
    .end local v0    # "allocType":Ljava/lang/String;
    .end local v1    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    new-instance v0, Lio/netty/buffer/ByteBufUtil$2;

    invoke-direct {v0}, Lio/netty/buffer/ByteBufUtil$2;-><init>()V

    sput-object v0, Lio/netty/buffer/ByteBufUtil;->FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .line 59
    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    return v0
.end method

.method public static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 1437
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lio/netty/buffer/ByteBufUtil;->appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    .line 1438
    return-void
.end method

.method public static appendPrettyHexDump(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V
    .locals 0
    .param p0, "dump"    # Ljava/lang/StringBuilder;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1446
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$500(Ljava/lang/StringBuilder;Lio/netty/buffer/ByteBuf;II)V

    .line 1447
    return-void
.end method

.method private static checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 749
    sub-int v0, p2, p1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    return-object p0

    .line 750
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= end ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= seq.length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 17
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 425
    return v2

    .line 427
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 428
    .local v3, "aLen":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 429
    .local v4, "bLen":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 430
    .local v5, "minLength":I
    ushr-int/lit8 v6, v5, 0x2

    .line 431
    .local v6, "uintCount":I
    and-int/lit8 v7, v5, 0x3

    .line 432
    .local v7, "byteCount":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    .line 433
    .local v8, "aIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v9

    .line 435
    .local v9, "bIndex":I
    if-lez v6, :cond_6

    .line 436
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v10, v11, :cond_1

    const/4 v2, 0x1

    .line 438
    .local v2, "bufferAIsBigEndian":Z
    :cond_1
    shl-int/lit8 v10, v6, 0x2

    .line 440
    .local v10, "uintCountIncrement":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v12

    if-ne v11, v12, :cond_3

    .line 441
    if-eqz v2, :cond_2

    invoke-static {v0, v1, v8, v9, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    goto :goto_0

    .line 442
    :cond_2
    invoke-static {v0, v1, v8, v9, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintLittleEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    :goto_0
    nop

    .local v11, "res":J
    goto :goto_2

    .line 444
    .end local v11    # "res":J
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v0, v1, v8, v9, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndianA(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    goto :goto_1

    .line 445
    :cond_4
    invoke-static {v0, v1, v8, v9, v10}, Lio/netty/buffer/ByteBufUtil;->compareUintBigEndianB(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J

    move-result-wide v11

    :goto_1
    nop

    .line 447
    .restart local v11    # "res":J
    :goto_2
    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-eqz v13, :cond_5

    .line 449
    const-wide/32 v13, -0x80000000

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move v15, v5

    move/from16 v16, v6

    .end local v5    # "minLength":I
    .end local v6    # "uintCount":I
    .local v15, "minLength":I
    .local v16, "uintCount":I
    const-wide/32 v5, 0x7fffffff

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    return v5

    .line 451
    .end local v15    # "minLength":I
    .end local v16    # "uintCount":I
    .restart local v5    # "minLength":I
    .restart local v6    # "uintCount":I
    :cond_5
    move v15, v5

    move/from16 v16, v6

    .end local v5    # "minLength":I
    .end local v6    # "uintCount":I
    .restart local v15    # "minLength":I
    .restart local v16    # "uintCount":I
    add-int/2addr v8, v10

    .line 452
    add-int/2addr v9, v10

    goto :goto_3

    .line 435
    .end local v2    # "bufferAIsBigEndian":Z
    .end local v10    # "uintCountIncrement":I
    .end local v11    # "res":J
    .end local v15    # "minLength":I
    .end local v16    # "uintCount":I
    .restart local v5    # "minLength":I
    .restart local v6    # "uintCount":I
    :cond_6
    move v15, v5

    move/from16 v16, v6

    .line 455
    .end local v5    # "minLength":I
    .end local v6    # "uintCount":I
    .restart local v15    # "minLength":I
    .restart local v16    # "uintCount":I
    :goto_3
    add-int v2, v8, v7

    .local v2, "aEnd":I
    :goto_4
    if-ge v8, v2, :cond_8

    .line 456
    invoke-virtual {v0, v8}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v5

    invoke-virtual {v1, v9}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v6

    sub-int/2addr v5, v6

    .line 457
    .local v5, "comp":I
    if-eqz v5, :cond_7

    .line 458
    return v5

    .line 455
    .end local v5    # "comp":I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 462
    .end local v2    # "aEnd":I
    :cond_8
    sub-int v2, v3, v4

    return v2
.end method

.method private static compareUintBigEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 7
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 467
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 468
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 469
    .local v3, "comp":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 470
    return-wide v3

    .line 467
    .end local v3    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 473
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method private static compareUintBigEndianA(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 9
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 489
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 490
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v3

    .line 491
    .local v3, "a":J
    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/netty/buffer/ByteBufUtil;->uintFromLE(J)J

    move-result-wide v5

    .line 492
    .local v5, "b":J
    sub-long v7, v3, v5

    .line 493
    .local v7, "comp":J
    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    .line 494
    return-wide v7

    .line 489
    .end local v3    # "a":J
    .end local v5    # "b":J
    .end local v7    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 497
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method private static compareUintBigEndianB(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 9
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 502
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 503
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/netty/buffer/ByteBufUtil;->uintFromLE(J)J

    move-result-wide v3

    .line 504
    .local v3, "a":J
    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v5

    .line 505
    .local v5, "b":J
    sub-long v7, v3, v5

    .line 506
    .local v7, "comp":J
    cmp-long v1, v7, v1

    if-eqz v1, :cond_0

    .line 507
    return-wide v7

    .line 502
    .end local v3    # "a":J
    .end local v5    # "b":J
    .end local v7    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 510
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method private static compareUintLittleEndian(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;III)J
    .locals 7
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;
    .param p2, "aIndex"    # I
    .param p3, "bIndex"    # I
    .param p4, "uintCountIncrement"    # I

    .line 478
    add-int v0, p2, p4

    .local v0, "aEnd":I
    :goto_0
    const-wide/16 v1, 0x0

    if-ge p2, v0, :cond_1

    .line 479
    invoke-virtual {p0, p2}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lio/netty/buffer/ByteBufUtil;->uintFromLE(J)J

    move-result-wide v3

    invoke-virtual {p1, p3}, Lio/netty/buffer/ByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Lio/netty/buffer/ByteBufUtil;->uintFromLE(J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 480
    .local v3, "comp":J
    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    .line 481
    return-wide v3

    .line 478
    .end local v3    # "comp":J
    :cond_0
    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p3, p3, 0x4

    goto :goto_0

    .line 484
    .end local v0    # "aEnd":I
    :cond_1
    return-wide v1
.end method

.method public static copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V
    .locals 3
    .param p0, "src"    # Lio/netty/util/AsciiString;
    .param p1, "srcIdx"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 1409
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p3, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v1, v2, p3}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 1415
    return-void

    .line 1410
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= srcIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcIdx + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcLen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1411
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V
    .locals 3
    .param p0, "src"    # Lio/netty/util/AsciiString;
    .param p1, "srcIdx"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIdx"    # I
    .param p4, "length"    # I

    .line 1392
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    invoke-static {p1, p4, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const-string v0, "dst"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, v1, v2, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1398
    return-void

    .line 1393
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected: 0 <= srcIdx("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcIdx + length("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") <= srcLen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1394
    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "src"    # Lio/netty/util/AsciiString;
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/AsciiString;->length()I

    move-result v1

    invoke-static {p0, v0, p1, v1}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;I)V

    .line 1378
    return-void
.end method

.method public static decodeHexByte(Ljava/lang/CharSequence;I)B
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .line 168
    invoke-static {p0, p1}, Lio/netty/util/internal/StringUtil;->decodeHexByte(Ljava/lang/CharSequence;I)B

    move-result v0

    return v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p0, "hexDump"    # Ljava/lang/CharSequence;

    .line 175
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static decodeHexDump(Ljava/lang/CharSequence;II)[B
    .locals 1
    .param p0, "hexDump"    # Ljava/lang/CharSequence;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 182
    invoke-static {p0, p1, p2}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method static decodeString(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "readerIndex"    # I
    .param p2, "len"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 1288
    if-nez p2, :cond_0

    .line 1289
    const-string v0, ""

    return-object v0

    .line 1294
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1295
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 1296
    .local v0, "array":[B
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v2

    add-int/2addr v2, p1

    .local v2, "offset":I
    goto :goto_0

    .line 1298
    .end local v0    # "array":[B
    .end local v2    # "offset":I
    :cond_1
    invoke-static {p2}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v0

    .line 1299
    .restart local v0    # "array":[B
    const/4 v2, 0x0

    .line 1300
    .restart local v2    # "offset":I
    invoke-virtual {p0, p1, v0, v1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1302
    :goto_0
    sget-object v3, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, p3}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1304
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object v3

    .line 1306
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v2, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 1236
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "src"    # Ljava/nio/CharBuffer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "extraCapacity"    # I

    .line 1249
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method static encodeString0(Lio/netty/buffer/ByteBufAllocator;ZLjava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;
    .locals 9
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "enforceHeap"    # Z
    .param p2, "src"    # Ljava/nio/CharBuffer;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "extraCapacity"    # I

    .line 1254
    invoke-static {p3}, Lio/netty/util/CharsetUtil;->encoder(Ljava/nio/charset/Charset;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 1255
    .local v0, "encoder":Ljava/nio/charset/CharsetEncoder;
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/2addr v1, p4

    .line 1256
    .local v1, "length":I
    const/4 v2, 0x1

    .line 1258
    .local v2, "release":Z
    if-eqz p1, :cond_0

    .line 1259
    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .local v3, "dst":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 1261
    .end local v3    # "dst":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-interface {p0, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 1264
    .restart local v3    # "dst":Lio/netty/buffer/ByteBuf;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1265
    .local v4, "dstBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1266
    .local v5, "pos":I
    const/4 v6, 0x1

    invoke-virtual {v0, p2, v4, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 1267
    .local v6, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1268
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1270
    :cond_1
    invoke-virtual {v0, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v7

    move-object v6, v7

    .line 1271
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1272
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1274
    :cond_2
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v7

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    const/4 v2, 0x0

    .line 1276
    nop

    .line 1280
    if-eqz v2, :cond_3

    .line 1281
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1276
    :cond_3
    return-object v3

    .line 1280
    .end local v4    # "dstBuf":Ljava/nio/ByteBuffer;
    .end local v5    # "pos":I
    .end local v6    # "cr":Ljava/nio/charset/CoderResult;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 1277
    :catch_0
    move-exception v4

    .line 1278
    .local v4, "x":Ljava/nio/charset/CharacterCodingException;
    :try_start_1
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .end local v1    # "length":I
    .end local v2    # "release":Z
    .end local v3    # "dst":Lio/netty/buffer/ByteBuf;
    .end local p0    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .end local p1    # "enforceHeap":Z
    .end local p2    # "src":Ljava/nio/CharBuffer;
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    .end local p4    # "extraCapacity":I
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    .end local v4    # "x":Ljava/nio/charset/CharacterCodingException;
    .restart local v0    # "encoder":Ljava/nio/charset/CharsetEncoder;
    .restart local v1    # "length":I
    .restart local v2    # "release":Z
    .restart local v3    # "dst":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "alloc":Lio/netty/buffer/ByteBufAllocator;
    .restart local p1    # "enforceHeap":Z
    .restart local p2    # "src":Ljava/nio/CharBuffer;
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    .restart local p4    # "extraCapacity":I
    :goto_1
    if-eqz v2, :cond_4

    .line 1281
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1283
    :cond_4
    throw v4
.end method

.method public static ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 126
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    return-object p0

    .line 127
    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0
.end method

.method public static ensureWritableSuccess(I)Z
    .locals 1
    .param p0, "ensureWritableResult"    # I

    .line 193
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z
    .locals 8
    .param p0, "a"    # Lio/netty/buffer/ByteBuf;
    .param p1, "aStartIndex"    # I
    .param p2, "b"    # Lio/netty/buffer/ByteBuf;
    .param p3, "bStartIndex"    # I
    .param p4, "length"    # I

    .line 360
    const-string v0, "a"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    const-string v0, "b"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 363
    const-string v0, "aStartIndex"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 364
    const-string v0, "bStartIndex"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 365
    const-string v0, "length"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p4

    const/4 v1, 0x0

    if-lt v0, p1, :cond_8

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    sub-int/2addr v0, p4

    if-ge v0, p3, :cond_0

    goto :goto_4

    .line 371
    :cond_0
    ushr-int/lit8 v0, p4, 0x3

    .line 372
    .local v0, "longCount":I
    and-int/lit8 v2, p4, 0x7

    .line 374
    .local v2, "byteCount":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 375
    move v3, v0

    .local v3, "i":I
    :goto_0
    if-lez v3, :cond_2

    .line 376
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 377
    return v1

    .line 379
    :cond_1
    add-int/lit8 p1, p1, 0x8

    .line 380
    add-int/lit8 p3, p3, 0x8

    .line 375
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_2
    goto :goto_2

    .line 383
    :cond_3
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    if-lez v3, :cond_5

    .line 384
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/netty/buffer/ByteBufUtil;->swapLong(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 385
    return v1

    .line 387
    :cond_4
    add-int/lit8 p1, p1, 0x8

    .line 388
    add-int/lit8 p3, p3, 0x8

    .line 383
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 392
    .end local v3    # "i":I
    :cond_5
    :goto_2
    move v3, v2

    .restart local v3    # "i":I
    :goto_3
    if-lez v3, :cond_7

    .line 393
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    invoke-virtual {p2, p3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_6

    .line 394
    return v1

    .line 396
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 397
    add-int/lit8 p3, p3, 0x1

    .line 392
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 400
    .end local v3    # "i":I
    :cond_7
    const/4 v1, 0x1

    return v1

    .line 368
    .end local v0    # "longCount":I
    .end local v2    # "byteCount":I
    :cond_8
    :goto_4
    return v1
.end method

.method public static equals(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Z
    .locals 3
    .param p0, "bufferA"    # Lio/netty/buffer/ByteBuf;
    .param p1, "bufferB"    # Lio/netty/buffer/ByteBuf;

    .line 409
    if-ne p0, p1, :cond_0

    .line 410
    const/4 v0, 0x1

    return v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 413
    .local v0, "aLen":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 414
    const/4 v1, 0x0

    return v1

    .line 416
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-static {p0, v1, p1, v2, v0}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1
.end method

.method static firstIndexOf(Lio/netty/buffer/AbstractByteBuf;IIB)I
    .locals 19
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 581
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    move/from16 v4, p1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 582
    .end local p1    # "fromIndex":I
    .local v4, "fromIndex":I
    const/4 v5, -0x1

    if-ge v4, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v6

    if-nez v6, :cond_0

    move v0, v5

    goto/16 :goto_3

    .line 585
    :cond_0
    sub-int v6, v1, v4

    .line 586
    .local v6, "length":I
    invoke-virtual {v0, v4, v6}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 587
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v7

    if-nez v7, :cond_1

    .line 588
    invoke-static {v0, v4, v1, v2}, Lio/netty/buffer/ByteBufUtil;->linearFirstIndexOf(Lio/netty/buffer/AbstractByteBuf;IIB)I

    move-result v3

    return v3

    .line 590
    :cond_1
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->isUnaligned()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 591
    move v7, v4

    .line 592
    .local v7, "offset":I
    and-int/lit8 v8, v6, 0x7

    .line 593
    .local v8, "byteCount":I
    if-lez v8, :cond_3

    .line 594
    invoke-static {v0, v4, v8, v2}, Lio/netty/buffer/ByteBufUtil;->unrolledFirstIndexOf(Lio/netty/buffer/AbstractByteBuf;IIB)I

    move-result v9

    .line 595
    .local v9, "index":I
    if-eq v9, v5, :cond_2

    .line 596
    return v9

    .line 598
    :cond_2
    add-int/2addr v7, v8

    .line 599
    if-ne v7, v1, :cond_3

    .line 600
    return v5

    .line 603
    .end local v9    # "index":I
    :cond_3
    ushr-int/lit8 v9, v6, 0x3

    .line 604
    .local v9, "longCount":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    .line 605
    .local v10, "nativeOrder":Ljava/nio/ByteOrder;
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/AbstractByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    const/4 v12, 0x1

    if-ne v10, v11, :cond_4

    move v11, v12

    goto :goto_0

    :cond_4
    move v11, v3

    .line 606
    .local v11, "isNative":Z
    :goto_0
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v10, v13, :cond_5

    move v3, v12

    .line 607
    .local v3, "useLE":Z
    :cond_5
    invoke-static/range {p3 .. p3}, Lio/netty/buffer/ByteBufUtil$SWARByteSearch;->access$200(B)J

    move-result-wide v12

    .line 608
    .local v12, "pattern":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v9, :cond_8

    .line 610
    if-eqz v3, :cond_6

    invoke-virtual {v0, v7}, Lio/netty/buffer/AbstractByteBuf;->_getLongLE(I)J

    move-result-wide v15

    goto :goto_2

    :cond_6
    invoke-virtual {v0, v7}, Lio/netty/buffer/AbstractByteBuf;->_getLong(I)J

    move-result-wide v15

    :goto_2
    move-wide/from16 v17, v15

    .line 611
    .local v17, "word":J
    move/from16 p1, v6

    move-wide/from16 v5, v17

    .end local v6    # "length":I
    .end local v17    # "word":J
    .local v5, "word":J
    .local p1, "length":I
    invoke-static {v5, v6, v12, v13, v11}, Lio/netty/buffer/ByteBufUtil$SWARByteSearch;->access$300(JJZ)I

    move-result v15

    .line 612
    .local v15, "index":I
    const/16 v0, 0x8

    if-ge v15, v0, :cond_7

    .line 613
    add-int v0, v7, v15

    return v0

    .line 615
    :cond_7
    nop

    .end local v5    # "word":J
    .end local v15    # "index":I
    add-int/lit8 v7, v7, 0x8

    .line 608
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v6, p1

    const/4 v5, -0x1

    goto :goto_1

    .line 617
    .end local v14    # "i":I
    .end local p1    # "length":I
    .restart local v6    # "length":I
    :cond_8
    const/4 v0, -0x1

    return v0

    .line 590
    .end local v3    # "useLE":Z
    .end local v7    # "offset":I
    .end local v8    # "byteCount":I
    .end local v9    # "longCount":I
    .end local v10    # "nativeOrder":Ljava/nio/ByteOrder;
    .end local v11    # "isNative":Z
    .end local v12    # "pattern":J
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 582
    .end local v6    # "length":I
    :cond_a
    move v0, v5

    .line 583
    :goto_3
    return v0
.end method

.method private static getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    .locals 1
    .param p0, "inBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "in"    # [B
    .param p2, "inOffset"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .param p5, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1935
    nop

    :cond_0
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1936
    .local v0, "len":I
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 1937
    invoke-virtual {p4, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1938
    sub-int/2addr p5, v0

    .line 1939
    .end local v0    # "len":I
    if-gtz p5, :cond_0

    .line 1940
    return-void
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;)[B
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 1331
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;II)[B
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 1339
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lio/netty/buffer/ByteBufUtil;->getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Lio/netty/buffer/ByteBuf;IIZ)[B
    .locals 4
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "copy"    # Z

    .line 1349
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    .line 1350
    .local v0, "capacity":I
    invoke-static {p1, p2, v0}, Lio/netty/util/internal/MathUtil;->isOutOfBounds(III)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1355
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1356
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p1

    .line 1357
    .local v1, "baseOffset":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    .line 1358
    .local v2, "bytes":[B
    if-nez p3, :cond_1

    if-nez v1, :cond_1

    array-length v3, v2

    if-eq p2, v3, :cond_0

    goto :goto_0

    .line 1361
    :cond_0
    return-object v2

    .line 1359
    :cond_1
    :goto_0
    add-int v3, v1, p2

    invoke-static {v2, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    return-object v3

    .line 1365
    .end local v1    # "baseOffset":I
    .end local v2    # "bytes":[B
    :cond_2
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v1

    .line 1366
    .local v1, "bytes":[B
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 1367
    return-object v1

    .line 1351
    .end local v1    # "bytes":[B
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected: 0 <= start("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= start + length("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") <= buf.capacity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hashCode(Lio/netty/buffer/ByteBuf;)I
    .locals 8
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 201
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 202
    .local v0, "aLen":I
    ushr-int/lit8 v1, v0, 0x2

    .line 203
    .local v1, "intCount":I
    and-int/lit8 v2, v0, 0x3

    .line 205
    .local v2, "byteCount":I
    const/4 v3, 0x1

    .line 206
    .local v3, "hashCode":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 207
    .local v4, "arrayIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v6, :cond_1

    .line 208
    move v5, v1

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_0

    .line 209
    mul-int/lit8 v6, v3, 0x1f

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    add-int v3, v6, v7

    .line 210
    add-int/lit8 v4, v4, 0x4

    .line 208
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .end local v5    # "i":I
    :cond_0
    goto :goto_2

    .line 213
    :cond_1
    move v5, v1

    .restart local v5    # "i":I
    :goto_1
    if-lez v5, :cond_2

    .line 214
    mul-int/lit8 v6, v3, 0x1f

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v7

    add-int v3, v6, v7

    .line 215
    add-int/lit8 v4, v4, 0x4

    .line 213
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 219
    .end local v5    # "i":I
    :cond_2
    :goto_2
    move v5, v2

    .restart local v5    # "i":I
    :goto_3
    if-lez v5, :cond_3

    .line 220
    mul-int/lit8 v6, v3, 0x1f

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "arrayIndex":I
    .local v7, "arrayIndex":I
    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    add-int v3, v6, v4

    .line 219
    add-int/lit8 v5, v5, -0x1

    move v4, v7

    goto :goto_3

    .line 223
    .end local v5    # "i":I
    .end local v7    # "arrayIndex":I
    .restart local v4    # "arrayIndex":I
    :cond_3
    if-nez v3, :cond_4

    .line 224
    const/4 v3, 0x1

    .line 227
    :cond_4
    return v3
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 137
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 145
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$000(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump([B)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B

    .line 153
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->hexDump([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexDump([BII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [B
    .param p1, "fromIndex"    # I
    .param p2, "length"    # I

    .line 161
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$100([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;IIB)I
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 634
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v0

    return v0
.end method

.method public static indexOf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 21
    .param p0, "needle"    # Lio/netty/buffer/ByteBuf;
    .param p1, "haystack"    # Lio/netty/buffer/ByteBuf;

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, -0x1

    if-eqz v1, :cond_12

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 240
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 241
    return v2

    .line 244
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 245
    .local v3, "n":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 246
    .local v4, "m":I
    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 247
    return v5

    .line 252
    :cond_2
    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 253
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    .line 254
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    .line 253
    invoke-virtual {v1, v2, v5, v6}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v2

    return v2

    .line 258
    :cond_3
    const/4 v7, 0x0

    .line 259
    .local v7, "j":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    .line 260
    .local v8, "aStartIndex":I
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v9

    .line 261
    .local v9, "bStartIndex":I
    invoke-static {v0, v4, v8, v6}, Lio/netty/buffer/ByteBufUtil;->maxSuf(Lio/netty/buffer/ByteBuf;IIZ)J

    move-result-wide v10

    .line 262
    .local v10, "suffixes":J
    invoke-static {v0, v4, v8, v5}, Lio/netty/buffer/ByteBufUtil;->maxSuf(Lio/netty/buffer/ByteBuf;IIZ)J

    move-result-wide v12

    .line 263
    .local v12, "prefixes":J
    const/16 v5, 0x20

    shr-long v14, v10, v5

    long-to-int v14, v14

    move/from16 v16, v7

    .end local v7    # "j":I
    .local v16, "j":I
    shr-long v6, v12, v5

    long-to-int v5, v6

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 264
    .local v5, "ell":I
    long-to-int v6, v10

    long-to-int v7, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 266
    .local v6, "per":I
    sub-int v7, v4, v6

    add-int/lit8 v14, v5, 0x1

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 268
    .local v7, "length":I
    add-int v14, v8, v6

    invoke-static {v0, v8, v0, v14, v7}, Lio/netty/buffer/ByteBufUtil;->equals(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;II)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 269
    const/4 v14, -0x1

    move v15, v14

    move/from16 v14, v16

    .line 270
    .end local v16    # "j":I
    .local v14, "j":I
    .local v15, "memory":I
    :goto_0
    sub-int v2, v3, v4

    if-gt v14, v2, :cond_a

    .line 271
    invoke-static {v5, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 272
    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_4

    move/from16 v17, v7

    .end local v7    # "length":I
    .local v17, "length":I
    add-int v7, v2, v8

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    add-int v18, v2, v14

    move-wide/from16 v19, v10

    .end local v10    # "suffixes":J
    .local v19, "suffixes":J
    add-int v10, v18, v9

    invoke-virtual {v1, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    if-ne v7, v10, :cond_5

    .line 273
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v17

    move-wide/from16 v10, v19

    goto :goto_1

    .line 272
    .end local v17    # "length":I
    .end local v19    # "suffixes":J
    .restart local v7    # "length":I
    .restart local v10    # "suffixes":J
    :cond_4
    move/from16 v17, v7

    move-wide/from16 v19, v10

    .line 275
    .end local v7    # "length":I
    .end local v10    # "suffixes":J
    .restart local v17    # "length":I
    .restart local v19    # "suffixes":J
    :cond_5
    if-le v2, v3, :cond_6

    .line 276
    const/4 v7, -0x1

    return v7

    .line 278
    :cond_6
    if-lt v2, v4, :cond_9

    .line 279
    move v2, v5

    .line 280
    :goto_2
    if-le v2, v15, :cond_7

    add-int v7, v2, v8

    invoke-virtual {v0, v7}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v7

    add-int v10, v2, v14

    add-int/2addr v10, v9

    invoke-virtual {v1, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    if-ne v7, v10, :cond_7

    .line 281
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 283
    :cond_7
    if-gt v2, v15, :cond_8

    .line 284
    add-int v7, v14, v9

    return v7

    .line 286
    :cond_8
    add-int/2addr v14, v6

    .line 287
    sub-int v7, v4, v6

    const/4 v10, 0x1

    add-int/lit8 v15, v7, -0x1

    move/from16 v7, v17

    move-wide/from16 v10, v19

    const/4 v2, -0x1

    goto :goto_0

    .line 289
    :cond_9
    sub-int v10, v2, v5

    add-int/2addr v14, v10

    .line 290
    const/4 v15, -0x1

    move/from16 v7, v17

    move-wide/from16 v10, v19

    const/4 v2, -0x1

    goto :goto_0

    .line 270
    .end local v2    # "i":I
    .end local v17    # "length":I
    .end local v19    # "suffixes":J
    .restart local v7    # "length":I
    .restart local v10    # "suffixes":J
    :cond_a
    move/from16 v17, v7

    move-wide/from16 v19, v10

    .end local v7    # "length":I
    .end local v10    # "suffixes":J
    .restart local v17    # "length":I
    .restart local v19    # "suffixes":J
    goto :goto_6

    .line 294
    .end local v14    # "j":I
    .end local v15    # "memory":I
    .end local v17    # "length":I
    .end local v19    # "suffixes":J
    .restart local v7    # "length":I
    .restart local v10    # "suffixes":J
    .restart local v16    # "j":I
    :cond_b
    move/from16 v17, v7

    move-wide/from16 v19, v10

    .end local v7    # "length":I
    .end local v10    # "suffixes":J
    .restart local v17    # "length":I
    .restart local v19    # "suffixes":J
    add-int/lit8 v2, v5, 0x1

    sub-int v10, v4, v5

    const/4 v7, 0x1

    sub-int/2addr v10, v7

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move/from16 v7, v16

    .line 295
    .end local v16    # "j":I
    .local v7, "j":I
    :goto_3
    sub-int v2, v3, v4

    if-gt v7, v2, :cond_11

    .line 296
    add-int/lit8 v2, v5, 0x1

    .line 297
    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v4, :cond_c

    add-int v10, v2, v8

    invoke-virtual {v0, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    add-int v11, v2, v7

    add-int/2addr v11, v9

    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    if-ne v10, v11, :cond_c

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 300
    :cond_c
    if-le v2, v3, :cond_d

    .line 301
    const/4 v10, -0x1

    return v10

    .line 303
    :cond_d
    if-lt v2, v4, :cond_10

    .line 304
    move v2, v5

    .line 305
    :goto_5
    if-ltz v2, :cond_e

    add-int v10, v2, v8

    invoke-virtual {v0, v10}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v10

    add-int v11, v2, v7

    add-int/2addr v11, v9

    invoke-virtual {v1, v11}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v11

    if-ne v10, v11, :cond_e

    .line 306
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 308
    :cond_e
    if-gez v2, :cond_f

    .line 309
    add-int v10, v7, v9

    return v10

    .line 311
    :cond_f
    add-int/2addr v7, v6

    goto :goto_3

    .line 313
    :cond_10
    sub-int v10, v2, v5

    add-int/2addr v7, v10

    goto :goto_3

    .line 295
    .end local v2    # "i":I
    :cond_11
    move v14, v7

    .line 317
    .end local v7    # "j":I
    .restart local v14    # "j":I
    :goto_6
    const/4 v2, -0x1

    return v2

    .line 237
    .end local v3    # "n":I
    .end local v4    # "m":I
    .end local v5    # "ell":I
    .end local v6    # "per":I
    .end local v8    # "aStartIndex":I
    .end local v9    # "bStartIndex":I
    .end local v12    # "prefixes":J
    .end local v14    # "j":I
    .end local v17    # "length":I
    .end local v19    # "suffixes":J
    :cond_12
    :goto_7
    return v2
.end method

.method public static isAccessible(Lio/netty/buffer/ByteBuf;)Z
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 118
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isAccessible()Z

    move-result v0

    return v0
.end method

.method private static isAscii(Lio/netty/buffer/ByteBuf;II)Z
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1780
    sget-object v0, Lio/netty/buffer/ByteBufUtil;->FIND_NON_ASCII:Lio/netty/util/ByteProcessor;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isText(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Z
    .locals 5
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 1730
    const-string v0, "buf"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1731
    const-string v0, "charset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1732
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    .line 1733
    .local v0, "maxIndex":I
    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    sub-int v1, v0, p2

    if-gt p1, v1, :cond_3

    .line 1736
    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1737
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->isUtf8(Lio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1

    .line 1738
    :cond_0
    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1739
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->isAscii(Lio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1

    .line 1741
    :cond_1
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    invoke-static {p3, v1, v2}, Lio/netty/util/CharsetUtil;->decoder(Ljava/nio/charset/Charset;Ljava/nio/charset/CodingErrorAction;Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 1743
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1744
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 1746
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, p2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1748
    .local v2, "heapBuffer":Lio/netty/buffer/ByteBuf;
    :try_start_1
    invoke-virtual {v2, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1749
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v2, v4, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1751
    :try_start_2
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1752
    nop

    .line 1754
    .end local v2    # "heapBuffer":Lio/netty/buffer/ByteBuf;
    :goto_0
    return v3

    .line 1751
    .restart local v2    # "heapBuffer":Lio/netty/buffer/ByteBuf;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1752
    nop

    .end local v0    # "maxIndex":I
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local p0    # "buf":Lio/netty/buffer/ByteBuf;
    .end local p1    # "index":I
    .end local p2    # "length":I
    .end local p3    # "charset":Ljava/nio/charset/Charset;
    throw v3
    :try_end_2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1755
    .end local v2    # "heapBuffer":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "maxIndex":I
    .restart local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .restart local p0    # "buf":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "index":I
    .restart local p2    # "length":I
    .restart local p3    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v2

    .line 1756
    .local v2, "ignore":Ljava/nio/charset/CharacterCodingException;
    const/4 v3, 0x0

    return v3

    .line 1734
    .end local v1    # "decoder":Ljava/nio/charset/CharsetDecoder;
    .end local v2    # "ignore":Ljava/nio/charset/CharacterCodingException;
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isText(Lio/netty/buffer/ByteBuf;Ljava/nio/charset/Charset;)Z
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1715
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lio/netty/buffer/ByteBufUtil;->isText(Lio/netty/buffer/ByteBuf;IILjava/nio/charset/Charset;)Z

    move-result v0

    return v0
.end method

.method private static isUtf8(Lio/netty/buffer/ByteBuf;II)Z
    .locals 9
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1827
    add-int v0, p1, p2

    .line 1828
    .local v0, "endIndex":I
    :goto_0
    if-ge p1, v0, :cond_12

    .line 1829
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "index":I
    .local v1, "index":I
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result p1

    .line 1831
    .local p1, "b1":B
    and-int/lit16 v2, p1, 0x80

    if-nez v2, :cond_0

    .line 1833
    move p1, v1

    goto :goto_0

    .line 1835
    :cond_0
    and-int/lit16 v2, p1, 0xe0

    const/16 v3, 0xc0

    const/16 v4, 0x80

    const/4 v5, 0x0

    if-ne v2, v3, :cond_4

    .line 1841
    if-lt v1, v0, :cond_1

    .line 1842
    return v5

    .line 1844
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 1845
    .local v1, "b2":B
    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v4, :cond_2

    .line 1846
    return v5

    .line 1848
    :cond_2
    and-int/lit16 v3, p1, 0xff

    const/16 v4, 0xc2

    if-ge v3, v4, :cond_3

    .line 1849
    return v5

    .line 1848
    :cond_3
    move p1, v2

    goto/16 :goto_2

    .line 1851
    .end local v2    # "index":I
    .local v1, "index":I
    :cond_4
    and-int/lit16 v2, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_a

    .line 1860
    add-int/lit8 v2, v0, -0x2

    if-le v1, v2, :cond_5

    .line 1861
    return v5

    .line 1863
    :cond_5
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 1864
    .local v1, "b2":B
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    .line 1865
    .local v2, "b3":B
    and-int/lit16 v6, v1, 0xc0

    if-ne v6, v4, :cond_9

    and-int/lit16 v6, v2, 0xc0

    if-eq v6, v4, :cond_6

    goto :goto_1

    .line 1868
    :cond_6
    and-int/lit8 v4, p1, 0xf

    if-nez v4, :cond_7

    and-int/lit16 v4, v1, 0xff

    const/16 v6, 0xa0

    if-ge v4, v6, :cond_7

    .line 1869
    return v5

    .line 1871
    :cond_7
    and-int/lit8 v4, p1, 0xf

    const/16 v6, 0xd

    if-ne v4, v6, :cond_8

    and-int/lit16 v4, v1, 0xff

    const/16 v6, 0x9f

    if-le v4, v6, :cond_8

    .line 1872
    return v5

    .line 1900
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local p1    # "b1":B
    :cond_8
    move p1, v3

    goto :goto_2

    .line 1866
    .restart local v1    # "b2":B
    .restart local v2    # "b3":B
    .restart local p1    # "b1":B
    :cond_9
    :goto_1
    return v5

    .line 1874
    .end local v2    # "b3":B
    .end local v3    # "index":I
    .local v1, "index":I
    :cond_a
    and-int/lit16 v2, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_11

    .line 1882
    add-int/lit8 v2, v0, -0x3

    if-le v1, v2, :cond_b

    .line 1883
    return v5

    .line 1885
    :cond_b
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 1886
    .local v1, "b2":B
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index":I
    .local v6, "index":I
    invoke-virtual {p0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    .line 1887
    .local v2, "b3":B
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "index":I
    .local v7, "index":I
    invoke-virtual {p0, v6}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v6

    .line 1888
    .local v6, "b4":B
    and-int/lit16 v8, v1, 0xc0

    if-ne v8, v4, :cond_10

    and-int/lit16 v8, v2, 0xc0

    if-ne v8, v4, :cond_10

    and-int/lit16 v8, v6, 0xc0

    if-eq v8, v4, :cond_c

    goto :goto_4

    .line 1892
    :cond_c
    and-int/lit16 v4, p1, 0xff

    const/16 v8, 0xf4

    if-gt v4, v8, :cond_f

    and-int/lit16 v4, p1, 0xff

    if-ne v4, v3, :cond_d

    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x90

    if-lt v3, v4, :cond_f

    :cond_d
    and-int/lit16 v3, p1, 0xff

    if-ne v3, v8, :cond_e

    and-int/lit16 v3, v1, 0xff

    const/16 v4, 0x8f

    if-le v3, v4, :cond_e

    goto :goto_3

    .line 1900
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v6    # "b4":B
    .end local p1    # "b1":B
    :cond_e
    move p1, v7

    .end local v7    # "index":I
    .local p1, "index":I
    :goto_2
    goto/16 :goto_0

    .line 1895
    .restart local v1    # "b2":B
    .restart local v2    # "b3":B
    .restart local v6    # "b4":B
    .restart local v7    # "index":I
    .local p1, "b1":B
    :cond_f
    :goto_3
    return v5

    .line 1890
    :cond_10
    :goto_4
    return v5

    .line 1898
    .end local v2    # "b3":B
    .end local v6    # "b4":B
    .end local v7    # "index":I
    .local v1, "index":I
    :cond_11
    return v5

    .line 1901
    .end local v1    # "index":I
    .local p1, "index":I
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method static lastIndexOf(Lio/netty/buffer/AbstractByteBuf;IIB)I
    .locals 4
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 732
    if-le p1, p2, :cond_4

    .line 733
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->capacity()I

    move-result v0

    .line 734
    .local v0, "capacity":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 735
    const/4 v1, -0x1

    if-ltz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 738
    :cond_0
    sub-int v2, p1, p2

    invoke-virtual {p0, p2, v2}, Lio/netty/buffer/AbstractByteBuf;->checkIndex(II)V

    .line 739
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_2

    .line 740
    invoke-virtual {p0, v2}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v3

    if-ne v3, p3, :cond_1

    .line 741
    return v2

    .line 739
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 745
    .end local v2    # "i":I
    :cond_2
    return v1

    .line 736
    :cond_3
    :goto_1
    return v1

    .line 732
    .end local v0    # "capacity":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static linearFirstIndexOf(Lio/netty/buffer/AbstractByteBuf;IIB)I
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 621
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 622
    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v1

    if-ne v1, p3, :cond_0

    .line 623
    return v0

    .line 621
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private static maxSuf(Lio/netty/buffer/ByteBuf;IIZ)J
    .locals 8
    .param p0, "x"    # Lio/netty/buffer/ByteBuf;
    .param p1, "m"    # I
    .param p2, "start"    # I
    .param p3, "isSuffix"    # Z

    .line 321
    const/4 v0, 0x1

    .line 322
    .local v0, "p":I
    const/4 v1, -0x1

    .line 323
    .local v1, "ms":I
    move v2, p2

    .line 324
    .local v2, "j":I
    const/4 v3, 0x1

    .line 327
    .local v3, "k":I
    :goto_0
    add-int v4, v2, v3

    if-ge v4, p1, :cond_5

    .line 328
    add-int v4, v2, v3

    invoke-virtual {p0, v4}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    .line 329
    .local v4, "a":B
    add-int v5, v1, v3

    invoke-virtual {p0, v5}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    .line 330
    .local v5, "b":B
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_0
    if-le v4, v5, :cond_1

    :goto_1
    move v6, v7

    .line 331
    .local v6, "suffix":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 332
    add-int/2addr v2, v3

    .line 333
    const/4 v3, 0x1

    .line 334
    sub-int v0, v2, v1

    goto :goto_2

    .line 335
    :cond_2
    if-ne v4, v5, :cond_4

    .line 336
    if-eq v3, v0, :cond_3

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 339
    :cond_3
    add-int/2addr v2, v0

    .line 340
    const/4 v3, 0x1

    goto :goto_2

    .line 343
    :cond_4
    move v1, v2

    .line 344
    add-int/lit8 v2, v1, 0x1

    .line 345
    move v0, v7

    move v3, v7

    .line 347
    .end local v6    # "suffix":Z
    :goto_2
    goto :goto_0

    .line 348
    .end local v4    # "a":B
    .end local v5    # "b":B
    :cond_5
    int-to-long v4, v1

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v0

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public static prettyHexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 1421
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyHexDump(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;
    .locals 1
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 1429
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil$HexUtil;->access$400(Lio/netty/buffer/ByteBuf;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readBytes(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 718
    const/4 v0, 0x1

    .line 719
    .local v0, "release":Z
    invoke-interface {p0, p2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 721
    .local v1, "dst":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {p1, v1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    const/4 v0, 0x0

    .line 723
    nop

    .line 725
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 723
    :cond_0
    return-object v1

    .line 725
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 728
    :cond_1
    throw v2
.end method

.method static readBytes(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IILjava/io/OutputStream;)V
    .locals 8
    .param p0, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1910
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1911
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p4, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1913
    :cond_0
    const/16 v0, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1914
    .local v0, "chunkLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1916
    const/16 v1, 0x400

    if-le p3, v1, :cond_2

    invoke-interface {p0}, Lio/netty/buffer/ByteBufAllocator;->isDirectBufferPooled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1920
    :cond_1
    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 1922
    .local v7, "tmpBuf":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    .line 1923
    .local v2, "tmp":[B
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    .line 1924
    .local v3, "offset":I
    move-object v1, p1

    move v4, v0

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1926
    .end local v2    # "tmp":[B
    .end local v3    # "offset":I
    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1927
    goto :goto_1

    .line 1926
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 1927
    throw v1

    .line 1917
    .end local v7    # "tmpBuf":Lio/netty/buffer/ByteBuf;
    :cond_2
    :goto_0
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->threadLocalTempArray(I)[B

    move-result-object v2

    const/4 v3, 0x0

    move-object v1, p1

    move v4, v0

    move-object v5, p4

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->getBytes(Ljava/nio/ByteBuffer;[BIILjava/io/OutputStream;I)V

    .line 1930
    .end local v0    # "chunkLen":I
    :goto_1
    return-void
.end method

.method public static readIntBE(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 710
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapInt(I)I

    move-result v0

    .line 710
    :goto_0
    return v0
.end method

.method public static readUnsignedShortBE(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 701
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    goto :goto_0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 701
    :goto_0
    return v0
.end method

.method public static reserveAndWriteUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;I)I
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "reserveBytes"    # I

    .line 803
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method public static reserveAndWriteUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "reserveBytes"    # I

    .line 814
    invoke-static {p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method private static reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I
    .locals 7
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "reserveBytes"    # I

    .line 819
    nop

    :goto_0
    instance-of v0, p0, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 822
    :cond_0
    instance-of v0, p0, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v0, :cond_1

    .line 823
    move-object v0, p0

    check-cast v0, Lio/netty/buffer/AbstractByteBuf;

    .line 824
    .local v0, "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    invoke-virtual {v0, p4}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 825
    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    move-object v1, v0

    move v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;IILjava/lang/CharSequence;II)I

    move-result v1

    .line 826
    .local v1, "written":I
    iget v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 827
    return v1

    .line 828
    .end local v0    # "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    .end local v1    # "written":I
    :cond_1
    instance-of v0, p0, Lio/netty/buffer/WrappedByteBuf;

    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 832
    :cond_2
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 833
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 834
    array-length v1, v0

    return v1
.end method

.method private static safeArrayWriteUtf8([BILjava/lang/CharSequence;II)I
    .locals 9
    .param p0, "buffer"    # [B
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 990
    move v0, p1

    .line 991
    .local v0, "oldWriterIndex":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_7

    .line 992
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 993
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 994
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v3, "writerIndex":I
    int-to-byte v4, v2

    aput-byte v4, p0, p1

    move p1, v3

    goto/16 :goto_3

    .line 995
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 996
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v5, v2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, p0, p1

    .line 997
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v4

    goto/16 :goto_3

    .line 998
    :cond_1
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v4

    const/16 v5, 0x3f

    if-eqz v4, :cond_6

    .line 999
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1000
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    aput-byte v5, p0, p1

    .line 1001
    move p1, v3

    goto :goto_3

    .line 1004
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p4, :cond_3

    .line 1005
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    aput-byte v5, p0, p1

    .line 1006
    move p1, v3

    goto :goto_4

    .line 1008
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1011
    .local v4, "c2":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1012
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    aput-byte v5, p0, p1

    .line 1013
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    int-to-byte v5, v5

    aput-byte v5, p0, v3

    goto :goto_2

    .line 1015
    :cond_5
    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 1017
    .local v6, "codePoint":I
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v7, "writerIndex":I
    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, p0, p1

    .line 1018
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v8, v6, 0xc

    and-int/2addr v8, v5

    or-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, p0, v7

    .line 1019
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v7    # "writerIndex":I
    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v5, v8

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p0, p1

    .line 1020
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v7

    .line 1022
    .end local v4    # "c2":C
    .end local v6    # "codePoint":I
    :goto_2
    goto :goto_3

    .line 1023
    :cond_6
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v6, v2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, p0, p1

    .line 1024
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 1025
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v4    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, p1

    move p1, v4

    .line 991
    .end local v2    # "c":C
    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1028
    .end local v1    # "i":I
    :cond_7
    :goto_4
    sub-int v1, p1, v0

    return v1
.end method

.method private static safeDirectWriteUtf8(Ljava/nio/ByteBuffer;ILjava/lang/CharSequence;II)I
    .locals 9
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 896
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-nez v0, :cond_8

    .line 897
    move v0, p1

    .line 901
    .local v0, "oldWriterIndex":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_7

    .line 902
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 903
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 904
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v3, "writerIndex":I
    int-to-byte v4, v2

    invoke-virtual {p0, p1, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move p1, v3

    goto/16 :goto_3

    .line 905
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 906
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v5, v2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {p0, p1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 907
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, v4, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto/16 :goto_3

    .line 908
    :cond_1
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v4

    const/16 v5, 0x3f

    if-eqz v4, :cond_6

    .line 909
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 910
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 911
    move p1, v3

    goto/16 :goto_3

    .line 914
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p4, :cond_3

    .line 915
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 916
    move p1, v3

    goto :goto_4

    .line 920
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 921
    .local v4, "c2":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 922
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 923
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    int-to-byte v5, v4

    :goto_1
    invoke-virtual {p0, v3, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 925
    :cond_5
    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 927
    .local v6, "codePoint":I
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v7, "writerIndex":I
    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    invoke-virtual {p0, p1, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 928
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v8, v6, 0xc

    and-int/2addr v8, v5

    or-int/2addr v8, v3

    int-to-byte v8, v8

    invoke-virtual {p0, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 929
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v7    # "writerIndex":I
    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v5, v8

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p0, p1, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 930
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, v7, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 932
    .end local v4    # "c2":C
    .end local v6    # "codePoint":I
    :goto_2
    goto :goto_3

    .line 933
    :cond_6
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v6, v2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    invoke-virtual {p0, p1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 934
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p0, v4, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 935
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v4    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, p1, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move p1, v4

    .line 901
    .end local v2    # "c":C
    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 938
    .end local v1    # "i":I
    :cond_7
    :goto_4
    sub-int v1, p1, v0

    return v1

    .line 896
    .end local v0    # "oldWriterIndex":I
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static safeWriteUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I
    .locals 9
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 943
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-nez v0, :cond_8

    .line 944
    move v0, p1

    .line 948
    .local v0, "oldWriterIndex":I
    move v1, p3

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_7

    .line 949
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 950
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    .line 951
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v3, "writerIndex":I
    int-to-byte v4, v2

    invoke-virtual {p0, p1, v4}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move p1, v3

    goto/16 :goto_3

    .line 952
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    .line 953
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v5, v2, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 954
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, v4, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    goto/16 :goto_3

    .line 955
    :cond_1
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v4

    const/16 v5, 0x3f

    if-eqz v4, :cond_6

    .line 956
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 957
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 958
    move p1, v3

    goto/16 :goto_3

    .line 961
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p4, :cond_3

    .line 962
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 963
    move p1, v3

    goto :goto_4

    .line 967
    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_3
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 968
    .local v4, "c2":C
    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 969
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v3    # "writerIndex":I
    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 970
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    :goto_1
    invoke-virtual {p0, v3, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    goto :goto_2

    .line 972
    :cond_5
    invoke-static {v2, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 974
    .local v6, "codePoint":I
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v7, "writerIndex":I
    shr-int/lit8 v8, v6, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    invoke-virtual {p0, p1, v8}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 975
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v8, v6, 0xc

    and-int/2addr v8, v5

    or-int/2addr v8, v3

    int-to-byte v8, v8

    invoke-virtual {p0, v7, v8}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 976
    add-int/lit8 v7, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v7    # "writerIndex":I
    shr-int/lit8 v8, v6, 0x6

    and-int/2addr v5, v8

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p0, p1, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 977
    add-int/lit8 p1, v7, 0x1

    .end local v7    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    and-int/lit8 v5, v6, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, v7, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 979
    .end local v4    # "c2":C
    .end local v6    # "codePoint":I
    :goto_2
    goto :goto_3

    .line 980
    :cond_6
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v4, "writerIndex":I
    shr-int/lit8 v6, v2, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    invoke-virtual {p0, p1, v6}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 981
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    shr-int/lit8 v6, v2, 0x6

    and-int/2addr v5, v6

    or-int/2addr v5, v3

    int-to-byte v5, v5

    invoke-virtual {p0, v4, v5}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 982
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "writerIndex":I
    .restart local v4    # "writerIndex":I
    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v3, v5

    int-to-byte v3, v3

    invoke-virtual {p0, p1, v3}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    move p1, v4

    .line 948
    .end local v2    # "c":C
    .end local v4    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 985
    .end local v1    # "i":I
    :cond_7
    :goto_4
    sub-int v1, p1, v0

    return v1

    .line 943
    .end local v0    # "oldWriterIndex":I
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static setLeakListener(Lio/netty/util/ResourceLeakDetector$LeakListener;)V
    .locals 1
    .param p0, "leakListener"    # Lio/netty/util/ResourceLeakDetector$LeakListener;

    .line 1948
    sget-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->setLeakListener(Lio/netty/util/ResourceLeakDetector$LeakListener;)V

    .line 1949
    return-void
.end method

.method public static setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "index"    # I
    .param p2, "shortValue"    # I

    .line 683
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    int-to-short v0, p2

    .line 684
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 683
    :goto_0
    return-object v0
.end method

.method public static swapInt(I)I
    .locals 1
    .param p0, "value"    # I

    .line 659
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static swapLong(J)J
    .locals 2
    .param p0, "value"    # J

    .line 666
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static swapMedium(I)I
    .locals 2
    .param p0, "value"    # I

    .line 648
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 649
    .local v0, "swapped":I
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 650
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 652
    :cond_0
    return v0
.end method

.method public static swapShort(S)S
    .locals 1
    .param p0, "value"    # S

    .line 641
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    return v0
.end method

.method public static threadLocalDirectBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 1315
    sget v0, Lio/netty/buffer/ByteBufUtil;->THREAD_LOCAL_BUFFER_SIZE:I

    if-gtz v0, :cond_0

    .line 1316
    const/4 v0, 0x0

    return-object v0

    .line 1319
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalUnsafeDirectByteBuf;

    move-result-object v0

    return-object v0

    .line 1322
    :cond_1
    invoke-static {}, Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;->newInstance()Lio/netty/buffer/ByteBufUtil$ThreadLocalDirectByteBuf;

    move-result-object v0

    return-object v0
.end method

.method static threadLocalTempArray(I)[B
    .locals 1
    .param p0, "minLength"    # I

    .line 110
    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    sget-object v0, Lio/netty/buffer/ByteBufUtil;->BYTE_ARRAYS:Lio/netty/util/concurrent/FastThreadLocal;

    invoke-virtual {v0}, Lio/netty/util/concurrent/FastThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    .line 111
    :cond_0
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    .line 110
    :goto_0
    return-object v0
.end method

.method private static uintFromLE(J)J
    .locals 3
    .param p0, "value"    # J

    .line 514
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method private static unrolledFirstIndexOf(Lio/netty/buffer/AbstractByteBuf;IIB)I
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "fromIndex"    # I
    .param p2, "byteCount"    # I
    .param p3, "value"    # B

    .line 533
    if-lez p2, :cond_d

    const/16 v0, 0x8

    if-ge p2, v0, :cond_d

    .line 534
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_0

    .line 535
    return p1

    .line 537
    :cond_0
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v0, :cond_1

    .line 538
    return v1

    .line 540
    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_2

    .line 541
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 543
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 544
    return v1

    .line 546
    :cond_3
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_4

    .line 547
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 549
    :cond_4
    const/4 v0, 0x3

    if-ne p2, v0, :cond_5

    .line 550
    return v1

    .line 552
    :cond_5
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_6

    .line 553
    add-int/lit8 v0, p1, 0x3

    return v0

    .line 555
    :cond_6
    const/4 v0, 0x4

    if-ne p2, v0, :cond_7

    .line 556
    return v1

    .line 558
    :cond_7
    add-int/lit8 v0, p1, 0x4

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_8

    .line 559
    add-int/lit8 v0, p1, 0x4

    return v0

    .line 561
    :cond_8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_9

    .line 562
    return v1

    .line 564
    :cond_9
    add-int/lit8 v0, p1, 0x5

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_a

    .line 565
    add-int/lit8 v0, p1, 0x5

    return v0

    .line 567
    :cond_a
    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    .line 568
    return v1

    .line 570
    :cond_b
    add-int/lit8 v0, p1, 0x6

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBuf;->_getByte(I)B

    move-result v0

    if-ne v0, p3, :cond_c

    .line 571
    add-int/lit8 v0, p1, 0x6

    return v0

    .line 573
    :cond_c
    return v1

    .line 533
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static unsafeWriteUtf8([BJILjava/lang/CharSequence;II)I
    .locals 17
    .param p0, "buffer"    # [B
    .param p1, "memoryOffset"    # J
    .param p3, "writerIndex"    # I
    .param p4, "seq"    # Ljava/lang/CharSequence;
    .param p5, "start"    # I
    .param p6, "end"    # I

    .line 1034
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p6

    instance-of v3, v1, Lio/netty/util/AsciiString;

    if-nez v3, :cond_8

    .line 1035
    move/from16 v3, p3

    int-to-long v4, v3

    add-long v4, p1, v4

    .line 1036
    .local v4, "writerOffset":J
    move-wide v6, v4

    .line 1037
    .local v6, "oldWriterOffset":J
    move/from16 v8, p5

    .local v8, "i":I
    :goto_0
    if-ge v8, v2, :cond_7

    .line 1038
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 1039
    .local v9, "c":C
    const/16 v10, 0x80

    const-wide/16 v11, 0x1

    if-ge v9, v10, :cond_0

    .line 1040
    add-long/2addr v11, v4

    .end local v4    # "writerOffset":J
    .local v11, "writerOffset":J
    int-to-byte v10, v9

    invoke-static {v0, v4, v5, v10}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    move-wide v4, v11

    goto/16 :goto_3

    .line 1041
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :cond_0
    const/16 v13, 0x800

    if-ge v9, v13, :cond_1

    .line 1042
    add-long v13, v4, v11

    .end local v4    # "writerOffset":J
    .local v13, "writerOffset":J
    shr-int/lit8 v15, v9, 0x6

    or-int/lit16 v15, v15, 0xc0

    int-to-byte v15, v15

    invoke-static {v0, v4, v5, v15}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1043
    add-long/2addr v11, v13

    .end local v13    # "writerOffset":J
    .restart local v11    # "writerOffset":J
    and-int/lit8 v4, v9, 0x3f

    or-int/2addr v4, v10

    int-to-byte v4, v4

    invoke-static {v0, v13, v14, v4}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    move-wide v4, v11

    goto/16 :goto_3

    .line 1044
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :cond_1
    invoke-static {v9}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v13

    const/16 v14, 0x3f

    if-eqz v13, :cond_6

    .line 1045
    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1046
    add-long/2addr v11, v4

    .end local v4    # "writerOffset":J
    .restart local v11    # "writerOffset":J
    invoke-static {v0, v4, v5, v14}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1047
    move-wide v4, v11

    goto/16 :goto_3

    .line 1050
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :cond_2
    add-int/lit8 v8, v8, 0x1

    if-ne v8, v2, :cond_3

    .line 1051
    add-long/2addr v11, v4

    .end local v4    # "writerOffset":J
    .restart local v11    # "writerOffset":J
    invoke-static {v0, v4, v5, v14}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1052
    move-wide v4, v11

    goto/16 :goto_4

    .line 1054
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :cond_3
    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    .line 1057
    .local v13, "c2":C
    invoke-static {v13}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v15

    if-nez v15, :cond_5

    .line 1058
    add-long v1, v4, v11

    .end local v4    # "writerOffset":J
    .local v1, "writerOffset":J
    invoke-static {v0, v4, v5, v14}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1059
    add-long/2addr v11, v1

    .line 1060
    .end local v1    # "writerOffset":J
    .restart local v11    # "writerOffset":J
    invoke-static {v13}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    move v14, v13

    :goto_1
    int-to-byte v4, v14

    .line 1059
    invoke-static {v0, v1, v2, v4}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    goto :goto_2

    .line 1062
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :cond_5
    invoke-static {v9, v13}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    .line 1064
    .local v1, "codePoint":I
    add-long v14, v4, v11

    .end local v4    # "writerOffset":J
    .local v14, "writerOffset":J
    shr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    invoke-static {v0, v4, v5, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1065
    add-long v4, v14, v11

    .end local v14    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    shr-int/lit8 v2, v1, 0xc

    const/16 v16, 0x3f

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v10

    int-to-byte v2, v2

    invoke-static {v0, v14, v15, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1066
    add-long v14, v4, v11

    .end local v4    # "writerOffset":J
    .restart local v14    # "writerOffset":J
    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v10

    int-to-byte v2, v2

    invoke-static {v0, v4, v5, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1067
    add-long/2addr v11, v14

    .end local v14    # "writerOffset":J
    .restart local v11    # "writerOffset":J
    and-int/lit8 v2, v1, 0x3f

    or-int/2addr v2, v10

    int-to-byte v2, v2

    invoke-static {v0, v14, v15, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1069
    .end local v1    # "codePoint":I
    .end local v13    # "c2":C
    :goto_2
    move-wide v4, v11

    goto :goto_3

    .line 1070
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :cond_6
    add-long v13, v4, v11

    .end local v4    # "writerOffset":J
    .local v13, "writerOffset":J
    shr-int/lit8 v1, v9, 0xc

    or-int/lit16 v1, v1, 0xe0

    int-to-byte v1, v1

    invoke-static {v0, v4, v5, v1}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1071
    add-long v4, v13, v11

    .end local v13    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    shr-int/lit8 v1, v9, 0x6

    const/16 v2, 0x3f

    and-int/2addr v1, v2

    or-int/2addr v1, v10

    int-to-byte v1, v1

    invoke-static {v0, v13, v14, v1}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    .line 1072
    add-long/2addr v11, v4

    .end local v4    # "writerOffset":J
    .restart local v11    # "writerOffset":J
    and-int/lit8 v1, v9, 0x3f

    or-int/2addr v1, v10

    int-to-byte v1, v1

    invoke-static {v0, v4, v5, v1}, Lio/netty/util/internal/PlatformDependent;->putByte(Ljava/lang/Object;JB)V

    move-wide v4, v11

    .line 1037
    .end local v9    # "c":C
    .end local v11    # "writerOffset":J
    .restart local v4    # "writerOffset":J
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p4

    move/from16 v2, p6

    goto/16 :goto_0

    .line 1075
    .end local v8    # "i":I
    :cond_7
    :goto_4
    sub-long v1, v4, v6

    long-to-int v1, v1

    return v1

    .line 1034
    .end local v4    # "writerOffset":J
    .end local v6    # "oldWriterOffset":J
    :cond_8
    move/from16 v3, p3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private static utf8ByteCount(Ljava/lang/CharSequence;II)I
    .locals 3
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1117
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 1118
    sub-int v0, p2, p1

    return v0

    .line 1120
    :cond_0
    move v0, p1

    .line 1122
    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x80

    if-ge v1, v2, :cond_1

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1126
    :cond_1
    sub-int v1, v0, p1

    if-ge v0, p2, :cond_2

    invoke-static {p0, v0, p2}, Lio/netty/buffer/ByteBufUtil;->utf8BytesNonAscii(Ljava/lang/CharSequence;II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    return v1
.end method

.method public static utf8Bytes(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 1103
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lio/netty/buffer/ByteBufUtil;->utf8ByteCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static utf8Bytes(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1113
    invoke-static {p0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lio/netty/buffer/ByteBufUtil;->utf8ByteCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private static utf8BytesNonAscii(Ljava/lang/CharSequence;II)I
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "encodedLength":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_5

    .line 1132
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1134
    .local v2, "c":C
    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    .line 1136
    rsub-int/lit8 v3, v2, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    goto :goto_1

    .line 1137
    :cond_0
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1138
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1139
    add-int/lit8 v0, v0, 0x1

    .line 1141
    goto :goto_1

    .line 1144
    :cond_1
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p2, :cond_2

    .line 1145
    add-int/lit8 v0, v0, 0x1

    .line 1147
    goto :goto_2

    .line 1149
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1151
    add-int/lit8 v0, v0, 0x2

    .line 1152
    goto :goto_1

    .line 1155
    :cond_3
    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    .line 1157
    :cond_4
    add-int/lit8 v0, v0, 0x3

    .line 1131
    .end local v2    # "c":C
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1160
    .end local v1    # "i":I
    :cond_5
    :goto_2
    return v0
.end method

.method public static utf8MaxBytes(I)I
    .locals 1
    .param p0, "seqLength"    # I

    .line 1082
    sget v0, Lio/netty/buffer/ByteBufUtil;->MAX_BYTES_PER_CHAR_UTF8:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public static utf8MaxBytes(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 1091
    instance-of v0, p0, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 1092
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0

    .line 1094
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v0

    return v0
.end method

.method static writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "len"    # I

    .line 1214
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 1215
    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p3}, Lio/netty/buffer/ByteBufUtil;->writeAsciiString(Lio/netty/buffer/AbstractByteBuf;ILio/netty/util/AsciiString;II)V

    goto :goto_0

    .line 1217
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->writeAsciiCharSequence(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I

    .line 1219
    :goto_0
    return p3
.end method

.method public static writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 1187
    nop

    :goto_0
    instance-of v0, p0, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v0, :cond_0

    .line 1189
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 1190
    :cond_0
    instance-of v0, p0, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v0, :cond_3

    .line 1191
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1192
    .local v0, "len":I
    move-object v1, p0

    check-cast v1, Lio/netty/buffer/AbstractByteBuf;

    .line 1193
    .local v1, "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    invoke-virtual {v1, v0}, Lio/netty/buffer/AbstractByteBuf;->ensureWritable0(I)V

    .line 1194
    instance-of v2, p1, Lio/netty/util/AsciiString;

    if-eqz v2, :cond_1

    .line 1195
    iget v2, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    move-object v3, p1

    check-cast v3, Lio/netty/util/AsciiString;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lio/netty/buffer/ByteBufUtil;->writeAsciiString(Lio/netty/buffer/AbstractByteBuf;ILio/netty/util/AsciiString;II)V

    goto :goto_1

    .line 1197
    :cond_1
    iget v2, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    invoke-static {v1, v2, p1, v0}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I

    move-result v2

    .line 1198
    .local v2, "written":I
    if-ne v2, v0, :cond_2

    .line 1200
    .end local v2    # "written":I
    :goto_1
    iget v2, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    add-int/2addr v2, v0

    iput v2, v1, Lio/netty/buffer/AbstractByteBuf;->writerIndex:I

    .line 1201
    return v0

    .line 1198
    .restart local v2    # "written":I
    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1202
    .end local v0    # "len":I
    .end local v1    # "byteBuf":Lio/netty/buffer/AbstractByteBuf;
    .end local v2    # "written":I
    :cond_3
    instance-of v0, p0, Lio/netty/buffer/WrappedByteBuf;

    if-eqz v0, :cond_4

    .line 1204
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object p0

    goto :goto_0

    .line 1206
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 1207
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 1208
    array-length v1, v0

    return v1
.end method

.method public static writeAscii(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 1173
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1174
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0, p1}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 1175
    return-object v0
.end method

.method private static writeAsciiCharSequence(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;I)I
    .locals 3
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Ljava/lang/CharSequence;
    .param p3, "len"    # I

    .line 1225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 1226
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "writerIndex":I
    .local v1, "writerIndex":I
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/netty/util/AsciiString;->c2b(C)B

    move-result v2

    invoke-virtual {p0, p1, v2}, Lio/netty/buffer/AbstractByteBuf;->_setByte(II)V

    .line 1225
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_0

    .line 1228
    .end local v0    # "i":I
    .end local v1    # "writerIndex":I
    .restart local p1    # "writerIndex":I
    :cond_0
    return p3
.end method

.method static writeAsciiString(Lio/netty/buffer/AbstractByteBuf;ILio/netty/util/AsciiString;II)V
    .locals 8
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "seq"    # Lio/netty/util/AsciiString;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 874
    invoke-virtual {p2}, Lio/netty/util/AsciiString;->arrayOffset()I

    move-result v0

    add-int/2addr v0, p3

    .line 875
    .local v0, "begin":I
    sub-int v7, p4, p3

    .line 876
    .local v7, "length":I
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 878
    invoke-virtual {p2}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    .line 879
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v3

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->arrayOffset()I

    move-result v2

    add-int v4, v2, p1

    int-to-long v5, v7

    .line 878
    move v2, v0

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BI[BIJ)V

    .line 880
    return-void

    .line 882
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->hasMemoryAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 883
    invoke-virtual {p2}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p1

    add-long v3, v2, v4

    int-to-long v5, v7

    move v2, v0

    invoke-static/range {v1 .. v6}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 884
    return-void

    .line 887
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    invoke-virtual {p2}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p1

    invoke-static {v1, v0, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 889
    return-void

    .line 891
    :cond_2
    invoke-virtual {p2}, Lio/netty/util/AsciiString;->array()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0, v7}, Lio/netty/buffer/AbstractByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 892
    return-void
.end method

.method public static writeMediumBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "mediumValue"    # I

    .line 692
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    .line 693
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->swapMedium(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0
.end method

.method public static writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "shortValue"    # I

    .line 674
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    int-to-short v0, p1

    .line 675
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->swapShort(S)S

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0
.end method

.method static writeUtf8(Lio/netty/buffer/AbstractByteBuf;IILjava/lang/CharSequence;I)I
    .locals 6
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "reservedBytes"    # I
    .param p3, "seq"    # Ljava/lang/CharSequence;
    .param p4, "len"    # I

    .line 840
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/AbstractByteBuf;IILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method static writeUtf8(Lio/netty/buffer/AbstractByteBuf;IILjava/lang/CharSequence;II)I
    .locals 8
    .param p0, "buffer"    # Lio/netty/buffer/AbstractByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "reservedBytes"    # I
    .param p3, "seq"    # Ljava/lang/CharSequence;
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 846
    instance-of v0, p3, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 847
    move-object v0, p3

    check-cast v0, Lio/netty/util/AsciiString;

    invoke-static {p0, p1, v0, p4, p5}, Lio/netty/buffer/ByteBufUtil;->writeAsciiString(Lio/netty/buffer/AbstractByteBuf;ILio/netty/util/AsciiString;II)V

    .line 848
    sub-int v0, p5, p4

    return v0

    .line 850
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v1

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->byteArrayBaseOffset()J

    move-result-wide v2

    .line 853
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->arrayOffset()I

    move-result v0

    add-int v4, v0, p1

    .line 852
    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lio/netty/buffer/ByteBufUtil;->unsafeWriteUtf8([BJILjava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 855
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    const/4 v1, 0x0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->memoryAddress()J

    move-result-wide v2

    move v4, p1

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v1 .. v7}, Lio/netty/buffer/ByteBufUtil;->unsafeWriteUtf8([BJILjava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 859
    :cond_2
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 860
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {v0, v1, p3, p4, p5}, Lio/netty/buffer/ByteBufUtil;->safeArrayWriteUtf8([BILjava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 862
    :cond_3
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 863
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 864
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 865
    .local v0, "internalDirectBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 866
    .local v1, "bufferPosition":I
    invoke-static {v0, v1, p3, p4, p5}, Lio/netty/buffer/ByteBufUtil;->safeDirectWriteUtf8(Ljava/nio/ByteBuffer;ILjava/lang/CharSequence;II)I

    move-result v2

    return v2

    .line 863
    .end local v0    # "internalDirectBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "bufferPosition":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 869
    :cond_5
    invoke-static {p0, p1, p3, p4, p5}, Lio/netty/buffer/ByteBufUtil;->safeWriteUtf8(Lio/netty/buffer/AbstractByteBuf;ILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I
    .locals 3
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 780
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 781
    .local v0, "seqLength":I
    const/4 v1, 0x0

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v2

    invoke-static {p0, p1, v1, v0, v2}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v1

    return v1
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 789
    invoke-static {p1, p2, p3}, Lio/netty/buffer/ByteBufUtil;->checkCharSequenceBounds(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    .line 790
    sub-int v0, p3, p2

    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(I)I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/buffer/ByteBufUtil;->reserveAndWriteUtf8Seq(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;III)I

    move-result v0

    return v0
.end method

.method public static writeUtf8(Lio/netty/buffer/ByteBufAllocator;Ljava/lang/CharSequence;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 766
    invoke-static {p1}, Lio/netty/buffer/ByteBufUtil;->utf8MaxBytes(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p0, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 767
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-static {v0, p1}, Lio/netty/buffer/ByteBufUtil;->writeUtf8(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 768
    return-object v0
.end method
