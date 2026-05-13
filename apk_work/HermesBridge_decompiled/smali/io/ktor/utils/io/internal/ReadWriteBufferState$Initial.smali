.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initial"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\r\u0010 \u001a\u00020\u0013H\u0010\u00a2\u0006\u0002\u0008!J\r\u0010\"\u001a\u00020\u001dH\u0010\u00a2\u0006\u0002\u0008#J\u0008\u0010$\u001a\u00020%H\u0016R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u0013X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u001dX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006&"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState;",
        "backingBuffer",
        "Ljava/nio/ByteBuffer;",
        "reservedSize",
        "",
        "(Ljava/nio/ByteBuffer;I)V",
        "idle",
        "",
        "getIdle",
        "()Z",
        "idleState",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;",
        "getIdleState$ktor_io",
        "()Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;",
        "readBuffer",
        "getReadBuffer",
        "()Ljava/nio/ByteBuffer;",
        "readingState",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;",
        "getReadingState$ktor_io",
        "()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;",
        "readingWritingState",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;",
        "getReadingWritingState$ktor_io",
        "()Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;",
        "writeBuffer",
        "getWriteBuffer",
        "writingState",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;",
        "getWritingState$ktor_io",
        "()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;",
        "startReading",
        "startReading$ktor_io",
        "startWriting",
        "startWriting$ktor_io",
        "toString",
        "",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final idleState:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

.field private final readBuffer:Ljava/nio/ByteBuffer;

.field private final readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

.field private final readingWritingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

.field private final writeBuffer:Ljava/nio/ByteBuffer;

.field private final writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p1, "backingBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "reservedSize"    # I

    const-string v0, "backingBuffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    new-instance v0, Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-direct {v0, v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    nop

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Failed requirement."

    if-eqz v0, :cond_3

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 40
    nop

    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "backingBuffer.duplicate()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writeBuffer:Ljava/nio/ByteBuffer;

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readBuffer:Ljava/nio/ByteBuffer;

    .line 49
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->idleState:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    .line 50
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    .line 51
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    .line 52
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;-><init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    iput-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingWritingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    .line 33
    return-void

    .line 39
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 33
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 35
    const/16 p2, 0x8

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;-><init>(Ljava/nio/ByteBuffer;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getIdle()Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 57
    const-string v1, "Not available for initial state"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIdleState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;
    .locals 1

    .line 49
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->idleState:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    return-object v0
.end method

.method public getReadBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 46
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getReadingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    .line 50
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    return-object v0
.end method

.method public final getReadingWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;
    .locals 1

    .line 52
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingWritingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$ReadingWriting;

    return-object v0
.end method

.method public getWriteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writeBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    return-object v0
.end method

.method public startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    .line 55
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->readingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    return-object v0
.end method

.method public bridge synthetic startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    return-object v0
.end method

.method public startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->writingState:Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    return-object v0
.end method

.method public bridge synthetic startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "Initial"

    return-object v0
.end method
