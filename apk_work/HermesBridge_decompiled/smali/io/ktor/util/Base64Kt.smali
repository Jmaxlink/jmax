.class public final Lio/ktor/util/Base64Kt;
.super Ljava/lang/Object;
.source "Base64.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBase64.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Base64.kt\nio/ktor/util/Base64Kt\n+ 2 Builder.kt\nio/ktor/utils/io/core/BuilderKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 StringsJVM.kt\nio/ktor/utils/io/core/StringsJVMKt\n+ 5 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,112:1\n108#1:124\n108#1:125\n111#1:158\n12#2,11:113\n12#2,7:133\n19#2,4:144\n12#2,7:148\n19#2,4:160\n1#3:126\n10#4,6:127\n384#5,4:140\n13133#6,3:155\n13136#6:159\n*S KotlinDebug\n*F\n+ 1 Base64.kt\nio/ktor/util/Base64Kt\n*L\n45#1:124\n61#1:125\n97#1:158\n23#1:113,11\n82#1:133,7\n82#1:144,4\n90#1:148,7\n90#1:160,4\n77#1:127,6\n83#1:140,4\n96#1:155,3\n96#1:159\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u000c\u001a\n\u0010\n\u001a\u00020\r*\u00020\u0001\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0001\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u000c\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\r\u001a\n\u0010\u000f\u001a\u00020\u0001*\u00020\u0001\u001a\r\u0010\u0010\u001a\u00020\u0005*\u00020\u0005H\u0080\u0008\u001a\r\u0010\u0011\u001a\u00020\t*\u00020\u0007H\u0080\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\tX\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "BASE64_ALPHABET",
        "",
        "BASE64_INVERSE_ALPHABET",
        "",
        "BASE64_MASK",
        "",
        "BASE64_MASK_INT",
        "",
        "BASE64_PAD",
        "",
        "decodeBase64Bytes",
        "Lio/ktor/utils/io/core/Input;",
        "Lio/ktor/utils/io/core/ByteReadPacket;",
        "",
        "decodeBase64String",
        "encodeBase64",
        "fromBase64",
        "toBase64",
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
.field private static final BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final BASE64_INVERSE_ALPHABET:[I

.field private static final BASE64_MASK:B = 0x3ft

.field private static final BASE64_MASK_INT:I = 0x3f

.field private static final BASE64_PAD:C = '='


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 17
    const-string v3, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    int-to-char v5, v2

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 16
    goto :goto_0

    :cond_0
    sput-object v1, Lio/ktor/util/Base64Kt;->BASE64_INVERSE_ALPHABET:[I

    return-void
.end method

.method public static final synthetic access$getBASE64_INVERSE_ALPHABET$p()[I
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/util/Base64Kt;->BASE64_INVERSE_ALPHABET:[I

    return-object v0
.end method

.method public static final decodeBase64Bytes(Lio/ktor/utils/io/core/ByteReadPacket;)Lio/ktor/utils/io/core/Input;
    .locals 22
    .param p0, "$this$decodeBase64Bytes"    # Lio/ktor/utils/io/core/ByteReadPacket;

    move-object/from16 v1, p0

    const-string v0, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    .line 148
    .local v2, "$i$f$buildPacket":I
    nop

    .line 152
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v3}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v0

    .line 153
    .local v3, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 154
    move-object v0, v3

    .local v0, "$this$decodeBase64Bytes_u24lambda_u245":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v4, 0x0

    .line 91
    .local v4, "$i$a$-buildPacket-Base64Kt$decodeBase64Bytes$2":I
    const/4 v5, 0x4

    :try_start_0
    new-array v5, v5, [B

    .line 93
    .local v5, "data":[B
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/core/ByteReadPacket;->getRemaining()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 94
    move-object v6, v1

    check-cast v6, Lio/ktor/utils/io/core/Input;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, v5

    invoke-static/range {v6 .. v11}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable$default(Lio/ktor/utils/io/core/Input;[BIIILjava/lang/Object;)I

    move-result v6

    .line 96
    .local v6, "read":I
    const/4 v7, 0x0

    .local v7, "initial$iv":I
    move-object v8, v5

    .local v8, "$this$foldIndexed$iv":[B
    const/4 v9, 0x0

    .line 155
    .local v9, "$i$f$foldIndexed":I
    const/4 v10, 0x0

    .line 156
    .local v10, "index$iv":I
    move v11, v7

    .line 157
    .local v11, "accumulator$iv":I
    array-length v12, v8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v12, :cond_0

    aget-byte v14, v8, v13

    .local v14, "element$iv":B
    add-int/lit8 v15, v10, 0x1

    .local v10, "index":I
    .local v15, "index$iv":I
    move/from16 v16, v14

    .local v16, "current":B
    move/from16 v17, v11

    .local v17, "result":I
    const/16 v18, 0x0

    .line 97
    .local v18, "$i$a$-foldIndexed-Base64Kt$decodeBase64Bytes$2$chunk$1":I
    move/from16 v19, v16

    .local v19, "$this$fromBase64$iv":B
    const/16 v20, 0x0

    .line 158
    .local v20, "$i$f$fromBase64":I
    invoke-static {}, Lio/ktor/util/Base64Kt;->access$getBASE64_INVERSE_ALPHABET$p()[I

    move-result-object v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v1, v19

    move/from16 v19, v2

    .end local v2    # "$i$f$buildPacket":I
    .local v1, "$this$fromBase64$iv":B
    .local v19, "$i$f$buildPacket":I
    and-int/lit16 v2, v1, 0xff

    :try_start_1
    aget v2, v21, v2

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    .line 97
    .end local v1    # "$this$fromBase64$iv":B
    .end local v20    # "$i$f$fromBase64":I
    rsub-int/lit8 v1, v10, 0x3

    mul-int/lit8 v1, v1, 0x6

    shl-int v1, v2, v1

    or-int v1, v17, v1

    .line 157
    .end local v10    # "index":I
    .end local v16    # "current":B
    .end local v17    # "result":I
    .end local v18    # "$i$a$-foldIndexed-Base64Kt$decodeBase64Bytes$2$chunk$1":I
    move v11, v1

    .end local v14    # "element$iv":B
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move v10, v15

    move/from16 v2, v19

    goto :goto_1

    .line 159
    .end local v15    # "index$iv":I
    .end local v19    # "$i$f$buildPacket":I
    .restart local v2    # "$i$f$buildPacket":I
    .local v10, "index$iv":I
    :cond_0
    move/from16 v19, v2

    .line 96
    .end local v2    # "$i$f$buildPacket":I
    .end local v7    # "initial$iv":I
    .end local v8    # "$this$foldIndexed$iv":[B
    .end local v9    # "$i$f$foldIndexed":I
    .end local v10    # "index$iv":I
    .end local v11    # "accumulator$iv":I
    .restart local v19    # "$i$f$buildPacket":I
    move v1, v11

    .line 100
    .local v1, "chunk":I
    array-length v2, v5

    add-int/lit8 v2, v2, -0x2

    .local v2, "index":I
    array-length v7, v5

    sub-int/2addr v7, v6

    if-gt v7, v2, :cond_1

    .line 101
    :goto_2
    mul-int/lit8 v8, v2, 0x8

    shr-int v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    .line 102
    .local v8, "origin":I
    int-to-byte v9, v8

    invoke-virtual {v0, v9}, Lio/ktor/utils/io/core/BytePacketBuilder;->writeByte(B)V

    .line 100
    .end local v8    # "origin":I
    if-eq v2, v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    move-object/from16 v1, p0

    move/from16 v2, v19

    goto :goto_0

    .line 105
    .end local v1    # "chunk":I
    .end local v6    # "read":I
    .end local v19    # "$i$f$buildPacket":I
    .local v2, "$i$f$buildPacket":I
    :cond_2
    move/from16 v19, v2

    .line 154
    .end local v0    # "$this$decodeBase64Bytes_u24lambda_u245":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v2    # "$i$f$buildPacket":I
    .end local v4    # "$i$a$-buildPacket-Base64Kt$decodeBase64Bytes$2":I
    .end local v5    # "data":[B
    .restart local v19    # "$i$f$buildPacket":I
    nop

    .line 160
    invoke-virtual {v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v3    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v19    # "$i$f$buildPacket":I
    check-cast v0, Lio/ktor/utils/io/core/Input;

    .line 105
    return-object v0

    .line 161
    .restart local v3    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    .restart local v19    # "$i$f$buildPacket":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .end local v19    # "$i$f$buildPacket":I
    .restart local v2    # "$i$f$buildPacket":I
    :catchall_1
    move-exception v0

    move/from16 v19, v2

    .line 162
    .end local v2    # "$i$f$buildPacket":I
    .local v0, "t$iv":Ljava/lang/Throwable;
    .restart local v19    # "$i$f$buildPacket":I
    :goto_3
    invoke-virtual {v3}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 163
    throw v0
.end method

.method public static final decodeBase64Bytes(Ljava/lang/String;)[B
    .locals 13
    .param p0, "$this$decodeBase64Bytes"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    .line 133
    .local v0, "$i$f$buildPacket":I
    nop

    .line 137
    new-instance v1, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 138
    .local v1, "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    nop

    .line 139
    move-object v2, v1

    .local v2, "$this$decodeBase64Bytes_u24lambda_u243":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v4, 0x0

    .line 83
    .local v4, "$i$a$-buildPacket-Base64Kt$decodeBase64Bytes$1":I
    :try_start_0
    move-object v5, v2

    check-cast v5, Lio/ktor/utils/io/core/Output;

    move-object v6, p0

    .local v6, "$this$dropLastWhile$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 140
    .local v7, "$i$f$dropLastWhile":I
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v8

    .local v8, "index$iv":I
    :goto_0
    const/4 v9, -0x1

    if-ge v9, v8, :cond_2

    .line 141
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .local v9, "it":C
    const/4 v10, 0x0

    .line 83
    .local v10, "$i$a$-dropLastWhile-Base64Kt$decodeBase64Bytes$1$1":I
    const/16 v11, 0x3d

    const/4 v12, 0x0

    if-ne v9, v11, :cond_0

    move v9, v3

    goto :goto_1

    :cond_0
    move v9, v12

    .line 141
    .end local v9    # "it":C
    .end local v10    # "$i$a$-dropLastWhile-Base64Kt$decodeBase64Bytes$1$1":I
    :goto_1
    if-nez v9, :cond_1

    .line 142
    add-int/lit8 v3, v8, 0x1

    invoke-virtual {v6, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v9, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 143
    .end local v8    # "index$iv":I
    :cond_2
    const-string v3, ""

    .end local v6    # "$this$dropLastWhile$iv":Ljava/lang/String;
    .end local v7    # "$i$f$dropLastWhile":I
    :goto_2
    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    .line 83
    const/16 v10, 0xe

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 84
    nop

    .line 139
    .end local v2    # "$this$decodeBase64Bytes_u24lambda_u243":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v4    # "$i$a$-buildPacket-Base64Kt$decodeBase64Bytes$1":I
    nop

    .line 144
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    invoke-static {v2}, Lio/ktor/util/Base64Kt;->decodeBase64Bytes(Lio/ktor/utils/io/core/ByteReadPacket;)Lio/ktor/utils/io/core/Input;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->readBytes(Lio/ktor/utils/io/core/Input;)[B

    move-result-object v0

    return-object v0

    .line 145
    .restart local v0    # "$i$f$buildPacket":I
    .restart local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    :catchall_0
    move-exception v2

    .line 146
    .local v2, "t$iv":Ljava/lang/Throwable;
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->release()V

    .line 147
    throw v2
.end method

.method public static final decodeBase64String(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "$this$decodeBase64String"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lio/ktor/util/Base64Kt;->decodeBase64Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, "bytes$iv":[B
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 127
    .local v1, "charset$iv":Ljava/nio/charset/Charset;
    nop

    .line 132
    const/4 v2, 0x0

    .line 127
    .local v2, "offset$iv":I
    nop

    .line 132
    array-length v3, v0

    .line 127
    .local v3, "length$iv":I
    const/4 v4, 0x0

    .line 128
    .local v4, "$i$f$String":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, v2, v3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 77
    .end local v0    # "bytes$iv":[B
    .end local v1    # "charset$iv":Ljava/nio/charset/Charset;
    .end local v2    # "offset$iv":I
    .end local v3    # "length$iv":I
    .end local v4    # "$i$f$String":I
    return-object v5
.end method

.method public static final encodeBase64(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$encodeBase64"    # Lio/ktor/utils/io/core/ByteReadPacket;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lio/ktor/utils/io/core/StringsKt;->readBytes$default(Lio/ktor/utils/io/core/ByteReadPacket;IILjava/lang/Object;)[B

    move-result-object v0

    invoke-static {v0}, Lio/ktor/util/Base64Kt;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "$this$encodeBase64"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
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

    .local v2, "$this$encodeBase64_u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-buildPacket-Base64Kt$encodeBase64$1":I
    :try_start_0
    move-object v4, v2

    check-cast v4, Lio/ktor/utils/io/core/Output;

    move-object v5, p0

    check-cast v5, Ljava/lang/CharSequence;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lio/ktor/utils/io/core/StringsKt;->writeText$default(Lio/ktor/utils/io/core/Output;Ljava/lang/CharSequence;IILjava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 25
    nop

    .line 119
    .end local v2    # "$this$encodeBase64_u24lambda_u240":Lio/ktor/utils/io/core/BytePacketBuilder;
    .end local v3    # "$i$a$-buildPacket-Base64Kt$encodeBase64$1":I
    nop

    .line 120
    invoke-virtual {v1}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .end local v0    # "$i$f$buildPacket":I
    .end local v1    # "builder$iv":Lio/ktor/utils/io/core/BytePacketBuilder;
    invoke-static {v2}, Lio/ktor/util/Base64Kt;->encodeBase64(Lio/ktor/utils/io/core/ByteReadPacket;)Ljava/lang/String;

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

.method public static final encodeBase64([B)Ljava/lang/String;
    .locals 14
    .param p0, "$this$encodeBase64"    # [B

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    move-object v0, p0

    .line 32
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 33
    .local v1, "position":I
    const/4 v2, 0x0

    .line 34
    .local v2, "writeOffset":I
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x8

    div-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x3

    new-array v3, v3, [C

    .line 36
    .local v3, "charArray":[C
    :cond_0
    add-int/lit8 v4, v1, 0x3

    array-length v5, v0

    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    if-gt v4, v5, :cond_1

    .line 37
    aget-byte v4, v0, v1

    .line 38
    .local v4, "first":I
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v0, v5

    .line 39
    .local v5, "second":I
    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v0, v7

    .local v7, "third":I
    add-int/lit8 v1, v1, 0x3

    .line 40
    nop

    .line 42
    and-int/lit16 v8, v4, 0xff

    shl-int/lit8 v8, v8, 0x10

    and-int/lit16 v9, v5, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    and-int/lit16 v9, v7, 0xff

    or-int/2addr v8, v9

    .line 43
    .local v8, "chunk":I
    const/4 v9, 0x3

    .local v9, "index":I
    :goto_0
    const/4 v10, -0x1

    if-ge v10, v9, :cond_0

    .line 44
    mul-int/lit8 v10, v9, 0x6

    shr-int v10, v8, v10

    and-int/lit8 v10, v10, 0x3f

    .line 45
    .local v10, "char":I
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "writeOffset":I
    .local v11, "writeOffset":I
    move v12, v10

    .local v12, "$this$toBase64$iv":I
    const/4 v13, 0x0

    .line 124
    .local v13, "$i$f$toBase64":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .end local v12    # "$this$toBase64$iv":I
    .end local v13    # "$i$f$toBase64":I
    aput-char v12, v3, v2

    .line 43
    .end local v10    # "char":I
    add-int/lit8 v9, v9, -0x1

    move v2, v11

    goto :goto_0

    .line 49
    .end local v4    # "first":I
    .end local v5    # "second":I
    .end local v7    # "third":I
    .end local v8    # "chunk":I
    .end local v9    # "index":I
    .end local v11    # "writeOffset":I
    .restart local v2    # "writeOffset":I
    :cond_1
    array-length v4, v0

    sub-int/2addr v4, v1

    .line 50
    .local v4, "remaining":I
    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-static {v3, v5, v2}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 52
    :cond_2
    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    .line 53
    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v5

    or-int/2addr v7, v5

    goto :goto_1

    .line 55
    :cond_3
    aget-byte v7, v0, v1

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    or-int/2addr v7, v5

    .line 52
    :goto_1
    nop

    .line 58
    .local v7, "chunk":I
    rsub-int/lit8 v8, v4, 0x3

    mul-int/lit8 v8, v8, 0x8

    div-int/lit8 v8, v8, 0x6

    .line 59
    .local v8, "padSize":I
    const/4 v9, 0x3

    .restart local v9    # "index":I
    if-gt v8, v9, :cond_5

    .line 60
    :goto_2
    mul-int/lit8 v10, v9, 0x6

    shr-int v10, v7, v10

    and-int/lit8 v10, v10, 0x3f

    .line 61
    .restart local v10    # "char":I
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "writeOffset":I
    .restart local v11    # "writeOffset":I
    move v12, v10

    .restart local v12    # "$this$toBase64$iv":I
    const/4 v13, 0x0

    .line 125
    .restart local v13    # "$i$f$toBase64":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .end local v12    # "$this$toBase64$iv":I
    .end local v13    # "$i$f$toBase64":I
    aput-char v12, v3, v2

    .line 59
    .end local v10    # "char":I
    if-eq v9, v8, :cond_4

    add-int/lit8 v9, v9, -0x1

    move v2, v11

    goto :goto_2

    :cond_4
    move v2, v11

    .line 64
    .end local v9    # "index":I
    .end local v11    # "writeOffset":I
    .restart local v2    # "writeOffset":I
    :cond_5
    move v6, v5

    :goto_3
    if-ge v6, v8, :cond_6

    move v9, v6

    .line 126
    .local v9, "it":I
    const/4 v10, 0x0

    .line 64
    .local v10, "$i$a$-repeat-Base64Kt$encodeBase64$2":I
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "writeOffset":I
    .restart local v11    # "writeOffset":I
    const/16 v12, 0x3d

    aput-char v12, v3, v2

    .end local v9    # "it":I
    .end local v10    # "$i$a$-repeat-Base64Kt$encodeBase64$2":I
    add-int/lit8 v6, v6, 0x1

    move v2, v11

    goto :goto_3

    .line 66
    .end local v11    # "writeOffset":I
    .restart local v2    # "writeOffset":I
    :cond_6
    invoke-static {v3, v5, v2}, Lkotlin/text/StringsKt;->concatToString([CII)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static final fromBase64(B)B
    .locals 3
    .param p0, "$this$fromBase64"    # B

    const/4 v0, 0x0

    .line 111
    .local v0, "$i$f$fromBase64":I
    invoke-static {}, Lio/ktor/util/Base64Kt;->access$getBASE64_INVERSE_ALPHABET$p()[I

    move-result-object v1

    and-int/lit16 v2, p0, 0xff

    aget v1, v1, v2

    int-to-byte v1, v1

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    return v1
.end method

.method public static final toBase64(I)C
    .locals 2
    .param p0, "$this$toBase64"    # I

    const/4 v0, 0x0

    .line 108
    .local v0, "$i$f$toBase64":I
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    return v1
.end method
