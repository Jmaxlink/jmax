.class final Lio/ktor/http/cio/MultipartInput;
.super Lio/ktor/utils/io/core/Input;
.source "CIOMultipartDataBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCIOMultipartDataBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CIOMultipartDataBase.kt\nio/ktor/http/cio/MultipartInput\n+ 2 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 3 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,221:1\n282#2:222\n283#2,3:227\n17#3,4:223\n*S KotlinDebug\n*F\n+ 1 CIOMultipartDataBase.kt\nio/ktor/http/cio/MultipartInput\n*L\n198#1:222\n198#1:227,3\n198#1:223,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J-\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0014\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0011"
    }
    d2 = {
        "Lio/ktor/http/cio/MultipartInput;",
        "Lio/ktor/utils/io/core/Input;",
        "head",
        "Ljava/nio/ByteBuffer;",
        "tail",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;)V",
        "closeSource",
        "",
        "fill",
        "",
        "destination",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "length",
        "fill-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)I",
        "ktor-http-cio"
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
.field private final head:Ljava/nio/ByteBuffer;

.field private final tail:Lio/ktor/utils/io/ByteReadChannel;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 8
    .param p1, "head"    # Ljava/nio/ByteBuffer;
    .param p2, "tail"    # Lio/ktor/utils/io/ByteReadChannel;

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lio/ktor/utils/io/core/Input;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    iput-object p1, p0, Lio/ktor/http/cio/MultipartInput;->head:Ljava/nio/ByteBuffer;

    .line 183
    iput-object p2, p0, Lio/ktor/http/cio/MultipartInput;->tail:Lio/ktor/utils/io/ByteReadChannel;

    .line 181
    return-void
.end method

.method public static final synthetic access$getTail$p(Lio/ktor/http/cio/MultipartInput;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .param p0, "$this"    # Lio/ktor/http/cio/MultipartInput;

    .line 180
    iget-object v0, p0, Lio/ktor/http/cio/MultipartInput;->tail:Lio/ktor/utils/io/ByteReadChannel;

    return-object v0
.end method


# virtual methods
.method protected closeSource()V
    .locals 1

    .line 218
    iget-object v0, p0, Lio/ktor/http/cio/MultipartInput;->tail:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)Z

    .line 219
    return-void
.end method

.method protected fill-62zg_DM(Ljava/nio/ByteBuffer;II)I
    .locals 10
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lio/ktor/http/cio/MultipartInput;->head:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lio/ktor/http/cio/MultipartInput;->head:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 190
    .local v0, "rc":I
    iget-object v2, p0, Lio/ktor/http/cio/MultipartInput;->head:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 191
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    return v1

    .line 194
    .end local v0    # "rc":I
    :cond_0
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 195
    .local v0, "buffer":[B
    nop

    .line 196
    :try_start_0
    iget-object v2, p0, Lio/ktor/http/cio/MultipartInput;->head:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 197
    .local v2, "rc":I
    iget-object v3, p0, Lio/ktor/http/cio/MultipartInput;->head:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 198
    const/4 v3, 0x0

    .local v3, "sourceOffset$iv":I
    move-object v4, p1

    .local v4, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 222
    .local v5, "$i$f$storeByteArray-9zorpBc":I
    move-object v6, v0

    .local v6, "$this$useMemory$iv$iv":[B
    const/4 v7, 0x0

    .line 223
    .local v7, "$i$f$useMemory":I
    nop

    .line 226
    invoke-static {v6, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    const-string v9, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .local v8, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 227
    .local v9, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    invoke-static {v8, v4, v1, v2, p2}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    nop

    .line 226
    .end local v8    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v9    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    nop

    .line 229
    .end local v6    # "$this$useMemory$iv$iv":[B
    .end local v7    # "$i$f$useMemory":I
    nop

    .line 199
    .end local v3    # "sourceOffset$iv":I
    .end local v4    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$storeByteArray-9zorpBc":I
    nop

    .line 201
    .end local v2    # "rc":I
    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    move v1, v2

    .line 199
    .local v1, "rc":I
    return v2

    .line 201
    .end local v1    # "rc":I
    :catchall_0
    move-exception v1

    invoke-static {}, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v1

    .line 205
    .end local v0    # "buffer":[B
    :cond_1
    new-instance v0, Lio/ktor/http/cio/MultipartInput$fill$1;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move v5, p3

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v3 .. v8}, Lio/ktor/http/cio/MultipartInput$fill$1;-><init>(Lio/ktor/http/cio/MultipartInput;ILjava/nio/ByteBuffer;ILkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, v2}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method
