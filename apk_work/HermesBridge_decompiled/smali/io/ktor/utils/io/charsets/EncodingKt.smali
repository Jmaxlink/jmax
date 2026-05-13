.class public final Lio/ktor/utils/io/charsets/EncodingKt;
.super Ljava/lang/Object;
.source "Encoding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncoding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 Output.kt\nio/ktor/utils/io/core/OutputKt\n+ 4 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,204:1\n12#2,11:205\n12#2,11:216\n507#3,13:227\n488#3,4:240\n492#3,6:246\n507#3,6:252\n513#3,7:260\n74#4:244\n74#4:245\n74#4:258\n74#4:259\n*S KotlinDebug\n*F\n+ 1 Encoding.kt\nio/ktor/utils/io/charsets/EncodingKt\n*L\n63#1:205,11\n67#1:216,11\n76#1:227,13\n161#1:240,4\n161#1:246,6\n187#1:252,6\n187#1:260,7\n162#1:244\n168#1:245\n188#1:258\n192#1:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\u001a \u0010\u0000\u001a\u00020\u0001*\u00060\u0002j\u0002`\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u001a.\u0010\u0008\u001a\u00020\t*\u00060\nj\u0002`\u000b2\u0006\u0010\u0004\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010\u001a*\u0010\u0008\u001a\u00020\u0011*\u00060\nj\u0002`\u000b2\u0006\u0010\u0004\u001a\u00020\u00122\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007\u001a0\u0010\u0008\u001a\u00020\t*\u00060\nj\u0002`\u000b2\u0006\u0010\u0004\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u001a0\u0010\u0013\u001a\u00020\u0007*\u00060\nj\u0002`\u000b2\u0006\u0010\u0004\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0014H\u0000\u001a\u0018\u0010\u0015\u001a\u00020\u0007*\u00060\nj\u0002`\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002\u001a,\u0010\u0016\u001a\u00020\u0017*\u00060\nj\u0002`\u000b2\u0006\u0010\u0004\u001a\u00020\u00122\u0008\u0008\u0002\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0007H\u0007\u001a0\u0010\u0018\u001a\u00020\u0007*\u00060\nj\u0002`\u000b2\u0006\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0000\u001a\u0016\u0010\u001a\u001a\u00020\u0011*\u00060\nj\u0002`\u000b2\u0006\u0010\u0004\u001a\u00020\u0011\u001a\u000c\u0010\u001b\u001a\u00020\u001c*\u00020\u0005H\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "decode",
        "",
        "Ljava/nio/charset/CharsetDecoder;",
        "Lio/ktor/utils/io/charsets/CharsetDecoder;",
        "input",
        "Lio/ktor/utils/io/core/Input;",
        "max",
        "",
        "encode",
        "",
        "Ljava/nio/charset/CharsetEncoder;",
        "Lio/ktor/utils/io/charsets/CharsetEncoder;",
        "",
        "fromIndex",
        "toIndex",
        "dst",
        "Lio/ktor/utils/io/core/Output;",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "",
        "encodeArrayImpl",
        "Lio/ktor/utils/io/core/Buffer;",
        "encodeCompleteImpl",
        "encodeToByteArrayImpl",
        "",
        "encodeToImpl",
        "destination",
        "encodeUTF8",
        "sizeEstimate",
        "",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;
    .locals 4
    .param p0, "$this$decode"    # Ljava/nio/charset/CharsetDecoder;
    .param p1, "input"    # Lio/ktor/utils/io/core/Input;
    .param p2, "max"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    int-to-long v0, p2

    invoke-static {p1}, Lio/ktor/utils/io/charsets/EncodingKt;->sizeEstimate(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v1

    .local v0, "$this$decode_u24lambda_u243":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 103
    .local v2, "$i$a$-buildString-EncodingKt$decode$1":I
    move-object v3, v0

    check-cast v3, Ljava/lang/Appendable;

    invoke-static {p0, p1, v3, p2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;Ljava/lang/Appendable;I)I

    .line 104
    nop

    .line 102
    .end local v0    # "$this$decode_u24lambda_u243":Ljava/lang/StringBuilder;
    .end local v2    # "$i$a$-buildString-EncodingKt$decode$1":I
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return-object v0
.end method

.method public static synthetic decode$default(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 101
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7fffffff

    :cond_0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/charsets/EncodingKt;->decode(Ljava/nio/charset/CharsetDecoder;Lio/ktor/utils/io/core/Input;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final encode(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 5
    .param p0, "$this$encode"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .line 205
    .local v0, "$i$f$buildPacket":I
    nop

    .line 209
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 210
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 211
    move-object v2, v1

    .local v2, "$this$encode_u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v3, 0x0

    .line 64
    .local v3, "$i$a$-buildPacket-EncodingKt$encode$1":I
    :try_start_0
    move-object v4, v2

    check-cast v4, Lio/ktor/utils/io/core/Output;

    invoke-static {p0, v4, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    .line 65
    nop

    .line 211
    .end local v2    # "$this$encode_u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v3    # "$i$a$-buildPacket-EncodingKt$encode$1":I
    nop

    .line 212
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    return-object v2

    .line 213
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 214
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 215
    throw v2
.end method

.method public static final encode(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Output;)V
    .locals 1
    .param p0, "$this$encode"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "dst"    # Lio/ktor/utils/io/core/Output;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Use writeText on Output instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "dst.writeText(input, fromIndex, toIndex, charset)"
            imports = {
                "io.ktor.utils.io.core.writeText"
            }
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0, p4, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I

    .line 35
    return-void
.end method

.method public static final encode(Ljava/nio/charset/CharsetEncoder;[CIILio/ktor/utils/io/core/Output;)V
    .locals 17
    .param p0, "$this$encode"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "input"    # [C
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "dst"    # Lio/ktor/utils/io/core/Output;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    .local v0, "start":I
    move/from16 v0, p2

    .line 75
    if-lt v0, v3, :cond_0

    return-void

    .line 76
    :cond_0
    const/4 v5, 0x1

    .local v5, "initialSize$iv":I
    move-object/from16 v6, p4

    .local v6, "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    const/4 v7, 0x0

    .line 227
    .local v7, "$i$f$writeWhileSize":I
    const/4 v8, 0x0

    invoke-static {v6, v5, v8}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v8

    .line 229
    .local v8, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v9, 0x0

    move-object/from16 v16, v8

    move v8, v0

    move v0, v9

    move-object/from16 v9, v16

    .line 231
    .local v0, "size$iv":I
    .local v8, "start":I
    .local v9, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 232
    :try_start_0
    move-object v10, v9

    check-cast v10, Lio/ktor/utils/io/core/Buffer;

    .local v10, "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v11, 0x0

    .line 77
    .local v11, "$i$a$-writeWhileSize-EncodingKt$encode$2":I
    invoke-static {v1, v2, v8, v3, v10}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeArrayImpl(Ljava/nio/charset/CharsetEncoder;[CIILio/ktor/utils/io/core/Buffer;)I

    move-result v12

    .line 78
    .local v12, "rc":I
    const/4 v13, 0x1

    const/4 v14, 0x0

    if-ltz v12, :cond_1

    move v15, v13

    goto :goto_1

    :cond_1
    move v15, v14

    :goto_1
    if-eqz v15, :cond_5

    .line 79
    add-int/2addr v8, v12

    .line 81
    nop

    .line 82
    if-lt v8, v3, :cond_2

    move v13, v14

    goto :goto_2

    .line 83
    :cond_2
    if-nez v12, :cond_3

    const/16 v13, 0x8

    goto :goto_2

    .line 84
    :cond_3
    nop

    .line 81
    :goto_2
    nop

    .line 232
    .end local v10    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$a$-writeWhileSize-EncodingKt$encode$2":I
    .end local v12    # "rc":I
    move v0, v13

    .line 233
    if-lez v0, :cond_4

    .line 234
    invoke-static {v6, v0, v9}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v10

    goto :goto_0

    .line 237
    .end local v0    # "size$iv":I
    :cond_4
    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 238
    nop

    .line 239
    nop

    .line 88
    .end local v5    # "initialSize$iv":I
    .end local v6    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$writeWhileSize":I
    .end local v9    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-static {v1, v4}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I

    .line 89
    return-void

    .line 78
    .restart local v0    # "size$iv":I
    .restart local v5    # "initialSize$iv":I
    .restart local v6    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$writeWhileSize":I
    .restart local v9    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v10    # "view":Lio/ktor/utils/io/core/Buffer;
    .restart local v11    # "$i$a$-writeWhileSize-EncodingKt$encode$2":I
    .restart local v12    # "rc":I
    :cond_5
    :try_start_1
    const-string v13, "Check failed."

    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "initialSize$iv":I
    .end local v6    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v7    # "$i$f$writeWhileSize":I
    .end local v8    # "start":I
    .end local v9    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$encode":Ljava/nio/charset/CharsetEncoder;
    .end local p1    # "input":[C
    .end local p2    # "fromIndex":I
    .end local p3    # "toIndex":I
    .end local p4    # "dst":Lio/ktor/utils/io/core/Output;
    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    .end local v0    # "size$iv":I
    .end local v10    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v11    # "$i$a$-writeWhileSize-EncodingKt$encode$2":I
    .end local v12    # "rc":I
    .restart local v5    # "initialSize$iv":I
    .restart local v6    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v7    # "$i$f$writeWhileSize":I
    .restart local v8    # "start":I
    .restart local v9    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p0    # "$this$encode":Ljava/nio/charset/CharsetEncoder;
    .restart local p1    # "input":[C
    .restart local p2    # "fromIndex":I
    .restart local p3    # "toIndex":I
    .restart local p4    # "dst":Lio/ktor/utils/io/core/Output;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static synthetic encode$default(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 0

    .line 59
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 61
    const/4 p2, 0x0

    .line 59
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 62
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 59
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encode(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0
.end method

.method public static final encodeArrayImpl(Ljava/nio/charset/CharsetEncoder;[CIILio/ktor/utils/io/core/Buffer;)I
    .locals 3
    .param p0, "$this$encodeArrayImpl"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "input"    # [C
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .param p4, "dst"    # Lio/ktor/utils/io/core/Buffer;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sub-int v0, p3, p2

    .line 127
    .local v0, "length":I
    new-instance v1, Lio/ktor/utils/io/core/internal/CharArraySequence;

    invoke-direct {v1, p1, p2, v0}, Lio/ktor/utils/io/core/internal/CharArraySequence;-><init>([CII)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, p4}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Buffer;)I

    move-result v1

    return v1
.end method

.method private static final encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I
    .locals 13
    .param p0, "$this$encodeCompleteImpl"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "dst"    # Lio/ktor/utils/io/core/Output;

    .line 158
    const/4 v0, 0x0

    .local v0, "size":I
    const/4 v0, 0x1

    .line 159
    const/4 v1, 0x0

    .line 161
    .local v1, "bytesWritten":I
    move-object v2, p1

    .local v2, "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    const/4 v3, 0x0

    .line 240
    .local v3, "$i$f$writeWhile":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v4

    .line 241
    .local v4, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 242
    :goto_0
    nop

    .line 243
    :try_start_0
    move-object v6, v4

    check-cast v6, Lio/ktor/utils/io/core/Buffer;

    .local v6, "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v7, 0x0

    .line 162
    .local v7, "$i$a$-writeWhile-EncodingKt$encodeCompleteImpl$1":I
    move-object v8, v6

    .local v8, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v9, 0x0

    .line 244
    .local v9, "$i$f$getWriteRemaining":I
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v10

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v11

    sub-int/2addr v10, v11

    .line 162
    .end local v8    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v9    # "$i$f$getWriteRemaining":I
    move v8, v10

    .line 163
    .local v8, "before":I
    invoke-static {p0, v6}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeComplete(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Buffer;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 164
    const/4 v0, 0x0

    goto :goto_1

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 168
    :goto_1
    move-object v9, v6

    .local v9, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v10, 0x0

    .line 245
    .local v10, "$i$f$getWriteRemaining":I
    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v11

    invoke-virtual {v9}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v12

    sub-int/2addr v11, v12

    .line 168
    .end local v9    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v10    # "$i$f$getWriteRemaining":I
    sub-int v9, v8, v11

    add-int/2addr v1, v9

    .line 169
    if-lez v0, :cond_1

    move v9, v5

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 243
    .end local v6    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v7    # "$i$a$-writeWhile-EncodingKt$encodeCompleteImpl$1":I
    .end local v8    # "before":I
    :goto_2
    if-eqz v9, :cond_2

    .line 246
    invoke-static {v2, v5, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 250
    nop

    .line 251
    nop

    .line 172
    .end local v2    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .end local v3    # "$i$f$writeWhile":I
    .end local v4    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    return v1

    .line 249
    .restart local v2    # "$this$writeWhile$iv":Lio/ktor/utils/io/core/Output;
    .restart local v3    # "$i$f$writeWhile":I
    .restart local v4    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v5
.end method

.method public static final encodeToByteArrayImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B
    .locals 1
    .param p0, "$this$encodeToByteArrayImpl"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Internal API. Will be hidden in future releases. Use encodeToByteArray instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "encodeToByteArray(input, fromIndex, toIndex)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic encodeToByteArrayImpl$default(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IIILjava/lang/Object;)[B
    .locals 0

    .line 48
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 50
    const/4 p2, 0x0

    .line 48
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    .line 48
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeToByteArrayImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p0

    return-object p0
.end method

.method public static final encodeToImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;II)I
    .locals 22
    .param p0, "$this$encodeToImpl"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "destination"    # Lio/ktor/utils/io/core/Output;
    .param p2, "input"    # Ljava/lang/CharSequence;
    .param p3, "fromIndex"    # I
    .param p4, "toIndex"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    move-object/from16 v4, p1

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    .local v0, "start":I
    move/from16 v0, p3

    .line 183
    const/4 v5, 0x0

    if-lt v0, v3, :cond_0

    return v5

    .line 185
    :cond_0
    const/4 v6, 0x0

    .line 187
    .local v6, "bytesWritten":I
    const/4 v7, 0x1

    .local v7, "initialSize$iv":I
    move-object/from16 v8, p1

    .local v8, "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    const/4 v9, 0x0

    .line 252
    .local v9, "$i$f$writeWhileSize":I
    const/4 v10, 0x0

    invoke-static {v8, v7, v10}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v10

    .line 254
    .local v10, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    const/4 v11, 0x0

    move/from16 v21, v6

    move v6, v0

    move v0, v11

    move-object v11, v10

    move/from16 v10, v21

    .line 256
    .local v0, "size$iv":I
    .local v6, "start":I
    .local v10, "bytesWritten":I
    .local v11, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    :goto_0
    nop

    .line 257
    :try_start_0
    move-object v12, v11

    check-cast v12, Lio/ktor/utils/io/core/Buffer;

    .local v12, "view":Lio/ktor/utils/io/core/Buffer;
    const/4 v13, 0x0

    .line 188
    .local v13, "$i$a$-writeWhileSize-EncodingKt$encodeToImpl$1":I
    move-object v14, v12

    .local v14, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/4 v15, 0x0

    .line 258
    .local v15, "$i$f$getWriteRemaining":I
    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v16

    invoke-virtual {v14}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v17

    sub-int v16, v16, v17

    .line 188
    .end local v14    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v15    # "$i$f$getWriteRemaining":I
    move/from16 v14, v16

    .line 189
    .local v14, "before":I
    invoke-static {v1, v2, v6, v3, v12}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeImpl(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;IILio/ktor/utils/io/core/Buffer;)I

    move-result v15

    .line 190
    .local v15, "rc":I
    const/16 v16, 0x1

    if-ltz v15, :cond_1

    move/from16 v17, v16

    goto :goto_1

    :cond_1
    move/from16 v17, v5

    :goto_1
    if-eqz v17, :cond_5

    .line 191
    add-int/2addr v6, v15

    .line 192
    move-object/from16 v17, v12

    .local v17, "this_$iv":Lio/ktor/utils/io/core/Buffer;
    const/16 v18, 0x0

    .line 259
    .local v18, "$i$f$getWriteRemaining":I
    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v20

    sub-int v19, v19, v20

    .line 192
    .end local v17    # "this_$iv":Lio/ktor/utils/io/core/Buffer;
    .end local v18    # "$i$f$getWriteRemaining":I
    sub-int v17, v14, v19

    add-int v10, v10, v17

    .line 194
    nop

    .line 195
    if-lt v6, v3, :cond_2

    move/from16 v16, v5

    goto :goto_2

    .line 196
    :cond_2
    if-nez v15, :cond_3

    const/16 v16, 0x8

    goto :goto_2

    .line 197
    :cond_3
    nop

    .line 194
    :goto_2
    nop

    .line 257
    .end local v12    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-writeWhileSize-EncodingKt$encodeToImpl$1":I
    .end local v14    # "before":I
    .end local v15    # "rc":I
    move/from16 v0, v16

    .line 260
    if-lez v0, :cond_4

    .line 261
    invoke-static {v8, v0, v11}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v12

    goto :goto_0

    .line 264
    .end local v0    # "size$iv":I
    :cond_4
    invoke-virtual {v8}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 265
    nop

    .line 266
    nop

    .line 201
    .end local v7    # "initialSize$iv":I
    .end local v8    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v9    # "$i$f$writeWhileSize":I
    .end local v11    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-static/range {p0 .. p1}, Lio/ktor/utils/io/charsets/EncodingKt;->encodeCompleteImpl(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/Output;)I

    move-result v0

    add-int/2addr v10, v0

    .line 202
    return v10

    .line 190
    .restart local v0    # "size$iv":I
    .restart local v7    # "initialSize$iv":I
    .restart local v8    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v9    # "$i$f$writeWhileSize":I
    .restart local v11    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local v12    # "view":Lio/ktor/utils/io/core/Buffer;
    .restart local v13    # "$i$a$-writeWhileSize-EncodingKt$encodeToImpl$1":I
    .restart local v14    # "before":I
    .restart local v15    # "rc":I
    :cond_5
    :try_start_1
    const-string v5, "Check failed."

    move/from16 v16, v0

    .end local v0    # "size$iv":I
    .local v16, "size$iv":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "start":I
    .end local v7    # "initialSize$iv":I
    .end local v8    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .end local v9    # "$i$f$writeWhileSize":I
    .end local v10    # "bytesWritten":I
    .end local v11    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local p0    # "$this$encodeToImpl":Ljava/nio/charset/CharsetEncoder;
    .end local p1    # "destination":Lio/ktor/utils/io/core/Output;
    .end local p2    # "input":Ljava/lang/CharSequence;
    .end local p3    # "fromIndex":I
    .end local p4    # "toIndex":I
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v12    # "view":Lio/ktor/utils/io/core/Buffer;
    .end local v13    # "$i$a$-writeWhileSize-EncodingKt$encodeToImpl$1":I
    .end local v14    # "before":I
    .end local v15    # "rc":I
    .end local v16    # "size$iv":I
    .restart local v6    # "start":I
    .restart local v7    # "initialSize$iv":I
    .restart local v8    # "$this$writeWhileSize$iv":Lio/ktor/utils/io/core/Output;
    .restart local v9    # "$i$f$writeWhileSize":I
    .restart local v10    # "bytesWritten":I
    .restart local v11    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .restart local p0    # "$this$encodeToImpl":Ljava/nio/charset/CharsetEncoder;
    .restart local p1    # "destination":Lio/ktor/utils/io/core/Output;
    .restart local p2    # "input":Ljava/lang/CharSequence;
    .restart local p3    # "fromIndex":I
    .restart local p4    # "toIndex":I
    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw v0
.end method

.method public static final encodeUTF8(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/ByteReadPacket;)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 5
    .param p0, "$this$encodeUTF8"    # Ljava/nio/charset/CharsetEncoder;
    .param p1, "input"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    .line 216
    .local v0, "$i$f$buildPacket":I
    nop

    .line 220
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 221
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 222
    move-object v2, v1

    .local v2, "$this$encodeUTF8_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v3, 0x0

    .line 68
    .local v3, "$i$a$-buildPacket-EncodingKt$encodeUTF8$1":I
    :try_start_0
    move-object v4, v2

    check-cast v4, Lio/ktor/utils/io/core/Output;

    invoke-static {p0, p1, v4}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeUTF8(Ljava/nio/charset/CharsetEncoder;Lio/ktor/utils/io/core/ByteReadPacket;Lio/ktor/utils/io/core/Output;)V

    .line 69
    nop

    .line 222
    .end local v2    # "$this$encodeUTF8_u24lambda_u241":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v3    # "$i$a$-buildPacket-EncodingKt$encodeUTF8$1":I
    nop

    .line 223
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    return-object v2

    .line 224
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 225
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 226
    throw v2
.end method

.method public static final sizeEstimate(Lio/ktor/utils/io/core/Input;)J
    .locals 4
    .param p0, "$this$sizeEstimate"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    nop

    .line 152
    instance-of v0, p0, Lio/ktor/utils/io/core/ByteReadPacket;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 154
    :goto_0
    return-wide v0
.end method
