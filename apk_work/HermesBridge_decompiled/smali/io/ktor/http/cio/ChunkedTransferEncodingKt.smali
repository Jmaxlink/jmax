.class public final Lio/ktor/http/cio/ChunkedTransferEncodingKt;
.super Ljava/lang/Object;
.source "ChunkedTransferEncoding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChunkedTransferEncoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkedTransferEncoding.kt\nio/ktor/http/cio/ChunkedTransferEncodingKt\n+ 2 ReadSession.kt\nio/ktor/utils/io/ReadSessionKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,176:1\n20#2,13:177\n7#3,4:190\n7#3,4:194\n*S KotlinDebug\n*F\n+ 1 ChunkedTransferEncoding.kt\nio/ktor/http/cio/ChunkedTransferEncodingKt\n*L\n135#1:177,13\n161#1:190,4\n162#1:194,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a!\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012\u001a)\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a!\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a%\u0010\u0016\u001a\u00060\u0019j\u0002`\u001a2\u0006\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001cH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001d\u001a\u0018\u0010\u000c\u001a\u00060\u001ej\u0002`\u001f*\u00020 2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u001a\u001e\u0010\u000c\u001a\u00060\u001ej\u0002`\u001f*\u00020 2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014\u001a\u000c\u0010!\u001a\u00020\r*\u00020\u000fH\u0002\u001a5\u0010\"\u001a\u00020\u0001*\u00020\u00112\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0001\u00f8\u0001\u0000\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u000c\u0012\u0008\u0012\u00060\u0004j\u0002`\u00050\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000*\n\u0010)\"\u00020\u001e2\u00020\u001e*\n\u0010*\"\u00020\u00192\u00020\u0019\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006+"
    }
    d2 = {
        "CHUNK_BUFFER_POOL_SIZE",
        "",
        "ChunkSizeBufferPool",
        "Lio/ktor/utils/io/pool/ObjectPool;",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "CrLf",
        "",
        "CrLfShort",
        "",
        "LastChunkBytes",
        "MAX_CHUNK_SIZE_LENGTH",
        "decodeChunked",
        "",
        "input",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "out",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "contentLength",
        "",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "encodeChunked",
        "output",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/ktor/utils/io/ReaderJob;",
        "Lio/ktor/http/cio/EncoderJob;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Lio/ktor/utils/io/WriterJob;",
        "Lio/ktor/http/cio/DecoderJob;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "rethrowCloseCause",
        "writeChunk",
        "memory",
        "Lio/ktor/utils/io/bits/Memory;",
        "startIndex",
        "endIndex",
        "writeChunk-yRinSxo",
        "(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "DecoderJob",
        "EncoderJob",
        "ktor-http-cio"
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
.field private static final CHUNK_BUFFER_POOL_SIZE:I = 0x800

.field private static final ChunkSizeBufferPool:Lio/ktor/utils/io/pool/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/ObjectPool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final CrLf:[B

.field private static final CrLfShort:S = 0xd0as

.field private static final LastChunkBytes:[B

.field private static final MAX_CHUNK_SIZE_LENGTH:I = 0x80


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    new-instance v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$ChunkSizeBufferPool$1;

    invoke-direct {v0}, Lio/ktor/http/cio/ChunkedTransferEncodingKt$ChunkSizeBufferPool$1;-><init>()V

    check-cast v0, Lio/ktor/utils/io/pool/ObjectPool;

    sput-object v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->ChunkSizeBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 161
    const-string v0, "\r\n"

    .line 190
    .local v0, "$this$toByteArray_u24default$iv":Ljava/lang/String;
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .local v1, "charset$iv":Ljava/nio/charset/Charset;
    const/4 v2, 0x0

    .line 191
    .local v2, "$i$f$toByteArray":I
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "charset.newEncoder()"

    if-eqz v3, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v3, v6, v4, v7}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v3

    .line 161
    .end local v0    # "$this$toByteArray_u24default$iv":Ljava/lang/String;
    .end local v1    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v2    # "$i$f$toByteArray":I
    :goto_0
    sput-object v3, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->CrLf:[B

    .line 162
    const-string v0, "0\r\n\r\n"

    .line 194
    .restart local v0    # "$this$toByteArray_u24default$iv":Ljava/lang/String;
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .restart local v1    # "charset$iv":Ljava/nio/charset/Charset;
    const/4 v2, 0x0

    .line 195
    .restart local v2    # "$i$f$toByteArray":I
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    .line 197
    :cond_1
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v5, v4, v6}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v3

    .line 162
    .end local v0    # "$this$toByteArray_u24default$iv":Ljava/lang/String;
    .end local v1    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v2    # "$i$f$toByteArray":I
    :goto_1
    sput-object v3, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->LastChunkBytes:[B

    return-void
.end method

.method public static synthetic DecoderJob$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic EncoderJob$annotations()V
    .locals 0

    return-void
.end method

.method public static final synthetic access$writeChunk-yRinSxo(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "memory"    # Ljava/nio/ByteBuffer;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->writeChunk-yRinSxo(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final decodeChunked(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;)Lio/ktor/utils/io/WriterJob;
    .locals 2
    .param p0, "$this$decodeChunked"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .annotation runtime Lkotlin/Deprecated;
        message = "Specify content length if known or pass -1L"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "decodeChunked(input, -1L)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->decodeChunked(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;J)Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    return-object v0
.end method

.method public static final decodeChunked(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;J)Lio/ktor/utils/io/WriterJob;
    .locals 7
    .param p0, "$this$decodeChunked"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "contentLength"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/CoroutinesKt;->writer$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lio/ktor/utils/io/WriterJob;

    move-result-object v0

    .line 48
    return-object v0
.end method

.method public static final decodeChunked(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "The contentLength is ignored for chunked transfer encoding"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "decodeChunked(input, out)"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;

    iget v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$1:J

    .local v9, "chunkSize":J
    iget-wide v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$0:J

    .local v11, "totalBytesCopied":J
    iget-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    .local v3, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    iget-object v13, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteWriteChannel;

    .local v13, "out":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v14, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/ByteReadChannel;

    .local v14, "input":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v3

    move-object v8, v13

    move-object v3, v2

    move-wide v12, v11

    move-wide v10, v9

    move-object v9, v14

    goto/16 :goto_7

    .end local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v9    # "chunkSize":J
    .end local v11    # "totalBytesCopied":J
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v14    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_1
    iget-wide v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$1:J

    .restart local v9    # "chunkSize":J
    iget-wide v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$0:J

    .restart local v11    # "totalBytesCopied":J
    iget-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    .restart local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    iget-object v13, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v14, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/ByteReadChannel;

    .restart local v14    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .end local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v9    # "chunkSize":J
    .end local v11    # "totalBytesCopied":J
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v14    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_2
    iget-wide v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$0:J

    .local v9, "totalBytesCopied":J
    iget-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuilder;

    .restart local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    iget-object v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$1:Ljava/lang/Object;

    move-object v13, v11

    check-cast v13, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteReadChannel;

    .local v11, "input":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v14, v11

    move-wide v11, v9

    move-object v9, v3

    move-object v3, v2

    goto :goto_2

    .line 102
    .end local v9    # "totalBytesCopied":J
    .end local v11    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 70
    .end local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    move-object/from16 v9, p1

    .line 71
    .local v9, "out":Lio/ktor/utils/io/ByteWriteChannel;
    sget-object v10, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->ChunkSizeBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v10}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    .line 72
    .local v10, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    const-wide/16 v11, 0x0

    .line 74
    .local v11, "totalBytesCopied":J
    move-object v13, v9

    move-object v9, v3

    move-object v3, v10

    .line 75
    .end local v10    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .local v3, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .local v9, "input":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_1
    nop

    .line 76
    :try_start_3
    invoke-static {v3}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 77
    move-object v10, v3

    check-cast v10, Ljava/lang/Appendable;

    iput-object v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$2:Ljava/lang/Object;

    iput-wide v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$0:J

    iput v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    const/16 v14, 0x80

    invoke-interface {v9, v10, v14, v1}, Lio/ktor/utils/io/ByteReadChannel;->readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v10, v0, :cond_1

    .line 70
    return-object v0

    .line 77
    :cond_1
    move-object v14, v9

    move-object v9, v3

    move-object v3, v2

    move-object v2, v10

    .end local v2    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .local v9, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v14    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    :try_start_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 79
    move-object v2, v9

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v8

    goto :goto_3

    :cond_2
    move v2, v7

    :goto_3
    if-nez v2, :cond_b

    .line 84
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, v8, :cond_3

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v10, 0x30

    if-ne v2, v10, :cond_3

    move-wide v15, v5

    goto :goto_4

    :cond_3
    move-object v2, v9

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lio/ktor/http/cio/internals/CharsKt;->parseHexLong(Ljava/lang/CharSequence;)J

    move-result-wide v15

    .line 83
    :goto_4
    move-wide/from16 p0, v15

    .line 86
    .local p0, "chunkSize":J
    move-wide/from16 v7, p0

    .end local p0    # "chunkSize":J
    .local v7, "chunkSize":J
    cmp-long v2, v7, v5

    if-lez v2, :cond_5

    .line 87
    iput-object v14, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$2:Ljava/lang/Object;

    iput-wide v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$0:J

    iput-wide v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$1:J

    iput v4, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    invoke-static {v14, v13, v7, v8, v1}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v2, v0, :cond_4

    .line 70
    return-object v0

    .line 87
    :cond_4
    move-object v2, v3

    move-object v3, v9

    move-wide v9, v7

    .line 88
    .end local v7    # "chunkSize":J
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v3, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .local v9, "chunkSize":J
    :goto_5
    :try_start_5
    invoke-interface {v13}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 89
    add-long/2addr v11, v9

    goto :goto_6

    .line 86
    .end local v2    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v7    # "chunkSize":J
    .local v9, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    :cond_5
    move-object v2, v3

    move-object v3, v9

    move-wide v9, v7

    .line 92
    .end local v7    # "chunkSize":J
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v3, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .local v9, "chunkSize":J
    :goto_6
    invoke-static {v3}, Lkotlin/text/StringsKt;->clear(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 93
    move-object v7, v3

    check-cast v7, Ljava/lang/Appendable;

    iput-object v14, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->L$2:Ljava/lang/Object;

    iput-wide v11, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$0:J

    iput-wide v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->J$1:J

    const/4 v8, 0x3

    iput v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$decodeChunked$3;->label:I

    invoke-interface {v14, v7, v4, v1}, Lio/ktor/utils/io/ByteReadChannel;->readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne v7, v0, :cond_6

    .line 70
    return-object v0

    .line 93
    :cond_6
    move-object v8, v13

    move-wide v12, v11

    move-wide v10, v9

    move-object v9, v14

    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v7

    move-object/from16 v7, v17

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v11    # "totalBytesCopied":J
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v14    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .local v8, "out":Lio/ktor/utils/io/ByteWriteChannel;
    .local v9, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v10, "chunkSize":J
    .local v12, "totalBytesCopied":J
    :goto_7
    :try_start_6
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 96
    move-object v2, v7

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lez v2, :cond_7

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-nez v2, :cond_9

    .line 100
    cmp-long v2, v10, v5

    if-nez v2, :cond_8

    .line 106
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v10    # "chunkSize":J
    .end local v12    # "totalBytesCopied":J
    sget-object v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->ChunkSizeBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v0, v7}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 107
    .end local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    invoke-static {v8}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 108
    .end local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    move-object v0, v8

    .local v0, "out":Lio/ktor/utils/io/ByteWriteChannel;
    move-object v2, v7

    .line 109
    .local v2, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v4

    .line 100
    .end local v0    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v2    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v10    # "chunkSize":J
    .restart local v12    # "totalBytesCopied":J
    :cond_8
    move-object v2, v3

    move-object v3, v7

    move-wide v11, v12

    const/4 v7, 0x0

    move-object v13, v8

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 97
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v12    # "totalBytesCopied":J
    :cond_9
    :try_start_7
    new-instance v0, Ljava/io/EOFException;

    const-string v2, "Invalid chunk: content block should end with CR+LF"

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0

    .line 94
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid chunk: content block of size "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " ended unexpectedly"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 102
    .end local v10    # "chunkSize":J
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v7

    move-object v13, v8

    goto :goto_9

    .line 80
    .end local v7    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v8    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    .local v9, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_b
    :try_start_8
    new-instance v0, Ljava/io/EOFException;

    const-string v2, "Invalid chunk size: empty"

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0

    .line 78
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v9    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_c
    new-instance v0, Ljava/io/EOFException;

    const-string v2, "Chunked stream has ended unexpectedly: no chunk size"

    invoke-direct {v0, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v9    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 102
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v9    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_2
    move-exception v0

    move-object v2, v3

    move-object v3, v9

    .line 103
    .end local v9    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .local v0, "t":Ljava/lang/Throwable;
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "chunkSizeBuffer":Ljava/lang/StringBuilder;
    :goto_9
    :try_start_9
    invoke-interface {v13, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 104
    nop

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .end local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 106
    .end local v0    # "t":Ljava/lang/Throwable;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    .restart local v3    # "chunkSizeBuffer":Ljava/lang/StringBuilder;
    .restart local v13    # "out":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_3
    move-exception v0

    sget-object v4, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->ChunkSizeBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    invoke-interface {v4, v3}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 107
    invoke-static {v13}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final decodeChunked(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p0, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "out"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 58
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->decodeChunked(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final encodeChunked(Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;

    iget v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 132
    iget v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lio/ktor/utils/io/ByteReadChannel;

    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lio/ktor/utils/io/ByteWriteChannel;

    .local v4, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    .line 143
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 132
    .end local v3    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v4    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_1
    const/4 v0, 0x0

    .local v0, "$i$f$read":I
    iget-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    .local v3, "cause$iv":Ljava/lang/Throwable;
    iget-object v4, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    .local v4, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v5, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteWriteChannel;

    .local v5, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    .line 143
    .end local v0    # "$i$f$read":I
    .end local v3    # "cause$iv":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_a

    .line 132
    .end local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    const/4 v6, 0x0

    .local v6, "$i$f$read":I
    iget v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->I$0:I

    .local v0, "bytesRead$iv":I
    iget-object v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    iget-object v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    .local v8, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    .local v9, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v10, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    .local v10, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_5

    .end local v0    # "bytesRead$iv":I
    .end local v6    # "$i$f$read":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v10    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_3
    const/4 v6, 0x0

    .restart local v6    # "$i$f$read":I
    const/4 v0, 0x0

    .local v0, "$i$a$-read$default-ChunkedTransferEncodingKt$encodeChunked$4":I
    iget-object v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/core/Buffer;

    .restart local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    iget-object v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    .restart local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    .restart local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v10, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v10    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v9

    move v9, v6

    move-object v6, v3

    move-object v3, v2

    goto/16 :goto_3

    .line 187
    .end local v0    # "$i$a$-read$default-ChunkedTransferEncodingKt$encodeChunked$4":I
    :catchall_2
    move-exception v0

    move-object v5, v0

    move v0, v6

    move-object v4, v10

    move-object v6, v3

    move-object v3, v9

    goto/16 :goto_6

    .line 132
    .end local v6    # "$i$f$read":I
    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v10    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_4
    const/4 v0, 0x0

    .local v0, "$i$f$read":I
    iget-object v6, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    .local v6, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteWriteChannel;

    .local v8, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move v9, v0

    move-object v10, v6

    move-object v6, v3

    move-object v3, v2

    goto :goto_2

    .line 143
    .end local v0    # "$i$f$read":I
    .end local v6    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_3
    move-exception v0

    move-object v3, v7

    move-object v4, v8

    goto/16 :goto_a

    .line 132
    .end local v7    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v8    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    .local v0, "output":Lio/ktor/utils/io/ByteWriteChannel;
    move-object/from16 v6, p1

    .line 133
    .local v6, "input":Lio/ktor/utils/io/ByteReadChannel;
    move-object/from16 v17, v6

    move-object v6, v0

    move-object v0, v3

    move-object/from16 v3, v17

    .line 134
    .end local v0    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v6, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_1
    :try_start_5
    invoke-interface {v3}, Lio/ktor/utils/io/ByteReadChannel;->isClosedForRead()Z

    move-result v7

    if-nez v7, :cond_7

    .line 135
    move-object v7, v3

    .line 177
    .local v7, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    nop

    .line 178
    const/4 v8, 0x1

    .line 177
    .local v8, "desiredSize$iv":I
    const/4 v9, 0x0

    .line 181
    .local v9, "$i$f$read":I
    iput-object v6, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;

    const/4 v10, 0x1

    iput v10, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    invoke-static {v7, v8, v1}, Lio/ktor/utils/io/ReadSessionKt;->requestBuffer(Lio/ktor/utils/io/ByteReadChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .end local v8    # "desiredSize$iv":I
    if-ne v10, v0, :cond_1

    .line 132
    return-object v0

    .line 181
    :cond_1
    move-object v8, v6

    move-object v6, v0

    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v10

    move-object v10, v7

    move-object/from16 v7, v17

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v6    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v8, "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v10, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    :try_start_6
    check-cast v2, Lio/ktor/utils/io/core/Buffer;

    if-nez v2, :cond_2

    sget-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer$Companion;->getEmpty()Lio/ktor/utils/io/core/Buffer;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 183
    .local v2, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :cond_2
    nop

    .line 184
    :try_start_7
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v13

    int-to-long v13, v13

    .local v0, "source":Ljava/nio/ByteBuffer;
    .local v11, "startIndex":J
    .local v13, "endIndex":J
    const/4 v15, 0x0

    .line 136
    .local v15, "$i$a$-read$default-ChunkedTransferEncodingKt$encodeChunked$4":I
    cmp-long v16, v13, v11

    if-nez v16, :cond_3

    move-object v4, v3

    move-object v3, v6

    move v6, v9

    move-object v9, v7

    move-object v7, v2

    const/4 v2, 0x0

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, v17

    goto :goto_4

    .line 137
    :cond_3
    long-to-int v4, v11

    long-to-int v5, v13

    iput-object v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object/from16 p0, v2

    .end local v2    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local p0, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v2, 0x2

    :try_start_8
    iput v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    invoke-static {v8, v0, v4, v5, v1}, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->writeChunk-yRinSxo(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .end local v0    # "source":Ljava/nio/ByteBuffer;
    .end local v11    # "startIndex":J
    .end local v13    # "endIndex":J
    if-ne v2, v6, :cond_4

    .line 132
    return-object v6

    .line 137
    :cond_4
    move-object v4, v7

    move v0, v15

    move-object/from16 v7, p0

    move-object/from16 v17, v10

    move-object v10, v8

    move-object/from16 v8, v17

    .end local v15    # "$i$a$-read$default-ChunkedTransferEncodingKt$encodeChunked$4":I
    .end local p0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v0, "$i$a$-read$default-ChunkedTransferEncodingKt$encodeChunked$4":I
    .restart local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v8, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .local v10, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_3
    :try_start_9
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-object/from16 v17, v4

    move-object v4, v3

    move-object v3, v6

    move v6, v9

    move-object/from16 v9, v17

    .line 184
    .end local v0    # "$i$a$-read$default-ChunkedTransferEncodingKt$encodeChunked$4":I
    .end local v3    # "$result":Ljava/lang/Object;
    .local v4, "$result":Ljava/lang/Object;
    .local v6, "$i$f$read":I
    .local v9, "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_4
    move v0, v2

    .line 185
    .local v0, "bytesRead$iv":I
    :try_start_a
    iput-object v10, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;

    iput v0, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->I$0:I

    const/4 v2, 0x3

    iput v2, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    invoke-static {v8, v7, v0, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-ne v2, v3, :cond_5

    .line 132
    return-object v3

    .line 185
    :cond_5
    move-object v2, v4

    .line 186
    .end local v4    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    :goto_5
    move-object v0, v3

    move-object v3, v9

    move-object v6, v10

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 187
    .end local v0    # "bytesRead$iv":I
    .end local v2    # "$result":Ljava/lang/Object;
    .restart local v4    # "$result":Ljava/lang/Object;
    :catchall_4
    move-exception v0

    move-object v5, v0

    move-object v2, v4

    move v0, v6

    move-object v4, v10

    move-object v6, v3

    move-object v3, v9

    goto :goto_6

    .end local v6    # "$i$f$read":I
    .restart local v3    # "$result":Ljava/lang/Object;
    .local v4, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v9, "$i$f$read":I
    :catchall_5
    move-exception v0

    move-object v5, v0

    move-object v2, v3

    move-object v3, v4

    move v0, v9

    move-object v4, v10

    goto :goto_6

    .end local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v8, "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v10, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_6
    move-exception v0

    move-object v5, v0

    move-object v2, v3

    move-object v3, v7

    move-object v4, v8

    move v0, v9

    move-object v8, v10

    move-object/from16 v7, p0

    goto :goto_6

    .end local p0    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v2, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    :catchall_7
    move-exception v0

    move-object/from16 p0, v2

    move-object v5, v0

    move-object v2, v3

    move-object v3, v7

    move-object v4, v8

    move v0, v9

    move-object v8, v10

    move-object/from16 v7, p0

    .line 188
    .end local v9    # "$i$f$read":I
    .end local v10    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    .local v0, "$i$f$read":I
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v4, "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v5, "cause$iv":Ljava/lang/Throwable;
    .local v7, "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .local v8, "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    :goto_6
    :try_start_b
    iput-object v4, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    const/4 v9, 0x0

    iput-object v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    const/4 v9, 0x0

    invoke-static {v8, v7, v9, v1}, Lio/ktor/utils/io/ReadSessionKt;->completeReadingFromBuffer(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/Buffer;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .end local v7    # "buffer$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v8    # "$this$read_u24default$iv":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v9, v6, :cond_6

    .line 132
    return-object v6

    .line 188
    :cond_6
    move-object/from16 v17, v4

    move-object v4, v3

    move-object v3, v5

    move-object/from16 v5, v17

    .line 189
    .local v3, "cause$iv":Ljava/lang/Throwable;
    .local v4, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v5, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_7
    nop

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 143
    .end local v0    # "$i$f$read":I
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v8, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_8
    move-exception v0

    move-object v2, v3

    move-object v3, v7

    move-object v4, v8

    goto :goto_a

    .line 141
    .end local v7    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v8    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .restart local v2    # "$result":Ljava/lang/Object;
    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v6, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :cond_7
    :try_start_d
    invoke-static {v3}, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->rethrowCloseCause(Lio/ktor/utils/io/ByteReadChannel;)V

    .line 142
    sget-object v4, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->LastChunkBytes:[B

    iput-object v6, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$1:Ljava/lang/Object;

    const/4 v5, 0x0

    iput-object v5, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->L$3:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$3;->label:I

    invoke-static {v6, v4, v1}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    if-ne v4, v0, :cond_8

    .line 132
    return-object v0

    .line 142
    :cond_8
    move-object v4, v6

    .line 147
    .end local v6    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v4, "output":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_8
    nop

    .end local v3    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_9
    invoke-interface {v4}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 148
    .end local v4    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    goto :goto_b

    .line 143
    .restart local v3    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v6    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_9
    move-exception v0

    move-object v4, v6

    .line 144
    .end local v6    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v0, "cause":Ljava/lang/Throwable;
    .restart local v4    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_a
    :try_start_e
    invoke-interface {v4, v0}, Lio/ktor/utils/io/ByteWriteChannel;->close(Ljava/lang/Throwable;)Z

    .line 145
    invoke-interface {v3, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 147
    nop

    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v3    # "input":Lio/ktor/utils/io/ByteReadChannel;
    goto :goto_9

    .line 149
    .end local v4    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 147
    .restart local v4    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :catchall_a
    move-exception v0

    invoke-interface {v4}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .end local v4    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    throw v0

    nop

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

.method public static final encodeChunked(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "output"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p1, "coroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/utils/io/ReaderJob;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 125
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/ktor/http/cio/ChunkedTransferEncodingKt$encodeChunked$2;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Lio/ktor/utils/io/CoroutinesKt;->reader(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ZLkotlin/jvm/functions/Function2;)Lio/ktor/utils/io/ReaderJob;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method private static final rethrowCloseCause(Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 1
    .param p0, "$this$rethrowCloseCause"    # Lio/ktor/utils/io/ByteReadChannel;

    .line 153
    nop

    .line 154
    instance-of v0, p0, Lio/ktor/utils/io/ByteChannel;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lio/ktor/utils/io/ByteReadChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    nop

    .line 157
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 158
    return-void

    .line 157
    :cond_1
    throw v0
.end method

.method private static final writeChunk-yRinSxo(Lio/ktor/utils/io/ByteWriteChannel;Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Ljava/nio/ByteBuffer;",
            "II",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;

    iget v1, v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;

    invoke-direct {v0, p4}, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p4, v0

    .local p4, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 165
    iget v2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

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
    iget p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    .local p0, "size":I
    iget-object p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteWriteChannel;

    .local p1, "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .end local p0    # "size":I
    .end local p1    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_1
    iget p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    .restart local p0    # "size":I
    iget-object p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local p1    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .end local p0    # "size":I
    .end local p1    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    iget p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$2:I

    .restart local p0    # "size":I
    iget p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$1:I

    .local p1, "endIndex":I
    iget p2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    .local p2, "startIndex":I
    iget-object p3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/nio/ByteBuffer;

    .local p3, "memory":Ljava/nio/ByteBuffer;
    iget-object v2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    .local v2, "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local v2    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "size":I
    .end local p1    # "endIndex":I
    .end local p2    # "startIndex":I
    .end local p3    # "memory":Ljava/nio/ByteBuffer;
    :pswitch_3
    iget p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$2:I

    .restart local p0    # "size":I
    iget p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$1:I

    .restart local p1    # "endIndex":I
    iget p2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    .restart local p2    # "startIndex":I
    iget-object p3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$1:Ljava/lang/Object;

    check-cast p3, Ljava/nio/ByteBuffer;

    .restart local p3    # "memory":Ljava/nio/ByteBuffer;
    iget-object v2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local v2    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v2    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    .end local p0    # "size":I
    .end local p1    # "endIndex":I
    .end local p2    # "startIndex":I
    .end local p3    # "memory":Ljava/nio/ByteBuffer;
    :pswitch_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 166
    .local p0, "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "memory":Ljava/nio/ByteBuffer;
    .restart local p2    # "startIndex":I
    .local p3, "endIndex":I
    sub-int v2, p3, p2

    .line 167
    .local v2, "size":I
    iput-object p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    iput-object p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$1:Ljava/lang/Object;

    iput p2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    iput p3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$1:I

    iput v2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$2:I

    const/4 v3, 0x1

    iput v3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    invoke-static {p0, v2, p4}, Lio/ktor/http/cio/internals/CharsKt;->writeIntHex(Lio/ktor/utils/io/ByteWriteChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_1

    .line 165
    return-object v1

    .line 167
    :cond_1
    move v4, v2

    move-object v2, p0

    move p0, v4

    move v5, p3

    move-object p3, p1

    move p1, v5

    .line 168
    .local v2, "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    .local p0, "size":I
    .local p1, "endIndex":I
    .local p3, "memory":Ljava/nio/ByteBuffer;
    :goto_1
    iput-object v2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    iput-object p3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$1:Ljava/lang/Object;

    iput p2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    iput p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$1:I

    iput p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$2:I

    const/4 v3, 0x2

    iput v3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    const/16 v3, 0xd0a

    invoke-interface {v2, v3, p4}, Lio/ktor/utils/io/ByteWriteChannel;->writeShort(SLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_2

    .line 165
    return-object v1

    .line 170
    :cond_2
    :goto_2
    iput-object v2, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$1:Ljava/lang/Object;

    iput p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    const/4 v3, 0x3

    iput v3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    invoke-interface {v2, p3, p2, p1, p4}, Lio/ktor/utils/io/ByteWriteChannel;->writeFully-JT6ljtQ(Ljava/nio/ByteBuffer;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "endIndex":I
    .end local p2    # "startIndex":I
    .end local p3    # "memory":Ljava/nio/ByteBuffer;
    if-ne p1, v1, :cond_3

    .line 165
    return-object v1

    .line 170
    :cond_3
    move-object p1, v2

    .line 171
    .end local v2    # "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "$this$writeChunk_u2dyRinSxo":Lio/ktor/utils/io/ByteWriteChannel;
    :goto_3
    sget-object p2, Lio/ktor/http/cio/ChunkedTransferEncodingKt;->CrLf:[B

    iput-object p1, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->L$0:Ljava/lang/Object;

    iput p0, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->I$0:I

    const/4 p3, 0x4

    iput p3, p4, Lio/ktor/http/cio/ChunkedTransferEncodingKt$writeChunk$1;->label:I

    invoke-static {p1, p2, p4}, Lio/ktor/utils/io/ByteWriteChannelKt;->writeFully(Lio/ktor/utils/io/ByteWriteChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    .line 165
    return-object v1

    .line 172
    :cond_4
    :goto_4
    invoke-interface {p1}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 174
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p2

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
