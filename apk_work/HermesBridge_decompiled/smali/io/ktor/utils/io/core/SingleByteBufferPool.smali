.class final Lio/ktor/utils/io/core/SingleByteBufferPool;
.super Lio/ktor/utils/io/pool/SingleInstancePool;
.source "ByteReadPacketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/SingleInstancePool<",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J\u0008\u0010\u000e\u001a\u00020\u0002H\u0014R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/utils/io/core/SingleByteBufferPool;",
        "Lio/ktor/utils/io/pool/SingleInstancePool;",
        "Lio/ktor/utils/io/core/internal/ChunkBuffer;",
        "instance",
        "Ljava/nio/ByteBuffer;",
        "release",
        "Lkotlin/Function1;",
        "",
        "(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)V",
        "getInstance",
        "()Ljava/nio/ByteBuffer;",
        "getRelease",
        "()Lkotlin/jvm/functions/Function1;",
        "disposeInstance",
        "produceInstance",
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
.field private final instance:Ljava/nio/ByteBuffer;

.field private final release:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "instance"    # Ljava/nio/ByteBuffer;
    .param p2, "release"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "release"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lio/ktor/utils/io/pool/SingleInstancePool;-><init>()V

    .line 31
    iput-object p1, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    .line 32
    iput-object p2, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->release:Lkotlin/jvm/functions/Function1;

    .line 30
    return-void
.end method


# virtual methods
.method protected disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2
    .param p1, "instance"    # Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->release:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public bridge synthetic disposeInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 29
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/SingleByteBufferPool;->disposeInstance(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method

.method public final getInstance()Ljava/nio/ByteBuffer;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getRelease()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->release:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method protected produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 35
    iget-object v0, p0, Lio/ktor/utils/io/core/SingleByteBufferPool;->instance:Ljava/nio/ByteBuffer;

    move-object v1, p0

    check-cast v1, Lio/ktor/utils/io/pool/ObjectPool;

    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->ChunkBuffer(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/pool/ObjectPool;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/ktor/utils/io/core/SingleByteBufferPool;->produceInstance()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method
