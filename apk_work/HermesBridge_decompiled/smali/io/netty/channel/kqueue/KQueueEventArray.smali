.class final Lio/netty/channel/kqueue/KQueueEventArray;
.super Ljava/lang/Object;
.source "KQueueEventArray.java"


# static fields
.field private static final KQUEUE_DATA_OFFSET:I

.field private static final KQUEUE_EVENT_SIZE:I

.field private static final KQUEUE_FFLAGS_OFFSET:I

.field private static final KQUEUE_FILTER_OFFSET:I

.field private static final KQUEUE_FLAGS_OFFSET:I

.field private static final KQUEUE_IDENT_OFFSET:I


# instance fields
.field private capacity:I

.field private memory:Ljava/nio/ByteBuffer;

.field private memoryAddress:J

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    invoke-static {}, Lio/netty/channel/kqueue/Native;->sizeofKEvent()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_EVENT_SIZE:I

    .line 37
    invoke-static {}, Lio/netty/channel/kqueue/Native;->offsetofKEventIdent()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_IDENT_OFFSET:I

    .line 38
    invoke-static {}, Lio/netty/channel/kqueue/Native;->offsetofKEventFilter()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_FILTER_OFFSET:I

    .line 39
    invoke-static {}, Lio/netty/channel/kqueue/Native;->offsetofKEventFFlags()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_FFLAGS_OFFSET:I

    .line 40
    invoke-static {}, Lio/netty/channel/kqueue/Native;->offsetofKEventFlags()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_FLAGS_OFFSET:I

    .line 41
    invoke-static {}, Lio/netty/channel/kqueue/Native;->offsetofKeventData()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_DATA_OFFSET:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 52
    invoke-static {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->calculateBufferCapacity(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    .line 53
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress:J

    .line 54
    iput p1, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    .line 55
    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capacity must be >= 1 but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateBufferCapacity(I)I
    .locals 1
    .param p0, "capacity"    # I

    .line 169
    sget v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_EVENT_SIZE:I

    mul-int/2addr v0, p0

    return v0
.end method

.method private static native evSet(JISSI)V
.end method

.method private static getKEventOffset(I)I
    .locals 1
    .param p0, "index"    # I

    .line 128
    sget v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_EVENT_SIZE:I

    mul-int/2addr v0, p0

    return v0
.end method

.method private getKEventOffsetAddress(I)J
    .locals 4
    .param p1, "index"    # I

    .line 132
    invoke-static {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffset(I)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getShort(II)S
    .locals 4
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .line 136
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffsetAddress(I)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v0

    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffset(I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method private reallocIfNeeded()V
    .locals 2

    .line 86
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    iget v1, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->realloc(Z)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method capacity()I
    .locals 1

    .line 69
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    return v0
.end method

.method clear()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    .line 78
    return-void
.end method

.method data(I)J
    .locals 4
    .param p1, "index"    # I

    .line 162
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffsetAddress(I)J

    move-result-wide v0

    sget v2, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_DATA_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    return-wide v0

    .line 165
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffset(I)I

    move-result v1

    sget v2, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_DATA_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method evSet(Lio/netty/channel/kqueue/AbstractKQueueChannel;SSI)V
    .locals 10
    .param p1, "ch"    # Lio/netty/channel/kqueue/AbstractKQueueChannel;
    .param p2, "filter"    # S
    .param p3, "flags"    # S
    .param p4, "fflags"    # I

    .line 81
    invoke-direct {p0}, Lio/netty/channel/kqueue/KQueueEventArray;->reallocIfNeeded()V

    .line 82
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffset(I)I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress:J

    add-long v4, v0, v2

    iget-object v0, p1, Lio/netty/channel/kqueue/AbstractKQueueChannel;->socket:Lio/netty/channel/kqueue/BsdSocket;

    invoke-virtual {v0}, Lio/netty/channel/kqueue/BsdSocket;->intValue()I

    move-result v6

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-static/range {v4 .. v9}, Lio/netty/channel/kqueue/KQueueEventArray;->evSet(JISSI)V

    .line 83
    return-void
.end method

.method fd(I)I
    .locals 4
    .param p1, "index"    # I

    .line 155
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0, p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffsetAddress(I)J

    move-result-wide v0

    sget v2, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_IDENT_OFFSET:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v0

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->getKEventOffset(I)I

    move-result v1

    sget v2, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_IDENT_OFFSET:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method fflags(I)S
    .locals 1
    .param p1, "index"    # I

    .line 151
    sget v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_FFLAGS_OFFSET:I

    invoke-direct {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->getShort(II)S

    move-result v0

    return v0
.end method

.method filter(I)S
    .locals 1
    .param p1, "index"    # I

    .line 147
    sget v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_FILTER_OFFSET:I

    invoke-direct {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->getShort(II)S

    move-result v0

    return v0
.end method

.method flags(I)S
    .locals 1
    .param p1, "index"    # I

    .line 143
    sget v0, Lio/netty/channel/kqueue/KQueueEventArray;->KQUEUE_FLAGS_OFFSET:I

    invoke-direct {p0, p1, v0}, Lio/netty/channel/kqueue/KQueueEventArray;->getShort(II)S

    move-result v0

    return v0
.end method

.method free()V
    .locals 2

    .line 123
    iget-object v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    iput v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    int-to-long v0, v0

    iput-wide v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress:J

    .line 125
    return-void
.end method

.method memoryAddress()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress:J

    return-wide v0
.end method

.method realloc(Z)V
    .locals 5
    .param p1, "throwIfFail"    # Z

    .line 96
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    iget v1, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    .line 99
    .local v0, "newLength":I
    :goto_0
    :try_start_0
    invoke-static {v0}, Lio/netty/channel/kqueue/KQueueEventArray;->calculateBufferCapacity(I)I

    move-result v1

    invoke-static {v1}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    iget v4, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    invoke-virtual {v2, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget-object v2, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    .line 107
    iput-object v1, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memory:Ljava/nio/ByteBuffer;

    .line 108
    invoke-static {v1}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress:J
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_1

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    if-nez p1, :cond_1

    .line 117
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    return-void

    .line 111
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_1
    new-instance v2, Ljava/lang/OutOfMemoryError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to allocate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new bytes! Existing capacity is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lio/netty/channel/kqueue/KQueueEventArray;->capacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    .line 113
    .local v2, "error":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2, v1}, Ljava/lang/OutOfMemoryError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 114
    throw v2
.end method

.method size()I
    .locals 1

    .line 73
    iget v0, p0, Lio/netty/channel/kqueue/KQueueEventArray;->size:I

    return v0
.end method
