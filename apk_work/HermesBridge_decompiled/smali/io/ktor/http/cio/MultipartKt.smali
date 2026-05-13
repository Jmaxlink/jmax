.class public final Lio/ktor/http/cio/MultipartKt;
.super Ljava/lang/Object;
.source "Multipart.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultipart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Multipart.kt\nio/ktor/http/cio/MultipartKt\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,650:1\n7#2,4:651\n*S KotlinDebug\n*F\n+ 1 Multipart.kt\nio/ktor/http/cio/MultipartKt\n*L\n269#1:651,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a!\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001aW\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\"\u0010\u000f\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u00102\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0007\u001a\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002\u001a\u0010\u0010\u001d\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0007\u001a\u0010\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u001b\u001a\u00020\u001cH\u0000\u001a?\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u000c0 2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010#\u001a;\u0010$\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a;\u0010&\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010%\u001a\u0019\u0010\'\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\tH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(\u001a\u0019\u0010)\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(\u001a3\u0010*\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020+2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,\u001a3\u0010-\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010!\u001a\u00020+2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000cH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010,\u001a!\u0010.\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\n\u001a\u0014\u0010/\u001a\u00020\u001a*\u00020\u00012\u0006\u00100\u001a\u00020\u0001H\u0002\u001a \u00101\u001a\u0008\u0012\u0004\u0012\u00020302*\u0002042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0018\u001a/\u00101\u001a\u0008\u0012\u0004\u0012\u00020302*\u0002042\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u00105\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u00106\u001a1\u00101\u001a\u0008\u0012\u0004\u0012\u00020302*\u0002042\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0008\u00107\u001a\u0004\u0018\u00010\u000cH\u0007\u00a2\u0006\u0002\u00108\u001a\u001d\u00109\u001a\u00020\u0006*\u00020\t2\u0006\u0010:\u001a\u00020\u0001H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;\u001a\u001e\u0010<\u001a\u00020\u0006*\u00020\u00012\u0006\u0010=\u001a\u00020\u00012\u0008\u0008\u0002\u0010>\u001a\u00020\u001aH\u0002\u001a\u0014\u0010?\u001a\u00020\u001a*\u00020@2\u0006\u0010:\u001a\u00020\u0001H\u0002\u001a\u0014\u0010A\u001a\u00020\u001a*\u00020@2\u0006\u0010:\u001a\u00020\u0001H\u0002\u001a\u001d\u0010B\u001a\u00020\u0006*\u00020\t2\u0006\u0010:\u001a\u00020\u0001H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010;\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006C"
    }
    d2 = {
        "BoundaryTrailingBuffer",
        "Ljava/nio/ByteBuffer;",
        "CrLf",
        "PrefixChar",
        "",
        "boundary",
        "",
        "boundaryPrefixed",
        "input",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "copyUntilBoundary",
        "",
        "name",
        "",
        "writeFully",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "",
        "limit",
        "(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "expectMultipart",
        "headers",
        "Lio/ktor/http/cio/HttpHeadersMap;",
        "findBoundary",
        "",
        "contentType",
        "",
        "parseBoundary",
        "parseBoundaryInternal",
        "parsePart",
        "Lkotlin/Pair;",
        "output",
        "Lio/ktor/utils/io/ByteWriteChannel;",
        "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parsePartBody",
        "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parsePartBodyImpl",
        "parsePartHeaders",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parsePartHeadersImpl",
        "parsePreamble",
        "Lio/ktor/utils/io/core/BytePacketBuilder;",
        "(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parsePreambleImpl",
        "skipBoundary",
        "indexOfPartial",
        "sub",
        "parseMultipart",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lio/ktor/http/cio/MultipartEvent;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "contentLength",
        "(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;",
        "totalLength",
        "(Lkotlinx/coroutines/CoroutineScope;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;",
        "skipDelimiterOrEof",
        "delimiter",
        "(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startsWith",
        "prefix",
        "prefixSkip",
        "startsWithDelimiter",
        "Lio/ktor/utils/io/LookAheadSession;",
        "tryEnsureDelimiter",
        "trySkipDelimiterSuspend",
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
.field private static final BoundaryTrailingBuffer:Ljava/nio/ByteBuffer;

.field private static final CrLf:Ljava/nio/ByteBuffer;

.field private static final PrefixChar:B = 0x2dt


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 269
    const-string v0, "\r\n"

    .line 651
    .local v0, "$this$toByteArray_u24default$iv":Ljava/lang/String;
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .local v1, "charset$iv":Ljava/nio/charset/Charset;
    const/4 v2, 0x0

    .line 652
    .local v2, "$i$f$toByteArray":I
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    const-string v4, "charset.newEncoder()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v3

    .line 269
    .end local v0    # "$this$toByteArray_u24default$iv":Ljava/lang/String;
    .end local v1    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v2    # "$i$f$toByteArray":I
    :goto_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lio/ktor/http/cio/MultipartKt;->CrLf:Ljava/nio/ByteBuffer;

    .line 270
    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lio/ktor/http/cio/MultipartKt;->BoundaryTrailingBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final synthetic access$copyUntilBoundary(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p2, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p3, "writeFully"    # Lkotlin/jvm/functions/Function2;
    .param p4, "limit"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p6}, Lio/ktor/http/cio/MultipartKt;->copyUntilBoundary(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getBoundaryTrailingBuffer$p()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/cio/MultipartKt;->BoundaryTrailingBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final synthetic access$getCrLf$p()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/cio/MultipartKt;->CrLf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final synthetic access$parsePartBodyImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "output"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p3, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .param p4, "limit"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p6}, Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/http/cio/MultipartKt;->parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$parsePreambleImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "output"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p3, "limit"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p5}, Lio/ktor/http/cio/MultipartKt;->parsePreambleImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt;->skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 1
    invoke-static {p0, p1}, Lio/ktor/http/cio/MultipartKt;->tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$trySkipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt;->trySkipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final boundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed. Use parseMultipart instead."
    .end annotation

    .line 189
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt;->skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final copyUntilBoundary(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/nio/ByteBuffer;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p6

    instance-of v1, v0, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;

    iget v2, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 355
    iget v3, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->label:I

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
    iget v3, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->I$0:I

    .local v3, "rc":I
    iget-wide v4, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$1:J

    .local v4, "copied":J
    iget-wide v6, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$0:J

    .local v6, "limit":J
    iget-object v8, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$4:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    .local v8, "buffer":Ljava/nio/ByteBuffer;
    iget-object v9, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    .local v9, "writeFully":Lkotlin/jvm/functions/Function2;
    iget-object v10, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lio/ktor/utils/io/ByteReadChannel;

    .local v10, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v11, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/nio/ByteBuffer;

    .local v11, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    iget-object v12, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$0:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .end local v3    # "rc":I
    .end local v4    # "copied":J
    .end local v6    # "limit":J
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "writeFully":Lkotlin/jvm/functions/Function2;
    .end local v10    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v11    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .end local v12    # "name":Ljava/lang/String;
    :pswitch_1
    iget-wide v3, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$1:J

    .local v3, "copied":J
    iget-wide v5, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$0:J

    .local v5, "limit":J
    iget-object v7, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$4:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Ljava/nio/ByteBuffer;

    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v7, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    .local v7, "writeFully":Lkotlin/jvm/functions/Function2;
    iget-object v9, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lio/ktor/utils/io/ByteReadChannel;

    .local v9, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v10, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    .local v10, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    iget-object v11, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$0:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .local v11, "name":Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v7

    move-wide v6, v5

    move-wide v4, v3

    move-object v3, v2

    goto :goto_2

    .line 380
    .end local v3    # "copied":J
    .end local v5    # "limit":J
    .end local v7    # "writeFully":Lkotlin/jvm/functions/Function2;
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v10    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .end local v11    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 355
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "name":Ljava/lang/String;
    move-object/from16 v4, p2

    .local v4, "input":Lio/ktor/utils/io/ByteReadChannel;
    move-wide/from16 v5, p4

    .restart local v5    # "limit":J
    move-object/from16 v7, p1

    .local v7, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    move-object/from16 v8, p3

    .line 362
    .local v8, "writeFully":Lkotlin/jvm/functions/Function2;
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v9

    invoke-interface {v9}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/nio/ByteBuffer;

    .line 363
    .local v9, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v10, 0x0

    .line 365
    .local v10, "copied":J
    move-object v15, v9

    move-object v9, v8

    move-object v8, v15

    .line 366
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    .local v9, "writeFully":Lkotlin/jvm/functions/Function2;
    :goto_1
    nop

    .line 367
    :try_start_2
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 368
    iput-object v3, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$1:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$4:Ljava/lang/Object;

    iput-wide v5, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$0:J

    iput-wide v10, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$1:J

    const/4 v12, 0x1

    iput v12, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->label:I

    invoke-static {v4, v7, v8, v1}, Lio/ktor/utils/io/DelimitedKt;->readUntilDelimiter(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v12, v0, :cond_1

    .line 355
    return-object v0

    .line 368
    :cond_1
    move-object v15, v3

    move-object v3, v2

    move-object v2, v12

    move-object v12, v15

    move-wide/from16 v16, v10

    move-object v10, v4

    move-object v11, v7

    move-wide v6, v5

    move-wide/from16 v4, v16

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "limit":J
    .end local v7    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .local v3, "$result":Ljava/lang/Object;
    .local v4, "copied":J
    .restart local v6    # "limit":J
    .local v10, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v11, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .restart local v12    # "name":Ljava/lang/String;
    :goto_2
    :try_start_3
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 369
    .local v2, "rc":I
    if-lez v2, :cond_4

    .line 370
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 371
    iput-object v12, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->L$4:Ljava/lang/Object;

    iput-wide v6, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$0:J

    iput-wide v4, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->J$1:J

    iput v2, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->I$0:I

    const/4 v13, 0x2

    iput v13, v1, Lio/ktor/http/cio/MultipartKt$copyUntilBoundary$1;->label:I

    invoke-interface {v9, v8, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v13, v0, :cond_2

    .line 355
    return-object v0

    .line 371
    :cond_2
    move-object v15, v3

    move v3, v2

    move-object v2, v15

    .line 372
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "rc":I
    :goto_3
    int-to-long v13, v3

    add-long/2addr v4, v13

    .line 373
    cmp-long v13, v4, v6

    if-gtz v13, :cond_3

    move-object v3, v12

    move-wide v15, v4

    move-object v4, v10

    move-wide v5, v6

    move-object v7, v11

    move-wide v10, v15

    goto :goto_1

    .line 374
    .end local v4    # "copied":J
    .end local v9    # "writeFully":Lkotlin/jvm/functions/Function2;
    .end local v10    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v11    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    :cond_3
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multipart "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " limit of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes exceeded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    .end local v6    # "limit":J
    .end local v12    # "name":Ljava/lang/String;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .local v3, "$result":Ljava/lang/Object;
    .restart local v4    # "copied":J
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    :cond_4
    :try_start_5
    invoke-static {v4, v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 380
    .end local v4    # "copied":J
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v2

    invoke-interface {v2, v8}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    .line 378
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    return-object v0

    .line 380
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :goto_4
    invoke-static {}, Lio/ktor/network/util/PoolsKt;->getDefaultByteBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v3

    invoke-interface {v3, v8}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic copyUntilBoundary$default(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 355
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 360
    const-wide p4, 0x7fffffffffffffffL

    move-wide v4, p4

    goto :goto_0

    .line 355
    :cond_0
    move-wide v4, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt;->copyUntilBoundary(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final expectMultipart(Lio/ktor/http/cio/HttpHeadersMap;)Z
    .locals 5
    .param p0, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed."
    .end annotation

    const-string v0, "headers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "multipart/"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private static final findBoundary(Ljava/lang/CharSequence;)I
    .locals 8
    .param p0, "contentType"    # Ljava/lang/CharSequence;

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "state":I
    const/4 v1, 0x0

    .line 390
    .local v1, "paramNameCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_8

    .line 391
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 393
    .local v4, "ch":C
    const/16 v5, 0x2c

    const/16 v6, 0x22

    const/16 v7, 0x3b

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 435
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_1

    .line 427
    :pswitch_1
    if-ne v4, v6, :cond_0

    .line 428
    const/4 v0, 0x1

    .line 429
    const/4 v1, 0x0

    goto :goto_1

    .line 430
    :cond_0
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_7

    .line 431
    const/4 v0, 0x4

    goto :goto_1

    .line 417
    :pswitch_2
    nop

    .line 418
    if-ne v4, v6, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 419
    :cond_1
    if-ne v4, v5, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 420
    :cond_2
    if-ne v4, v7, :cond_7

    .line 421
    const/4 v0, 0x1

    .line 422
    const/4 v1, 0x0

    goto :goto_1

    .line 401
    :pswitch_3
    const/16 v6, 0x3d

    if-ne v4, v6, :cond_3

    .line 402
    const/4 v0, 0x2

    goto :goto_1

    .line 403
    :cond_3
    if-ne v4, v7, :cond_4

    .line 405
    const/4 v1, 0x0

    goto :goto_1

    .line 406
    :cond_4
    if-ne v4, v5, :cond_5

    .line 407
    const/4 v0, 0x0

    goto :goto_1

    .line 408
    :cond_5
    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    .line 410
    if-nez v1, :cond_6

    const-string v5, "boundary="

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    invoke-static {p0, v5, v2, v6}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 411
    return v2

    .line 413
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    :pswitch_4
    if-ne v4, v7, :cond_7

    .line 396
    const/4 v0, 0x1

    .line 397
    const/4 v1, 0x0

    .line 390
    .end local v4    # "ch":C
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_8
    const/4 v2, -0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final indexOfPartial(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p0, "$this$indexOfPartial"    # Ljava/nio/ByteBuffer;
    .param p1, "sub"    # Ljava/nio/ByteBuffer;

    .line 633
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 634
    .local v0, "subPosition":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 635
    .local v1, "subSize":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 636
    .local v2, "first":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 638
    .local v3, "limit":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .local v4, "idx":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 639
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    if-ne v5, v2, :cond_1

    .line 640
    const/4 v5, 0x1

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 641
    add-int v6, v4, v5

    if-eq v6, v3, :cond_0

    .line 642
    add-int v6, v4, v5

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v7, v0, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-ne v6, v7, :cond_1

    .line 640
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 644
    .end local v5    # "j":I
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int v5, v4, v5

    return v5

    .line 638
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    .end local v4    # "idx":I
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public static final parseBoundary(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "contentType"    # Ljava/lang/CharSequence;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to become internal. Use parseMultipart instead or file a ticket explaining why do you need this function."
    .end annotation

    const-string v0, "contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    invoke-static {p0}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static final parseBoundaryInternal(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;
    .locals 13
    .param p0, "contentType"    # Ljava/lang/CharSequence;

    const-string v0, "contentType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-static {p0}, Lio/ktor/http/cio/MultipartKt;->findBoundary(Ljava/lang/CharSequence;)I

    move-result v0

    .line 464
    .local v0, "boundaryParameter":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 467
    add-int/lit8 v1, v0, 0x9

    .line 469
    .local v1, "boundaryStart":I
    const/16 v2, 0x4a

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "allocate(74)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 470
    .local v2, "boundaryBytes":Ljava/nio/ByteBuffer;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 471
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 472
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 473
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 475
    const/4 v3, 0x0

    .line 477
    .local v3, "state":I
    move v4, v1

    .local v4, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_d

    .line 478
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 479
    .local v6, "ch":C
    const v7, 0xffff

    and-int v8, v6, v7

    .line 480
    .local v8, "v":I
    and-int/2addr v7, v8

    const/16 v9, 0x7f

    if-gt v7, v9, :cond_c

    .line 486
    const/16 v7, 0x3b

    const/16 v9, 0x2c

    const/16 v10, 0x22

    const/16 v11, 0x20

    const-string v12, "Failed to parse multipart: boundary shouldn\'t be longer than 70 characters"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 527
    :pswitch_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 528
    int-to-byte v7, v8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 529
    const/4 v3, 0x2

    goto :goto_4

    .line 532
    :cond_0
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 515
    :pswitch_1
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_1

    .line 516
    const/4 v3, 0x3

    goto :goto_4

    .line 517
    :cond_1
    if-ne v6, v10, :cond_2

    .line 518
    goto/16 :goto_5

    .line 519
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 520
    int-to-byte v7, v8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 523
    :cond_3
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 505
    :pswitch_2
    if-eq v6, v11, :cond_6

    if-eq v6, v9, :cond_6

    if-ne v6, v7, :cond_4

    goto :goto_1

    .line 507
    :cond_4
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 508
    int-to-byte v7, v8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 511
    :cond_5
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 506
    :cond_6
    :goto_1
    goto :goto_5

    .line 488
    :pswitch_3
    nop

    .line 489
    if-eq v6, v11, :cond_b

    .line 492
    if-ne v6, v10, :cond_7

    .line 493
    const/4 v3, 0x2

    goto :goto_4

    .line 495
    :cond_7
    const/4 v10, 0x1

    if-ne v6, v7, :cond_8

    :goto_2
    goto :goto_3

    :cond_8
    if-ne v6, v9, :cond_9

    goto :goto_2

    :cond_9
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_a

    .line 496
    goto :goto_5

    .line 499
    :cond_a
    const/4 v3, 0x1

    .line 500
    int-to-byte v7, v8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 477
    .end local v6    # "ch":C
    .end local v8    # "v":I
    :cond_b
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    .restart local v6    # "ch":C
    .restart local v8    # "v":I
    :cond_c
    new-instance v5, Ljava/io/IOException;

    .line 482
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse multipart: wrong boundary byte 0x"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x10

    invoke-static {v9}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "toString(this, checkRadix(radix))"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " - should be 7bit character"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 481
    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 538
    .end local v4    # "i":I
    .end local v6    # "ch":C
    .end local v8    # "v":I
    :cond_d
    :goto_5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 540
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_e

    .line 544
    return-object v2

    .line 541
    :cond_e
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Empty multipart boundary is not allowed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 465
    .end local v1    # "boundaryStart":I
    .end local v2    # "boundaryBytes":Ljava/nio/ByteBuffer;
    .end local v3    # "state":I
    :cond_f
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse multipart: Content-Type\'s boundary parameter is missing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/HttpHeadersMap;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 3
    .param p0, "$this$parseMultipart"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    const-string v0, "Content-Type"

    invoke-virtual {p2, v0}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    .local v0, "contentType":Ljava/lang/CharSequence;
    const-string v1, "Content-Length"

    invoke-virtual {p2, v1}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lio/ktor/http/cio/internals/CharsKt;->parseDecLong(Ljava/lang/CharSequence;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 247
    .local v1, "contentLength":Ljava/lang/Long;
    :goto_0
    invoke-static {p0, p1, v0, v1}, Lio/ktor/http/cio/MultipartKt;->parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v2

    return-object v2

    .line 244
    .end local v0    # "contentType":Ljava/lang/CharSequence;
    .end local v1    # "contentLength":Ljava/lang/Long;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to parse multipart: no Content-Type header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseMultipart(Lkotlinx/coroutines/CoroutineScope;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/CharSequence;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 4
    .param p0, "$this$parseMultipart"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "contentType"    # Ljava/lang/CharSequence;
    .param p3, "contentLength"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Long;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const-string v0, "multipart/"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-static {p2}, Lio/ktor/http/cio/MultipartKt;->parseBoundaryInternal(Ljava/lang/CharSequence;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    .local v0, "boundaryBytes":Ljava/nio/ByteBuffer;
    invoke-static {p0, v0, p1, p3}, Lio/ktor/http/cio/MultipartKt;->parseMultipart(Lkotlinx/coroutines/CoroutineScope;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v1

    return-object v1

    .line 260
    .end local v0    # "boundaryBytes":Ljava/nio/ByteBuffer;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse multipart: Content-Type should be multipart/* but it is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseMultipart(Lkotlinx/coroutines/CoroutineScope;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Ljava/lang/Long;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 8
    .param p0, "$this$parseMultipart"    # Lkotlinx/coroutines/CoroutineScope;
    .param p1, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p2, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p3, "totalLength"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/lang/Long;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lio/ktor/http/cio/MultipartEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed. Use parseMultipart(contentType) instead."
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundaryPrefixed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p3, v1}, Lio/ktor/http/cio/MultipartKt$parseMultipart$1;-><init>(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method public static final parsePart(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed. Use parseMultipart instead."
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lio/ktor/http/cio/MultipartKt$parsePart$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/MultipartKt$parsePart$1;

    iget v2, v1, Lio/ktor/http/cio/MultipartKt$parsePart$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/MultipartKt$parsePart$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/MultipartKt$parsePart$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/MultipartKt$parsePart$1;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/MultipartKt$parsePart$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    move-object v8, v0

    .local v8, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v9, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->result:Ljava/lang/Object;

    .local v9, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget v1, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->label:I

    packed-switch v1, :pswitch_data_0

    .end local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v9    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v8    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/HttpHeadersMap;

    .local v1, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :try_start_0
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v1

    move-object v1, v9

    goto/16 :goto_2

    .line 119
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 109
    .end local v1    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :pswitch_1
    iget-wide v1, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->J$0:J

    .local v1, "limit":J
    iget-object v3, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteWriteChannel;

    .local v3, "output":Lio/ktor/utils/io/ByteWriteChannel;
    iget-object v4, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/ByteReadChannel;

    .local v4, "input":Lio/ktor/utils/io/ByteReadChannel;
    iget-object v5, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/nio/ByteBuffer;

    .local v5, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v10, v1

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    move-object v6, v9

    goto :goto_1

    .end local v1    # "limit":J
    .end local v3    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    :pswitch_2
    invoke-static {v9}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v5, p0

    .restart local v5    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    move-object/from16 v3, p2

    .restart local v3    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    move-object/from16 v4, p1

    .restart local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    move-wide/from16 v1, p3

    .line 115
    .restart local v1    # "limit":J
    iput-object v5, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$0:Ljava/lang/Object;

    iput-object v4, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$1:Ljava/lang/Object;

    iput-object v3, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$2:Ljava/lang/Object;

    iput-wide v1, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->J$0:J

    const/4 v6, 0x1

    iput v6, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->label:I

    invoke-static {v4, v8}, Lio/ktor/http/cio/MultipartKt;->parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 109
    return-object v0

    .line 115
    :cond_1
    move-wide v10, v1

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    .line 109
    .end local v1    # "limit":J
    .end local v3    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v4    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v5    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .local v10, "limit":J
    .local v12, "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local v13, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v14, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    :goto_1
    move-object v15, v6

    check-cast v15, Lio/ktor/http/cio/HttpHeadersMap;

    .line 116
    .local v15, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    nop

    .line 117
    :try_start_1
    iput-object v15, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->L$2:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v8, Lio/ktor/http/cio/MultipartKt$parsePart$1;->label:I

    move-object v1, v14

    move-object v2, v13

    move-object v3, v12

    move-object v4, v15

    move-wide v5, v10

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    .end local v10    # "limit":J
    .end local v12    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .end local v13    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v14    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    if-ne v1, v0, :cond_2

    .line 109
    return-object v0

    .line 117
    :cond_2
    :goto_2
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 118
    .local v0, "size":J
    new-instance v2, Lkotlin/Pair;

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v15, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v2

    .line 119
    .end local v0    # "size":J
    :catchall_1
    move-exception v0

    move-object v1, v15

    .line 120
    .end local v15    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .local v0, "t":Ljava/lang/Throwable;
    .local v1, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :goto_3
    invoke-virtual {v1}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 121
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic parsePart$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 109
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 113
    const-wide p3, 0x7fffffffffffffffL

    move-wide v3, p3

    goto :goto_0

    .line 109
    :cond_0
    move-wide v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/http/cio/MultipartKt;->parsePart(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parsePartBody(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "output"    # Lio/ktor/utils/io/ByteWriteChannel;
    .param p3, "headers"    # Lio/ktor/http/cio/HttpHeadersMap;
    .param p4, "limit"    # J
    .param p6, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed. Use parseMultipart instead."
    .end annotation

    .line 159
    invoke-static/range {p0 .. p6}, Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic parsePartBody$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 152
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 157
    const-wide p4, 0x7fffffffffffffffL

    move-wide v4, p4

    goto :goto_0

    .line 152
    :cond_0
    move-wide v4, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt;->parsePartBody(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final parsePartBodyImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/ByteWriteChannel;",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;

    iget v1, v0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p6, v0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    sub-int/2addr p6, v2

    iput p6, v0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;

    invoke-direct {v0, p6}, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p6, v0

    .local p6, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v7, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->result:Ljava/lang/Object;

    .local v7, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 165
    iget v0, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v7    # "$result":Ljava/lang/Object;
    .end local p6    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v7    # "$result":Ljava/lang/Object;
    .restart local p6    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    .local p0, "output":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v7

    goto/16 :goto_3

    .end local p0    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_1
    iget-object p0, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteWriteChannel;

    .restart local p0    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v7

    goto :goto_2

    .end local p0    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    :pswitch_2
    invoke-static {v7}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .local v1, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    move-object p0, p2

    .restart local p0    # "output":Lio/ktor/utils/io/ByteWriteChannel;
    .local p1, "input":Lio/ktor/utils/io/ByteReadChannel;
    .local p4, "limit":J
    move-object p2, p3

    .line 172
    .local p2, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    const-string p3, "Content-Length"

    invoke-virtual {p2, p3}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .end local p2    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    invoke-static {p2}, Lio/ktor/http/cio/internals/CharsKt;->parseDecLong(Ljava/lang/CharSequence;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, p3

    .line 173
    .local p2, "cl":Ljava/lang/Long;
    :goto_1
    if-eqz p2, :cond_4

    .line 174
    .end local v1    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p3, v0, p4

    if-gtz p3, :cond_3

    .line 175
    .end local p4    # "limit":J
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    iput-object p0, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    const/4 p5, 0x1

    iput p5, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    invoke-static {p1, p0, p3, p4, p6}, Lio/ktor/utils/io/ByteReadChannelJVMKt;->copyTo(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local p2    # "cl":Ljava/lang/Long;
    if-ne p1, v8, :cond_2

    .line 165
    return-object v8

    .line 175
    :cond_2
    :goto_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    goto :goto_4

    .line 174
    .restart local p1    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .restart local p2    # "cl":Ljava/lang/Long;
    .restart local p4    # "limit":J
    :cond_3
    new-instance p3, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multipart part content length limit of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exceeded (actual size is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 177
    .end local p2    # "cl":Ljava/lang/Long;
    .restart local v1    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    :cond_4
    new-instance p2, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$size$1;

    invoke-direct {p2, p0, p3}, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$size$1;-><init>(Lio/ktor/utils/io/ByteWriteChannel;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object p0, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->L$0:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, p6, Lio/ktor/http/cio/MultipartKt$parsePartBodyImpl$1;->label:I

    const-string v0, "part"

    move-object v2, p1

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt;->copyUntilBoundary(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local v1    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .end local p1    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local p4    # "limit":J
    if-ne p1, v8, :cond_5

    .line 165
    return-object v8

    .line 177
    :cond_5
    :goto_3
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 173
    :goto_4
    nop

    .line 179
    .local p1, "size":J
    invoke-interface {p0}, Lio/ktor/utils/io/ByteWriteChannel;->flush()V

    .line 181
    invoke-static {p1, p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p3

    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic parsePartBodyImpl$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 165
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    .line 170
    const-wide p4, 0x7fffffffffffffffL

    move-wide v4, p4

    goto :goto_0

    .line 165
    :cond_0
    move-wide v4, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lio/ktor/http/cio/MultipartKt;->parsePartBodyImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/ByteWriteChannel;Lio/ktor/http/cio/HttpHeadersMap;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final parsePartHeaders(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed. Use parseMultipart instead."
    .end annotation

    .line 130
    invoke-static {p0, p1}, Lio/ktor/http/cio/MultipartKt;->parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final parsePartHeadersImpl(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;

    iget v1, v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;

    invoke-direct {v0, p1}, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v6, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->result:Ljava/lang/Object;

    .local v6, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 136
    iget v0, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v6    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .local p0, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :try_start_0
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v6

    goto :goto_1

    .end local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :pswitch_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 137
    .local v0, "input":Lio/ktor/utils/io/ByteReadChannel;
    new-instance p0, Lio/ktor/http/cio/internals/CharArrayBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .restart local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    nop

    .line 140
    :try_start_1
    iput-object p0, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lio/ktor/http/cio/MultipartKt$parsePartHeadersImpl$1;->label:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/ktor/http/cio/HttpParserKt;->parseHeaders$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v0    # "input":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v1, v7, :cond_1

    .line 136
    return-object v7

    .line 140
    :cond_1
    :goto_1
    check-cast v1, Lio/ktor/http/cio/HttpHeadersMap;

    if-eqz v1, :cond_2

    return-object v1

    .line 141
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Failed to parse multipart headers: unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local v6    # "$result":Ljava/lang/Object;
    .end local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :catchall_0
    move-exception v0

    .line 143
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->release()V

    .line 144
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final parsePreamble(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "output"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p3, "limit"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "This is going to be removed. Use parseMultipart instead."
    .end annotation

    .line 83
    invoke-static/range {p0 .. p5}, Lio/ktor/http/cio/MultipartKt;->parsePreambleImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic parsePreamble$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 77
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 81
    const-wide p3, 0x7fffffffffffffffL

    move-wide v3, p3

    goto :goto_0

    .line 77
    :cond_0
    move-wide v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/http/cio/MultipartKt;->parsePreamble(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final parsePreambleImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .param p0, "boundaryPrefixed"    # Ljava/nio/ByteBuffer;
    .param p1, "input"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p2, "output"    # Lio/ktor/utils/io/core/BytePacketBuilder;
    .param p3, "limit"    # J
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/utils/io/core/BytePacketBuilder;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 97
    nop

    .line 98
    nop

    .line 99
    nop

    .line 96
    new-instance v0, Lio/ktor/http/cio/MultipartKt$parsePreambleImpl$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lio/ktor/http/cio/MultipartKt$parsePreambleImpl$2;-><init>(Lio/ktor/utils/io/core/BytePacketBuilder;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    .line 101
    nop

    .line 96
    const-string v2, "preamble/prologue"

    move-object v3, p0

    move-object v4, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-static/range {v2 .. v8}, Lio/ktor/http/cio/MultipartKt;->copyUntilBoundary(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/jvm/functions/Function2;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic parsePreambleImpl$default(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 90
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    .line 94
    const-wide p3, 0x7fffffffffffffffL

    move-wide v3, p3

    goto :goto_0

    .line 90
    :cond_0
    move-wide v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/http/cio/MultipartKt;->parsePreambleImpl(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/utils/io/core/BytePacketBuilder;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final skipBoundary(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;

    iget v1, v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;

    invoke-direct {v0, p2}, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 196
    iget v2, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local p0, "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    :pswitch_1
    iget-object p0, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/utils/io/ByteReadChannel;

    .local p0, "input":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    .end local p0    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :pswitch_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    .local p0, "boundaryPrefixed":Ljava/nio/ByteBuffer;
    .local p1, "input":Lio/ktor/utils/io/ByteReadChannel;
    iput-object p1, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->label:I

    invoke-static {p1, p0, p2}, Lio/ktor/http/cio/MultipartKt;->skipDelimiterOrEof(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "boundaryPrefixed":Ljava/nio/ByteBuffer;
    if-ne p0, v1, :cond_1

    .line 196
    return-object v1

    .line 197
    :cond_1
    :goto_1
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2

    .line 198
    .end local p1    # "input":Lio/ktor/utils/io/ByteReadChannel;
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 201
    .restart local p1    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :cond_2
    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 203
    .local p0, "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v2, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lio/ktor/http/cio/MultipartKt$skipBoundary$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p0, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->L$0:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p2, Lio/ktor/http/cio/MultipartKt$skipBoundary$1;->label:I

    invoke-interface {p1, v2, p2}, Lio/ktor/utils/io/ByteReadChannel;->lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "input":Lio/ktor/utils/io/ByteReadChannel;
    if-ne p1, v1, :cond_3

    .line 196
    return-object v1

    .line 226
    :cond_3
    :goto_2
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final skipDelimiterOrEof(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$skipDelimiterOrEof"    # Lio/ktor/utils/io/ByteReadChannel;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 553
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 554
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x2000

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 558
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 560
    .local v0, "found":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v1, Lio/ktor/http/cio/MultipartKt$skipDelimiterOrEof$3;

    invoke-direct {v1, v0, p1}, Lio/ktor/http/cio/MultipartKt$skipDelimiterOrEof$3;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/nio/ByteBuffer;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v1}, Lio/ktor/utils/io/ByteReadChannel;->lookAhead(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 564
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_1

    .line 565
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 568
    :cond_1
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt;->trySkipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 554
    .end local v0    # "found":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_2
    const/4 v0, 0x0

    .line 555
    .local v0, "$i$a$-require-MultipartKt$skipDelimiterOrEof$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delimiter of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes is too long: at most 8192 bytes could be checked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    .end local v0    # "$i$a$-require-MultipartKt$skipDelimiterOrEof$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 553
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final startsWith(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z
    .locals 7
    .param p0, "$this$startsWith"    # Ljava/nio/ByteBuffer;
    .param p1, "prefix"    # Ljava/nio/ByteBuffer;
    .param p2, "prefixSkip"    # I

    .line 598
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 599
    .local v0, "size":I
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 601
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 602
    .local v2, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p2

    .line 604
    .local v3, "prefixPosition":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 605
    add-int v5, v2, v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    add-int v6, v3, v4

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    if-eq v5, v6, :cond_1

    return v1

    .line 604
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 608
    .end local v4    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic startsWith$default(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILjava/lang/Object;)Z
    .locals 0

    .line 597
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/http/cio/MultipartKt;->startsWith(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result p0

    return p0
.end method

.method private static final startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p0, "$this$startsWithDelimiter"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 616
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 617
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    invoke-static {v0, p1}, Lio/ktor/http/cio/MultipartKt;->indexOfPartial(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 618
    .local v1, "index":I
    const/4 v2, -0x1

    if-eqz v1, :cond_1

    return v2

    .line 620
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 621
    .local v3, "found":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    sub-int/2addr v4, v3

    .line 623
    .local v4, "notKnown":I
    if-lez v4, :cond_3

    .line 624
    add-int v5, v1, v3

    invoke-interface {p0, v5, v4}, Lio/ktor/utils/io/LookAheadSession;->request(II)Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_2

    return v3

    .line 625
    .local v5, "next":Ljava/nio/ByteBuffer;
    :cond_2
    invoke-static {v5, p1, v3}, Lio/ktor/http/cio/MultipartKt;->startsWith(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    .line 628
    .end local v5    # "next":Ljava/nio/ByteBuffer;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    return v2
.end method

.method private static final tryEnsureDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "$this$tryEnsureDelimiter"    # Lio/ktor/utils/io/LookAheadSession;
    .param p1, "delimiter"    # Ljava/nio/ByteBuffer;

    .line 588
    invoke-static {p0, p1}, Lio/ktor/http/cio/MultipartKt;->startsWithDelimiter(Lio/ktor/utils/io/LookAheadSession;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 589
    .local v0, "found":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 590
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    return v0

    .line 592
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-interface {p0, v1}, Lio/ktor/utils/io/LookAheadSession;->consumed(I)V

    .line 593
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    return v1

    .line 589
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to skip delimiter: actual bytes differ from delimiter bytes"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final trySkipDelimiterSuspend(Lio/ktor/utils/io/ByteReadChannel;Ljava/nio/ByteBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Ljava/nio/ByteBuffer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;

    iget v1, v0, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;

    invoke-direct {v0, p2}, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p2, v0

    .local p2, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p2, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 572
    iget v2, p2, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->label:I

    packed-switch v2, :pswitch_data_0

    .end local v0    # "$result":Ljava/lang/Object;
    .end local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p2    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p2, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .local p0, "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 573
    .local p0, "$this$trySkipDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    .local p1, "delimiter":Ljava/nio/ByteBuffer;
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .local v2, "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 575
    new-instance v4, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$2;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v2, v5}, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$2;-><init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v2, p2, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->L$0:Ljava/lang/Object;

    iput v3, p2, Lio/ktor/http/cio/MultipartKt$trySkipDelimiterSuspend$1;->label:I

    invoke-interface {p0, v4, p2}, Lio/ktor/utils/io/ByteReadChannel;->lookAheadSuspend(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this$trySkipDelimiterSuspend":Lio/ktor/utils/io/ByteReadChannel;
    .end local p1    # "delimiter":Ljava/nio/ByteBuffer;
    if-ne p0, v1, :cond_1

    .line 572
    return-object v1

    .line 575
    :cond_1
    move-object p0, v2

    .line 583
    .end local v2    # "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local p0, "result":Lkotlin/jvm/internal/Ref$BooleanRef;
    :goto_1
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
