.class public final Lio/ktor/utils/io/bits/MemoryJvmKt;
.super Ljava/lang/Object;
.source "MemoryJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/MemoryJvmKt\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n+ 3 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 4 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,230:1\n208#1:244\n208#1:245\n200#1:246\n208#1:248\n204#1,5:249\n6#2,2:231\n6#2,2:233\n6#2,2:254\n282#3:235\n283#3,3:240\n17#4,4:236\n1#5:243\n1#5:247\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/MemoryJvmKt\n*L\n200#1:244\n204#1:245\n212#1:246\n212#1:248\n212#1:249,5\n141#1:231,2\n183#1:233,2\n219#1:254,2\n191#1:235\n191#1:240,3\n191#1:236,4\n212#1:247\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\t\n\u0002\u0010\u0005\n\u0002\u0008\u0008\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\n\u001a7\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a7\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u0010\u001a\'\u0010\u0000\u001a\u00020\u0001*\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0008\u001a/\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a/\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0015\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0018\u001a\r\u0010\u0019\u001a\u00020\u0004*\u00020\u0004H\u0082\u0008\u001a\r\u0010\u001a\u001a\u00020\u0004*\u00020\u0004H\u0082\u0008\u001a\u001c\u0010\u001b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u0006H\u0000\u001a\r\u0010\u001c\u001a\u00020\u0004*\u00020\u0004H\u0082\u0008\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "copyTo",
        "",
        "Lio/ktor/utils/io/bits/Memory;",
        "destination",
        "Ljava/nio/ByteBuffer;",
        "offset",
        "",
        "copyTo-62zg_DM",
        "(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V",
        "",
        "(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)V",
        "",
        "length",
        "destinationOffset",
        "copyTo-9zorpBc",
        "(Ljava/nio/ByteBuffer;[BIII)V",
        "(Ljava/nio/ByteBuffer;[BJII)V",
        "copyTo-SG11BkQ",
        "fill",
        "count",
        "value",
        "",
        "fill-JT6ljtQ",
        "(Ljava/nio/ByteBuffer;IIB)V",
        "(Ljava/nio/ByteBuffer;JJB)V",
        "myDuplicate",
        "mySlice",
        "sliceSafe",
        "suppressNullCheck",
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
.method public static final copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 6
    .param p0, "$this$copyTo_u2d62zg_DM"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 154
    .local v0, "size":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 160
    .local v1, "dstPosition":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 161
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p2

    .line 162
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 163
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 164
    nop

    .line 159
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 167
    return-void

    .line 171
    .end local v1    # "dstPosition":I
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v2, v1

    .local v2, "$this$copyTo_62zg_DM_u24lambda_u240":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 172
    .local v3, "$i$a$-apply-MemoryJvmKt$copyTo$source$1":I
    add-int v4, p2, v0

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 173
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    nop

    .line 171
    .end local v2    # "$this$copyTo_62zg_DM_u24lambda_u240":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$a$-apply-MemoryJvmKt$copyTo$source$1":I
    nop

    .line 175
    .local v1, "source":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 176
    return-void
.end method

