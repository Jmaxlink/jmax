.class final Lio/netty/channel/kqueue/NativeLongArray;
.super Ljava/lang/Object;
.source "NativeLongArray.java"


# instance fields
.field private capacity:I

.field private memory:Ljava/nio/ByteBuffer;

.field private memoryAddress:J

.field private size:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "capacity"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    .line 34
    invoke-static {p1}, Lio/netty/channel/kqueue/NativeLongArray;->calculateBufferCapacity(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    .line 35
    iget-object v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memoryAddress:J

    .line 36
    return-void
.end method

.method private static calculateBufferCapacity(I)I
    .locals 1
    .param p0, "capacity"    # I

    .line 43
    sget v0, Lio/netty/channel/unix/Limits;->SIZEOF_JLONG:I

    mul-int/2addr v0, p0

    return v0
.end method

.method private static idx(I)I
    .locals 1
    .param p0, "index"    # I

    .line 39
    sget v0, Lio/netty/channel/unix/Limits;->SIZEOF_JLONG:I

    mul-int/2addr v0, p0

    return v0
.end method

.method private memoryOffset(I)J
    .locals 4
    .param p1, "index"    # I

    .line 82
    iget-wide v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memoryAddress:J

    invoke-static {p1}, Lio/netty/channel/kqueue/NativeLongArray;->idx(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private reallocIfNeeded()V
    .locals 5

    .line 86
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    iget v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    if-ne v0, v1, :cond_1

    .line 88
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    iget v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    .line 89
    .local v0, "newLength":I
    :goto_0
    invoke-static {v0}, Lio/netty/channel/kqueue/NativeLongArray;->calculateBufferCapacity(I)I

    move-result v1

    invoke-static {v1}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    iget v4, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    invoke-virtual {v2, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 93
    iget-object v2, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    iget-object v2, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    .line 97
    iput-object v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    .line 98
    invoke-static {v1}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/channel/kqueue/NativeLongArray;->memoryAddress:J

    .line 99
    iput v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    .line 101
    .end local v0    # "newLength":I
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method


# virtual methods
.method add(J)V
    .locals 2
    .param p1, "value"    # J

    .line 47
    invoke-direct {p0}, Lio/netty/channel/kqueue/NativeLongArray;->reallocIfNeeded()V

    .line 48
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/NativeLongArray;->memoryOffset(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    iget v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    invoke-static {v1}, Lio/netty/channel/kqueue/NativeLongArray;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 53
    :goto_0
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    .line 54
    return-void
.end method

.method clear()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    .line 58
    return-void
.end method

.method free()V
    .locals 2

    .line 69
    iget-object v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memoryAddress:J

    .line 71
    return-void
.end method

.method isEmpty()Z
    .locals 1

    .line 61
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method memoryAddress()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->memoryAddress:J

    return-wide v0
.end method

.method memoryAddressEnd()J
    .locals 2

    .line 78
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    invoke-direct {p0, v0}, Lio/netty/channel/kqueue/NativeLongArray;->memoryOffset(I)J

    move-result-wide v0

    return-wide v0
.end method

.method size()I
    .locals 1

    .line 65
    iget v0, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memoryAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->memoryAddress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " capacity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/kqueue/NativeLongArray;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
