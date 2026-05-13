.class public final Lio/ktor/utils/io/core/InputPrimitivesKt;
.super Ljava/lang/Object;
.source "InputPrimitives.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputPrimitives.kt\nio/ktor/utils/io/core/InputPrimitivesKt\n+ 2 Input.kt\nio/ktor/utils/io/core/Input\n+ 3 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n*L\n1#1,74:1\n58#1:75\n59#1,3:77\n64#1:81\n69#1,4:82\n58#1:86\n59#1,3:88\n64#1:92\n69#1,4:93\n58#1:97\n59#1,3:99\n64#1:103\n69#1,4:104\n58#1:108\n59#1,3:110\n64#1:114\n69#1,4:115\n58#1:119\n59#1,3:121\n64#1:125\n69#1,4:126\n77#2:76\n77#2:87\n77#2:98\n77#2:109\n77#2:120\n77#2:130\n8#3:80\n16#3:91\n24#3:102\n32#3:113\n40#3:124\n*S KotlinDebug\n*F\n+ 1 InputPrimitives.kt\nio/ktor/utils/io/core/InputPrimitivesKt\n*L\n8#1:75\n8#1:77,3\n8#1:81\n13#1:82,4\n18#1:86\n18#1:88,3\n18#1:92\n23#1:93,4\n28#1:97\n28#1:99,3\n28#1:103\n33#1:104,4\n38#1:108\n38#1:110,3\n38#1:114\n43#1:115,4\n48#1:119\n48#1:121,3\n48#1:125\n53#1:126,4\n8#1:76\n18#1:87\n28#1:98\n38#1:109\n48#1:120\n58#1:130\n8#1:80\n18#1:91\n28#1:102\n38#1:113\n48#1:124\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0005*\u00020\u0002\u001a\n\u0010\u0007\u001a\u00020\u0008*\u00020\u0002\u001a\u000c\u0010\t\u001a\u00020\u0008*\u00020\u0002H\u0002\u001a\n\u0010\n\u001a\u00020\u000b*\u00020\u0002\u001a\u000c\u0010\u000c\u001a\u00020\u000b*\u00020\u0002H\u0002\u001aK\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00082\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u0002H\u000e0\u00112\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0014H\u0082\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0015\u001a4\u0010\u0016\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00082\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u0002H\u000e0\u0018H\u0082\u0008\u00a2\u0006\u0002\u0010\u001a\u001a\n\u0010\u001b\u001a\u00020\u001c*\u00020\u0002\u001a\u000c\u0010\u001d\u001a\u00020\u001c*\u00020\u0002H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "readDouble",
        "",
        "Lio/ktor/utils/io/core/Input;",
        "readDoubleFallback",
        "readFloat",
        "",
        "readFloatFallback",
        "readInt",
        "",
        "readIntFallback",
        "readLong",
        "",
        "readLongFallback",
        "readPrimitive",
        "R",
        "size",
        "main",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/bits/Memory;",
        "fallback",
        "Lkotlin/Function0;",
        "(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "readPrimitiveFallback",
        "read",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/Buffer;",
        "(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "readShort",
        "",
        "readShortFallback",
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
.method public static final readDouble(Lio/ktor/utils/io/core/Input;)D
    .locals 9
    .param p0, "$this$readDouble"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const/16 v0, 0x8

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 119
    .local v2, "$i$f$readPrimitive":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 120
    .local v4, "$i$f$getHeadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 119
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$getHeadRemaining":I
    if-le v5, v0, :cond_0

    .line 121
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    .line 122
    .local v3, "index$iv":I
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 123
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 48
    .local v6, "$i$a$-readPrimitive-InputPrimitivesKt$readDouble$1":I
    move-object v7, v4

    .local v7, "$this$loadDoubleAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 124
    .local v8, "$i$f$loadDoubleAt-eY85DW0":I
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide v7

    .line 48
    .end local v7    # "$this$loadDoubleAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$loadDoubleAt-eY85DW0":I
    nop

    .line 123
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-readPrimitive-InputPrimitivesKt$readDouble$1":I
    goto :goto_0

    .line 125
    .end local v3    # "index$iv":I
    :cond_0
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$a$-readPrimitive-InputPrimitivesKt$readDouble$2":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDoubleFallback(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v7

    .line 125
    .end local v3    # "$i$a$-readPrimitive-InputPrimitivesKt$readDouble$2":I
    nop

    .line 48
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitive":I
    :goto_0
    return-wide v7
