.class public final Lio/netty/channel/epoll/EpollEventArray;
.super Ljava/lang/Object;
.source "EpollEventArray.java"


# static fields
.field private static final EPOLL_DATA_OFFSET:I

.field private static final EPOLL_EVENT_SIZE:I


# instance fields
.field private length:I

.field private memory:Ljava/nio/ByteBuffer;

.field private memoryAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lio/netty/channel/epoll/Native;->sizeofEpollEvent()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/EpollEventArray;->EPOLL_EVENT_SIZE:I

    .line 47
    invoke-static {}, Lio/netty/channel/epoll/Native;->offsetofEpollData()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/EpollEventArray;->EPOLL_DATA_OFFSET:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "length"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 57
    iput p1, p0, Lio/netty/channel/epoll/EpollEventArray;->length:I

    .line 58
    invoke-static {p1}, Lio/netty/channel/epoll/EpollEventArray;->calculateBufferCapacity(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memory:Ljava/nio/ByteBuffer;

    .line 59
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress:J

    .line 60
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be >= 1 but was "

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

    .line 121
    sget v0, Lio/netty/channel/epoll/EpollEventArray;->EPOLL_EVENT_SIZE:I

    mul-int/2addr v0, p0

    return v0
.end method

.method private getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "offset"    # I

    .line 113
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    int-to-long v0, p1

    sget v2, Lio/netty/channel/epoll/EpollEventArray;->EPOLL_EVENT_SIZE:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 115
    .local v0, "n":J
    iget-wide v2, p0, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress:J

    add-long/2addr v2, v0

    int-to-long v4, p2

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v2

    return v2

    .line 117
    .end local v0    # "n":J
    :cond_0
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memory:Ljava/nio/ByteBuffer;

    sget v1, Lio/netty/channel/epoll/EpollEventArray;->EPOLL_EVENT_SIZE:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method events(I)I
    .locals 1
    .param p1, "index"    # I

    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/epoll/EpollEventArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method fd(I)I
    .locals 1
    .param p1, "index"    # I

    .line 109
    sget v0, Lio/netty/channel/epoll/EpollEventArray;->EPOLL_DATA_OFFSET:I

    invoke-direct {p0, p1, v0}, Lio/netty/channel/epoll/EpollEventArray;->getInt(II)I

    move-result v0

    return v0
.end method

.method free()V
    .locals 2

    .line 94
    iget-object v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress:J

    .line 96
    return-void
.end method

.method increase()V
    .locals 3

    .line 82
    iget v0, p0, Lio/netty/channel/epoll/EpollEventArray;->length:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/channel/epoll/EpollEventArray;->length:I

    .line 84
    iget v0, p0, Lio/netty/channel/epoll/EpollEventArray;->length:I

    invoke-static {v0}, Lio/netty/channel/epoll/EpollEventArray;->calculateBufferCapacity(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->allocateDirectWithNativeOrder(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 85
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lio/netty/channel/epoll/EpollEventArray;->memory:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lio/netty/channel/unix/Buffer;->free(Ljava/nio/ByteBuffer;)V

    .line 86
    iput-object v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memory:Ljava/nio/ByteBuffer;

    .line 87
    invoke-static {v0}, Lio/netty/channel/unix/Buffer;->memoryAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress:J

    .line 88
    return-void
.end method

.method length()I
    .locals 1

    .line 74
    iget v0, p0, Lio/netty/channel/epoll/EpollEventArray;->length:I

    return v0
.end method

.method memoryAddress()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress:J

    return-wide v0
.end method
