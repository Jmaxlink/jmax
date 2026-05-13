.class public final Lio/netty/channel/unix/IovArray;
.super Ljava/lang/Object;
.source "IovArray.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_SIZE:I

.field public static final IOV_SIZE:I

.field private static final MAX_CAPACITY:I


# instance fields
.field private count:I

.field private maxBytes:J

.field private final memory:Lio/netty/buffer/ByteBuf;

.field private final memoryAddress:J

.field private size:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    nop

    .line 51
    invoke-static {}, Lio/netty/channel/unix/Buffer;->addressSize()I

    move-result v0

    sput v0, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    .line 57
    sget v0, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    .line 63
    sget v0, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    sget v1, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    mul-int/2addr v0, v1

    sput v0, Lio/netty/channel/unix/IovArray;->MAX_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    sget v0, Lio/netty/channel/unix/IovArray;->MAX_CAPACITY:I

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/unix/IovArray;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "memory"    # Lio/netty/buffer/ByteBuf;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    .line 77
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    if-nez v0, :cond_4

    .line 78
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    if-nez v0, :cond_3

    .line 79
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_1

    :cond_0
    sget-boolean v0, Lio/netty/util/internal/PlatformDependent;->BIG_ENDIAN_NATIVE_ORDER:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    .line 81
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    goto :goto_2

    .line 85
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    .line 87
    :goto_2
    return-void

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private add(JJI)Z
    .locals 7
    .param p1, "memoryAddress"    # J
    .param p3, "addr"    # J
    .param p5, "len"    # I

    .line 132
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_7

    .line 136
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    int-to-long v2, p5

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/channel/unix/IovArray;->size:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    .line 138
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    iget v1, p0, Lio/netty/channel/unix/IovArray;->count:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    sget v3, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    mul-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    .line 145
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_2
    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    invoke-static {v0}, Lio/netty/channel/unix/IovArray;->idx(I)I

    move-result v0

    .line 148
    .local v0, "baseOffset":I
    sget v1, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    add-int/2addr v1, v0

    .line 150
    .local v1, "lengthOffset":I
    iget-wide v3, p0, Lio/netty/channel/unix/IovArray;->size:J

    int-to-long v5, p5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/netty/channel/unix/IovArray;->size:J

    .line 151
    iget v3, p0, Lio/netty/channel/unix/IovArray;->count:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/netty/channel/unix/IovArray;->count:I

    .line 153
    sget v3, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 155
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    int-to-long v3, v0

    add-long/2addr v3, p1

    invoke-static {v3, v4, p3, p4}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    .line 157
    int-to-long v3, v1

    add-long/2addr v3, p1

    int-to-long v5, p5

    invoke-static {v3, v4, v5, v6}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v3, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, v0, p3, p4}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 160
    iget-object v3, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    int-to-long v4, p5

    invoke-virtual {v3, v1, v4, v5}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 163
    :cond_4
    sget v3, Lio/netty/channel/unix/IovArray;->ADDRESS_SIZE:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    .line 164
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 165
    int-to-long v3, v0

    add-long/2addr v3, p1

    long-to-int v5, p3

    invoke-static {v3, v4, v5}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    .line 166
    int-to-long v3, v1

    add-long/2addr v3, p1

    invoke-static {v3, v4, p5}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    goto :goto_0

    .line 168
    :cond_5
    iget-object v3, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    long-to-int v4, p3

    invoke-virtual {v3, v0, v4}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 169
    iget-object v3, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, v1, p5}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 172
    :goto_0
    return v2

    .line 163
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 132
    .end local v0    # "baseOffset":I
    .end local v1    # "lengthOffset":I
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static idx(I)I
    .locals 1
    .param p0, "index"    # I

    .line 235
    sget v0, Lio/netty/channel/unix/IovArray;->IOV_SIZE:I

    mul-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public add(Lio/netty/buffer/ByteBuf;)Z
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    move-result v0

    return v0
.end method

.method public add(Lio/netty/buffer/ByteBuf;II)Z
    .locals 15
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 103
    move-object v6, p0

    iget v0, v6, Lio/netty/channel/unix/IovArray;->count:I

    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    const/4 v7, 0x0

    if-ne v0, v1, :cond_0

    .line 105
    return v7

    .line 107
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_3

    .line 108
    if-nez p3, :cond_1

    .line 109
    return v8

    .line 111
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-wide v1, v6, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v3

    move/from16 v9, p2

    int-to-long v7, v9

    add-long/2addr v3, v7

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/unix/IovArray;->add(JJI)Z

    move-result v0

    return v0

    .line 114
    :cond_2
    move/from16 v9, p2

    invoke-virtual/range {p1 .. p3}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 115
    .local v7, "nioBuffer":Ljava/nio/ByteBuffer;
    iget-wide v1, v6, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-static {v7}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v3, v10

    move-object v0, p0

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/unix/IovArray;->add(JJI)Z

    move-result v0

    return v0

    .line 118
    .end local v7    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_3
    move/from16 v9, p2

    invoke-virtual/range {p1 .. p3}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 119
    .local v10, "buffers":[Ljava/nio/ByteBuffer;
    array-length v11, v10

    move v12, v7

    :goto_0
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    .line 120
    .local v13, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v14

    .line 121
    .local v14, "remaining":I
    if-eqz v14, :cond_5

    iget-wide v1, v6, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    .line 122
    invoke-static {v13}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v3, v8

    move-object v0, p0

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/unix/IovArray;->add(JJI)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v6, Lio/netty/channel/unix/IovArray;->count:I

    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    if-ne v0, v1, :cond_5

    .line 124
    :cond_4
    return v7

    .line 119
    .end local v13    # "nioBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "remaining":I
    :cond_5
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p2

    const/4 v8, 0x1

    goto :goto_0

    .line 127
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 2

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->size:J

    .line 92
    return-void
.end method

.method public count()I
    .locals 1

    .line 179
    iget v0, p0, Lio/netty/channel/unix/IovArray;->count:I

    return v0
.end method

.method public maxBytes()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    return-wide v0
.end method

.method public maxBytes(J)V
    .locals 4
    .param p1, "maxBytes"    # J

    .line 200
    sget-wide v0, Lio/netty/channel/unix/Limits;->SSIZE_MAX:J

    const-string v2, "maxBytes"

    invoke-static {p1, p2, v2}, Lio/netty/util/internal/ObjectUtil;->checkPositive(JLjava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/unix/IovArray;->maxBytes:J

    .line 201
    return-void
.end method

.method public memoryAddress(I)J
    .locals 4
    .param p1, "offset"    # I

    .line 215
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->memoryAddress:J

    invoke-static {p1}, Lio/netty/channel/unix/IovArray;->idx(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public processMessage(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 228
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 229
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lio/netty/channel/unix/IovArray;->add(Lio/netty/buffer/ByteBuf;II)Z

    move-result v1

    return v1

    .line 231
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    .line 222
    iget-object v0, p0, Lio/netty/channel/unix/IovArray;->memory:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 223
    return-void
.end method

.method public size()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lio/netty/channel/unix/IovArray;->size:J

    return-wide v0
.end method