.end method

.method public static final readDoubleFallback(Lio/ktor/utils/io/core/Input;)D
    .locals 6
    .param p0, "$this$readDoubleFallback"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const/16 v0, 0x8

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 126
    .local v2, "$i$f$readPrimitiveFallback":I
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 127
    .local v3, "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 53
    .local v5, "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readDoubleFallback$1":I
    invoke-static {v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Buffer;)D

    move-result-wide v4

    .line 127
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readDoubleFallback$1":I
    nop

    .line 128
    .local v4, "value$iv":D
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 129
    nop

    .line 53
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitiveFallback":I
    .end local v3    # "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "value$iv":D
    return-wide v4

    .line 126
    .restart local v0    # "size$iv":I
    .restart local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .restart local v2    # "$i$f$readPrimitiveFallback":I
    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public static final readFloat(Lio/ktor/utils/io/core/Input;)F
    .locals 9
    .param p0, "$this$readFloat"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x4

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 108
    .local v2, "$i$f$readPrimitive":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 109
    .local v4, "$i$f$getHeadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 108
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$getHeadRemaining":I
    if-le v5, v0, :cond_0

    .line 110
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    .line 111
    .local v3, "index$iv":I
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 112
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 38
    .local v6, "$i$a$-readPrimitive-InputPrimitivesKt$readFloat$1":I
    move-object v7, v4

    .local v7, "$this$loadFloatAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 113
    .local v8, "$i$f$loadFloatAt-eY85DW0":I
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    .line 38
    .end local v7    # "$this$loadFloatAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$loadFloatAt-eY85DW0":I
    nop

    .line 112
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-readPrimitive-InputPrimitivesKt$readFloat$1":I
    goto :goto_0

    .line 114
    .end local v3    # "index$iv":I
    :cond_0
    const/4 v3, 0x0

    .line 38
    .local v3, "$i$a$-readPrimitive-InputPrimitivesKt$readFloat$2":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloatFallback(Lio/ktor/utils/io/core/Input;)F

    move-result v7

    .line 114
    .end local v3    # "$i$a$-readPrimitive-InputPrimitivesKt$readFloat$2":I
    nop

    .line 38
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitive":I
    :goto_0
    return v7
.end method

.method public static final readFloatFallback(Lio/ktor/utils/io/core/Input;)F
    .locals 6
    .param p0, "$this$readFloatFallback"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x4

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$f$readPrimitiveFallback":I
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    .local v3, "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 43
    .local v5, "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readFloatFallback$1":I
    invoke-static {v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Buffer;)F

    move-result v4

    .line 116
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readFloatFallback$1":I
    nop

    .line 117
    .local v4, "value$iv":F
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 118
    nop

    .line 43
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitiveFallback":I
    .end local v3    # "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "value$iv":F
    return v4

    .line 115
    .restart local v0    # "size$iv":I
    .restart local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .restart local v2    # "$i$f$readPrimitiveFallback":I
    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public static final readInt(Lio/ktor/utils/io/core/Input;)I
    .locals 9
    .param p0, "$this$readInt"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x4

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 86
    .local v2, "$i$f$readPrimitive":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 87
    .local v4, "$i$f$getHeadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 86
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$getHeadRemaining":I
    if-le v5, v0, :cond_0

    .line 88
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    .line 89
    .local v3, "index$iv":I
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 90
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 18
    .local v6, "$i$a$-readPrimitive-InputPrimitivesKt$readInt$1":I
    move-object v7, v4

    .local v7, "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 91
    .local v8, "$i$f$loadIntAt-eY85DW0":I
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    .line 18
    .end local v7    # "$this$loadIntAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$loadIntAt-eY85DW0":I
    nop

    .line 90
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-readPrimitive-InputPrimitivesKt$readInt$1":I
    goto :goto_0

    .line 92
    .end local v3    # "index$iv":I
    :cond_0
    const/4 v3, 0x0

    .line 18
    .local v3, "$i$a$-readPrimitive-InputPrimitivesKt$readInt$2":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readIntFallback(Lio/ktor/utils/io/core/Input;)I

    move-result v7

    .line 92
    .end local v3    # "$i$a$-readPrimitive-InputPrimitivesKt$readInt$2":I
    nop

    .line 18
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitive":I
    :goto_0
    return v7
