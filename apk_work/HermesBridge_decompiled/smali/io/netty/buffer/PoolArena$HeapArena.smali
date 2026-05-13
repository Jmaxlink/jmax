.class final Lio/netty/buffer/PoolArena$HeapArena;
.super Lio/netty/buffer/PoolArena;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HeapArena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PoolArena<",
        "[B>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;III)V
    .locals 6
    .param p1, "parent"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "pageSize"    # I
    .param p3, "pageShifts"    # I
    .param p4, "chunkSize"    # I

    .line 630
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V

    .line 632
    return-void
.end method

.method private static newByteArray(I)[B
    .locals 1
    .param p0, "size"    # I

    .line 635
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateUninitializedArray(I)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "[B>;)V"
        }
    .end annotation

    .line 657
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<[B>;"
    return-void
.end method

.method isDirect()Z
    .locals 1

    .line 640
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V
    .locals 0

    .line 626
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/PoolArena$HeapArena;->memoryCopy([BILio/netty/buffer/PooledByteBuf;I)V

    return-void
.end method

.method protected memoryCopy([BILio/netty/buffer/PooledByteBuf;I)V
    .locals 2
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lio/netty/buffer/PooledByteBuf<",
            "[B>;I)V"
        }
    .end annotation

    .line 667
    .local p3, "dst":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<[B>;"
    if-nez p4, :cond_0

    .line 668
    return-void

    .line 671
    :cond_0
    iget-object v0, p3, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    iget v1, p3, Lio/netty/buffer/PooledByteBuf;->offset:I

    invoke-static {p1, p2, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    return-void
.end method

.method protected newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .param p1, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "[B>;"
        }
    .end annotation

    .line 661
    invoke-static {}, Lio/netty/buffer/PoolArena;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/netty/buffer/PooledUnsafeHeapByteBuf;->newUnsafeInstance(I)Lio/netty/buffer/PooledUnsafeHeapByteBuf;

    move-result-object v0

    goto :goto_0

    .line 662
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PooledHeapByteBuf;->newInstance(I)Lio/netty/buffer/PooledHeapByteBuf;

    move-result-object v0

    .line 661
    :goto_0
    return-object v0
.end method

.method protected newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .locals 9
    .param p1, "pageSize"    # I
    .param p2, "maxPageIdx"    # I
    .param p3, "pageShifts"    # I
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "[B>;"
        }
    .end annotation

    .line 645
    new-instance v8, Lio/netty/buffer/PoolChunk;

    .line 646
    invoke-static {p4}, Lio/netty/buffer/PoolArena$HeapArena;->newByteArray(I)[B

    move-result-object v3

    const/4 v2, 0x0

    move-object v0, v8

    move-object v1, p0

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    .line 645
    return-object v8
.end method

.method protected newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .locals 3
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "[B>;"
        }
    .end annotation

    .line 651
    new-instance v0, Lio/netty/buffer/PoolChunk;

    const/4 v1, 0x0

    invoke-static {p1}, Lio/netty/buffer/PoolArena$HeapArena;->newByteArray(I)[B

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
