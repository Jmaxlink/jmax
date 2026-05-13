.class public final Lio/ktor/util/DeflaterKt;
.super Ljava/lang/Object;
.source "Deflater.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeflater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deflater.kt\nio/ktor/util/DeflaterKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,125:1\n1#2:126\n9#3:127\n15#3:128\n15#3:129\n*S KotlinDebug\n*F\n+ 1 Deflater.kt\nio/ktor/util/DeflaterKt\n*L\n37#1:127\n43#1:128\n44#1:129\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a7\u0010\u0006\u001a\u00020\u0007*\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0010\u001a\u0014\u0010\u0006\u001a\u00020\u0007*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0002\u001a3\u0010\u0013\u001a\u00020\u0007*\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000f2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0017H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a.\u0010\u0019\u001a\u00020\u0008*\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u001a.\u0010\u0019\u001a\u00020\n*\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u001a\u0015\u0010\u001c\u001a\u00020\u0007*\u00020\nH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001d\u001a%\u0010\u001e\u001a\u00020\u0007*\u00020\n2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0014\u001a\u00020\u0011H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!\u001a\u0014\u0010\"\u001a\u00020\u0007*\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u000fH\u0002\u001a\u0014\u0010#\u001a\u00020\u0007*\u00020 2\u0006\u0010\u0015\u001a\u00020\u000fH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "GZIP_HEADER_PADDING",
        "",
        "getGZIP_HEADER_PADDING",
        "()[B",
        "GZIP_MAGIC",
        "",
        "deflateTo",
        "",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "destination",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "gzip",
        "",
        "pool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "Ljava/nio/ByteBuffer;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Ljava/util/zip/Deflater;",
        "outBuffer",
        "deflateWhile",
        "deflater",
        "buffer",
        "predicate",
        "Lkotlin/Function0;",
        "(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deflated",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "putGzipHeader",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "putGzipTrailer",
        "crc",
        "Ljava/util/zip/Checksum;",
        "(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Checksum;Ljava/util/zip/Deflater;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setInputBuffer",
        "updateKeepPosition",
        "ktor-utils"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final GZIP_HEADER_PADDING:[B

.field public static final GZIP_MAGIC:S = -0x74e1s


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [B

    sput-object v0, Lio/ktor/util/DeflaterKt;->GZIP_HEADER_PADDING:[B

    return-void
.end method

.method public static final synthetic access$deflateTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "destination"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "gzip"    # Z
    .param p3, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/util/DeflaterKt;->deflateTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$deflateWhile(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "deflater"    # Ljava/util/zip/Deflater;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "predicate"    # Lkotlin/jvm/functions/Function0;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/util/DeflaterKt;->deflateWhile(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$putGzipHeader(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/util/DeflaterKt;->putGzipHeader(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$putGzipTrailer(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Checksum;Ljava/util/zip/Deflater;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "crc"    # Ljava/util/zip/Checksum;
    .param p2, "deflater"    # Ljava/util/zip/Deflater;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/util/DeflaterKt;->putGzipTrailer(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Checksum;Ljava/util/zip/Deflater;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final deflateTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Z",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/util/DeflaterKt$deflateTo$1;

    iget v1, v0, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/util/DeflaterKt$deflateTo$1;

    invoke-direct {v0, p4}, Lio/ktor/util/DeflaterKt$deflateTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 60
    iget v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    .local p0, "compressed":Ljava/nio/ByteBuffer;
    iget-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .local p1, "input":Ljava/nio/ByteBuffer;
    iget-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/zip/Deflater;

    .local p2, "deflater":Ljava/util/zip/Deflater;
    iget-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/pool/ObjectPool;

    .local p3, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    .line 94
    :catchall_0
    move-exception v1

    goto/16 :goto_7

    .line 60
    .end local p0    # "compressed":Ljava/nio/ByteBuffer;
    .end local p1    # "input":Ljava/nio/ByteBuffer;
    .end local p2    # "deflater":Ljava/util/zip/Deflater;
    .end local p3    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    :pswitch_1
    iget-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    .local p0, "gzip":Z
    iget-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .local p1, "compressed":Ljava/nio/ByteBuffer;
    iget-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .local p2, "input":Ljava/nio/ByteBuffer;
    iget-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    check-cast p3, Ljava/util/zip/Deflater;

    .local p3, "deflater":Ljava/util/zip/Deflater;
    iget-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/CRC32;

    .local v2, "crc":Ljava/util/zip/CRC32;
    iget-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/pool/ObjectPool;

    .local v4, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    iget-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    .local v5, "destination":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "gzip":Z
    .end local p1    # "compressed":Ljava/nio/ByteBuffer;
    .end local p2    # "input":Ljava/nio/ByteBuffer;
    .end local p3    # "deflater":Ljava/util/zip/Deflater;
    :pswitch_2
    iget-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    .restart local p0    # "gzip":Z
    iget-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .restart local p1    # "compressed":Ljava/nio/ByteBuffer;
    iget-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .restart local p2    # "input":Ljava/nio/ByteBuffer;
    iget-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    check-cast p3, Ljava/util/zip/Deflater;

    .restart local p3    # "deflater":Ljava/util/zip/Deflater;
    iget-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/CRC32;

    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    iget-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/pool/ObjectPool;

    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    iget-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v6, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    .local v6, "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_4

    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "gzip":Z
    .end local p1    # "compressed":Ljava/nio/ByteBuffer;
    .end local p2    # "input":Ljava/nio/ByteBuffer;
    .end local p3    # "deflater":Ljava/util/zip/Deflater;
    :pswitch_3
    iget-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    .restart local p0    # "gzip":Z
    iget-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .restart local p1    # "compressed":Ljava/nio/ByteBuffer;
    iget-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .restart local p2    # "input":Ljava/nio/ByteBuffer;
    iget-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    check-cast p3, Ljava/util/zip/Deflater;

    .restart local p3    # "deflater":Ljava/util/zip/Deflater;
    iget-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/CRC32;

    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    iget-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/pool/ObjectPool;

    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    iget-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v6, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    .restart local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_3

    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "gzip":Z
    .end local p1    # "compressed":Ljava/nio/ByteBuffer;
    .end local p2    # "input":Ljava/nio/ByteBuffer;
    .end local p3    # "deflater":Ljava/util/zip/Deflater;
    :pswitch_4
    iget-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    .restart local p0    # "gzip":Z
    iget-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .restart local p1    # "compressed":Ljava/nio/ByteBuffer;
    iget-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/nio/ByteBuffer;

    .restart local p2    # "input":Ljava/nio/ByteBuffer;
    iget-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    check-cast p3, Ljava/util/zip/Deflater;

    .restart local p3    # "deflater":Ljava/util/zip/Deflater;
    iget-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/zip/CRC32;

    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    iget-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/pool/ObjectPool;

    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    iget-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v6, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    .restart local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 94
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "gzip":Z
    :catchall_1
    move-exception v1

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, v4

    goto/16 :goto_7

    .line 60
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local p1    # "compressed":Ljava/nio/ByteBuffer;
    .end local p2    # "input":Ljava/nio/ByteBuffer;
    .end local p3    # "deflater":Ljava/util/zip/Deflater;
    :pswitch_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    .restart local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    move p0, p2

    .restart local p0    # "gzip":Z
    move-object v5, p1

    .line 65
    .restart local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .local p3, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    move-object v2, p1

    .line 66
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    new-instance p1, Ljava/util/zip/Deflater;

    const/4 p2, -0x1

    const/4 v4, 0x1

    invoke-direct {p1, p2, v4}, Ljava/util/zip/Deflater;-><init>(IZ)V

    move-object p2, p1

    .line 67
    .local p2, "deflater":Ljava/util/zip/Deflater;
    invoke-interface {p3}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 68
    .local p1, "input":Ljava/nio/ByteBuffer;
    invoke-interface {p3}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 70
    .local v7, "compressed":Ljava/nio/ByteBuffer;
    nop

    .line 71
    if-eqz p0, :cond_2

    .line 72
    :try_start_5
    iput-object v6, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    iput-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    iput-object v7, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    iput-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    iput v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    invoke-static {v5, p4}, Lio/ktor/util/DeflaterKt;->putGzipHeader(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v4, v1, :cond_1

    .line 60
    return-object v1

    .line 72
    :cond_1
    move-object v4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, v7

    .line 75
    .end local v7    # "compressed":Ljava/nio/ByteBuffer;
    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local p1, "compressed":Ljava/nio/ByteBuffer;
    .local p2, "input":Ljava/nio/ByteBuffer;
    .local p3, "deflater":Ljava/util/zip/Deflater;
    :goto_1
    goto :goto_2

    .line 94
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "gzip":Z
    .restart local v7    # "compressed":Ljava/nio/ByteBuffer;
    .local p1, "input":Ljava/nio/ByteBuffer;
    .local p2, "deflater":Ljava/util/zip/Deflater;
    .local p3, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    :catchall_2
    move-exception v1

    move-object p0, v7

    goto/16 :goto_7

    .line 71
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .restart local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p0    # "gzip":Z
    :cond_2
    move-object v4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, v7

    .line 75
    .end local v7    # "compressed":Ljava/nio/ByteBuffer;
    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local p1, "compressed":Ljava/nio/ByteBuffer;
    .local p2, "input":Ljava/nio/ByteBuffer;
    .local p3, "deflater":Ljava/util/zip/Deflater;
    :goto_2
    :try_start_6
    invoke-interface {v6}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v7

    if-nez v7, :cond_6

    .line 76
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 77
    iput-object v6, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    iput-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    iput-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    iput-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    const/4 v7, 0x2

    iput v7, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    invoke-interface {v6, p2, p4}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v7, v1, :cond_3

    .line 60
    return-object v1

    .line 77
    :cond_3
    move-object v9, v1

    move-object v1, v0

    move-object v0, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v9

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .local v1, "$result":Ljava/lang/Object;
    .local v4, "crc":Ljava/util/zip/CRC32;
    .local v5, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local v6, "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .local v7, "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    :goto_3
    :try_start_7
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 78
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 80
    move-object v0, v4

    check-cast v0, Ljava/util/zip/Checksum;

    invoke-static {v0, p2}, Lio/ktor/util/DeflaterKt;->updateKeepPosition(Ljava/util/zip/Checksum;Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-static {p3, p2}, Lio/ktor/util/DeflaterKt;->setInputBuffer(Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;)V

    .line 82
    new-instance v0, Lio/ktor/util/DeflaterKt$deflateTo$2;

    invoke-direct {v0, p3}, Lio/ktor/util/DeflaterKt$deflateTo$2;-><init>(Ljava/util/zip/Deflater;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v7, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    iput-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    const/4 v8, 0x3

    iput v8, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    invoke-static {v6, p3, p1, v0, p4}, Lio/ktor/util/DeflaterKt;->deflateWhile(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v0, v2, :cond_4

    .line 60
    return-object v2

    .line 82
    :cond_4
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v7    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .local v4, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local v5, "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .local v6, "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    :goto_4
    goto :goto_2

    .line 77
    .end local v0    # "$result":Ljava/lang/Object;
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v4, "crc":Ljava/util/zip/CRC32;
    .local v5, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local v6, "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v7    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    :cond_5
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_2

    .line 94
    .end local v4    # "crc":Ljava/util/zip/CRC32;
    .end local v6    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v7    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .end local p0    # "gzip":Z
    :catchall_3
    move-exception p0

    move-object v0, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, v5

    goto :goto_7

    .line 85
    .end local v1    # "$result":Ljava/lang/Object;
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .local v4, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local v5, "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .local v6, "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p0    # "gzip":Z
    :cond_6
    :try_start_8
    invoke-interface {v6}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v7

    .end local v6    # "$this$deflateTo":Lio/ktor/utils/io/ByteReadChannel;
    if-nez v7, :cond_a

    .line 87
    invoke-virtual {p3}, Ljava/util/zip/Deflater;->finish()V

    .line 88
    new-instance v6, Lio/ktor/util/DeflaterKt$deflateTo$4;

    invoke-direct {v6, p3}, Lio/ktor/util/DeflaterKt$deflateTo$4;-><init>(Ljava/util/zip/Deflater;)V

    check-cast v6, Lkotlin/jvm/functions/Function0;

    iput-object v5, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    iput-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$6:Ljava/lang/Object;

    iput-boolean p0, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->Z$0:Z

    const/4 v7, 0x4

    iput v7, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    invoke-static {v5, p3, p1, v6, p4}, Lio/ktor/util/DeflaterKt;->deflateWhile(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    .line 60
    return-object v1

    .line 90
    :cond_7
    :goto_5
    if-eqz p0, :cond_9

    .line 91
    .end local p0    # "gzip":Z
    move-object p0, v2

    check-cast p0, Ljava/util/zip/Checksum;

    iput-object v4, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$1:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$2:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$3:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$4:Ljava/lang/Object;

    iput-object v3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->L$5:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, p4, Lio/ktor/util/DeflaterKt$deflateTo$1;->label:I

    invoke-static {v5, p0, p3, p4}, Lio/ktor/util/DeflaterKt;->putGzipTrailer(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Checksum;Ljava/util/zip/Deflater;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne p0, v1, :cond_8

    .line 60
    return-object v1

    .line 91
    :cond_8
    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, v4

    .line 94
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local p0, "compressed":Ljava/nio/ByteBuffer;
    .local p1, "input":Ljava/nio/ByteBuffer;
    .local p2, "deflater":Ljava/util/zip/Deflater;
    .local p3, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    :goto_6
    move-object v4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p0    # "compressed":Ljava/nio/ByteBuffer;
    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .local p1, "compressed":Ljava/nio/ByteBuffer;
    .local p2, "input":Ljava/nio/ByteBuffer;
    .local p3, "deflater":Ljava/util/zip/Deflater;
    :cond_9
    invoke-virtual {p3}, Ljava/util/zip/Deflater;->end()V

    .line 95
    .end local p3    # "deflater":Ljava/util/zip/Deflater;
    invoke-interface {v4, p2}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 96
    .end local p2    # "input":Ljava/nio/ByteBuffer;
    invoke-interface {v4, p1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 97
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local p1    # "compressed":Ljava/nio/ByteBuffer;
    move-object p0, p3

    .local p0, "deflater":Ljava/util/zip/Deflater;
    .restart local p1    # "compressed":Ljava/nio/ByteBuffer;
    move-object p3, v4

    .line 98
    .restart local p2    # "input":Ljava/nio/ByteBuffer;
    .local p3, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 85
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .restart local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "gzip":Z
    .local p3, "deflater":Ljava/util/zip/Deflater;
    :cond_a
    move-object v1, v7

    .line 126
    .local v1, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 85
    .local v3, "$i$a$-let-DeflaterKt$deflateTo$3":I
    nop

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v4    # "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .end local p1    # "compressed":Ljava/nio/ByteBuffer;
    .end local p2    # "input":Ljava/nio/ByteBuffer;
    .end local p3    # "deflater":Ljava/util/zip/Deflater;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 94
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v3    # "$i$a$-let-DeflaterKt$deflateTo$3":I
    .end local v5    # "destination":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v0    # "$result":Ljava/lang/Object;
    .local p0, "compressed":Ljava/nio/ByteBuffer;
    .local p1, "input":Ljava/nio/ByteBuffer;
    .local p2, "deflater":Ljava/util/zip/Deflater;
    .local p3, "pool":Lio/ktor/utils/io/pool/ObjectPool;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :goto_7
    invoke-virtual {p2}, Ljava/util/zip/Deflater;->end()V

    .line 95
    invoke-interface {p3, p1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 96
    invoke-interface {p3, p0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final deflateTo(Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "$this$deflateTo"    # Ljava/util/zip/Deflater;
    .param p1, "outBuffer"    # Ljava/nio/ByteBuffer;

    .line 20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 22
    .local v0, "written":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    .end local v0    # "written":I
    :cond_0
    return-void
.end method

.method static synthetic deflateTo$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 60
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 62
    const/4 p2, 0x1

    .line 60
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 63
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p3

    .line 60
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/util/DeflaterKt;->deflateTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final deflateWhile(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Ljava/util/zip/Deflater;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/util/DeflaterKt$deflateWhile$1;

    iget v1, v0, Lio/ktor/util/DeflaterKt$deflateWhile$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/util/DeflaterKt$deflateWhile$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/util/DeflaterKt$deflateWhile$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/util/DeflaterKt$deflateWhile$1;

    invoke-direct {v0, p4}, Lio/ktor/util/DeflaterKt$deflateWhile$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 47
    iget v2, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p4    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    .local p0, "predicate":Lkotlin/jvm/functions/Function0;
    iget-object p1, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/nio/ByteBuffer;

    .local p1, "buffer":Ljava/nio/ByteBuffer;
    iget-object p2, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/util/zip/Deflater;

    .local p2, "deflater":Ljava/util/zip/Deflater;
    iget-object p3, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$0:Ljava/lang/Object;

    check-cast p3, Lio/ktor/utils/io/ByteWriteChannel;

    .local p3, "$this$deflateWhile":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "predicate":Lkotlin/jvm/functions/Function0;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    .end local p2    # "deflater":Ljava/util/zip/Deflater;
    .end local p3    # "$this$deflateWhile":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .local p0, "$this$deflateWhile":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "deflater":Ljava/util/zip/Deflater;
    .local p2, "buffer":Ljava/nio/ByteBuffer;
    move-object v3, p3

    move-object p3, p0

    move-object p0, v3

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 48
    .local p0, "predicate":Lkotlin/jvm/functions/Function0;
    .local p1, "buffer":Ljava/nio/ByteBuffer;
    .local p2, "deflater":Ljava/util/zip/Deflater;
    .restart local p3    # "$this$deflateWhile":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 50
    invoke-static {p2, p1}, Lio/ktor/util/DeflaterKt;->deflateTo(Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;)V

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 52
    iput-object p3, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$0:Ljava/lang/Object;

    iput-object p2, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$1:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$2:Ljava/lang/Object;

    iput-object p0, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->L$3:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p4, Lio/ktor/util/DeflaterKt$deflateWhile$1;->label:I

    invoke-interface {p3, p1, p4}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully(Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 47
    return-object v1

    .line 52
    :cond_1
    :goto_2
    goto :goto_1

    .line 54
    :cond_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final deflated(Lio/ktor/utils/io/ByteReadChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 3
    .param p0, "$this$deflated"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "gzip"    # Z
    .param p2, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .param p3, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Z",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/ktor/utils/io/ByteReadChannel;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/ktor/util/DeflaterKt$deflated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/ktor/util/DeflaterKt$deflated$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v0, p3, v2, v1}, Lio/ktor/utils/io/CoroutinesKt;->writer(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lio/ktor/utils/io/WriterJob;->getChannel()Lio/ktor/utils/io/ByteReadChannel;

    move-result-object v0

    return-object v0
.end method

.method public static final deflated(Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ByteWriteChannel;
    .locals 3
    .param p0, "$this$deflated"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "gzip"    # Z
    .param p2, "pool"    # Lio/ktor/utils/io/pool/ObjectPool;
    .param p3, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Z",
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lio/ktor/utils/io/ByteWriteChannel;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/ktor/util/DeflaterKt$deflated$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lio/ktor/util/DeflaterKt$deflated$2;-><init>(Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    invoke-static {v0, p3, v2, v1}, Lio/ktor/utils/io/CoroutinesKt;->reader(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/ReaderJob;

    move-result-object v0

    .line 124
    invoke-interface {v0}, Lio/ktor/utils/io/ReaderJob;->getChannel()Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic deflated$default(Lio/ktor/utils/io/ByteReadChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/ByteReadChannel;
    .locals 0

    .line 105
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 106
    const/4 p1, 0x1

    .line 105
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 107
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    .line 105
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 108
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 105
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/util/DeflaterKt;->deflated(Lio/ktor/utils/io/ByteReadChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic deflated$default(Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;ILjava/lang/Object;)Lio/ktor/utils/io/ByteWriteChannel;
    .locals 0

    .line 118
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 119
    const/4 p1, 0x1

    .line 118
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 120
    invoke-static {}, Lio/ktor/util/cio/ByteBufferPoolKt;->getKtorDefaultPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    .line 118
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 121
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    .line 118
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/util/DeflaterKt;->deflated(Lio/ktor/utils/io/ByteWriteChannel;ZLio/ktor/utils/io/pool/ObjectPool;Lkotlin/coroutines/CoroutineContext;)Lio/ktor/utils/io/ByteWriteChannel;

    move-result-object p0

    return-object p0
.end method

.method public static final getGZIP_HEADER_PADDING()[B
    .locals 1

    .line 17
    sget-object v0, Lio/ktor/util/DeflaterKt;->GZIP_HEADER_PADDING:[B

    return-object v0
.end method

.method private static final putGzipHeader(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/util/DeflaterKt$putGzipHeader$1;

    iget v1, v0, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/util/DeflaterKt$putGzipHeader$1;

    invoke-direct {v0, p1}, Lio/ktor/util/DeflaterKt$putGzipHeader$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget v2, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_1
    iget-object p0, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    .local p0, "$this$putGzipHeader":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "$this$putGzipHeader":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    iget-object p0, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local p0    # "$this$putGzipHeader":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "$this$putGzipHeader":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    .restart local p0    # "$this$putGzipHeader":Lio/ktor/utils/io/ByteWriteChannel;
    const/16 v2, -0x74e1

    .local v2, "$this$reverseByteOrder$iv":S
    const/4 v3, 0x0

    .line 127
    .local v3, "$i$f$reverseByteOrder":I
    int-to-short v4, v2

    invoke-static {v4}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    .line 37
    .end local v2    # "$this$reverseByteOrder$iv":S
    .end local v3    # "$i$f$reverseByteOrder":I
    iput-object p0, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    invoke-interface {p0, v2, p1}, Lio/ktor/utils/io/ByteWriteChannel;->writeShort(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    .line 36
    return-object v1

    .line 38
    :cond_1
    :goto_1
    iput-object p0, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    const/16 v2, 0x8

    invoke-interface {p0, v2, p1}, Lio/ktor/utils/io/ByteWriteChannel;->writeByte(BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    .line 36
    return-object v1

    .line 39
    :cond_2
    :goto_2
    sget-object v2, Lio/ktor/util/DeflaterKt;->GZIP_HEADER_PADDING:[B

    const/4 v3, 0x0

    iput-object v3, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, p1, Lio/ktor/util/DeflaterKt$putGzipHeader$1;->label:I

    invoke-static {p0, v2, p1}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$putGzipHeader":Lio/ktor/utils/io/ByteWriteChannel;
    if-ne p0, v1, :cond_3

    .line 36
    return-object v1

    .line 40
    :cond_3
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final putGzipTrailer(Lio/ktor/utils/io/ByteWriteChannel;Ljava/util/zip/Checksum;Ljava/util/zip/Deflater;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Ljava/util/zip/Checksum;",
            "Ljava/util/zip/Deflater;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;

    iget v1, v0, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;

    invoke-direct {v0, p3}, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p3, v0

    .local p3, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p3    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p0, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/zip/Deflater;

    .local p0, "deflater":Ljava/util/zip/Deflater;
    iget-object p1, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteWriteChannel;

    .local p1, "$this$putGzipTrailer":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "deflater":Ljava/util/zip/Deflater;
    .end local p1    # "$this$putGzipTrailer":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 43
    .local p0, "$this$putGzipTrailer":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "crc":Ljava/util/zip/Checksum;
    .local p2, "deflater":Ljava/util/zip/Deflater;
    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    long-to-int p1, v2

    .local p1, "$this$reverseByteOrder$iv":I
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$reverseByteOrder":I
    invoke-static {p1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p1

    .line 43
    .end local v2    # "$i$f$reverseByteOrder":I
    .end local p1    # "$this$reverseByteOrder$iv":I
    iput-object p0, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->label:I

    invoke-interface {p0, p1, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    .line 42
    return-object v1

    .line 43
    :cond_1
    move-object p1, p0

    move-object p0, p2

    .line 44
    .end local p2    # "deflater":Ljava/util/zip/Deflater;
    .local p0, "deflater":Ljava/util/zip/Deflater;
    .local p1, "$this$putGzipTrailer":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_1
    invoke-virtual {p0}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result p0

    .end local p1    # "$this$putGzipTrailer":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "$this$reverseByteOrder$iv":I
    const/4 p2, 0x0

    .line 129
    .local p2, "$i$f$reverseByteOrder":I
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 44
    .end local p0    # "$this$reverseByteOrder$iv":I
    .end local p2    # "$i$f$reverseByteOrder":I
    const/4 p2, 0x0

    iput-object p2, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->L$0:Ljava/lang/Object;

    iput-object p2, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->L$1:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, p3, Lio/ktor/util/DeflaterKt$putGzipTrailer$1;->label:I

    invoke-interface {p1, p0, p3}, Lio/ktor/utils/io/ByteWriteChannel;->writeInt(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    .line 42
    return-object v1

    .line 45
    :cond_2
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final setInputBuffer(Ljava/util/zip/Deflater;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "$this$setInputBuffer"    # Ljava/util/zip/Deflater;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 29
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 27
    .local v0, "$i$a$-require-DeflaterKt$setInputBuffer$1":I
    nop

    .end local v0    # "$i$a$-require-DeflaterKt$setInputBuffer$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer need to be array-backed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final updateKeepPosition(Ljava/util/zip/Checksum;Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "$this$updateKeepPosition"    # Ljava/util/zip/Checksum;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-interface {p0, v0, v1, v2}, Ljava/util/zip/Checksum;->update([BII)V

    .line 34
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 32
    .local v0, "$i$a$-require-DeflaterKt$updateKeepPosition$1":I
    nop

    .end local v0    # "$i$a$-require-DeflaterKt$updateKeepPosition$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer need to be array-backed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
