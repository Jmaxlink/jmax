.class public final Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ObjectPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ObjectPoolKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/ktor/utils/io/pool/DefaultPool<",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0002H\u0014J\u0008\u0010\u0006\u001a\u00020\u0002H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "io/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1",
        "Lio/ktor/utils/io/pool/DefaultPool;",
        "Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;",
        "disposeInstance",
        "",
        "instance",
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


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "$super_call_param$1"    # I

    .line 15
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected disposeInstance(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 2
    .param p1, "instance"    # Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    iget-object v1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public bridge synthetic disposeInstance(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .line 15
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-virtual {p0, v0}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;->disposeInstance(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    return-void
.end method

.method protected produceInstance()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 5

    .line 17
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;->produceInstance()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    return-object v0
.end method
