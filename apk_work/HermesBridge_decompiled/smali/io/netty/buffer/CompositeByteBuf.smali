.class public Lio/netty/buffer/CompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "CompositeByteBuf.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;,
        Lio/netty/buffer/CompositeByteBuf$Component;,
        Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
        "Ljava/lang/Iterable<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "[B>;"
        }
    .end annotation
.end field

.field static final BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private componentCount:I

.field private components:[Lio/netty/buffer/CompositeByteBuf$Component;

.field private final direct:Z

.field private freed:Z

.field private lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

.field private final maxNumComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    nop

    .line 51
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 109
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/CompositeByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    .line 120
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$2;

    invoke-direct {v0}, Lio/netty/buffer/CompositeByteBuf$2;-><init>()V

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 147
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 148
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 150
    iput v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .line 152
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZII)V
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "initSize"    # I

    .line 64
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 66
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 67
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 72
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 73
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 74
    invoke-static {p4, p3}, Lio/netty/buffer/CompositeByteBuf;->newCompArray(II)[Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .line 75
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxNumComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)V
    .locals 7
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p6, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/buffer/ByteBufAllocator;",
            "ZI",
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "TT;>;[TT;I)V"
        }
    .end annotation

    .line 133
    .local p4, "wrapper":Lio/netty/buffer/CompositeByteBuf$ByteWrapper;, "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<TT;>;"
    .local p5, "buffers":[Ljava/lang/Object;, "[TT;"
    array-length v0, p5

    sub-int/2addr v0, p6

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 135
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)I

    .line 136
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 138
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZILjava/lang/Iterable;)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBufAllocator;",
            "ZI",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p4, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    instance-of v0, p4, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 99
    invoke-direct {p0, v1, v1, p4}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    .line 100
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 101
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;I)V

    .line 83
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;I)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "buffers"    # [Lio/netty/buffer/ByteBuf;
    .param p5, "offset"    # I

    .line 87
    array-length v0, p4

    sub-int/2addr v0, p5

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p4, p5}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    .line 90
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 91
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setIndex0(II)V

    .line 92
    return-void
.end method

