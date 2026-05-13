.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleNonEmpty"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u000b\u001a\u00020\u000cH\u0010\u00a2\u0006\u0002\u0008\rJ\r\u0010\u000e\u001a\u00020\u000fH\u0010\u00a2\u0006\u0002\u0008\u0010J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState;",
        "initial",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
        "(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V",
        "idle",
        "",
        "getIdle",
        "()Z",
        "getInitial",
        "()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
        "startReading",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;",
        "startReading$ktor_io",
        "startWriting",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;",
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
.field private final initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 3
    .param p1, "initial"    # Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->backingBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 61
    return-void
.end method


# virtual methods
.method public getIdle()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public final getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 1

    .line 62
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    return-object v0
.end method

.method public startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    .line 64
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getReadingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    return-object v0
.end method

.method public startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "IDLE(with buffer)"

    return-object v0
.end method