.method public static final copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;J)V
    .locals 6
    .param p0, "$this$copyTo_u2d62zg_DM"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # J

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p2

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 233
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 234
    long-to-int v0, v1

    .line 183
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, p1, v0}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-62zg_DM(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V

    .line 184
    return-void

    .line 233
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static final copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V
    .locals 2
    .param p0, "$this$copyTo_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "destinationOffset"    # I

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 117
    invoke-static {v0, v1, p1, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 129
    return-void
.end method

.method public static final copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V
    .locals 6
    .param p0, "$this$copyTo_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # [B
    .param p2, "offset"    # J
    .param p4, "length"    # I
    .param p5, "destinationOffset"    # I

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p2

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 231
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 232
    long-to-int v0, v1

    .line 141
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    invoke-static {p0, p1, v0, p4, p5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 142
    return-void

    .line 231
    .restart local v0    # "name$iv":Ljava/lang/String;
    .restart local v1    # "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method public static final copyTo-SG11BkQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)V
    .locals 10
    .param p0, "$this$copyTo_u2dSG11BkQ"    # Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v1, "array()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .local v1, "sourceOffset$iv":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .local v0, "source$iv":[B
    .local v2, "count$iv":I
    move-object v3, p1

    .local v3, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 235
    .local v4, "$i$f$storeByteArray-9zorpBc":I
    move-object v5, v0

    .local v5, "$this$useMemory$iv$iv":[B
    const/4 v6, 0x0

    .line 236
    .local v6, "$i$f$useMemory":I
    nop

    .line 239
    invoke-static {v5, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    const-string v8, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .local v7, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 240
    .local v8, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    const/4 v9, 0x0

    invoke-static {v7, v3, v9, v2, p2}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 241
    nop

    .line 239
    .end local v7    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    nop

    .line 242
    .end local v5    # "$this$useMemory$iv$iv":[B
    .end local v6    # "$i$f$useMemory":I
    nop

    .line 192
    .end local v0    # "source$iv":[B
    .end local v1    # "sourceOffset$iv":I
    .end local v2    # "count$iv":I
    .end local v3    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$storeByteArray-9zorpBc":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p1, p2, v0}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 197
    return-void
.end method

.method public static final fill-JT6ljtQ(Ljava/nio/ByteBuffer;IIB)V
    .locals 2
    .param p0, "$this$fill_u2dJT6ljtQ"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "value"    # B

    const-string v0, "$this$fill"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    move v0, p1

    .local v0, "index":I
    add-int v1, p1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 227
    invoke-virtual {p0, v0, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public static final fill-JT6ljtQ(Ljava/nio/ByteBuffer;JJB)V
    .locals 7
    .param p0, "$this$fill_u2dJT6ljtQ"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "count"    # J
    .param p5, "value"    # B

    const-string v0, "$this$fill"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    const-string v0, "offset"

    .local v0, "name$iv":Ljava/lang/String;
    move-wide v1, p1

    .local v1, "$this$toIntOrFail$iv":J
    const/4 v3, 0x0

    .line 254
    .local v3, "$i$f$toIntOrFail":I
    const-wide/32 v4, 0x7fffffff

    cmp-long v6, v1, v4

    if-gez v6, :cond_1

    .line 255
    long-to-int v0, v1

    .line 219
    .end local v0    # "name$iv":Ljava/lang/String;
    .end local v1    # "$this$toIntOrFail$iv":J
    .end local v3    # "$i$f$toIntOrFail":I
    const-string v1, "count"

    .local v1, "name$iv":Ljava/lang/String;
    move-wide v2, p3

    .local v2, "$this$toIntOrFail$iv":J
    const/4 v6, 0x0

    .line 254
    .local v6, "$i$f$toIntOrFail":I
    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 255
    long-to-int v1, v2

    .line 219
    .end local v1    # "name$iv":Ljava/lang/String;
    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    invoke-static {p0, v0, v1, p5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->fill-JT6ljtQ(Ljava/nio/ByteBuffer;IIB)V

    .line 220
    return-void

    .line 254
    .restart local v1    # "name$iv":Ljava/lang/String;
    .restart local v2    # "$this$toIntOrFail$iv":J
    .restart local v6    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v2, v3, v1}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .end local v2    # "$this$toIntOrFail$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    .restart local v0    # "name$iv":Ljava/lang/String;
    .local v1, "$this$toIntOrFail$iv":J
    .restart local v3    # "$i$f$toIntOrFail":I
    :cond_1
    invoke-static {v1, v2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v4, Lkotlin/KotlinNothingValueException;

    invoke-direct {v4}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v4
.end method

.method private static final myDuplicate(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "$this$myDuplicate"    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 200
    .local v0, "$i$f$myDuplicate":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 243
    .local v1, "$this$myDuplicate_u24lambda_u241":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 200
    .local v2, "$i$a$-apply-MemoryJvmKt$myDuplicate$1":I
    const-string v3, "myDuplicate$lambda$1"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .local v3, "$this$suppressNullCheck$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 244
    .local v4, "$i$f$suppressNullCheck":I
    nop

    .line 200
    .end local v3    # "$this$suppressNullCheck$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$suppressNullCheck":I
    return-object v3
.end method

.method private static final mySlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p0, "$this$mySlice"    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 204
    .local v0, "$i$f$mySlice":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 243
    .local v1, "$this$mySlice_u24lambda_u242":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 204
    .local v2, "$i$a$-apply-MemoryJvmKt$mySlice$1":I
    const-string v3, "mySlice$lambda$2"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    .local v3, "$this$suppressNullCheck$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 245
    .local v4, "$i$f$suppressNullCheck":I
    nop

    .line 204
    .end local v3    # "$this$suppressNullCheck$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$suppressNullCheck":I
    return-object v3
.end method

.method public static final sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 6
    .param p0, "$this$sliceSafe"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    move-object v0, p0

    .local v0, "$this$myDuplicate$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 246
    .local v1, "$i$f$myDuplicate":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 247
    .local v2, "$this$myDuplicate_u24lambda_u241$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 246
    .local v3, "$i$a$-apply-MemoryJvmKt$myDuplicate$1$iv":I
    const-string v4, "myDuplicate$lambda$1"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    .local v4, "$this$suppressNullCheck$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 248
    .local v5, "$i$f$suppressNullCheck":I
    nop

    .line 246
    .end local v4    # "$this$suppressNullCheck$iv$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$suppressNullCheck":I
    nop

    .line 212
    .end local v0    # "$this$myDuplicate$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$myDuplicate":I
    .end local v2    # "$this$myDuplicate_u24lambda_u241$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$a$-apply-MemoryJvmKt$myDuplicate$1$iv":I
    move-object v0, v4

    .line 243
    .local v0, "$this$sliceSafe_u24lambda_u243":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 212
    .local v1, "$i$a$-apply-MemoryJvmKt$sliceSafe$1":I
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v2, p1, p2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .end local v1    # "$i$a$-apply-MemoryJvmKt$sliceSafe$1":I
    .local v0, "$this$mySlice$iv":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 249
    .local v1, "$i$f$mySlice":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 247
    .local v2, "$this$mySlice_u24lambda_u242$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 249
    .local v3, "$i$a$-apply-MemoryJvmKt$mySlice$1$iv":I
    const-string v4, "mySlice$lambda$2"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    .restart local v4    # "$this$suppressNullCheck$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 253
    .restart local v5    # "$i$f$suppressNullCheck":I
    nop

    .line 249
    .end local v4    # "$this$suppressNullCheck$iv$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$f$suppressNullCheck":I
    nop

    .line 212
    .end local v0    # "$this$mySlice$iv":Ljava/nio/ByteBuffer;
    .end local v1    # "$i$f$mySlice":I
    .end local v2    # "$this$mySlice_u24lambda_u242$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$a$-apply-MemoryJvmKt$mySlice$1$iv":I
    return-object v4
.end method

.method private static final suppressNullCheck(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "$this$suppressNullCheck"    # Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 208
    .local v0, "$i$f$suppressNullCheck":I
    return-object p0
.end method
