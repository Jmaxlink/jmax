.class public final Lio/ktor/utils/io/internal/StringsKt;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/internal/StringsKt\n*L\n1#1,241:1\n166#1,30:242\n204#1,36:272\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/internal/StringsKt\n*L\n25#1:242,30\n68#1:272,36\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001H\u0000\u001a$\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a9\u0010\u0007\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0082\u0008\u001a$\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a9\u0010\r\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nH\u0082\u0008\u001a(\u0010\u000e\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001H\u0000\u001a$\u0010\u000f\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a$\u0010\u0010\u001a\u00020\u0008*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "decodeASCII",
        "",
        "Ljava/nio/ByteBuffer;",
        "out",
        "",
        "offset",
        "length",
        "decodeASCII3_array",
        "",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "",
        "decodeASCII3_buffer",
        "decodeASCIILine",
        "decodeASCIILine_array",
        "decodeASCIILine_buffer",
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
.method public static final decodeASCII(Ljava/nio/ByteBuffer;[CII)I
    .locals 1
    .param p0, "$this$decodeASCII"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/internal/StringsKt;->decodeASCII3_array(Ljava/nio/ByteBuffer;[CII)I

    move-result v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/internal/StringsKt;->decodeASCII3_buffer(Ljava/nio/ByteBuffer;[CII)I

    move-result v0

    .line 8
    :goto_0
    return v0
.end method

.method public static synthetic decodeASCII$default(Ljava/nio/ByteBuffer;[CIIILjava/lang/Object;)I
    .locals 0

    .line 7
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/internal/StringsKt;->decodeASCII(Ljava/nio/ByteBuffer;[CII)I

    move-result p0

    return p0
.end method

.method private static final decodeASCII3_array(Ljava/nio/ByteBuffer;[CII)I
    .locals 7
    .param p0, "$this$decodeASCII3_array"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 108
    move v0, p2

    .line 109
    .local v0, "pos":I
    add-int v1, p2, p3

    .line 110
    .local v1, "end":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 111
    .local v2, "array":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 112
    .local v3, "srcPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v3

    .line 114
    .local v4, "srcEnd":I
    array-length v5, p1

    if-gt v1, v5, :cond_1

    array-length v5, v2

    if-gt v4, v5, :cond_1

    .line 115
    :goto_0
    if-ge v3, v4, :cond_0

    if-ge v0, v1, :cond_0

    .line 116
    aget-byte v5, v2, v3

    .line 117
    .local v5, "b":B
    if-ltz v5, :cond_0

    .line 119
    int-to-char v6, v5

    aput-char v6, p1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    .line 122
    nop

    .end local v5    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 128
    :cond_1
    sub-int v5, v0, p2

    return v5
.end method

.method private static final decodeASCII3_array(Ljava/nio/ByteBuffer;[CIILkotlin/jvm/functions/Function1;)J
    .locals 10
    .param p0, "$this$decodeASCII3_array"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[CII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    .local v0, "$i$f$decodeASCII3_array":I
    move v1, p2

    .line 167
    .local v1, "pos":I
    add-int v2, p2, p3

    .line 168
    .local v2, "end":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 169
    .local v3, "array":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 170
    .local v4, "srcPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v5, v4

    .line 172
    .local v5, "srcEnd":I
    array-length v6, p1

    if-gt v2, v6, :cond_3

    array-length v6, v3

    if-gt v5, v6, :cond_3

    .line 173
    :goto_0
    if-ge v4, v5, :cond_2

    .line 174
    aget-byte v6, v3, v4

    .line 175
    .local v6, "b":B
    if-ltz v6, :cond_2

    .line 177
    int-to-char v7, v6

    .line 178
    .local v7, "ch":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    sub-int v8, v1, p2

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v8

    return-wide v8

    .line 182
    :cond_0
    if-lt v1, v2, :cond_1

    .line 183
    goto :goto_1

    .line 186
    :cond_1
    aput-char v7, p1, v1

    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    nop

    .end local v6    # "b":B
    .end local v7    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    :cond_3
    sub-int v6, v1, p2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v6

    return-wide v6
.end method

.method private static final decodeASCII3_buffer(Ljava/nio/ByteBuffer;[CII)I
    .locals 5
    .param p0, "$this$decodeASCII3_buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 132
    move v0, p2

    .line 133
    .local v0, "pos":I
    add-int v1, p2, p3

    .line 135
    .local v1, "end":I
    const/4 v2, 0x0

    .line 137
    .local v2, "pushBack":Z
    array-length v3, p1

    if-gt v1, v3, :cond_2

    .line 138
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 140
    .local v3, "b":B
    if-gez v3, :cond_0

    .line 141
    const/4 v2, 0x1

    .line 142
    goto :goto_1

    .line 144
    :cond_0
    if-lt v0, v1, :cond_1

    .line 145
    const/4 v2, 0x1

    .line 146
    goto :goto_1

    .line 148
    :cond_1
    int-to-char v4, v3

    aput-char v4, p1, v0

    .line 149
    nop

    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 154
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    :cond_3
    sub-int v3, v0, p2

    return v3
.end method

.method private static final decodeASCII3_buffer(Ljava/nio/ByteBuffer;[CIILkotlin/jvm/functions/Function1;)J
    .locals 8
    .param p0, "$this$decodeASCII3_buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "[CII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 204
    .local v0, "$i$f$decodeASCII3_buffer":I
    move v1, p2

    .line 205
    .local v1, "pos":I
    add-int v2, p2, p3

    .line 207
    .local v2, "end":I
    const/4 v3, 0x0

    .line 208
    .local v3, "pushBack":Z
    const/4 v4, 0x0

    .line 210
    .local v4, "predicateFailed":Z
    array-length v5, p1

    if-gt v2, v5, :cond_3

    .line 211
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 212
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 213
    .local v5, "b":B
    if-gez v5, :cond_0

    .line 214
    const/4 v3, 0x1

    .line 215
    goto :goto_1

    .line 218
    :cond_0
    int-to-char v6, v5

    .line 219
    .local v6, "ch":C
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-interface {p4, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    .line 220
    const/4 v3, 0x1

    .line 221
    const/4 v4, 0x1

    .line 222
    goto :goto_1

    .line 225
    :cond_1
    if-lt v1, v2, :cond_2

    .line 226
    const/4 v3, 0x1

    .line 227
    goto :goto_1

    .line 230
    :cond_2
    aput-char v6, p1, v1

    .line 231
    nop

    .end local v5    # "b":B
    .end local v6    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 236
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    :cond_4
    sub-int v5, v1, p2

    if-eqz v4, :cond_5

    const/4 v6, -0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    invoke-static {v5, v6}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v5

    return-wide v5
.end method

.method public static final decodeASCIILine(Ljava/nio/ByteBuffer;[CII)J
    .locals 2
    .param p0, "$this$decodeASCIILine"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    nop

    .line 17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/internal/StringsKt;->decodeASCIILine_array(Ljava/nio/ByteBuffer;[CII)J

    move-result-wide v0

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/internal/StringsKt;->decodeASCIILine_buffer(Ljava/nio/ByteBuffer;[CII)J

    move-result-wide v0

    .line 16
    :goto_0
    return-wide v0
.end method

.method public static synthetic decodeASCIILine$default(Ljava/nio/ByteBuffer;[CIIILjava/lang/Object;)J
    .locals 0

    .line 15
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/internal/StringsKt;->decodeASCIILine(Ljava/nio/ByteBuffer;[CII)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final decodeASCIILine_array(Ljava/nio/ByteBuffer;[CII)J
    .locals 18
    .param p0, "$this$decodeASCIILine_array"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 25
    .local v2, "cr":Z
    move-object/from16 v3, p0

    .local v3, "$this$decodeASCII3_array$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 242
    .local v4, "$i$f$decodeASCII3_array":I
    move/from16 v5, p2

    .line 243
    .local v5, "pos$iv":I
    add-int v6, p2, p3

    .line 244
    .local v6, "end$iv":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 245
    .local v7, "array$iv":[B
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v8, v9

    .line 246
    .local v8, "srcPos$iv":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    add-int/2addr v9, v8

    .line 248
    .local v9, "srcEnd$iv":I
    array-length v10, v1

    const/16 v11, 0xd

    const/4 v12, 0x0

    const/4 v13, -0x1

    if-gt v6, v10, :cond_6

    array-length v10, v7

    if-gt v9, v10, :cond_6

    .line 249
    :goto_0
    if-ge v8, v9, :cond_5

    .line 250
    aget-byte v10, v7, v8

    .line 251
    .local v10, "b$iv":B
    if-ltz v10, :cond_5

    .line 253
    int-to-char v15, v10

    .line 254
    .local v15, "ch$iv":C
    move/from16 v16, v15

    .local v16, "ch":C
    const/16 v17, 0x0

    .line 26
    .local v17, "$i$a$-decodeASCII3_array-StringsKt$decodeASCIILine_array$rc$1":I
    nop

    .line 27
    move/from16 v14, v16

    .end local v16    # "ch":C
    .local v14, "ch":C
    if-ne v14, v11, :cond_0

    .line 28
    const/4 v2, 0x1

    .line 29
    const/4 v11, 0x1

    goto :goto_1

    .line 31
    :cond_0
    const/16 v11, 0xa

    if-ne v14, v11, :cond_1

    .line 32
    const/4 v2, 0x0

    .line 33
    move v11, v12

    goto :goto_1

    .line 35
    :cond_1
    if-eqz v2, :cond_2

    .line 36
    move v11, v12

    goto :goto_1

    .line 38
    :cond_2
    const/4 v11, 0x1

    .line 26
    :goto_1
    nop

    .line 254
    .end local v14    # "ch":C
    .end local v17    # "$i$a$-decodeASCII3_array-StringsKt$decodeASCIILine_array$rc$1":I
    if-nez v11, :cond_3

    .line 255
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    sub-int v11, v8, v11

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    sub-int v11, v5, p2

    invoke-static {v11, v13}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v11

    goto :goto_3

    .line 258
    :cond_3
    if-lt v5, v6, :cond_4

    .line 259
    goto :goto_2

    .line 262
    :cond_4
    aput-char v15, v1, v5

    .line 264
    add-int/lit8 v5, v5, 0x1

    .line 265
    nop

    .end local v10    # "b$iv":B
    .end local v15    # "ch$iv":C
    add-int/lit8 v8, v8, 0x1

    const/16 v11, 0xd

    goto :goto_0

    .line 268
    :cond_5
    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    sub-int v10, v8, v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    :cond_6
    sub-int v10, v5, p2

    invoke-static {v10, v12}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v11

    .line 25
    .end local v3    # "$this$decodeASCII3_array$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$decodeASCII3_array":I
    .end local v5    # "pos$iv":I
    .end local v6    # "end$iv":I
    .end local v7    # "array$iv":[B
    .end local v8    # "srcPos$iv":I
    .end local v9    # "srcEnd$iv":I
    :goto_3
    move-wide v3, v11

    .line 42
    .local v3, "rc":J
    const-wide v5, 0xffffffffL

    and-long/2addr v5, v3

    long-to-int v5, v5

    .line 43
    .local v5, "required":I
    const/16 v6, 0x20

    if-ne v5, v13, :cond_8

    .line 44
    shr-long v6, v3, v6

    long-to-int v6, v6

    .line 46
    .local v6, "decoded":I
    if-eqz v2, :cond_7

    .line 49
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v13}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v7

    return-wide v7

    .line 52
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    if-lez v6, :cond_9

    add-int/lit8 v7, v6, -0x1

    aget-char v7, v1, v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_9

    .line 54
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v13}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v7

    return-wide v7

    .line 56
    .end local v6    # "decoded":I
    :cond_8
    if-eqz v2, :cond_9

    .line 57
    shr-long v6, v3, v6

    long-to-int v6, v6

    .line 58
    .restart local v6    # "decoded":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v7

    return-wide v7

    .line 62
    .end local v6    # "decoded":I
    :cond_9
    return-wide v3
.end method

.method private static final decodeASCIILine_buffer(Ljava/nio/ByteBuffer;[CII)J
    .locals 16
    .param p0, "$this$decodeASCIILine_buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 66
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 68
    .local v2, "cr":Z
    move-object/from16 v3, p0

    .local v3, "$this$decodeASCII3_buffer$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 272
    .local v4, "$i$f$decodeASCII3_buffer":I
    move/from16 v5, p2

    .line 273
    .local v5, "pos$iv":I
    add-int v6, p2, p3

    .line 275
    .local v6, "end$iv":I
    const/4 v7, 0x0

    .line 276
    .local v7, "pushBack$iv":Z
    const/4 v8, 0x0

    .line 278
    .local v8, "predicateFailed$iv":Z
    array-length v9, v1

    const/16 v10, 0xd

    const/4 v12, 0x1

    if-gt v6, v9, :cond_6

    .line 279
    :goto_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 280
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v9

    .line 281
    .local v9, "b$iv":B
    if-gez v9, :cond_0

    .line 282
    const/4 v7, 0x1

    .line 283
    goto :goto_2

    .line 286
    :cond_0
    int-to-char v13, v9

    .line 287
    .local v13, "ch$iv":C
    move v14, v13

    .local v14, "ch":C
    const/4 v15, 0x0

    .line 69
    .local v15, "$i$a$-decodeASCII3_buffer-StringsKt$decodeASCIILine_buffer$rc$1":I
    nop

    .line 70
    if-ne v14, v10, :cond_1

    .line 71
    const/4 v2, 0x1

    .line 72
    move v11, v12

    goto :goto_1

    .line 74
    :cond_1
    const/16 v11, 0xa

    if-ne v14, v11, :cond_2

    .line 75
    const/4 v2, 0x0

    .line 76
    const/4 v11, 0x0

    goto :goto_1

    .line 78
    :cond_2
    if-eqz v2, :cond_3

    .line 79
    const/4 v11, 0x0

    goto :goto_1

    .line 81
    :cond_3
    move v11, v12

    .line 69
    :goto_1
    nop

    .line 287
    .end local v14    # "ch":C
    .end local v15    # "$i$a$-decodeASCII3_buffer-StringsKt$decodeASCIILine_buffer$rc$1":I
    if-nez v11, :cond_4

    .line 288
    const/4 v7, 0x1

    .line 289
    const/4 v8, 0x1

    .line 290
    goto :goto_2

    .line 293
    :cond_4
    if-lt v5, v6, :cond_5

    .line 294
    const/4 v7, 0x1

    .line 295
    goto :goto_2

    .line 298
    :cond_5
    aput-char v13, v1, v5

    .line 299
    nop

    .end local v9    # "b$iv":B
    .end local v13    # "ch$iv":C
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 303
    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    .line 304
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    sub-int/2addr v9, v12

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 307
    :cond_7
    sub-int v9, v5, p2

    const/4 v11, -0x1

    if-eqz v8, :cond_8

    move v13, v11

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    invoke-static {v9, v13}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v3

    .line 68
    .end local v3    # "$this$decodeASCII3_buffer$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$decodeASCII3_buffer":I
    .end local v5    # "pos$iv":I
    .end local v6    # "end$iv":I
    .end local v7    # "pushBack$iv":Z
    .end local v8    # "predicateFailed$iv":Z
    nop

    .line 85
    .local v3, "rc":J
    const-wide v5, 0xffffffffL

    and-long/2addr v5, v3

    long-to-int v5, v5

    .line 87
    .local v5, "required":I
    const/16 v6, 0x20

    if-ne v5, v11, :cond_a

    .line 88
    shr-long v6, v3, v6

    long-to-int v6, v6

    .line 90
    .local v6, "decoded":I
    if-eqz v2, :cond_9

    .line 91
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v11}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v7

    return-wide v7

    .line 94
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v12

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    if-lez v6, :cond_b

    add-int/lit8 v7, v6, -0x1

    aget-char v7, v1, v7

    if-ne v7, v10, :cond_b

    .line 96
    add-int/lit8 v7, v6, -0x1

    invoke-static {v7, v11}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v7

    return-wide v7

    .line 98
    .end local v6    # "decoded":I
    :cond_a
    if-eqz v2, :cond_b

    .line 99
    shr-long v6, v3, v6

    long-to-int v6, v6

    .line 100
    .restart local v6    # "decoded":I
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    sub-int/2addr v7, v12

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 101
    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x2

    invoke-static {v7, v8}, Lio/ktor/utils/io/charsets/UTFKt;->decodeUtf8Result(II)J

    move-result-wide v7

    return-wide v7

    .line 104
    .end local v6    # "decoded":I
    :cond_b
    return-wide v3
.end method