.end method

.method private static final readIntFallback(Lio/ktor/utils/io/core/Input;)I
    .locals 6
    .param p0, "$this$readIntFallback"    # Lio/ktor/utils/io/core/Input;

    .line 23
    const/4 v0, 0x4

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 93
    .local v2, "$i$f$readPrimitiveFallback":I
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    .local v3, "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 23
    .local v5, "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readIntFallback$1":I
    invoke-static {v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Buffer;)I

    move-result v4

    .line 94
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readIntFallback$1":I
    nop

    .line 95
    .local v4, "value$iv":I
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 96
    nop

    .line 23
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitiveFallback":I
    .end local v3    # "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "value$iv":I
    return v4

    .line 93
    .restart local v0    # "size$iv":I
    .restart local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .restart local v2    # "$i$f$readPrimitiveFallback":I
    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public static final readLong(Lio/ktor/utils/io/core/Input;)J
    .locals 9
    .param p0, "$this$readLong"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const/16 v0, 0x8

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 97
    .local v2, "$i$f$readPrimitive":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 98
    .local v4, "$i$f$getHeadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 97
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$getHeadRemaining":I
    if-le v5, v0, :cond_0

    .line 99
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    .line 100
    .local v3, "index$iv":I
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 101
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 28
    .local v6, "$i$a$-readPrimitive-InputPrimitivesKt$readLong$1":I
    move-object v7, v4

    .local v7, "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 102
    .local v8, "$i$f$loadLongAt-eY85DW0":I
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v7

    .line 28
    .end local v7    # "$this$loadLongAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$loadLongAt-eY85DW0":I
    nop

    .line 101
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-readPrimitive-InputPrimitivesKt$readLong$1":I
    goto :goto_0

    .line 103
    .end local v3    # "index$iv":I
    :cond_0
    const/4 v3, 0x0

    .line 28
    .local v3, "$i$a$-readPrimitive-InputPrimitivesKt$readLong$2":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLongFallback(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v7

    .line 103
    .end local v3    # "$i$a$-readPrimitive-InputPrimitivesKt$readLong$2":I
    nop

    .line 28
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitive":I
    :goto_0
    return-wide v7
.end method

.method private static final readLongFallback(Lio/ktor/utils/io/core/Input;)J
    .locals 6
    .param p0, "$this$readLongFallback"    # Lio/ktor/utils/io/core/Input;

    .line 33
    const/16 v0, 0x8

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$f$readPrimitiveFallback":I
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 105
    .local v3, "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 33
    .local v5, "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readLongFallback$1":I
    invoke-static {v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Buffer;)J

    move-result-wide v4

    .line 105
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readLongFallback$1":I
    nop

    .line 106
    .local v4, "value$iv":J
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 107
    nop

    .line 33
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitiveFallback":I
    .end local v3    # "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "value$iv":J
    return-wide v4

    .line 104
    .restart local v0    # "size$iv":I
    .restart local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .restart local v2    # "$i$f$readPrimitiveFallback":I
    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method private static final readPrimitive(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this$readPrimitive"    # Lio/ktor/utils/io/core/Input;
    .param p1, "size"    # I
    .param p2, "main"    # Lkotlin/jvm/functions/Function2;
    .param p3, "fallback"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/core/Input;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Integer;",
            "+TR;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    .local v0, "$i$f$readPrimitive":I
    move-object v1, p0

    .local v1, "this_$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 130
    .local v2, "$i$f$getHeadRemaining":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 58
    .end local v1    # "this_$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$getHeadRemaining":I
    if-le v3, p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v1

    .line 60
    .local v1, "index":I
    add-int v2, v1, p1

    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 64
    .end local v1    # "index":I
    :cond_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final readPrimitiveFallback(Lio/ktor/utils/io/core/Input;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this$readPrimitiveFallback"    # Lio/ktor/utils/io/core/Input;
    .param p1, "size"    # I
    .param p2, "read"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/core/Input;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "+TR;>;)TR;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    .local v0, "$i$f$readPrimitiveFallback":I
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 70
    .local v1, "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    .local v2, "value":Ljava/lang/Object;
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 72
    return-object v2

    .line 69
    .end local v1    # "head":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1
.end method

.method public static final readShort(Lio/ktor/utils/io/core/Input;)S
    .locals 9
    .param p0, "$this$readShort"    # Lio/ktor/utils/io/core/Input;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x2

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 75
    .local v2, "$i$f$readPrimitive":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    const/4 v4, 0x0

    .line 76
    .local v4, "$i$f$getHeadRemaining":I
    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v5

    invoke-virtual {v3}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v6

    sub-int/2addr v5, v6

    .line 75
    .end local v3    # "this_$iv$iv":Lio/ktor/utils/io/core/Input;
    .end local v4    # "$i$f$getHeadRemaining":I
    if-le v5, v0, :cond_0

    .line 77
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v3

    .line 78
    .local v3, "index$iv":I
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    .line 79
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Input;->getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 8
    .local v6, "$i$a$-readPrimitive-InputPrimitivesKt$readShort$1":I
    move-object v7, v4

    .local v7, "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 80
    .local v8, "$i$f$loadShortAt-eY85DW0":I
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    .line 8
    .end local v7    # "$this$loadShortAt_u2deY85DW0$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$loadShortAt-eY85DW0":I
    nop

    .line 79
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-readPrimitive-InputPrimitivesKt$readShort$1":I
    goto :goto_0

    .line 81
    .end local v3    # "index$iv":I
    :cond_0
    const/4 v3, 0x0

    .line 8
    .local v3, "$i$a$-readPrimitive-InputPrimitivesKt$readShort$2":I
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShortFallback(Lio/ktor/utils/io/core/Input;)S

    move-result v7

    .line 81
    .end local v3    # "$i$a$-readPrimitive-InputPrimitivesKt$readShort$2":I
    nop

    .line 8
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitive$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitive":I
    :goto_0
    return v7
.end method

.method private static final readShortFallback(Lio/ktor/utils/io/core/Input;)S
    .locals 6
    .param p0, "$this$readShortFallback"    # Lio/ktor/utils/io/core/Input;

    .line 13
    const/4 v0, 0x2

    .local v0, "size$iv":I
    move-object v1, p0

    .local v1, "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    const/4 v2, 0x0

    .line 82
    .local v2, "$i$f$readPrimitiveFallback":I
    invoke-static {v1, v0}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 83
    .local v3, "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 13
    .local v5, "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readShortFallback$1":I
    invoke-static {v4}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Buffer;)S

    move-result v4

    .line 83
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-readPrimitiveFallback-InputPrimitivesKt$readShortFallback$1":I
    nop

    .line 84
    .local v4, "value$iv":S
    invoke-static {v1, v3}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 85
    nop

    .line 13
    .end local v0    # "size$iv":I
    .end local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .end local v2    # "$i$f$readPrimitiveFallback":I
    .end local v3    # "head$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .end local v4    # "value$iv":S
    return v4

    .line 82
    .restart local v0    # "size$iv":I
    .restart local v1    # "$this$readPrimitiveFallback$iv":Lio/ktor/utils/io/core/Input;
    .restart local v2    # "$i$f$readPrimitiveFallback":I
    :cond_0
    invoke-static {v0}, Lio/ktor/utils/io/core/StringsKt;->prematureEndOfStream(I)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method
