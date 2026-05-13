.class public final Lio/ktor/utils/io/charsets/StringsKt;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/charsets/StringsKt\n*L\n1#1,153:1\n86#1,26:154\n120#1,32:180\n86#1,26:212\n120#1,32:238\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nio/ktor/utils/io/charsets/StringsKt\n*L\n12#1:154,26\n14#1:180,32\n12#1:212,26\n14#1:238,32\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0001H\u0000\u001a@\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0080\u0008\u00f8\u0001\u0000\u001a$\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a9\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0082\u0008\u001a$\u0010\u000c\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\u0002\u001a9\u0010\u000c\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\u0008H\u0082\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "decodeASCII",
        "",
        "Ljava/nio/ByteBuffer;",
        "out",
        "",
        "offset",
        "length",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "",
        "decodeASCII3_array",
        "decodeASCII3_buffer",
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

    .line 19
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/StringsKt;->decodeASCII3_array(Ljava/nio/ByteBuffer;[CII)I

    move-result v0

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/StringsKt;->decodeASCII3_buffer(Ljava/nio/ByteBuffer;[CII)I

    move-result v0

    .line 19
    :goto_0
    return v0
.end method

.method public static final decodeASCII(Ljava/nio/ByteBuffer;[CIILkotlin/jvm/functions/Function1;)I
    .locals 11
    .param p0, "$this$decodeASCII"    # Ljava/nio/ByteBuffer;
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
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$decodeASCII":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    move-object v1, p0

    .local v1, "$this$decodeASCII3_array$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$f$decodeASCII3_array":I
    move v3, p2

    .line 155
    .local v3, "pos$iv":I
    add-int v4, p2, p3

    .line 156
    .local v4, "end$iv":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 157
    .local v5, "array$iv":[B
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    .line 158
    .local v6, "srcPos$iv":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v7, v6

    .line 160
    .local v7, "srcEnd$iv":I
    array-length v8, p1

    if-gt v4, v8, :cond_2

    array-length v8, v5

    if-gt v7, v8, :cond_2

    .line 161
    :goto_0
    if-ge v6, v7, :cond_1

    if-ge v3, v4, :cond_1

    .line 162
    aget-byte v8, v5, v6

    .line 163
    .local v8, "b$iv":B
    if-ltz v8, :cond_1

    .line 165
    int-to-char v9, v8

    .line 166
    .local v9, "ch$iv":C
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {p4, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_0

    .line 167
    add-int/lit8 v6, v6, -0x1

    .line 168
    goto :goto_1

    .line 170
    :cond_0
    aput-char v9, p1, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    .line 173
    nop

    .end local v8    # "b$iv":B
    .end local v9    # "ch$iv":C
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 176
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    sub-int v8, v6, v8

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 179
    :cond_2
    sub-int/2addr v3, p2

    .end local v1    # "$this$decodeASCII3_array$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$decodeASCII3_array":I
    .end local v3    # "pos$iv":I
    .end local v4    # "end$iv":I
    .end local v5    # "array$iv":[B
    .end local v6    # "srcPos$iv":I
    .end local v7    # "srcEnd$iv":I
    goto :goto_4

    .line 14
    :cond_3
    move-object v1, p0

    .local v1, "$this$decodeASCII3_buffer$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 180
    .local v2, "$i$f$decodeASCII3_buffer":I
    move v3, p2

    .line 181
    .restart local v3    # "pos$iv":I
    add-int v4, p2, p3

    .line 183
    .restart local v4    # "end$iv":I
    const/4 v5, 0x0

    .line 185
    .local v5, "pushBack$iv":Z
    array-length v6, p1

    if-gt v4, v6, :cond_7

    .line 186
    :goto_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 187
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 188
    .local v6, "b$iv":B
    if-gez v6, :cond_4

    .line 189
    const/4 v5, 0x1

    .line 190
    goto :goto_3

    .line 192
    :cond_4
    if-lt v3, v4, :cond_5

    .line 193
    const/4 v5, 0x1

    .line 194
    goto :goto_3

    .line 196
    :cond_5
    int-to-char v7, v6

    .line 197
    .local v7, "ch$iv":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_6

    .line 198
    const/4 v5, 0x1

    .line 199
    goto :goto_3

    .line 202
    :cond_6
    aput-char v7, p1, v3

    .line 203
    nop

    .end local v6    # "b$iv":B
    .end local v7    # "ch$iv":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 207
    :cond_7
    :goto_3
    if-eqz v5, :cond_8

    .line 208
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    :cond_8
    sub-int v6, v3, p2

    move v3, v6

    .line 11
    .end local v1    # "$this$decodeASCII3_buffer$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$decodeASCII3_buffer":I
    .end local v3    # "pos$iv":I
    .end local v4    # "end$iv":I
    .end local v5    # "pushBack$iv":Z
    :goto_4
    return v3
.end method

.method public static synthetic decodeASCII$default(Ljava/nio/ByteBuffer;[CIIILjava/lang/Object;)I
    .locals 0

    .line 18
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/charsets/StringsKt;->decodeASCII(Ljava/nio/ByteBuffer;[CII)I

    move-result p0

    return p0
.end method

.method public static synthetic decodeASCII$default(Ljava/nio/ByteBuffer;[CIILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 9
    .param p0, "$this$decodeASCII_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "predicate"    # Lkotlin/jvm/functions/Function1;

    .line 5
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 5
    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 8
    array-length p3, p1

    .line 5
    :cond_1
    const-string p5, "<this>"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "out"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "predicate"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 11
    .local p5, "$i$f$decodeASCII":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p6

    if-eqz p6, :cond_5

    .line 12
    move-object p6, p0

    .local p6, "$this$decodeASCII3_array$iv":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 212
    .local v0, "$i$f$decodeASCII3_array":I
    move v1, p2

    .line 213
    .local v1, "pos$iv":I
    add-int v2, p2, p3

    .line 214
    .local v2, "end$iv":I
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 215
    .local v3, "array$iv":[B
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 216
    .local v4, "srcPos$iv":I
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v5, v4

    .line 218
    .local v5, "srcEnd$iv":I
    array-length v6, p1

    if-gt v2, v6, :cond_4

    array-length v6, v3

    if-gt v5, v6, :cond_4

    .line 219
    :goto_0
    if-ge v4, v5, :cond_3

    if-ge v1, v2, :cond_3

    .line 220
    aget-byte v6, v3, v4

    .line 221
    .local v6, "b$iv":B
    if-ltz v6, :cond_3

    .line 223
    int-to-char v7, v6

    .line 224
    .local v7, "ch$iv":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    .line 225
    add-int/lit8 v4, v4, -0x1

    .line 226
    goto :goto_1

    .line 228
    :cond_2
    aput-char v7, p1, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    .line 231
    nop

    .end local v6    # "b$iv":B
    .end local v7    # "ch$iv":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    :cond_3
    :goto_1
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p6, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 237
    :cond_4
    sub-int/2addr v1, p2

    .end local v0    # "$i$f$decodeASCII3_array":I
    .end local v1    # "pos$iv":I
    .end local v2    # "end$iv":I
    .end local v3    # "array$iv":[B
    .end local v4    # "srcPos$iv":I
    .end local v5    # "srcEnd$iv":I
    .end local p6    # "$this$decodeASCII3_array$iv":Ljava/nio/ByteBuffer;
    goto :goto_4

    .line 14
    :cond_5
    move-object p6, p0

    .local p6, "$this$decodeASCII3_buffer$iv":Ljava/nio/ByteBuffer;
    const/4 v0, 0x0

    .line 238
    .local v0, "$i$f$decodeASCII3_buffer":I
    move v1, p2

    .line 239
    .restart local v1    # "pos$iv":I
    add-int v2, p2, p3

    .line 241
    .restart local v2    # "end$iv":I
    const/4 v3, 0x0

    .line 243
    .local v3, "pushBack$iv":Z
    array-length v4, p1

    if-gt v2, v4, :cond_9

    .line 244
    :goto_2
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 245
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 246
    .local v4, "b$iv":B
    if-gez v4, :cond_6

    .line 247
    const/4 v3, 0x1

    .line 248
    goto :goto_3

    .line 250
    :cond_6
    if-lt v1, v2, :cond_7

    .line 251
    const/4 v3, 0x1

    .line 252
    goto :goto_3

    .line 254
    :cond_7
    int-to-char v5, v4

    .line 255
    .local v5, "ch$iv":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    .line 256
    const/4 v3, 0x1

    .line 257
    goto :goto_3

    .line 260
    :cond_8
    aput-char v5, p1, v1

    .line 261
    nop

    .end local v4    # "b$iv":B
    .end local v5    # "ch$iv":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    .line 266
    invoke-virtual {p6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 269
    :cond_a
    sub-int v4, v1, p2

    move v1, v4

    .line 11
    .end local v0    # "$i$f$decodeASCII3_buffer":I
    .end local v1    # "pos$iv":I
    .end local v2    # "end$iv":I
    .end local v3    # "pushBack$iv":Z
    .end local p6    # "$this$decodeASCII3_buffer$iv":Ljava/nio/ByteBuffer;
    :goto_4
    return v1
.end method

.method private static final decodeASCII3_array(Ljava/nio/ByteBuffer;[CII)I
    .locals 7
    .param p0, "$this$decodeASCII3_array"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 28
    move v0, p2

    .line 29
    .local v0, "pos":I
    add-int v1, p2, p3

    .line 30
    .local v1, "end":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 31
    .local v2, "array":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 32
    .local v3, "srcPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int/2addr v4, v3

    .line 34
    .local v4, "srcEnd":I
    array-length v5, p1

    if-gt v1, v5, :cond_1

    array-length v5, v2

    if-gt v4, v5, :cond_1

    .line 35
    :goto_0
    if-ge v3, v4, :cond_0

    if-ge v0, v1, :cond_0

    .line 36
    aget-byte v5, v2, v3

    .line 37
    .local v5, "b":B
    if-ltz v5, :cond_0

    .line 39
    int-to-char v6, v5

    aput-char v6, p1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    nop

    .end local v5    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    :cond_1
    sub-int v5, v0, p2

    return v5
.end method

.method private static final decodeASCII3_array(Ljava/nio/ByteBuffer;[CIILkotlin/jvm/functions/Function1;)I
    .locals 9
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
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 86
    .local v0, "$i$f$decodeASCII3_array":I
    move v1, p2

    .line 87
    .local v1, "pos":I
    add-int v2, p2, p3

    .line 88
    .local v2, "end":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 89
    .local v3, "array":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 90
    .local v4, "srcPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v5, v4

    .line 92
    .local v5, "srcEnd":I
    array-length v6, p1

    if-gt v2, v6, :cond_2

    array-length v6, v3

    if-gt v5, v6, :cond_2

    .line 93
    :goto_0
    if-ge v4, v5, :cond_1

    if-ge v1, v2, :cond_1

    .line 94
    aget-byte v6, v3, v4

    .line 95
    .local v6, "b":B
    if-ltz v6, :cond_1

    .line 97
    int-to-char v7, v6

    .line 98
    .local v7, "ch":C
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {p4, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 99
    add-int/lit8 v4, v4, -0x1

    .line 100
    goto :goto_1

    .line 102
    :cond_0
    aput-char v7, p1, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    nop

    .end local v6    # "b":B
    .end local v7    # "ch":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 108
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    :cond_2
    sub-int v6, v1, p2

    return v6
.end method

.method private static final decodeASCII3_buffer(Ljava/nio/ByteBuffer;[CII)I
    .locals 5
    .param p0, "$this$decodeASCII3_buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "out"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 52
    move v0, p2

    .line 53
    .local v0, "pos":I
    add-int v1, p2, p3

    .line 55
    .local v1, "end":I
    const/4 v2, 0x0

    .line 57
    .local v2, "pushBack":Z
    array-length v3, p1

    if-gt v1, v3, :cond_2

    .line 58
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 60
    .local v3, "b":B
    if-gez v3, :cond_0

    .line 61
    const/4 v2, 0x1

    .line 62
    goto :goto_1

    .line 64
    :cond_0
    if-lt v0, v1, :cond_1

    .line 65
    const/4 v2, 0x1

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    int-to-char v4, v3

    aput-char v4, p1, v0

    .line 69
    nop

    .end local v3    # "b":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 74
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    :cond_3
    sub-int v3, v0, p2

    return v3
.end method

.method private static final decodeASCII3_buffer(Ljava/nio/ByteBuffer;[CIILkotlin/jvm/functions/Function1;)I
    .locals 7
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
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 120
    .local v0, "$i$f$decodeASCII3_buffer":I
    move v1, p2

    .line 121
    .local v1, "pos":I
    add-int v2, p2, p3

    .line 123
    .local v2, "end":I
    const/4 v3, 0x0

    .line 125
    .local v3, "pushBack":Z
    array-length v4, p1

    if-gt v2, v4, :cond_3

    .line 126
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 128
    .local v4, "b":B
    if-gez v4, :cond_0

    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_1

    .line 132
    :cond_0
    if-lt v1, v2, :cond_1

    .line 133
    const/4 v3, 0x1

    .line 134
    goto :goto_1

    .line 136
    :cond_1
    int-to-char v5, v4

    .line 137
    .local v5, "ch":C
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p4, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    .line 138
    const/4 v3, 0x1

    .line 139
    goto :goto_1

    .line 142
    :cond_2
    aput-char v5, p1, v1

    .line 143
    nop

    .end local v4    # "b":B
    .end local v5    # "ch":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 148
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 151
    :cond_4
    sub-int v4, v1, p2

    return v4
.end method