.method static synthetic access$200(Lio/netty/buffer/CompositeByteBuf;)[Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/CompositeByteBuf;

    .line 49
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    return-object v0
.end method

.method private addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "c"    # Lio/netty/buffer/CompositeByteBuf$Component;

    .line 2335
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->shiftComps(II)V

    .line 2336
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aput-object p2, v0, p1

    .line 2337
    return-void
.end method

.method private addComponent0(ZILio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 281
    if-eqz p3, :cond_5

    .line 282
    const/4 v0, 0x0

    .line 284
    .local v0, "wasAdded":Z
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 287
    invoke-static {p3}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    .line 288
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    .line 292
    .local v2, "readableBytes":I
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v3

    invoke-static {v3, v2}, Lio/netty/buffer/CompositeByteBuf;->checkForOverflow(II)V

    .line 294
    invoke-direct {p0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V

    .line 295
    const/4 v0, 0x1

    .line 296
    if-lez v2, :cond_0

    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p2, v3, :cond_0

    .line 297
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    goto :goto_0

    .line 298
    :cond_0
    if-lez p2, :cond_1

    .line 299
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, p2, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-virtual {v1, v3}, Lio/netty/buffer/CompositeByteBuf$Component;->reposition(I)V

    .line 301
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 302
    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    :cond_2
    nop

    .line 306
    if-nez v0, :cond_3

    .line 307
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 304
    :cond_3
    return p2

    .line 306
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "readableBytes":I
    :catchall_0
    move-exception v1

    if-nez v0, :cond_4

    .line 307
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 309
    :cond_4
    throw v1

    .line 281
    .end local v0    # "wasAdded":Z
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p1, "increaseIndex"    # Z
    .param p2, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 535
    .local p3, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    instance-of v0, p3, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 537
    move-object v0, p3

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0

    .line 539
    :cond_0
    const-string v0, "buffers"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 540
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 542
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/buffer/ByteBuf;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 545
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 547
    .local v1, "b":Lio/netty/buffer/ByteBuf;
    if-nez v1, :cond_1

    .line 548
    goto :goto_1

    .line 550
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    move-result v2

    add-int/lit8 p2, v2, 0x1

    .line 551
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, v2

    .line 552
    .end local v1    # "b":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 554
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_1

    .line 558
    :cond_3
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 559
    return-object p0

    .line 554
    :catchall_0
    move-exception v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_2

    .line 557
    :cond_4
    throw v1
.end method

.method private addComponents0(ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)I
    .locals 4
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI",
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "TT;>;[TT;I)I"
        }
    .end annotation

    .line 424
    .local p3, "wrapper":Lio/netty/buffer/CompositeByteBuf$ByteWrapper;, "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<TT;>;"
    .local p4, "buffers":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 427
    move v0, p5

    .local v0, "i":I
    array-length v1, p4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 428
    aget-object v2, p4, v0

    .line 429
    .local v2, "b":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 430
    goto :goto_2

    .line 432
    :cond_0
    invoke-interface {p3, v2}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 433
    invoke-interface {p3, v2}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->wrap(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 434
    .end local p2    # "cIndex":I
    .local v3, "cIndex":I
    iget p2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 435
    .local p2, "size":I
    if-le v3, p2, :cond_1

    .line 436
    move v3, p2

    goto :goto_1

    .line 435
    :cond_1
    move p2, v3

    .line 427
    .end local v2    # "b":Ljava/lang/Object;, "TT;"
    .end local v3    # "cIndex":I
    .local p2, "cIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3
    :goto_2
    return p2
.end method

.method private addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 9
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffers"    # [Lio/netty/buffer/ByteBuf;
    .param p4, "arrOffset"    # I

    .line 373
    array-length v0, p3

    .local v0, "len":I
    sub-int v1, v0, p4

    .line 375
    .local v1, "count":I
    const/4 v2, 0x0

    .line 376
    .local v2, "readableBytes":I
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v3

    .line 377
    .local v3, "capacity":I
    move v4, p4

    .local v4, "i":I
    :goto_0
    array-length v5, p3

    if-ge v4, v5, :cond_1

    .line 378
    aget-object v5, p3, v4

    .line 379
    .local v5, "b":Lio/netty/buffer/ByteBuf;
    if-nez v5, :cond_0

    .line 380
    goto :goto_1

    .line 382
    :cond_0
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    add-int/2addr v2, v6

    .line 386
    invoke-static {v3, v2}, Lio/netty/buffer/CompositeByteBuf;->checkForOverflow(II)V

    .line 377
    .end local v5    # "b":Lio/netty/buffer/ByteBuf;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 389
    .end local v4    # "i":I
    :cond_1
    :goto_1
    const v4, 0x7fffffff

    .line 391
    .local v4, "ci":I
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 392
    invoke-direct {p0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->shiftComps(II)V

    .line 393
    if-lez p2, :cond_2

    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v6, p2, -0x1

    aget-object v5, v5, v6

    iget v5, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 394
    .local v5, "nextOffset":I
    :goto_2
    move v4, p2

    :goto_3
    if-ge p4, v0, :cond_4

    .line 395
    aget-object v6, p3, p4

    .line 396
    .local v6, "b":Lio/netty/buffer/ByteBuf;
    if-nez v6, :cond_3

    .line 397
    goto :goto_4

    .line 399
    :cond_3
    invoke-static {v6}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    invoke-direct {p0, v7, v5}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v7

    .line 400
    .local v7, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aput-object v7, v8, v4

    .line 401
    iget v8, v7, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v8

    .line 394
    .end local v6    # "b":Lio/netty/buffer/ByteBuf;
    .end local v7    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 403
    :cond_4
    :goto_4
    nop

    .line 406
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-ge v4, v6, :cond_6

    .line 407
    add-int v6, p2, v1

    if-ge v4, v6, :cond_5

    .line 409
    add-int v6, p2, v1

    invoke-direct {p0, v4, v6}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 410
    :goto_5
    if-ge p4, v0, :cond_5

    .line 411
    aget-object v6, p3, p4

    invoke-static {v6}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 410
    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 414
    :cond_5
    invoke-direct {p0, v4}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 416
    :cond_6
    if-eqz p1, :cond_7

    if-le v4, p2, :cond_7

    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v4, v6, :cond_7

    .line 417
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v8, v4, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v8, v8, p2

    iget v8, v8, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 403
    :cond_7
    return-object p0

    .line 406
    .end local v5    # "nextOffset":I
    :catchall_0
    move-exception v5

    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-ge v4, v6, :cond_9

    .line 407
    add-int v6, p2, v1

    if-ge v4, v6, :cond_8

    .line 409
    add-int v6, p2, v1

    invoke-direct {p0, v4, v6}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 410
    :goto_6
    if-ge p4, v0, :cond_8

    .line 411
    aget-object v6, p3, p4

    invoke-static {v6}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 410
    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 414
    :cond_8
    invoke-direct {p0, v4}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 416
    :cond_9
    if-eqz p1, :cond_a

    if-le v4, p2, :cond_a

    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v4, v6, :cond_a

    .line 417
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v8, v4, -0x1

    aget-object v7, v7, v8

    iget v7, v7, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v8, v8, p2

    iget v8, v8, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 419
    :cond_a
    throw v5
.end method

.method private allocBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "capacity"    # I

    .line 1879
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private checkComponentIndex(I)V
    .locals 3
    .param p1, "cIndex"    # I

    .line 576
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 577
    if-ltz p1, :cond_0

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt p1, v0, :cond_0

    .line 582
    return-void

    .line 578
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 580
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 578
    const-string v2, "cIndex: %d (expected: >= 0 && <= numComponents(%d))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkComponentIndex(II)V
    .locals 4
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 585
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 586
    if-ltz p1, :cond_0

    add-int v0, p1, p2

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v0, v1, :cond_0

    .line 592
    return-void

    .line 587
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 590
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 587
    const-string v2, "cIndex: %d, numComponents: %d (expected: cIndex >= 0 && cIndex + numComponents <= totalNumComponents(%d))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkForOverflow(II)V
    .locals 3
    .param p0, "capacity"    # I
    .param p1, "readableBytes"    # I

    .line 271
    add-int v0, p0, p1

    if-ltz v0, :cond_0

    .line 275
    return-void

    .line 272
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t increase by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as capacity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") would overflow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearComps()V
    .locals 2

    .line 2311
    const/4 v0, 0x0

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 2312
    return-void
.end method

.method private consolidate0(II)V
    .locals 7
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 1751
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 1752
    return-void

    .line 1755
    :cond_0
    add-int v0, p1, p2

    .line 1756
    .local v0, "endCIndex":I
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, p1

    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1757
    .local v2, "startOffset":I
    :goto_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, v2

    .line 1758
    .local v3, "capacity":I
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 1760
    .local v4, "consolidated":Lio/netty/buffer/ByteBuf;
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 1761
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lio/netty/buffer/CompositeByteBuf$Component;->transferTo(Lio/netty/buffer/ByteBuf;)V

    .line 1760
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1763
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1764
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 1765
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {p0, v4, v1}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    aput-object v1, v5, p1

    .line 1766
    if-nez p1, :cond_3

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eq p2, v1, :cond_4

    .line 1767
    :cond_3
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1769
    :cond_4
    return-void
.end method

.method private consolidateIfNeeded()V
    .locals 2

    .line 569
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 570
    .local v0, "size":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-le v0, v1, :cond_0

    .line 571
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    .line 573
    :cond_0
    return-void
.end method

.method private copyTo(IIILio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "componentId"    # I
    .param p4, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 1532
    const/4 v0, 0x0

    .line 1533
    .local v0, "dstIndex":I
    move v1, p3

    .line 1535
    .local v1, "i":I
    :goto_0
    if-lez p2, :cond_0

    .line 1536
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    .line 1537
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1538
    .local v3, "localLength":I
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v4, v5, p4, v0, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1539
    add-int/2addr p1, v3

    .line 1540
    add-int/2addr v0, v3

    .line 1541
    sub-int/2addr p2, v3

    .line 1542
    nop

    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    add-int/lit8 v1, v1, 0x1

    .line 1543
    goto :goto_0

    .line 1545
    :cond_0
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1546
    return-void
.end method

.method private static ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 313
    sget-boolean v0, Lio/netty/buffer/CompositeByteBuf;->checkAccessible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0

    .line 316
    :cond_1
    :goto_0
    return-object p0
.end method

.method private findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2
    .param p1, "offset"    # I

    .line 1594
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1595
    .local v0, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v0, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v1, :cond_0

    .line 1596
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1597
    return-object v0

    .line 1599
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 1600
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    return-object v1
.end method

.method private findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2
    .param p1, "offset"    # I

    .line 1604
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1605
    .local v0, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v0, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v1, :cond_0

    .line 1606
    return-object v0

    .line 1608
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    return-object v1
.end method

.method private findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 6
    .param p1, "offset"    # I

    .line 1612
    const/4 v0, 0x0

    .local v0, "low":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_3

    .line 1613
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1614
    .local v2, "mid":I
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1615
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v3, :cond_2

    .line 1619
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_0

    .line 1620
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 1621
    :cond_0
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v4, :cond_1

    .line 1622
    add-int/lit8 v1, v2, -0x1

    .line 1627
    .end local v2    # "mid":I
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_1
    goto :goto_0

    .line 1624
    .restart local v2    # "mid":I
    .restart local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_1
    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1625
    return-object v3

    .line 1616
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "No component found for offset. Composite buffer layout might be outdated, e.g. from a discardReadBytes call."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1629
    .end local v0    # "low":I
    .end local v1    # "high":I
    .end local v2    # "mid":I
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_3
    new-instance v0, Ljava/lang/Error;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newCompArray(II)[Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2
    .param p0, "initComponents"    # I
    .param p1, "maxNumComponents"    # I

    .line 141
    const/16 v0, 0x10

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    .local v0, "capacityGuess":I
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/netty/buffer/CompositeByteBuf$Component;

    return-object v1
.end method

.method private newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 13
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I

    .line 321
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    .line 322
    .local v8, "srcIndex":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    .line 325
    .local v9, "len":I
    move-object v0, p1

    .line 326
    .local v0, "unwrapped":Lio/netty/buffer/ByteBuf;
    move v1, v8

    .line 327
    .local v1, "unwrappedIndex":I
    :goto_0
    instance-of v2, v0, Lio/netty/buffer/WrappedByteBuf;

    if-nez v2, :cond_6

    instance-of v2, v0, Lio/netty/buffer/SwappedByteBuf;

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 332
    :cond_0
    instance-of v2, v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    if-eqz v2, :cond_1

    .line 333
    move-object v2, v0

    check-cast v2, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 334
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v10, v0

    move v11, v1

    goto :goto_2

    .line 335
    :cond_1
    instance-of v2, v0, Lio/netty/buffer/PooledSlicedByteBuf;

    if-eqz v2, :cond_2

    .line 336
    move-object v2, v0

    check-cast v2, Lio/netty/buffer/PooledSlicedByteBuf;

    iget v2, v2, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    add-int/2addr v1, v2

    .line 337
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v10, v0

    move v11, v1

    goto :goto_2

    .line 338
    :cond_2
    instance-of v2, v0, Lio/netty/buffer/DuplicatedByteBuf;

    if-nez v2, :cond_4

    instance-of v2, v0, Lio/netty/buffer/PooledDuplicatedByteBuf;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v10, v0

    move v11, v1

    goto :goto_2

    .line 339
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v10, v0

    move v11, v1

    .line 344
    .end local v0    # "unwrapped":Lio/netty/buffer/ByteBuf;
    .end local v1    # "unwrappedIndex":I
    .local v10, "unwrapped":Lio/netty/buffer/ByteBuf;
    .local v11, "unwrappedIndex":I
    :goto_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    if-ne v0, v9, :cond_5

    move-object v7, p1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move-object v7, v0

    .line 346
    .local v7, "slice":Lio/netty/buffer/ByteBuf;
    :goto_3
    new-instance v12, Lio/netty/buffer/CompositeByteBuf$Component;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 347
    invoke-virtual {v10, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    move-object v0, v12

    move v2, v8

    move v4, v11

    move v5, p2

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V

    .line 346
    return-object v12

    .line 328
    .end local v7    # "slice":Lio/netty/buffer/ByteBuf;
    .end local v10    # "unwrapped":Lio/netty/buffer/ByteBuf;
    .end local v11    # "unwrappedIndex":I
    .restart local v0    # "unwrapped":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "unwrappedIndex":I
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method private removeComp(I)V
    .locals 1
    .param p1, "i"    # I

    .line 2315
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 2316
    return-void
.end method

.method private removeCompRange(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 2319
    if-lt p1, p2, :cond_0

    .line 2320
    return-void

    .line 2322
    :cond_0
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 2323
    .local v0, "size":I
    if-ltz p1, :cond_3

    if-gt p2, v0, :cond_3

    .line 2324
    if-ge p2, v0, :cond_1

    .line 2325
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    sub-int v3, v0, p2

    invoke-static {v1, p2, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2327
    :cond_1
    sub-int v1, v0, p2

    add-int/2addr v1, p1

    .line 2328
    .local v1, "newSize":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2329
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 2328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2331
    .end local v2    # "i":I
    :cond_2
    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 2332
    return-void

    .line 2323
    .end local v1    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private shiftComps(II)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "count"    # I

    .line 2340
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v0, "size":I
    add-int v1, v0, p2

    .line 2341
    .local v1, "newSize":I
    if-ltz p1, :cond_5

    if-gt p1, v0, :cond_5

    if-lez p2, :cond_5

    .line 2342
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    array-length v2, v2

    if-le v1, v2, :cond_3

    .line 2344
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2346
    .local v2, "newArrSize":I
    if-ne p1, v0, :cond_0

    .line 2347
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const-class v4, [Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/netty/buffer/CompositeByteBuf$Component;

    .local v3, "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    goto :goto_0

    .line 2349
    .end local v3    # "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_0
    new-array v3, v2, [Lio/netty/buffer/CompositeByteBuf$Component;

    .line 2350
    .restart local v3    # "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    if-lez p1, :cond_1

    .line 2351
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2353
    :cond_1
    if-ge p1, v0, :cond_2

    .line 2354
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int v5, p1, p2

    sub-int v6, v0, p1

    invoke-static {v4, p1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2357
    :cond_2
    :goto_0
    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .end local v2    # "newArrSize":I
    .end local v3    # "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    goto :goto_1

    .line 2358
    :cond_3
    if-ge p1, v0, :cond_4

    .line 2359
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int v4, p1, p2

    sub-int v5, v0, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 2358
    :cond_4
    :goto_1
    nop

    .line 2361
    :goto_2
    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 2362
    return-void

    .line 2341
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private toComponentIndex0(I)I
    .locals 7
    .param p1, "offset"    # I

    .line 921
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 922
    .local v0, "size":I
    if-nez p1, :cond_1

    .line 923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 924
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lez v2, :cond_0

    .line 925
    return v1

    .line 923
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 929
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gt v0, v1, :cond_4

    .line 930
    const/4 v1, 0x0

    if-eq v0, v2, :cond_2

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v1

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    .line 932
    :cond_4
    const/4 v1, 0x0

    .local v1, "low":I
    move v3, v0

    .local v3, "high":I
    :goto_1
    if-gt v1, v3, :cond_7

    .line 933
    add-int v4, v1, v3

    ushr-int/2addr v4, v2

    .line 934
    .local v4, "mid":I
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v5, v4

    .line 935
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v6, :cond_5

    .line 936
    add-int/lit8 v1, v4, 0x1

    goto :goto_2

    .line 937
    :cond_5
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v6, :cond_6

    .line 938
    add-int/lit8 v3, v4, -0x1

    .line 942
    .end local v4    # "mid":I
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_2
    goto :goto_1

    .line 940
    .restart local v4    # "mid":I
    .restart local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_6
    return v4

    .line 944
    .end local v1    # "low":I
    .end local v3    # "high":I
    .end local v4    # "mid":I
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_7
    new-instance v1, Ljava/lang/Error;

    const-string v2, "should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateComponentOffsets(I)V
    .locals 3
    .param p1, "cIndex"    # I

    .line 595
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 596
    .local v0, "size":I
    if-gt v0, p1, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 601
    .local v1, "nextIndex":I
    :goto_0
    if-ge p1, v0, :cond_2

    .line 602
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, p1

    .line 603
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v2, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->reposition(I)V

    .line 604
    iget v1, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 601
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 606
    :cond_2
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .line 960
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 961
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    return v1
.end method

.method protected _getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1014
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1015
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1016
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v1

    return v1

    .line 1017
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 1018
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    .line 1020
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getIntLE(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1026
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1027
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1028
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result v1

    return v1

    .line 1029
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 1030
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1

    .line 1032
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .line 1038
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1039
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1040
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_1

    .line 1042
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v3

    int-to-long v6, v3

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1

    .line 1044
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method protected _getLongLE(I)J
    .locals 8
    .param p1, "index"    # I

    .line 1050
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1051
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1052
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide v1

    return-wide v1

    .line 1053
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_1

    .line 1054
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 1056
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v3

    int-to-long v6, v3

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1
.end method

.method protected _getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .line 966
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 967
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 968
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    return v1

    .line 969
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 970
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 972
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method protected _getShortLE(I)S
    .locals 3
    .param p1, "index"    # I

    .line 978
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 979
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 980
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result v1

    return v1

    .line 981
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 982
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 984
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 4
    .param p1, "index"    # I

    .line 990
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 991
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 992
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v1

    return v1

    .line 993
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 994
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 996
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 4
    .param p1, "index"    # I

    .line 1002
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1003
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1004
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v1

    return v1

    .line 1005
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 1006
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1

    .line 1008
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method protected _setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1189
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1190
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 1191
    return-void
.end method

.method protected _setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1272
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1273
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1274
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1276
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1277
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    goto :goto_0

    .line 1279
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1280
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1282
    :goto_0
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1286
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1287
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1288
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1289
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1290
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1291
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    goto :goto_0

    .line 1293
    :cond_1
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1294
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1296
    :goto_0
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1307
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1308
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1309
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1310
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    if-ne v1, v2, :cond_1

    .line 1311
    ushr-long v1, p2, v3

    long-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1312
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    goto :goto_0

    .line 1314
    :cond_1
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1315
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v3

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1317
    :goto_0
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1321
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1322
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1323
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    if-ne v1, v2, :cond_1

    .line 1325
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    .line 1326
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v3

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    goto :goto_0

    .line 1328
    :cond_1
    ushr-long v1, p2, v3

    long-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    .line 1329
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    .line 1331
    :goto_0
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1237
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1238
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1239
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1241
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1242
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1244
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1245
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1247
    :goto_0
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1251
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1252
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1253
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1254
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1255
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1256
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1258
    :cond_1
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1259
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1261
    :goto_0
    return-void
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1202
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1203
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1204
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1205
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1206
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1207
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1209
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1210
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1212
    :goto_0
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1216
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1217
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1218
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1220
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1221
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1223
    :cond_1
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1224
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1226
    :goto_0
    return-void
.end method

.method public addComponent(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 264
    const-string v0, "buffer"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    .line 266
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 267
    return-object p0
.end method

.method public addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 222
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(ILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 457
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 365
    const-string v0, "buffers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    .line 367
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 368
    return-object p0
.end method

.method public addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 195
    .local p1, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZLjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(ZLjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 251
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {p0, p1, v0, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 235
    const-string v0, "buffers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    .line 237
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 238
    return-object p0
.end method

.method public varargs addComponents([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 26
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 471
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "buffer"

    invoke-static {v3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 472
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 473
    .local v4, "ridx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    .line 474
    .local v5, "widx":I
    if-ne v4, v5, :cond_0

    .line 475
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 476
    return-object v1

    .line 478
    :cond_0
    instance-of v0, v3, Lio/netty/buffer/CompositeByteBuf;

    if-nez v0, :cond_1

    .line 479
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {v1, v2, v0, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    .line 480
    invoke-direct/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 481
    return-object v1

    .line 484
    :cond_1
    instance-of v0, v3, Lio/netty/buffer/WrappedCompositeByteBuf;

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    move-object v6, v0

    .local v0, "from":Lio/netty/buffer/CompositeByteBuf;
    goto :goto_0

    .line 487
    .end local v0    # "from":Lio/netty/buffer/CompositeByteBuf;
    :cond_2
    move-object v0, v3

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    move-object v6, v0

    .line 489
    .local v6, "from":Lio/netty/buffer/CompositeByteBuf;
    :goto_0
    sub-int v0, v5, v4

    invoke-virtual {v6, v4, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 490
    iget-object v7, v6, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .line 491
    .local v7, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    iget v8, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 492
    .local v8, "compCountBefore":I
    iget v9, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 494
    .local v9, "writerIndexBefore":I
    :try_start_0
    invoke-direct {v6, v4}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .local v0, "cidx":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v10

    move/from16 v18, v10

    .line 495
    .local v18, "newOffset":I
    :goto_1
    aget-object v10, v7, v0

    move-object v15, v10

    .line 496
    .local v15, "component":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v10, v15, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    move v14, v10

    .line 497
    .local v14, "compOffset":I
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v13, v10

    .line 498
    .local v13, "fromIdx":I
    iget v10, v15, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v12, v10

    .line 499
    .local v12, "toIdx":I
    sub-int v19, v12, v13

    .line 500
    .local v19, "len":I
    if-lez v19, :cond_3

    .line 501
    iget v11, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    new-instance v10, Lio/netty/buffer/CompositeByteBuf$Component;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v20, v6

    .end local v6    # "from":Lio/netty/buffer/CompositeByteBuf;
    .local v20, "from":Lio/netty/buffer/CompositeByteBuf;
    :try_start_1
    iget-object v6, v15, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    .line 502
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-virtual {v15, v13}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v7

    .end local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .local v21, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :try_start_2
    iget-object v7, v15, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 503
    invoke-virtual {v15, v13}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v17

    const/16 v22, 0x0

    move-object/from16 v23, v10

    move v3, v11

    move-object v11, v6

    move v6, v12

    .end local v12    # "toIdx":I
    .local v6, "toIdx":I
    move/from16 v12, v16

    move/from16 v24, v13

    .end local v13    # "fromIdx":I
    .local v24, "fromIdx":I
    move-object v13, v7

    move v7, v14

    .end local v14    # "compOffset":I
    .local v7, "compOffset":I
    move/from16 v14, v17

    move-object/from16 v25, v15

    .end local v15    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .local v25, "component":Lio/netty/buffer/CompositeByteBuf$Component;
    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v22

    invoke-direct/range {v10 .. v17}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V

    .line 501
    move-object/from16 v10, v23

    invoke-direct {v1, v3, v10}, Lio/netty/buffer/CompositeByteBuf;->addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V

    goto :goto_2

    .line 518
    .end local v0    # "cidx":I
    .end local v6    # "toIdx":I
    .end local v18    # "newOffset":I
    .end local v19    # "len":I
    .end local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v24    # "fromIdx":I
    .end local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .local v7, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    goto :goto_4

    .line 500
    .end local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .end local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v0    # "cidx":I
    .local v6, "from":Lio/netty/buffer/CompositeByteBuf;
    .restart local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v12    # "toIdx":I
    .restart local v13    # "fromIdx":I
    .restart local v14    # "compOffset":I
    .restart local v15    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v18    # "newOffset":I
    .restart local v19    # "len":I
    :cond_3
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move v6, v12

    move/from16 v24, v13

    move v7, v14

    move-object/from16 v25, v15

    .line 505
    .end local v12    # "toIdx":I
    .end local v13    # "fromIdx":I
    .end local v14    # "compOffset":I
    .end local v15    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .local v6, "toIdx":I
    .local v7, "compOffset":I
    .restart local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .restart local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v24    # "fromIdx":I
    .restart local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_2
    if-ne v5, v6, :cond_7

    .line 506
    nop

    .line 510
    .end local v0    # "cidx":I
    .end local v6    # "toIdx":I
    .end local v7    # "compOffset":I
    .end local v18    # "newOffset":I
    .end local v19    # "len":I
    .end local v24    # "fromIdx":I
    .end local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v2, :cond_4

    .line 511
    sub-int v0, v5, v4

    add-int/2addr v0, v9

    iput v0, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 513
    :cond_4
    invoke-direct/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 514
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 515
    const/4 v0, 0x0

    .line 516
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    nop

    .line 518
    if-eqz v0, :cond_6

    .line 520
    if-eqz v2, :cond_5

    .line 521
    iput v9, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 523
    :cond_5
    iget v3, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "cidx":I
    :goto_3
    if-lt v3, v8, :cond_6

    .line 524
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 525
    invoke-direct {v1, v3}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    .line 523
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 516
    .end local v3    # "cidx":I
    :cond_6
    return-object v1

    .line 518
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 508
    .local v0, "cidx":I
    .restart local v6    # "toIdx":I
    .restart local v7    # "compOffset":I
    .restart local v18    # "newOffset":I
    .restart local v19    # "len":I
    .restart local v24    # "fromIdx":I
    .restart local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_7
    add-int v18, v18, v19

    .line 494
    .end local v6    # "toIdx":I
    .end local v7    # "compOffset":I
    .end local v19    # "len":I
    .end local v24    # "fromIdx":I
    .end local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto/16 :goto_1

    .line 518
    .end local v0    # "cidx":I
    .end local v18    # "newOffset":I
    .end local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .end local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .local v6, "from":Lio/netty/buffer/CompositeByteBuf;
    .local v7, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "from":Lio/netty/buffer/CompositeByteBuf;
    .end local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .restart local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_4
    if-eqz p2, :cond_9

    .line 520
    if-eqz v2, :cond_8

    .line 521
    iput v9, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 523
    :cond_8
    iget v3, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "cidx":I
    :goto_5
    if-lt v3, v8, :cond_9

    .line 524
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 525
    invoke-direct {v1, v3}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    .line 523
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 528
    .end local v3    # "cidx":I
    :cond_9
    throw v0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 890
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 2

    .line 789
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    packed-switch v0, :pswitch_data_0

    .line 795
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 793
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    .line 791
    :pswitch_1
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public arrayOffset()I
    .locals 2

    .line 801
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 808
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 805
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    .line 806
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    return v1

    .line 803
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public capacity()I
    .locals 3

    .line 839
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 840
    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public capacity(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 9
    .param p1, "newCapacity"    # I

    .line 845
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkNewCapacity(I)V

    .line 847
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v0, "size":I
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v1

    .line 848
    .local v1, "oldCapacity":I
    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    .line 849
    sub-int v3, p1, v1

    .line 850
    .local v3, "paddingLength":I
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 851
    .local v4, "padding":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v2, v0, v4}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    .line 852
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-lt v2, v5, :cond_4

    .line 855
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    goto :goto_2

    .line 857
    .end local v3    # "paddingLength":I
    .end local v4    # "padding":Lio/netty/buffer/ByteBuf;
    :cond_0
    if-ge p1, v1, :cond_4

    .line 858
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 859
    add-int/lit8 v3, v0, -0x1

    .line 860
    .local v3, "i":I
    sub-int v4, v1, p1

    .local v4, "bytesToTrim":I
    :goto_0
    if-ltz v3, :cond_2

    .line 861
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v5, v3

    .line 862
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v6

    .line 863
    .local v6, "cLength":I
    if-ge v4, v6, :cond_1

    .line 865
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v7, v4

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 866
    invoke-static {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 867
    .local v7, "slice":Lio/netty/buffer/ByteBuf;
    if-eqz v7, :cond_2

    .line 870
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-static {v5, v2}, Lio/netty/buffer/CompositeByteBuf$Component;->access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 874
    .end local v7    # "slice":Lio/netty/buffer/ByteBuf;
    :cond_1
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 875
    sub-int/2addr v4, v6

    .line 860
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v6    # "cLength":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 877
    .end local v4    # "bytesToTrim":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v2, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 879
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v2

    if-le v2, p1, :cond_3

    .line 880
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/CompositeByteBuf;->setIndex0(II)V

    goto :goto_3

    .line 881
    :cond_3
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    if-le v2, p1, :cond_5

    .line 882
    iput p1, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    goto :goto_3

    .line 857
    .end local v3    # "i":I
    :cond_4
    :goto_2
    nop

    .line 885
    :cond_5
    :goto_3
    return-object p0
.end method

.method public bridge synthetic clear()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->clear()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1983
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 1984
    return-object p0
.end method

.method public component(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .line 1555
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 1556
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public componentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "offset"    # I

    .line 1566
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public consolidate()Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 1733
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1734
    const/4 v0, 0x0

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    .line 1735
    return-object p0
.end method

.method public consolidate(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 1745
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 1746
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    .line 1747
    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1523
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1524
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1525
    .local v0, "dst":Lio/netty/buffer/ByteBuf;
    if-eqz p2, :cond_0

    .line 1526
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->copyTo(IIILio/netty/buffer/ByteBuf;)V

    .line 1528
    :cond_0
    return-object v0
.end method

.method protected deallocate()V
    .locals 3

    .line 2256
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    if-eqz v0, :cond_0

    .line 2257
    return-void

    .line 2260
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    .line 2263
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2264
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 2263
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2266
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public decompose(II)Ljava/util/List;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 723
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 724
    if-nez p2, :cond_0

    .line 725
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 728
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 729
    .local v0, "componentId":I
    move v1, p2

    .line 731
    .local v1, "bytesToSlice":I
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 736
    .local v2, "firstC":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v4

    iget v5, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v5, p1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 737
    .local v3, "slice":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int/2addr v1, v4

    .line 739
    if-nez v1, :cond_1

    .line 740
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 743
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    sub-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 744
    .local v4, "sliceList":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_2
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v5, v0

    .line 752
    .local v5, "component":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {v5, v7}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v7

    .line 753
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 752
    invoke-virtual {v6, v7, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 754
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    sub-int/2addr v1, v6

    .line 755
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    .end local v5    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    if-gtz v1, :cond_2

    .line 758
    return-object v4
.end method

.method public bridge synthetic discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 10

    .line 1823
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1824
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    .line 1825
    .local v0, "readerIndex":I
    if-nez v0, :cond_0

    .line 1826
    return-object p0

    .line 1830
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    .line 1831
    .local v1, "writerIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 1832
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1833
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1832
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1835
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1836
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->clearComps()V

    .line 1837
    invoke-virtual {p0, v3, v3}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1838
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1839
    return-object p0

    .line 1842
    :cond_2
    const/4 v4, 0x0

    .line 1843
    .local v4, "firstComponentId":I
    const/4 v5, 0x0

    .line 1844
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v6, "size":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1845
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v7, v4

    .line 1846
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-le v7, v0, :cond_3

    .line 1847
    goto :goto_2

    .line 1849
    :cond_3
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1844
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1853
    .end local v6    # "size":I
    :cond_4
    :goto_2
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v6, v0, v6

    .line 1854
    .local v6, "trimmedBytes":I
    iput v3, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1855
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v7, v0

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1856
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    add-int/2addr v7, v0

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    .line 1857
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    add-int/2addr v7, v0

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    .line 1858
    invoke-static {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 1859
    .local v7, "slice":Lio/netty/buffer/ByteBuf;
    if-eqz v7, :cond_5

    .line 1862
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-static {v5, v8}, Lio/netty/buffer/CompositeByteBuf$Component;->access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 1864
    :cond_5
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1865
    .local v8, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v8, :cond_6

    iget v9, v8, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v9, v0, :cond_6

    .line 1866
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1869
    :cond_6
    invoke-direct {p0, v3, v4}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 1872
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1873
    sub-int v2, v1, v0

    invoke-virtual {p0, v3, v2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1874
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1875
    return-object p0
.end method

.method public discardReadComponents()Lio/netty/buffer/CompositeByteBuf;
    .locals 8

    .line 1775
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1776
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    .line 1777
    .local v0, "readerIndex":I
    if-nez v0, :cond_0

    .line 1778
    return-object p0

    .line 1782
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    .line 1783
    .local v1, "writerIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 1784
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1785
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1784
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1787
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1788
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->clearComps()V

    .line 1789
    invoke-virtual {p0, v3, v3}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1790
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1791
    return-object p0

    .line 1795
    :cond_2
    const/4 v4, 0x0

    .line 1796
    .local v4, "firstComponentId":I
    const/4 v5, 0x0

    .line 1797
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v6, "size":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1798
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v7, v4

    .line 1799
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-le v7, v0, :cond_3

    .line 1800
    goto :goto_2

    .line 1802
    :cond_3
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1797
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1804
    .end local v6    # "size":I
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 1805
    return-object p0

    .line 1807
    :cond_5
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1808
    .local v6, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v6, :cond_6

    iget v7, v6, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v7, v0, :cond_6

    .line 1809
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1811
    :cond_6
    invoke-direct {p0, v3, v4}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 1814
    iget v2, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1815
    .local v2, "offset":I
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1816
    sub-int v3, v0, v2

    sub-int v7, v1, v2

    invoke-virtual {p0, v3, v7}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1817
    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1818
    return-object p0
.end method

.method public bridge synthetic discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2251
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadComponents()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "minWritableBytes"    # I

    .line 2013
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 2014
    return-object p0
.end method

.method protected forEachByteAsc0(IILio/netty/util/ByteProcessor;)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 669
    const/4 v0, -0x1

    if-gt p2, p1, :cond_0

    .line 670
    return v0

    .line 672
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    .local v1, "i":I
    sub-int v2, p2, p1

    .local v2, "length":I
    :goto_0
    if-lez v2, :cond_4

    .line 673
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v1

    .line 674
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ne v4, v5, :cond_1

    .line 675
    goto :goto_2

    .line 677
    :cond_1
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 678
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    .line 679
    .local v5, "localStart":I
    iget v6, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v6, p1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 681
    .local v6, "localLength":I
    instance-of v7, v4, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lio/netty/buffer/AbstractByteBuf;

    add-int v8, v5, v6

    .line 682
    invoke-virtual {v7, v5, v8, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteAsc0(IILio/netty/util/ByteProcessor;)I

    move-result v7

    goto :goto_1

    .line 683
    :cond_2
    invoke-virtual {v4, v5, v6, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v7

    :goto_1
    nop

    .line 684
    .local v7, "result":I
    if-eq v7, v0, :cond_3

    .line 685
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int v0, v7, v0

    return v0

    .line 687
    :cond_3
    add-int/2addr p1, v6

    .line 688
    sub-int/2addr v2, v6

    .line 672
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "s":Lio/netty/buffer/ByteBuf;
    .end local v5    # "localStart":I
    .end local v6    # "localLength":I
    .end local v7    # "result":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_4
    return v0
.end method

.method protected forEachByteDesc0(IILio/netty/util/ByteProcessor;)I
    .locals 10
    .param p1, "rStart"    # I
    .param p2, "rEnd"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 695
    const/4 v0, -0x1

    if-le p2, p1, :cond_0

    .line 696
    return v0

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    .local v1, "i":I
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p2

    .local v2, "length":I
    :goto_0
    if-lez v2, :cond_4

    .line 699
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v1

    .line 700
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ne v4, v5, :cond_1

    .line 701
    goto :goto_2

    .line 703
    :cond_1
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 704
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    add-int v5, v2, p2

    invoke-virtual {v3, v5}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    .line 705
    .local v5, "localRStart":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "localLength":I
    sub-int v7, v5, v6

    .line 707
    .local v7, "localIndex":I
    instance-of v8, v4, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v8, :cond_2

    move-object v8, v4

    check-cast v8, Lio/netty/buffer/AbstractByteBuf;

    add-int/lit8 v9, v5, -0x1

    .line 708
    invoke-virtual {v8, v9, v7, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v8

    goto :goto_1

    .line 709
    :cond_2
    invoke-virtual {v4, v7, v6, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v8

    :goto_1
    nop

    .line 711
    .local v8, "result":I
    if-eq v8, v0, :cond_3

    .line 712
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int v0, v8, v0

    return v0

    .line 714
    :cond_3
    sub-int/2addr v2, v6

    .line 698
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "s":Lio/netty/buffer/ByteBuf;
    .end local v5    # "localRStart":I
    .end local v6    # "localLength":I
    .end local v7    # "localIndex":I
    .end local v8    # "result":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 716
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_4
    return v0
.end method

.method public getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .line 954
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 955
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    return v1
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 1147
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1148
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    return v1

    .line 1150
    :cond_0
    const-wide/16 v1, 0x0

    .line 1151
    .local v1, "writtenBytes":J
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1152
    .local v6, "buf":Ljava/nio/ByteBuffer;
    add-long v7, p3, v1

    invoke-virtual {p2, v6, v7, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 1151
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1154
    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1155
    const v3, 0x7fffffff

    return v3

    .line 1157
    :cond_2
    long-to-int v3, v1

    return v3
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1130
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 1131
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1132
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 1134
    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 1135
    .local v1, "writtenBytes":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1136
    const v3, 0x7fffffff

    return v3

    .line 1138
    :cond_1
    long-to-int v3, v1

    return v3
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 2019
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 2024
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    .line 2025
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 2026
    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 1109
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    .line 1110
    if-nez p4, :cond_0

    .line 1111
    return-object p0

    .line 1114
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1115
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1116
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1117
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1118
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1119
    add-int/2addr p1, v2

    .line 1120
    add-int/2addr p3, v2

    .line 1121
    sub-int/2addr p4, v2

    .line 1122
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1123
    goto :goto_0

    .line 1124
    :cond_1
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1163
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1164
    if-nez p3, :cond_0

    .line 1165
    return-object p0

    .line 1168
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1169
    .local v0, "i":I
    :goto_0
    if-lez p3, :cond_1

    .line 1170
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1171
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1172
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 1173
    add-int/2addr p1, v2

    .line 1174
    sub-int/2addr p3, v2

    .line 1175
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1176
    goto :goto_0

    .line 1177
    :cond_1
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 1082
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1083
    .local v0, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1085
    .local v1, "length":I
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1086
    if-nez v1, :cond_0

    .line 1087
    return-object p0

    .line 1090
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    .line 1092
    .local v2, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1093
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1094
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1095
    .local v4, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1096
    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    add-int/2addr p1, v4

    .line 1098
    sub-int/2addr v1, v4

    .line 1099
    nop

    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "localLength":I
    add-int/lit8 v2, v2, 0x1

    .line 1100
    goto :goto_0

    .line 1102
    :catchall_0
    move-exception v3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1103
    throw v3

    .line 1102
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1103
    nop

    .line 1104
    return-object p0
.end method

.method public getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 2031
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 1062
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    .line 1063
    if-nez p4, :cond_0

    .line 1064
    return-object p0

    .line 1067
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1068
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1069
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1070
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1071
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1072
    add-int/2addr p1, v2

    .line 1073
    add-int/2addr p3, v2

    .line 1074
    sub-int/2addr p4, v2

    .line 1075
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1076
    goto :goto_0

    .line 1077
    :cond_1
    return-object p0
.end method

.method public hasArray()Z
    .locals 2

    .line 777
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 783
    return v1

    .line 781
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0

    .line 779
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasMemoryAddress()Z
    .locals 2

    .line 814
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 820
    return v1

    .line 818
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    .line 816
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public internalComponent(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .line 1576
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 1577
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public internalComponentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "offset"    # I

    .line 1587
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1651
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    packed-switch v0, :pswitch_data_0

    .line 1657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1655
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/CompositeByteBuf$Component;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 1653
    :pswitch_1
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isAccessible()Z
    .locals 1

    .line 2270
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .locals 4

    .line 763
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 764
    .local v0, "size":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 765
    return v1

    .line 767
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 768
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 769
    return v1

    .line 767
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 772
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 664
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;-><init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/CompositeByteBuf$1;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1989
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 1990
    return-object p0
.end method

.method public bridge synthetic markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2001
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markWriterIndex()Lio/netty/buffer/ByteBuf;

    .line 2002
    return-object p0
.end method

.method public maxNumComponents()I
    .locals 1

    .line 909
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    return v0
.end method

.method public memoryAddress()J
    .locals 5

    .line 826
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    packed-switch v0, :pswitch_data_0

    .line 833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 830
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 831
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v1

    iget v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1

    .line 828
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1663
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1665
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1669
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    .line 1670
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1671
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1672
    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 1667
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    :pswitch_1
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 1679
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1681
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    array-length v3, v0

    if-ne v3, v2, :cond_1

    .line 1682
    aget-object v1, v0, v1

    return-object v1

    .line 1685
    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1686
    .local v2, "merged":Ljava/nio/ByteBuffer;
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 1687
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1686
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1690
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1691
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBufferCount()I
    .locals 4

    .line 1634
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 1635
    .local v0, "size":I
    packed-switch v0, :pswitch_data_0

    .line 1641
    const/4 v1, 0x0

    .line 1642
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_0

    .line 1639
    .end local v1    # "count":I
    .end local v2    # "i":I
    :pswitch_0
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v1

    return v1

    .line 1637
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1642
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1643
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 1642
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1645
    .end local v2    # "i":I
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 2246
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1696
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1697
    if-nez p2, :cond_0

    .line 1698
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    sget-object v1, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 1701
    :cond_0
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v0}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v0

    .line 1703
    .local v0, "buffers":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    .line 1704
    .local v1, "i":I
    :goto_0
    if-lez p2, :cond_1

    .line 1705
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    .line 1706
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1707
    .local v3, "s":Lio/netty/buffer/ByteBuf;
    iget v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1708
    .local v4, "localLength":I
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 1715
    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    goto :goto_1

    .line 1712
    :pswitch_0
    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    goto :goto_2

    .line 1710
    :pswitch_1
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v0    # "buffers":Lio/netty/util/internal/RecyclableArrayList;
    .end local p1    # "index":I
    .end local p2    # "length":I
    throw v5

    .line 1715
    .restart local v0    # "buffers":Lio/netty/util/internal/RecyclableArrayList;
    .restart local p1    # "index":I
    .restart local p2    # "length":I
    :goto_1
    invoke-virtual {v3, v5, v4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1718
    :goto_2
    add-int/2addr p1, v4

    .line 1719
    sub-int/2addr p2, v4

    .line 1720
    nop

    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "s":Lio/netty/buffer/ByteBuf;
    .end local v4    # "localLength":I
    add-int/lit8 v1, v1, 0x1

    .line 1721
    goto :goto_0

    .line 1723
    :cond_1
    sget-object v2, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTE_BUFFERS:[Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lio/netty/util/internal/RecyclableArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1725
    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 1723
    return-object v2

    .line 1725
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 1726
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public numComponents()I
    .locals 1

    .line 902
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 895
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 2079
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-super {p0, p1, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2080
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 2085
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2086
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 2091
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 2092
    return-object p0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2115
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 2116
    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 2109
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 2110
    return-object p0
.end method

.method public readBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "dst"    # [B

    .line 2097
    const/4 v0, 0x0

    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2098
    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 2103
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2104
    return-object p0
.end method

.method public bridge synthetic readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "readerIndex"    # I

    .line 1965
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1966
    return-object p0
.end method

.method public removeComponent(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "cIndex"    # I

    .line 614
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 615
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    .line 616
    .local v0, "comp":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-ne v1, v0, :cond_0

    .line 617
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 619
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 620
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    .line 621
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 623
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 625
    :cond_1
    return-object p0
.end method

.method public removeComponents(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 635
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 637
    if-nez p2, :cond_0

    .line 638
    return-object p0

    .line 640
    :cond_0
    add-int v0, p1, p2

    .line 641
    .local v0, "endIndex":I
    const/4 v1, 0x0

    .line 642
    .local v1, "needsUpdate":Z
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 643
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 644
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v3}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 645
    const/4 v1, 0x1

    .line 647
    :cond_1
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-ne v4, v3, :cond_2

    .line 648
    const/4 v4, 0x0

    iput-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 650
    :cond_2
    invoke-virtual {v3}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 642
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 652
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 654
    if-eqz v1, :cond_4

    .line 656
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 658
    :cond_4
    return-object p0
.end method

.method public bridge synthetic resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1995
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 1996
    return-object p0
.end method

.method public bridge synthetic resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2007
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetWriterIndex()Lio/netty/buffer/ByteBuf;

    .line 2008
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2230
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 2231
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "increment"    # I

    .line 2224
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 2225
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 2036
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setByte(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1182
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1183
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 1184
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1403
    if-nez p3, :cond_0

    .line 1404
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0

    .line 1407
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1408
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1410
    .local v1, "readBytes":I
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 1411
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1412
    .local v3, "localLength":I
    if-nez v3, :cond_2

    .line 1414
    add-int/lit8 v0, v0, 0x1

    .line 1415
    goto :goto_0

    .line 1417
    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v4, v5, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v4

    .line 1418
    .local v4, "localReadBytes":I
    if-gez v4, :cond_3

    .line 1419
    if-nez v1, :cond_5

    .line 1420
    const/4 v5, -0x1

    return v5

    .line 1426
    :cond_3
    add-int/2addr p1, v4

    .line 1427
    sub-int/2addr p3, v4

    .line 1428
    add-int/2addr v1, v4

    .line 1429
    if-ne v4, v3, :cond_4

    .line 1430
    add-int/lit8 v0, v0, 0x1

    .line 1432
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    .end local v4    # "localReadBytes":I
    :cond_4
    :goto_0
    if-gtz p3, :cond_1

    .line 1434
    :cond_5
    return v1
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1481
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1482
    if-nez p5, :cond_0

    .line 1483
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 1486
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1487
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1489
    .local v1, "readBytes":I
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 1490
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1491
    .local v3, "localLength":I
    if-nez v3, :cond_2

    .line 1493
    add-int/lit8 v0, v0, 0x1

    .line 1494
    goto :goto_0

    .line 1496
    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    int-to-long v6, v1

    add-long v7, p3, v6

    move-object v6, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v4

    .line 1498
    .local v4, "localReadBytes":I
    if-nez v4, :cond_3

    .line 1499
    goto :goto_1

    .line 1502
    :cond_3
    if-gez v4, :cond_4

    .line 1503
    if-nez v1, :cond_6

    .line 1504
    const/4 v5, -0x1

    return v5

    .line 1510
    :cond_4
    add-int/2addr p1, v4

    .line 1511
    sub-int/2addr p5, v4

    .line 1512
    add-int/2addr v1, v4

    .line 1513
    if-ne v4, v3, :cond_5

    .line 1514
    add-int/lit8 v0, v0, 0x1

    .line 1516
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    .end local v4    # "localReadBytes":I
    :cond_5
    :goto_0
    if-gtz p5, :cond_1

    .line 1518
    :cond_6
    :goto_1
    return v1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1439
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1440
    if-nez p3, :cond_0

    .line 1441
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1444
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1445
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1447
    .local v1, "readBytes":I
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 1448
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1449
    .local v3, "localLength":I
    if-nez v3, :cond_2

    .line 1451
    add-int/lit8 v0, v0, 0x1

    .line 1452
    goto :goto_0

    .line 1454
    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v4, v5, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v4

    .line 1456
    .local v4, "localReadBytes":I
    if-nez v4, :cond_3

    .line 1457
    goto :goto_1

    .line 1460
    :cond_3
    if-gez v4, :cond_4

    .line 1461
    if-nez v1, :cond_6

    .line 1462
    const/4 v5, -0x1

    return v5

    .line 1468
    :cond_4
    add-int/2addr p1, v4

    .line 1469
    sub-int/2addr p3, v4

    .line 1470
    add-int/2addr v1, v4

    .line 1471
    if-ne v4, v3, :cond_5

    .line 1472
    add-int/lit8 v0, v0, 0x1

    .line 1474
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    .end local v4    # "localReadBytes":I
    :cond_5
    :goto_0
    if-gtz p3, :cond_1

    .line 1476
    :cond_6
    :goto_1
    return v1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .line 2056
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2057
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 2062
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2063
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 1382
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    .line 1383
    if-nez p4, :cond_0

    .line 1384
    return-object p0

    .line 1387
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1388
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1389
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1390
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1391
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1392
    add-int/2addr p1, v2

    .line 1393
    add-int/2addr p3, v2

    .line 1394
    sub-int/2addr p4, v2

    .line 1395
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1396
    goto :goto_0

    .line 1397
    :cond_1
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 1355
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1356
    .local v0, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1358
    .local v1, "length":I
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1359
    if-nez v1, :cond_0

    .line 1360
    return-object p0

    .line 1363
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    .line 1365
    .local v2, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1366
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1367
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1368
    .local v4, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1369
    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    add-int/2addr p1, v4

    .line 1371
    sub-int/2addr v1, v4

    .line 1372
    nop

    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "localLength":I
    add-int/lit8 v2, v2, 0x1

    .line 1373
    goto :goto_0

    .line 1375
    :catchall_0
    move-exception v3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1376
    throw v3

    .line 1375
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1376
    nop

    .line 1377
    return-object p0
.end method

.method public setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 2068
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 1335
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    .line 1336
    if-nez p4, :cond_0

    .line 1337
    return-object p0

    .line 1340
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1341
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1342
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1343
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1344
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1345
    add-int/2addr p1, v2

    .line 1346
    add-int/2addr p3, v2

    .line 1347
    sub-int/2addr p4, v2

    .line 1348
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1349
    goto :goto_0

    .line 1350
    :cond_1
    return-object p0
.end method

.method public bridge synthetic setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setChar(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setChar(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 2041
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setDouble(ID)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 2051
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setFloat(IF)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 2046
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setIndex(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .line 1977
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 1978
    return-object p0
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setInt(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1265
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1266
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1267
    return-object p0
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1300
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1301
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->_setLong(IJ)V

    .line 1302
    return-object p0
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setMedium(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1230
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1231
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setMedium(II)V

    .line 1232
    return-object p0
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setShort(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1195
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1196
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1197
    return-object p0
.end method

.method public bridge synthetic setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setZero(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 2073
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    .line 2074
    return-object p0
.end method

.method public bridge synthetic skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public skipBytes(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "length"    # I

    .line 2121
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 2122
    return-object p0
.end method

.method public toByteIndex(I)I
    .locals 1
    .param p1, "cIndex"    # I

    .line 948
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 949
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    return v0
.end method

.method public toComponentIndex(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 916
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 917
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1884
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1885
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2236
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 2241
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2275
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # Z

    .line 2127
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    .line 2128
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeByte(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 2133
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable0(I)V

    .line 2134
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 2135
    return-object p0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 2182
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-super {p0, p1, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2183
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 2188
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2189
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 2194
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 2195
    return-object p0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 2212
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 2213
    return-object p0
.end method

.method public writeBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "src"    # [B

    .line 2200
    const/4 v0, 0x0

    array-length v1, p1

    invoke-super {p0, p1, v0, v1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2201
    return-object p0
.end method

.method public writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 2206
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2207
    return-object p0
.end method

.method public bridge synthetic writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeChar(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2164
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 2165
    return-object p0
.end method

.method public bridge synthetic writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeDouble(D)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "value"    # D

    .line 2176
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 2177
    return-object p0
.end method

.method public bridge synthetic writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeFloat(F)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # F

    .line 2170
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-super {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 2171
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2152
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 2153
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # J

    .line 2158
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 2159
    return-object p0
.end method

.method public bridge synthetic writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeMedium(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2146
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 2147
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2140
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 2141
    return-object p0
.end method

.method public bridge synthetic writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeZero(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeZero(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "length"    # I

    .line 2218
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    .line 2219
    return-object p0
.end method

.method public bridge synthetic writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "writerIndex"    # I

    .line 1971
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1972
    return-object p0
.end method
