.class public final Lio/ktor/utils/io/bits/MemoryPrimitivesKt;
.super Ljava/lang/Object;
.source "MemoryPrimitives.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryPrimitives.kt\nio/ktor/utils/io/bits/MemoryPrimitivesKt\n+ 2 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 3 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,164:1\n8#2:165\n12#2:166\n65#2,2:169\n72#2:171\n65#2,9:174\n16#2:183\n20#2:184\n51#2,2:187\n58#2:189\n51#2,9:192\n24#2:201\n28#2:202\n79#2,2:205\n86#2:207\n79#2,9:210\n6#3,2:167\n6#3,2:172\n6#3,2:185\n6#3,2:190\n6#3,2:203\n6#3,2:208\n*S KotlinDebug\n*F\n+ 1 MemoryPrimitives.kt\nio/ktor/utils/io/bits/MemoryPrimitivesKt\n*L\n28#1:165\n33#1:166\n38#1:169,2\n43#1:171\n43#1:174,9\n68#1:183\n73#1:184\n78#1:187,2\n83#1:189\n83#1:192,9\n108#1:201\n113#1:202\n118#1:205,2\n123#1:207\n123#1:210,9\n33#1:167,2\n43#1:172,2\n73#1:185,2\n83#1:190,2\n113#1:203,2\n123#1:208,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\r\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0008\u001a\"\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\"\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\r\u001a\"\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u001a\"\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0012\u001a*\u0010\u0013\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0001H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u001a*\u0010\u0013\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0001H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0018\u001a*\u0010\u0019\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\nH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001a*\u0010\u0019\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\nH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001c\u001a*\u0010\u001d\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u000fH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a*\u0010\u001d\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u000fH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010 \u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "loadUIntAt",
        "Lkotlin/UInt;",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "",
        "loadUIntAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)I",
        "",
        "(Ljava/nio/ByteBuffer;J)I",
        "loadULongAt",
        "Lkotlin/ULong;",
        "loadULongAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)J",
        "(Ljava/nio/ByteBuffer;J)J",
        "loadUShortAt",
        "Lkotlin/UShort;",
        "loadUShortAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)S",
        "(Ljava/nio/ByteBuffer;J)S",
        "storeUIntAt",
        "",
        "value",
        "storeUIntAt-c9EmHqw",
        "(Ljava/nio/ByteBuffer;II)V",
        "(Ljava/nio/ByteBuffer;JI)V",
        "storeULongAt",
        "storeULongAt-zwzI6Wg",
        "(Ljava/nio/ByteBuffer;IJ)V",
        "(Ljava/nio/ByteBuffer;JJ)V",
        "storeUShortAt",
        "storeUShortAt-4ET0KQI",
        "(Ljava/nio/ByteBuffer;IS)V",
        "(Ljava/nio/ByteBuffer;JS)V",
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
.method public static final loadUIntAt-eY85DW0(Ljava/nio/ByteBuffer;I)I
    .locals 3
    .param p0, "$this$loadUIntAt_u2deY85DW0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    const-string v0, "$this$loadUIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$loadUIntAt-eY85DW0":I
    move-object v1, p0

    .local v1, "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 183
    .local v2, "$i$f$loadIntAt-eY85DW0":I
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 68
    .end local v1    # "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$loadIntAt-eY85DW0":I
    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1
.end method

.method public static final loadUIntAt-eY85DW0(Ljava/nio/ByteBuffer;J)I
    .locals 9
    .param p0, "$this$loadUIntAt_u2deY85DW0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    const-string v0, "$this$loadUIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 73
    .local v0, "$i$f$loadUIntAt-eY85DW0":I
    move-object v1, p0

    .local v1, "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 184
    .local v2, "$i$f$loadIntAt-eY85DW0":I
    const-string v3, "offset"

    .local v3, "name$iv$iv":Ljava/lang/String;
    move-wide v4, p1

    .local v4, "$this$toIntOrFail$iv$iv":J
    const/4 v6, 0x0

    .line 185
    .local v6, "$i$f$toIntOrFail":I
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    .line 186
    long-to-int v3, v4

    .line 184
    .end local v3    # "name$iv$iv":Ljava/lang/String;
    .end local v4    # "$this$toIntOrFail$iv$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    .line 73
    .end local v1    # "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$loadIntAt-eY85DW0":I
    invoke-static {v1}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v1

    return v1

    .line 185
    .restart local v1    # "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .restart local v2    # "$i$f$loadIntAt-eY85DW0":I
    .restart local v3    # "name$iv$iv":Ljava/lang/String;
    .restart local v4    # "$this$toIntOrFail$iv$iv":J
    .restart local v6    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v4, v5, v3}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7
