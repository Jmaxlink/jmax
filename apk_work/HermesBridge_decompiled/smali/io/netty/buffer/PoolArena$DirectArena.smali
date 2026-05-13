.class final Lio/netty/buffer/PoolArena$DirectArena;
.super Lio/netty/buffer/PoolArena;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DirectArena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PoolArena<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V
    .locals 0
    .param p1, "parent"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "pageSize"    # I
    .param p3, "pageShifts"    # I
    .param p4, "chunkSize"    # I
    .param p5, "directMemoryCacheAlignment"    # I

    .line 679
    invoke-direct/range {p0 .. p5}, Lio/netty/buffer/PoolArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIII)V

    .line 681
    return-void
.end method

.method private static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "capacity"    # I

    .line 716
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 716
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 722
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->base:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->base:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 727
    :goto_0
    return-void
.end method

.method isDirect()Z
    .locals 1

    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V
    .locals 0

    .line 675
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/PoolArena$DirectArena;->memoryCopy(Ljava/nio/ByteBuffer;ILio/netty/buffer/PooledByteBuf;I)V

    return-void
.end method

.method protected memoryCopy(Ljava/nio/ByteBuffer;ILio/netty/buffer/PooledByteBuf;I)V
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOffset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lio/netty/buffer/PooledByteBuf<",
            "Ljava/nio/ByteBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 740
    .local p3, "dstBuf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<Ljava/nio/ByteBuffer;>;"
    if-nez p4, :cond_0

    .line 741
    return-void

    .line 744
    :cond_0
    invoke-static {}, Lio/netty/buffer/PoolArena;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    nop

    .line 746
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long v4, v0, v2

    iget-object v0, p3, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 747
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget v2, p3, Lio/netty/buffer/PooledByteBuf;->offset:I

    int-to-long v2, v2

    add-long v6, v0, v2

    int-to-long v8, p4

    .line 745
    invoke-static/range {v4 .. v9}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 750
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 751
    invoke-virtual {p3}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 752
    .local v0, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p2, p4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 753
    iget v1, p3, Lio/netty/buffer/PooledByteBuf;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 754
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 756
    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    :goto_0
    return-void
.end method

.method protected newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .param p1, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 731
    invoke-static {}, Lio/netty/buffer/PoolArena;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-static {p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->newInstance(I)Lio/netty/buffer/PooledUnsafeDirectByteBuf;

    move-result-object v0

    return-object v0

    .line 734
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PooledDirectByteBuf;->newInstance(I)Lio/netty/buffer/PooledDirectByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .locals 11
    .param p1, "pageSize"    # I
    .param p2, "maxPageIdx"    # I
    .param p3, "pageShifts"    # I
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 691
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    .line 692
    invoke-static {p4}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 693
    .local v0, "memory":Ljava/nio/ByteBuffer;
    new-instance v9, Lio/netty/buffer/PoolChunk;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move-object v4, v0

    move v5, p1

    move v6, p3

    move v7, p4

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    return-object v9

    .line 697
    .end local v0    # "memory":Ljava/nio/ByteBuffer;
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    add-int/2addr v0, p4

    invoke-static {v0}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 698
    .local v0, "base":Ljava/nio/ByteBuffer;
    iget v1, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->alignDirectBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 699
    .local v9, "memory":Ljava/nio/ByteBuffer;
    new-instance v10, Lio/netty/buffer/PoolChunk;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v0

    move-object v4, v9

    move v5, p1

    move v6, p3

    move v7, p4

    move v8, p2

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;IIII)V

    return-object v10
.end method

.method protected newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .locals 3
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 705
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    .line 706
    invoke-static {p1}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 707
    .local v0, "memory":Ljava/nio/ByteBuffer;
    new-instance v1, Lio/netty/buffer/PoolChunk;

    invoke-direct {v1, p0, v0, v0, p1}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v1

    .line 710
    .end local v0    # "memory":Ljava/nio/ByteBuffer;
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 711
    .local v0, "base":Ljava/nio/ByteBuffer;
    iget v1, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->alignDirectBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 712
    .local v1, "memory":Ljava/nio/ByteBuffer;
    new-instance v2, Lio/netty/buffer/PoolChunk;

    invoke-direct {v2, p0, v0, v1, p1}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v2
.end method
