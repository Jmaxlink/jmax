.class final synthetic Lio/ktor/util/CryptoKt__CryptoKt;
.super Ljava/lang/Object;
.source "Crypto.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCrypto.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Crypto.kt\nio/ktor/util/CryptoKt__CryptoKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,112:1\n12#2,11:113\n8#3,3:124\n*S KotlinDebug\n*F\n+ 1 Crypto.kt\nio/ktor/util/CryptoKt__CryptoKt\n*L\n58#1:113,11\n109#1:124,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0001\u001a\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0005\u001a\u000e\u0010\u0007\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0008\u001a\u001d\u0010\u000b\u001a\u00020\u0005*\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0005H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u001a+\u0010\u000b\u001a\u00020\u0005*\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u00082\u000c\u0008\u0002\u0010\u000f\u001a\u00060\u0010j\u0002`\u0011H\u0087@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0012\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "NONCE_SIZE_IN_BYTES",
        "",
        "digits",
        "",
        "generateNonce",
        "",
        "size",
        "hex",
        "",
        "bytes",
        "s",
        "build",
        "Lio/ktor/util/Digest;",
        "(Lio/ktor/util/Digest;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "string",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "(Lio/ktor/util/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "ktor-utils"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
    xs = "io/ktor/util/CryptoKt"
.end annotation


# static fields
.field private static final digits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "0123456789abcdef"

    invoke-static {v0}, Lio/ktor/util/CharsetKt;->toCharArray(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lio/ktor/util/CryptoKt__CryptoKt;->digits:[C

    return-void
.end method

.method public static final build(Lio/ktor/util/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$build"    # Lio/ktor/util/Digest;
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/Digest;",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    .line 109
    move-object v0, p1

    .local v0, "$this$toByteArray$iv":Ljava/lang/String;
    const/4 v1, 0x0

    .line 124
    .local v1, "$i$f$toByteArray":I
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    const-string v3, "charset.newEncoder()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v2

    .line 109
    .end local v0    # "$this$toByteArray$iv":Ljava/lang/String;
    .end local v1    # "$i$f$toByteArray":I
    :goto_0
    invoke-interface {p0, v2}, Lio/ktor/util/Digest;->plusAssign([B)V

    .line 110
    invoke-interface {p0, p3}, Lio/ktor/util/Digest;->build(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final build(Lio/ktor/util/Digest;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this$build"    # Lio/ktor/util/Digest;
    .param p1, "bytes"    # [B
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/Digest;",
            "[B",
            "Lkotlin/coroutines/Continuation<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    .line 100
    invoke-interface {p0, p1}, Lio/ktor/util/Digest;->plusAssign([B)V

    .line 101
    invoke-interface {p0, p2}, Lio/ktor/util/Digest;->build(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic build$default(Lio/ktor/util/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 108
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/util/CryptoKt;->build(Lio/ktor/util/Digest;Ljava/lang/String;Ljava/nio/charset/Charset;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final generateNonce(I)[B
    .locals 12
    .param p0, "size"    # I

    .line 58
    const/4 v0, 0x0

    .line 113
    .local v0, "$i$f$buildPacket":I
    nop

    .line 117
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 118
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 119
    move-object v2, v1

    .local v2, "$this$generateNonce_u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v3, 0x0

    .line 59
    .local v3, "$i$a$-buildPacket-CryptoKt__CryptoKt$generateNonce$1":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v4

    if-ge v4, p0, :cond_0

    .line 60
    move-object v5, v2

    check-cast v5, Lio/ktor/utils/io/core/Output;

    invoke-static {}, Lio/ktor/util/CryptoKt;->generateNonce()Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    nop

    .line 119
    .end local v2    # "$this$generateNonce_u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v3    # "$i$a$-buildPacket-CryptoKt__CryptoKt$generateNonce$1":I
    nop

    .line 120
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    invoke-static {v2, p0}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/ByteReadPacket;I)[B

    move-result-object v0

    return-object v0

    .line 121
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 122
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 123
    throw v2
.end method

.method public static final hex([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 23
    .local v0, "result":[C
    const/4 v1, 0x0

    .line 24
    .local v1, "resultIndex":I
    sget-object v2, Lio/ktor/util/CryptoKt__CryptoKt;->digits:[C

    .line 26
    .local v2, "digits":[C
    const/4 v3, 0x0

    .local v3, "index":I
    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 27
    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    .line 28
    .local v5, "b":I
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "resultIndex":I
    .local v6, "resultIndex":I
    shr-int/lit8 v7, v5, 0x4

    aget-char v7, v2, v7

    aput-char v7, v0, v1

    .line 29
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "resultIndex":I
    .restart local v1    # "resultIndex":I
    and-int/lit8 v7, v5, 0xf

    aget-char v7, v2, v7

    aput-char v7, v0, v6

    .line 26
    .end local v5    # "b":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    .end local v3    # "index":I
    :cond_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->concatToString([C)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static final hex(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    const-string v0, "s"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 40
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "idx":I
    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 41
    mul-int/lit8 v3, v1, 0x2

    .line 42
    .local v3, "srcIdx":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v5}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 43
    .local v4, "high":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 44
    .local v5, "low":I
    or-int v6, v4, v5

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 40
    .end local v3    # "srcIdx":I
    .end local v4    # "high":I
    .end local v5    # "low":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "idx":I
    :cond_0
    return-object v0
.end method