.end method

.method public static final loadULongAt-eY85DW0(Ljava/nio/ByteBuffer;I)J
    .locals 3
    .param p0, "$this$loadULongAt_u2deY85DW0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    const-string v0, "$this$loadULongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 108
    .local v0, "$i$f$loadULongAt-eY85DW0":I
    move-object v1, p0

    .local v1, "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 201
    .local v2, "$i$f$loadLongAt-eY85DW0":I
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    .line 108
    .end local v1    # "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$loadLongAt-eY85DW0":I
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final loadULongAt-eY85DW0(Ljava/nio/ByteBuffer;J)J
    .locals 9
    .param p0, "$this$loadULongAt_u2deY85DW0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    const-string v0, "$this$loadULongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    .local v0, "$i$f$loadULongAt-eY85DW0":I
    move-object v1, p0

    .local v1, "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 202
    .local v2, "$i$f$loadLongAt-eY85DW0":I
    const-string v3, "offset"

    .local v3, "name$iv$iv":Ljava/lang/String;
    move-wide v4, p1

    .local v4, "$this$toIntOrFail$iv$iv":J
    const/4 v6, 0x0

    .line 203
    .local v6, "$i$f$toIntOrFail":I
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    .line 204
    long-to-int v3, v4

    .line 202
    .end local v3    # "name$iv$iv":Ljava/lang/String;
    .end local v4    # "$this$toIntOrFail$iv$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    .line 113
    .end local v1    # "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$loadLongAt-eY85DW0":I
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    return-wide v1

    .line 203
    .restart local v1    # "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .restart local v2    # "$i$f$loadLongAt-eY85DW0":I
    .restart local v3    # "name$iv$iv":Ljava/lang/String;
    .restart local v4    # "$this$toIntOrFail$iv$iv":J
    .restart local v6    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v4, v5, v3}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7
.end method

.method public static final loadUShortAt-eY85DW0(Ljava/nio/ByteBuffer;I)S
    .locals 3
    .param p0, "$this$loadUShortAt_u2deY85DW0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    const-string v0, "$this$loadUShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$loadUShortAt-eY85DW0":I
    move-object v1, p0

    .local v1, "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 165
    .local v2, "$i$f$loadShortAt-eY85DW0":I
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 28
    .end local v1    # "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$loadShortAt-eY85DW0":I
    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    return v1
.end method

.method public static final loadUShortAt-eY85DW0(Ljava/nio/ByteBuffer;J)S
    .locals 9
    .param p0, "$this$loadUShortAt_u2deY85DW0"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J

    const-string v0, "$this$loadUShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    .local v0, "$i$f$loadUShortAt-eY85DW0":I
    move-object v1, p0

    .local v1, "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 166
    .local v2, "$i$f$loadShortAt-eY85DW0":I
    const-string v3, "offset"

    .local v3, "name$iv$iv":Ljava/lang/String;
    move-wide v4, p1

    .local v4, "$this$toIntOrFail$iv$iv":J
    const/4 v6, 0x0

    .line 167
    .local v6, "$i$f$toIntOrFail":I
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    .line 168
    long-to-int v3, v4

    .line 166
    .end local v3    # "name$iv$iv":Ljava/lang/String;
    .end local v4    # "$this$toIntOrFail$iv$iv":J
    .end local v6    # "$i$f$toIntOrFail":I
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 33
    .end local v1    # "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$f$loadShortAt-eY85DW0":I
    invoke-static {v1}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v1

    return v1

    .line 167
    .restart local v1    # "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .restart local v2    # "$i$f$loadShortAt-eY85DW0":I
    .restart local v3    # "name$iv$iv":Ljava/lang/String;
    .restart local v4    # "$this$toIntOrFail$iv$iv":J
    .restart local v6    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v4, v5, v3}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v7, Lkotlin/KotlinNothingValueException;

    invoke-direct {v7}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v7
.end method

