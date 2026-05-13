.class public Lio/netty/channel/unix/FileDescriptor;
.super Ljava/lang/Object;
.source "FileDescriptor.java"


# static fields
.field private static final STATE_ALL_MASK:I = 0x7

.field private static final STATE_CLOSED_MASK:I = 0x1

.field private static final STATE_INPUT_SHUTDOWN_MASK:I = 0x2

.field private static final STATE_OUTPUT_SHUTDOWN_MASK:I = 0x4

.field private static final stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/unix/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final fd:I

.field volatile state:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    nop

    .line 38
    const-class v0, Lio/netty/channel/unix/FileDescriptor;

    const-string v1, "state"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/unix/FileDescriptor;->stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "fd"    # I

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "fd"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 55
    iput p1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    .line 56
    return-void
.end method

.method private static native close(I)I
.end method

.method public static from(Ljava/io/File;)Lio/netty/channel/unix/FileDescriptor;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    const-string v0, "file"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->from(Ljava/lang/String;)Lio/netty/channel/unix/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lio/netty/channel/unix/FileDescriptor;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    const-string v0, "path"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->open(Ljava/lang/String;)I

    move-result v0

    .line 180
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 183
    new-instance v1, Lio/netty/channel/unix/FileDescriptor;

    invoke-direct {v1, v0}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v1

    .line 181
    :cond_0
    const-string v1, "open"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method static inputShutdown(I)I
    .locals 1
    .param p0, "state"    # I

    .line 221
    or-int/lit8 v0, p0, 0x2

    return v0
.end method

.method static isClosed(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 209
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInputShutdown(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 213
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isOutputShutdown(I)Z
    .locals 1
    .param p0, "state"    # I

    .line 217
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native newPipe()J
.end method

.method private static native open(Ljava/lang/String;)I
.end method

.method static outputShutdown(I)I
    .locals 1
    .param p0, "state"    # I

    .line 225
    or-int/lit8 v0, p0, 0x4

    return v0
.end method

.method public static pipe()[Lio/netty/channel/unix/FileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    invoke-static {}, Lio/netty/channel/unix/FileDescriptor;->newPipe()J

    move-result-wide v0

    .line 198
    .local v0, "res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 201
    new-instance v2, Lio/netty/channel/unix/FileDescriptor;

    const/16 v3, 0x20

    ushr-long v3, v0, v3

    long-to-int v3, v3

    invoke-direct {v2, v3}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    new-instance v3, Lio/netty/channel/unix/FileDescriptor;

    long-to-int v4, v0

    invoke-direct {v3, v4}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    filled-new-array {v2, v3}, [Lio/netty/channel/unix/FileDescriptor;

    move-result-object v2

    return-object v2

    .line 199
    :cond_0
    const-string v2, "newPipe"

    long-to-int v3, v0

    invoke-static {v2, v3}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v2

    throw v2
.end method

.method private static native read(ILjava/nio/ByteBuffer;II)I
.end method

.method private static native readAddress(IJII)I
.end method

.method private static native write(ILjava/nio/ByteBuffer;II)I
.end method

.method private static native writeAddress(IJII)I
.end method

.method private static native writev(I[Ljava/nio/ByteBuffer;IIJ)J
.end method

.method private static native writevAddresses(IJI)J
.end method


# virtual methods
.method final casState(II)Z
    .locals 1
    .param p1, "expected"    # I
    .param p2, "update"    # I

    .line 205
    sget-object v0, Lio/netty/channel/unix/FileDescriptor;->stateUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->markClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->close(I)I

    move-result v0

    .line 84
    .local v0, "res":I
    if-ltz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "close"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1

    .line 88
    .end local v0    # "res":I
    :cond_1
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 161
    return v0

    .line 163
    :cond_0
    instance-of v1, p1, Lio/netty/channel/unix/FileDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 164
    return v2

    .line 167
    :cond_1
    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    move-object v3, p1

    check-cast v3, Lio/netty/channel/unix/FileDescriptor;

    iget v3, v3, Lio/netty/channel/unix/FileDescriptor;->fd:I

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 172
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    return v0
.end method

.method public final intValue()I
    .locals 1

    .line 62
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 94
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isClosed(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected markClosed()Z
    .locals 2

    .line 67
    nop

    :goto_0
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->state:I

    .line 68
    .local v0, "state":I
    invoke-static {v0}, Lio/netty/channel/unix/FileDescriptor;->isClosed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    return v1

    .line 72
    :cond_0
    or-int/lit8 v1, v0, 0x7

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/unix/FileDescriptor;->casState(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    const/4 v1, 0x1

    return v1

    .line 75
    .end local v0    # "state":I
    :cond_1
    goto :goto_0
.end method

.method public final read(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/FileDescriptor;->read(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 131
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 132
    return v0

    .line 134
    :cond_0
    if-nez v0, :cond_1

    .line 135
    const/4 v1, -0x1

    return v1

    .line 137
    :cond_1
    const-string v1, "read"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final readAddress(JII)I
    .locals 2
    .param p1, "address"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/FileDescriptor;->readAddress(IJII)I

    move-result v0

    .line 142
    .local v0, "res":I
    if-lez v0, :cond_0

    .line 143
    return v0

    .line 145
    :cond_0
    if-nez v0, :cond_1

    .line 146
    const/4 v1, -0x1

    return v1

    .line 148
    :cond_1
    const-string v1, "readAddress"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileDescriptor{fd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/FileDescriptor;->write(ILjava/nio/ByteBuffer;II)I

    move-result v0

    .line 99
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 100
    return v0

    .line 102
    :cond_0
    const-string v1, "write"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final writeAddress(JII)I
    .locals 2
    .param p1, "address"    # J
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3, p4}, Lio/netty/channel/unix/FileDescriptor;->writeAddress(IJII)I

    move-result v0

    .line 107
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 108
    return v0

    .line 110
    :cond_0
    const-string v1, "writeAddress"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public final writev([Ljava/nio/ByteBuffer;IIJ)J
    .locals 6
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "maxBytesToWrite"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    sget v1, Lio/netty/channel/unix/Limits;->IOV_MAX:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/channel/unix/FileDescriptor;->writev(I[Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v0

    .line 115
    .local v0, "res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 116
    return-wide v0

    .line 118
    :cond_0
    const-string v2, "writev"

    long-to-int v3, v0

    invoke-static {v2, v3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method

.method public final writevAddresses(JI)J
    .locals 4
    .param p1, "memoryAddress"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget v0, p0, Lio/netty/channel/unix/FileDescriptor;->fd:I

    invoke-static {v0, p1, p2, p3}, Lio/netty/channel/unix/FileDescriptor;->writevAddresses(IJI)J

    move-result-wide v0

    .line 123
    .local v0, "res":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 124
    return-wide v0

    .line 126
    :cond_0
    const-string v2, "writevAddresses"

    long-to-int v3, v0

    invoke-static {v2, v3}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    return-wide v2
.end method
