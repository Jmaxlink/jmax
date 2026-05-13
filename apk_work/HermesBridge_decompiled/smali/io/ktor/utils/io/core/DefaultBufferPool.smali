.class public final Lio/ktor/utils/io/core/DefaultBufferPool;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "BufferFactory.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n+ 2 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n15#2:94\n15#2:95\n1#3:96\n*S KotlinDebug\n*F\n+ 1 BufferFactory.kt\nio/ktor/utils/io/core/DefaultBufferPool\n*L\n75#1:94\n76#1:95\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0002H\u0014J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u0002H\u0014J\u0008\u0010\r\u001a\u00020\u0002H\u0014J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\n\u001a\u00020\u0002H\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/utils/io/core/DefaultBufferPool;",
        "Lio/ktor/utils/io/pool/DefaultPool;",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "bufferSize",
        "",
        "capacity",
        "allocator",
        "Lio/ktor/utils/io/bits/Allocator;",
        "(IILio/ktor/utils/io/bits/Allocator;)V",
        "clearInstance",
        "instance",
        "disposeInstance",
        "",
        "produceInstance",
        "validateInstance",
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
.field private final allocator:Lio/ktor/utils/io/bits/Allocator;

.field private final bufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/core/DefaultBufferPool;-><init>(IILio/ktor/utils/io/bits/Allocator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILio/ktor/utils/io/bits/Allocator;)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "capacity"    # I
    .param p3, "allocator"    # Lio/ktor/utils/io/bits/Allocator;

    const-string v0, "allocator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p2}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    .line 57
    iput p1, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    .line 59
    iput-object p3, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->allocator:Lio/ktor/utils/io/bits/Allocator;

    .line 56
    return-void
.end method

.method public synthetic constructor <init>(IILio/ktor/utils/io/bits/Allocator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 56
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 57
    const/16 p1, 0x1000

    .line 56
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 58
    const/16 p2, 0x3e8

    .line 56
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 59
    sget-object p3, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    check-cast p3, Lio/ktor/utils/io/bits/Allocator;

    .line 56
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/core/DefaultBufferPool;-><init>(IILio/ktor/utils/io/bits/Allocator;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected clearInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3
    .param p1, "instance"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->clearInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .local v1, "$this$clearInstance_u24lambda_u246":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v2, 0x0

    .line 88
    .local v2, "$i$a$-apply-DefaultBufferPool$clearInstance$1":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->unpark$ktor_io()V

    .line 89
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->reset()V

    .line 90
    nop

    .line 87
    .end local v1    # "$this$clearInstance_u24lambda_u246":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "$i$a$-apply-DefaultBufferPool$clearInstance$1":I
    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public bridge synthetic clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 55
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/DefaultBufferPool;->clearInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2
    .param p1, "instance"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->allocator:Lio/ktor/utils/io/bits/Allocator;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/ktor/utils/io/bits/Allocator;->free-3GNKZMM(Ljava/nio/ByteBuffer;)V

    .line 68
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->disposeInstance(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->unlink$ktor_io()V

    .line 70
    return-void
.end method

.method public bridge synthetic disposeInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 55
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/DefaultBufferPool;->disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method

.method protected produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 4

    .line 63
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v1, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->allocator:Lio/ktor/utils/io/bits/Allocator;

    iget v2, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    invoke-interface {v1, v2}, Lio/ktor/utils/io/bits/Allocator;->alloc-gFv-Zug(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, p0

    check-cast v3, Lio/ktor/utils/io/pool/ObjectPool;

    invoke-direct {v0, v1, v2, v3, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lio/ktor/utils/io/core/DefaultBufferPool;->produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected validateInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 5
    .param p1, "instance"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-super {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->validateInstance(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    .local v0, "arg0$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 94
    .local v1, "$i$f$getSize-impl":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v0, v2

    .line 75
    .end local v0    # "arg0$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$getSize-impl":I
    iget v2, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_b

    .line 79
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eq p1, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_a

    .line 80
    sget-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v0

    if-eq p1, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getReferenceCount()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    if-eqz v0, :cond_8

    .line 82
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_7

    .line 83
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getOrigin()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    if-eqz v1, :cond_6

    .line 84
    return-void

    .line 96
    :cond_6
    const/4 v0, 0x0

    .line 83
    .local v0, "$i$a$-check-DefaultBufferPool$validateInstance$6":I
    nop

    .end local v0    # "$i$a$-check-DefaultBufferPool$validateInstance$6":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recycled instance shouldn\'t be a view or another buffer."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_7
    const/4 v0, 0x0

    .line 82
    .local v0, "$i$a$-check-DefaultBufferPool$validateInstance$5":I
    nop

    .end local v0    # "$i$a$-check-DefaultBufferPool$validateInstance$5":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recycled instance shouldn\'t be a part of a chain."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_8
    const/4 v0, 0x0

    .line 81
    .local v0, "$i$a$-check-DefaultBufferPool$validateInstance$4":I
    nop

    .end local v0    # "$i$a$-check-DefaultBufferPool$validateInstance$4":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to clear buffer: it is still in use."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_9
    const/4 v0, 0x0

    .line 80
    .local v0, "$i$a$-check-DefaultBufferPool$validateInstance$3":I
    nop

    .end local v0    # "$i$a$-check-DefaultBufferPool$validateInstance$3":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Empty instance couldn\'t be recycled"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_a
    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$-check-DefaultBufferPool$validateInstance$2":I
    nop

    .end local v0    # "$i$a$-check-DefaultBufferPool$validateInstance$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ChunkBuffer.Empty couldn\'t be recycled"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_b
    const/4 v0, 0x0

    .line 76
    .local v0, "$i$a$-check-DefaultBufferPool$validateInstance$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size mismatch. Expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/ktor/utils/io/core/DefaultBufferPool;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, "arg0$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 95
    .local v3, "$i$f$getSize-impl":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v2, v4

    .line 76
    .end local v2    # "arg0$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$f$getSize-impl":I
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .end local v0    # "$i$a$-check-DefaultBufferPool$validateInstance$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic validateInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 55
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/DefaultBufferPool;->validateInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method