.method public static final storeUIntAt-c9EmHqw(Ljava/nio/ByteBuffer;II)V
    .locals 4
    .param p0, "$this$storeUIntAt_u2dc9EmHqw"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # I

    const-string v0, "$this$storeUIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    .local v0, "$i$f$storeUIntAt-c9EmHqw":I
    move-object v1, p0

    .local v1, "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "value$iv":I
    const/4 v3, 0x0

    .line 187
    .local v3, "$i$f$storeIntAt-62zg_DM":I
    invoke-virtual {v1, p1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 188
    nop

    .line 78
    .end local v1    # "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "value$iv":I
    .end local v3    # "$i$f$storeIntAt-62zg_DM":I
    return-void
.end method

.method public static final storeUIntAt-c9EmHqw(Ljava/nio/ByteBuffer;JI)V
    .locals 10
    .param p0, "$this$storeUIntAt_u2dc9EmHqw"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "value"    # I

    const-string v0, "$this$storeUIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 83
    .local v0, "$i$f$storeUIntAt-c9EmHqw":I
    move v1, p3

    .local v1, "value$iv":I
    move-object v2, p0

    .local v2, "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 189
    .local v3, "$i$f$storeIntAt-62zg_DM":I
    const-string v4, "offset"

    .local v4, "name$iv$iv":Ljava/lang/String;
    move-wide v5, p1

    .local v5, "$this$toIntOrFail$iv$iv":J
    const/4 v7, 0x0

    .line 190
    .local v7, "$i$f$toIntOrFail":I
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v5, v8

    if-gez v8, :cond_0

    .line 191
    long-to-int v4, v5

    .line 189
    .end local v4    # "name$iv$iv":Ljava/lang/String;
    .end local v5    # "$this$toIntOrFail$iv$iv":J
    .end local v7    # "$i$f$toIntOrFail":I
    nop

    .local v4, "offset$iv$iv":I
    move-object v5, v2

    .local v5, "$this$storeIntAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 192
    .local v6, "$i$f$storeIntAt-62zg_DM":I
    invoke-virtual {v5, v4, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 193
    nop

    .line 200
    .end local v4    # "offset$iv$iv":I
    .end local v5    # "$this$storeIntAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "$i$f$storeIntAt-62zg_DM":I
    nop

    .line 83
    .end local v1    # "value$iv":I
    .end local v2    # "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$f$storeIntAt-62zg_DM":I
    return-void

    .line 190
    .restart local v1    # "value$iv":I
    .restart local v2    # "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "$i$f$storeIntAt-62zg_DM":I
    .local v4, "name$iv$iv":Ljava/lang/String;
    .local v5, "$this$toIntOrFail$iv$iv":J
    .restart local v7    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v5, v6, v4}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v8, Lkotlin/KotlinNothingValueException;

    invoke-direct {v8}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v8
.end method

.method public static final storeULongAt-zwzI6Wg(Ljava/nio/ByteBuffer;IJ)V
    .locals 5
    .param p0, "$this$storeULongAt_u2dzwzI6Wg"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # J

    const-string v0, "$this$storeULongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 118
    .local v0, "$i$f$storeULongAt-zwzI6Wg":I
    move-wide v1, p2

    .local v1, "value$iv":J
    move-object v3, p0

    .local v3, "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 205
    .local v4, "$i$f$storeLongAt-62zg_DM":I
    invoke-virtual {v3, p1, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 206
    nop

    .line 118
    .end local v1    # "value$iv":J
    .end local v3    # "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$f$storeLongAt-62zg_DM":I
    return-void
.end method

.method public static final storeULongAt-zwzI6Wg(Ljava/nio/ByteBuffer;JJ)V
    .locals 11
    .param p0, "$this$storeULongAt_u2dzwzI6Wg"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "value"    # J

    const-string v0, "$this$storeULongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 123
    .local v0, "$i$f$storeULongAt-zwzI6Wg":I
    move-object v1, p0

    .local v1, "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    move-wide v2, p3

    .local v2, "value$iv":J
    const/4 v4, 0x0

    .line 207
    .local v4, "$i$f$storeLongAt-62zg_DM":I
    const-string v5, "offset"

    .local v5, "name$iv$iv":Ljava/lang/String;
    move-wide v6, p1

    .local v6, "$this$toIntOrFail$iv$iv":J
    const/4 v8, 0x0

    .line 208
    .local v8, "$i$f$toIntOrFail":I
    const-wide/32 v9, 0x7fffffff

    cmp-long v9, v6, v9

    if-gez v9, :cond_0

    .line 209
    long-to-int v5, v6

    .line 207
    .end local v5    # "name$iv$iv":Ljava/lang/String;
    .end local v6    # "$this$toIntOrFail$iv$iv":J
    .end local v8    # "$i$f$toIntOrFail":I
    nop

    .local v5, "offset$iv$iv":I
    move-object v6, v1

    .local v6, "$this$storeLongAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 210
    .local v7, "$i$f$storeLongAt-62zg_DM":I
    invoke-virtual {v6, v5, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 211
    nop

    .line 218
    .end local v5    # "offset$iv$iv":I
    .end local v6    # "$this$storeLongAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$f$storeLongAt-62zg_DM":I
    nop

    .line 123
    .end local v1    # "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "value$iv":J
    .end local v4    # "$i$f$storeLongAt-62zg_DM":I
    return-void

    .line 208
    .restart local v1    # "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v2    # "value$iv":J
    .restart local v4    # "$i$f$storeLongAt-62zg_DM":I
    .local v5, "name$iv$iv":Ljava/lang/String;
    .local v6, "$this$toIntOrFail$iv$iv":J
    .restart local v8    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v6, v7, v5}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v9, Lkotlin/KotlinNothingValueException;

    invoke-direct {v9}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v9
.end method

.method public static final storeUShortAt-4ET0KQI(Ljava/nio/ByteBuffer;IS)V
    .locals 4
    .param p0, "$this$storeUShortAt_u2d4ET0KQI"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "value"    # S

    const-string v0, "$this$storeUShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$storeUShortAt-4ET0KQI":I
    move-object v1, p0

    .local v1, "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "value$iv":S
    const/4 v3, 0x0

    .line 169
    .local v3, "$i$f$storeShortAt-62zg_DM":I
    invoke-virtual {v1, p1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 170
    nop

    .line 38
    .end local v1    # "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "value$iv":S
    .end local v3    # "$i$f$storeShortAt-62zg_DM":I
    return-void
.end method

.method public static final storeUShortAt-4ET0KQI(Ljava/nio/ByteBuffer;JS)V
    .locals 10
    .param p0, "$this$storeUShortAt_u2d4ET0KQI"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "value"    # S

    const-string v0, "$this$storeUShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$storeUShortAt-4ET0KQI":I
    move v1, p3

    .local v1, "value$iv":S
    move-object v2, p0

    .local v2, "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    .line 171
    .local v3, "$i$f$storeShortAt-62zg_DM":I
    const-string v4, "offset"

    .local v4, "name$iv$iv":Ljava/lang/String;
    move-wide v5, p1

    .local v5, "$this$toIntOrFail$iv$iv":J
    const/4 v7, 0x0

    .line 172
    .local v7, "$i$f$toIntOrFail":I
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v5, v8

    if-gez v8, :cond_0

    .line 173
    long-to-int v4, v5

    .line 171
    .end local v4    # "name$iv$iv":Ljava/lang/String;
    .end local v5    # "$this$toIntOrFail$iv$iv":J
    .end local v7    # "$i$f$toIntOrFail":I
    nop

    .local v4, "offset$iv$iv":I
    move-object v5, v2

    .local v5, "$this$storeShortAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 174
    .local v6, "$i$f$storeShortAt-62zg_DM":I
    invoke-virtual {v5, v4, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 175
    nop

    .line 182
    .end local v4    # "offset$iv$iv":I
    .end local v5    # "$this$storeShortAt_u2d62zg_DM$iv$iv":Ljava/nio/ByteBuffer;
    .end local v6    # "$i$f$storeShortAt-62zg_DM":I
    nop

    .line 43
    .end local v1    # "value$iv":S
    .end local v2    # "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v3    # "$i$f$storeShortAt-62zg_DM":I
    return-void

    .line 172
    .restart local v1    # "value$iv":S
    .restart local v2    # "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .restart local v3    # "$i$f$storeShortAt-62zg_DM":I
    .local v4, "name$iv$iv":Ljava/lang/String;
    .local v5, "$this$toIntOrFail$iv$iv":J
    .restart local v7    # "$i$f$toIntOrFail":I
    :cond_0
    invoke-static {v5, v6, v4}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance v8, Lkotlin/KotlinNothingValueException;

    invoke-direct {v8}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v8
.end method
