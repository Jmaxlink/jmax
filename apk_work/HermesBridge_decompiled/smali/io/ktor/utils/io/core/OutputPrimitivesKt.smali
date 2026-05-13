.class public final Lio/ktor/utils/io/core/OutputPrimitivesKt;
.super Ljava/lang/Object;
.source "OutputPrimitives.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutputPrimitives.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputPrimitives.kt\nio/ktor/utils/io/core/OutputPrimitivesKt\n+ 2 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 3 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n1#1,100:1\n80#1,4:101\n84#1,4:107\n95#1,4:111\n80#1,4:117\n84#1,4:123\n95#1,4:127\n80#1,4:137\n84#1,4:143\n95#1,4:147\n80#1,4:153\n84#1,4:159\n80#1,4:163\n84#1,4:169\n65#2,2:105\n51#2,2:121\n79#2,2:141\n93#2,2:157\n107#2,2:167\n43#3:115\n45#3:116\n47#3:131\n43#3:132\n45#3:133\n49#3:134\n43#3:135\n45#3:136\n51#3:151\n53#3:152\n*S KotlinDebug\n*F\n+ 1 OutputPrimitives.kt\nio/ktor/utils/io/core/OutputPrimitivesKt\n*L\n7#1:101,4\n7#1:107,4\n14#1:111,4\n22#1:117,4\n22#1:123,4\n29#1:127,4\n48#1:137,4\n48#1:143,4\n55#1:147,4\n63#1:153,4\n63#1:159,4\n70#1:163,4\n70#1:169,4\n7#1:105,2\n22#1:121,2\n48#1:141,2\n63#1:157,2\n70#1:167,2\n15#1:115\n16#1:116\n36#1:131\n37#1:132\n38#1:133\n40#1:134\n41#1:135\n42#1:136\n56#1:151\n57#1:152\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0006\u001a\u0012\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0008\u001a\u0014\u0010\t\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0008H\u0002\u001a\u0014\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0008H\u0002\u001a\u0012\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000c\u001a\u0014\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000cH\u0002\u001a)\u0010\u000e\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00082\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00010\u0012H\u0082\u0008\u001aA\u0010\u0014\u001a\u00020\u000f*\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00082\'\u0010\u0015\u001a#\u0012\u0004\u0012\u00020\u0017\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0018\u0012\u0008\u0008\u0019\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00010\u0016H\u0082\u0008\u00f8\u0001\u0000\u001a\u0012\u0010\u001b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u001c\u001a\u0014\u0010\u001d\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u001cH\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "writeDouble",
        "",
        "Lio/ktor/utils/io/core/Output;",
        "value",
        "",
        "writeFloat",
        "",
        "writeInt",
        "",
        "writeIntByteByByte",
        "writeIntFallback",
        "writeLong",
        "",
        "writeLongFallback",
        "writePrimitiveFallbackTemplate",
        "",
        "componentSize",
        "writeOperation",
        "Lkotlin/Function1;",
        "Lio/ktor/utils/io/core/Buffer;",
        "writePrimitiveTemplate",
        "block",
        "Lkotlin/Function2;",
        "Lio/ktor/utils/io/bits/Memory;",
        "Lkotlin/ParameterName;",
        "name",
        "index",
        "writeShort",
        "",
        "writeShortFallback",
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
.method public static final writeDouble(Lio/ktor/utils/io/core/Output;D)V
    .locals 9
    .param p0, "$this$writeDouble"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # D

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 163
    .local v2, "$i$f$writePrimitiveTemplate":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v3

    .line 164
    .local v3, "index$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_0

    .line 165
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 166
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 70
    .local v6, "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeDouble$1":I
    move-object v7, v4

    .local v7, "$this$storeDoubleAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 167
    .local v8, "$i$f$storeDoubleAt-62zg_DM":I
    invoke-virtual {v7, v5, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    .line 168
    nop

    .line 70
    .end local v7    # "$this$storeDoubleAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$storeDoubleAt-62zg_DM":I
    nop

    .line 166
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeDouble$1":I
    nop

    .line 169
    const/4 v4, 0x1

    goto :goto_0

    .line 172
    :cond_0
    const/4 v4, 0x0

    .line 70
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    .end local v3    # "index$iv":I
    :goto_0
    if-nez v4, :cond_1

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeLongFallback(Lio/ktor/utils/io/core/Output;J)V

    .line 73
    :cond_1
    return-void
.end method

.method public static final writeFloat(Lio/ktor/utils/io/core/Output;F)V
    .locals 9
    .param p0, "$this$writeFloat"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # F

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 153
    .local v2, "$i$f$writePrimitiveTemplate":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v3

    .line 154
    .local v3, "index$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_0

    .line 155
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 156
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 63
    .local v6, "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeFloat$1":I
    move-object v7, v4

    .local v7, "$this$storeFloatAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 157
    .local v8, "$i$f$storeFloatAt-62zg_DM":I
    invoke-virtual {v7, v5, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    .line 158
    nop

    .line 63
    .end local v7    # "$this$storeFloatAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$storeFloatAt-62zg_DM":I
    nop

    .line 156
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeFloat$1":I
    nop

    .line 159
    const/4 v4, 0x1

    goto :goto_0

    .line 162
    :cond_0
    const/4 v4, 0x0

    .line 63
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    .end local v3    # "index$iv":I
    :goto_0
    if-nez v4, :cond_1

    .line 64
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p0, v0}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeIntFallback(Lio/ktor/utils/io/core/Output;I)V

    .line 66
    :cond_1
    return-void
.end method

.method public static final writeInt(Lio/ktor/utils/io/core/Output;I)V
    .locals 9
    .param p0, "$this$writeInt"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 117
    .local v2, "$i$f$writePrimitiveTemplate":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v3

    .line 118
    .local v3, "index$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_0

    .line 119
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 120
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 22
    .local v6, "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeInt$1":I
    move-object v7, v4

    .local v7, "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 121
    .local v8, "$i$f$storeIntAt-62zg_DM":I
    invoke-virtual {v7, v5, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 122
    nop

    .line 22
    .end local v7    # "$this$storeIntAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$storeIntAt-62zg_DM":I
    nop

    .line 120
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeInt$1":I
    nop

    .line 123
    const/4 v4, 0x1

    goto :goto_0

    .line 126
    :cond_0
    const/4 v4, 0x0

    .line 22
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    .end local v3    # "index$iv":I
    :goto_0
    if-nez v4, :cond_1

    .line 23
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeIntFallback(Lio/ktor/utils/io/core/Output;I)V

    .line 25
    :cond_1
    return-void
.end method

.method private static final writeIntByteByByte(Lio/ktor/utils/io/core/Output;I)V
    .locals 5
    .param p0, "$this$writeIntByteByByte"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # I

    .line 36
    move v0, p1

    .local v0, "$this$highShort$iv":I
    const/4 v1, 0x0

    .line 131
    .local v1, "$i$f$getHighShort":I
    ushr-int/lit8 v2, v0, 0x10

    int-to-short v0, v2

    .line 36
    .end local v0    # "$this$highShort$iv":I
    .end local v1    # "$i$f$getHighShort":I
    nop

    .local v0, "it":S
    const/4 v1, 0x0

    .line 37
    .local v1, "$i$a$-let-OutputPrimitivesKt$writeIntByteByByte$1":I
    move v2, v0

    .local v2, "$this$highByte$iv":S
    const/4 v3, 0x0

    .line 132
    .local v3, "$i$f$getHighByte":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v2, v4

    .line 37
    .end local v2    # "$this$highByte$iv":S
    .end local v3    # "$i$f$getHighByte":I
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 38
    move v2, v0

    .local v2, "$this$lowByte$iv":S
    const/4 v3, 0x0

    .line 133
    .local v3, "$i$f$getLowByte":I
    and-int/lit16 v4, v2, 0xff

    int-to-byte v2, v4

    .line 38
    .end local v2    # "$this$lowByte$iv":S
    .end local v3    # "$i$f$getLowByte":I
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 39
    nop

    .line 36
    .end local v0    # "it":S
    .end local v1    # "$i$a$-let-OutputPrimitivesKt$writeIntByteByByte$1":I
    nop

    .line 40
    move v0, p1

    .local v0, "$this$lowShort$iv":I
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$f$getLowShort":I
    const v2, 0xffff

    and-int/2addr v2, v0

    int-to-short v0, v2

    .line 40
    .end local v0    # "$this$lowShort$iv":I
    .end local v1    # "$i$f$getLowShort":I
    nop

    .local v0, "it":S
    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-let-OutputPrimitivesKt$writeIntByteByByte$2":I
    move v2, v0

    .local v2, "$this$highByte$iv":S
    const/4 v3, 0x0

    .line 135
    .local v3, "$i$f$getHighByte":I
    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v2, v4

    .line 41
    .end local v2    # "$this$highByte$iv":S
    .end local v3    # "$i$f$getHighByte":I
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 42
    move v2, v0

    .local v2, "$this$lowByte$iv":S
    const/4 v3, 0x0

    .line 136
    .local v3, "$i$f$getLowByte":I
    and-int/lit16 v4, v2, 0xff

    int-to-byte v2, v4

    .line 42
    .end local v2    # "$this$lowByte$iv":S
    .end local v3    # "$i$f$getLowByte":I
    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Output;->writeByte(B)V

    .line 43
    nop

    .line 40
    .end local v0    # "it":S
    .end local v1    # "$i$a$-let-OutputPrimitivesKt$writeIntByteByByte$2":I
    nop

    .line 44
    return-void
.end method

.method private static final writeIntFallback(Lio/ktor/utils/io/core/Output;I)V
    .locals 6
    .param p0, "$this$writeIntFallback"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # I

    .line 29
    const/4 v0, 0x4

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveFallbackTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 127
    .local v2, "$i$f$writePrimitiveFallbackTemplate":I
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    .line 128
    .local v3, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 29
    .local v5, "$i$a$-writePrimitiveFallbackTemplate-OutputPrimitivesKt$writeIntFallback$1":I
    invoke-static {v4, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeInt(Lio/ktor/utils/io/core/Buffer;I)V

    .line 128
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-writePrimitiveFallbackTemplate-OutputPrimitivesKt$writeIntFallback$1":I
    nop

    .line 129
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 130
    nop

    .line 29
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveFallbackTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveFallbackTemplate":I
    .end local v3    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 32
    return-void
.end method

.method public static final writeLong(Lio/ktor/utils/io/core/Output;J)V
    .locals 9
    .param p0, "$this$writeLong"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # J

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 137
    .local v2, "$i$f$writePrimitiveTemplate":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v3

    .line 138
    .local v3, "index$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_0

    .line 139
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 140
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 48
    .local v6, "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeLong$1":I
    move-object v7, v4

    .local v7, "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 141
    .local v8, "$i$f$storeLongAt-62zg_DM":I
    invoke-virtual {v7, v5, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 142
    nop

    .line 48
    .end local v7    # "$this$storeLongAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$storeLongAt-62zg_DM":I
    nop

    .line 140
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeLong$1":I
    nop

    .line 143
    const/4 v4, 0x1

    goto :goto_0

    .line 146
    :cond_0
    const/4 v4, 0x0

    .line 48
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    .end local v3    # "index$iv":I
    :goto_0
    if-nez v4, :cond_1

    .line 49
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeLongFallback(Lio/ktor/utils/io/core/Output;J)V

    .line 51
    :cond_1
    return-void
.end method

.method private static final writeLongFallback(Lio/ktor/utils/io/core/Output;J)V
    .locals 6
    .param p0, "$this$writeLongFallback"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # J

    .line 55
    const/16 v0, 0x8

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveFallbackTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$f$writePrimitiveFallbackTemplate":I
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    .line 148
    .local v3, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 55
    .local v5, "$i$a$-writePrimitiveFallbackTemplate-OutputPrimitivesKt$writeLongFallback$1":I
    invoke-static {v4, p1, p2}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeLong(Lio/ktor/utils/io/core/Buffer;J)V

    .line 148
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-writePrimitiveFallbackTemplate-OutputPrimitivesKt$writeLongFallback$1":I
    nop

    .line 149
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 150
    nop

    .line 55
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveFallbackTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveFallbackTemplate":I
    .end local v3    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 59
    return-void
.end method

.method private static final writePrimitiveFallbackTemplate(Lio/ktor/utils/io/core/Output;ILkotlin/jvm/functions/Function1;)Z
    .locals 3
    .param p0, "$this$writePrimitiveFallbackTemplate"    # Lio/ktor/utils/io/core/Output;
    .param p1, "componentSize"    # I
    .param p2, "writeOperation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/utils/io/core/Buffer;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    .local v0, "$i$f$writePrimitiveFallbackTemplate":I
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    .line 96
    .local v1, "tail":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 98
    const/4 v2, 0x1

    return v2
.end method

.method private static final writePrimitiveTemplate(Lio/ktor/utils/io/core/Output;ILkotlin/jvm/functions/Function2;)Z
    .locals 4
    .param p0, "$this$writePrimitiveTemplate"    # Lio/ktor/utils/io/core/Output;
    .param p1, "componentSize"    # I
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/core/Output;",
            "I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/utils/io/bits/Memory;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    .local v0, "$i$f$writePrimitiveTemplate":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v1

    .line 81
    .local v1, "index":I
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v2

    sub-int/2addr v2, v1

    if-le v2, p1, :cond_0

    .line 82
    add-int v2, v1, p1

    invoke-virtual {p0, v2}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 83
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Lio/ktor/utils/io/bits/Memory;->box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/4 v2, 0x1

    return v2

    .line 87
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static final writeShort(Lio/ktor/utils/io/core/Output;S)V
    .locals 9
    .param p0, "$this$writeShort"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # S

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    const/4 v0, 0x2

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 101
    .local v2, "$i$f$writePrimitiveTemplate":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailPosition$ktor_io()I

    move-result v3

    .line 102
    .local v3, "index$iv":I
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailEndExclusive$ktor_io()I

    move-result v4

    sub-int/2addr v4, v3

    if-le v4, v0, :cond_0

    .line 103
    add-int v4, v3, v0

    invoke-virtual {v1, v4}, Lio/ktor/utils/io/core/Output;->setTailPosition$ktor_io(I)V

    .line 104
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->getTailMemory-SK3TCg8$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "memory":Ljava/nio/ByteBuffer;
    move v5, v3

    .local v5, "index":I
    const/4 v6, 0x0

    .line 7
    .local v6, "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeShort$1":I
    move-object v7, v4

    .local v7, "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    const/4 v8, 0x0

    .line 105
    .local v8, "$i$f$storeShortAt-62zg_DM":I
    invoke-virtual {v7, v5, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 106
    nop

    .line 7
    .end local v7    # "$this$storeShortAt_u2d62zg_DM$iv":Ljava/nio/ByteBuffer;
    .end local v8    # "$i$f$storeShortAt-62zg_DM":I
    nop

    .line 104
    .end local v4    # "memory":Ljava/nio/ByteBuffer;
    .end local v5    # "index":I
    .end local v6    # "$i$a$-writePrimitiveTemplate-OutputPrimitivesKt$writeShort$1":I
    nop

    .line 107
    const/4 v4, 0x1

    goto :goto_0

    .line 110
    :cond_0
    const/4 v4, 0x0

    .line 7
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveTemplate":I
    .end local v3    # "index$iv":I
    :goto_0
    if-nez v4, :cond_1

    .line 8
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/OutputPrimitivesKt;->writeShortFallback(Lio/ktor/utils/io/core/Output;S)V

    .line 10
    :cond_1
    return-void
.end method

.method private static final writeShortFallback(Lio/ktor/utils/io/core/Output;S)V
    .locals 6
    .param p0, "$this$writeShortFallback"    # Lio/ktor/utils/io/core/Output;
    .param p1, "value"    # S

    .line 14
    const/4 v0, 0x2

    .local v0, "componentSize$iv":I
    move-object v1, p0

    .local v1, "$this$writePrimitiveFallbackTemplate$iv":Lio/ktor/utils/io/core/Output;
    const/4 v2, 0x0

    .line 111
    .local v2, "$i$f$writePrimitiveFallbackTemplate":I
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v3

    .line 112
    .local v3, "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    move-object v4, v3

    check-cast v4, Lio/ktor/utils/io/core/Buffer;

    .local v4, "it":Lio/ktor/utils/io/core/Buffer;
    const/4 v5, 0x0

    .line 14
    .local v5, "$i$a$-writePrimitiveFallbackTemplate-OutputPrimitivesKt$writeShortFallback$1":I
    invoke-static {v4, p1}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->writeShort(Lio/ktor/utils/io/core/Buffer;S)V

    .line 112
    .end local v4    # "it":Lio/ktor/utils/io/core/Buffer;
    .end local v5    # "$i$a$-writePrimitiveFallbackTemplate-OutputPrimitivesKt$writeShortFallback$1":I
    nop

    .line 113
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 114
    nop

    .line 14
    .end local v0    # "componentSize$iv":I
    .end local v1    # "$this$writePrimitiveFallbackTemplate$iv":Lio/ktor/utils/io/core/Output;
    .end local v2    # "$i$f$writePrimitiveFallbackTemplate":I
    .end local v3    # "tail$iv":Lio/ktor/utils/io/core/internal/ChunkBuffer;
    nop

    .line 18
    return-void
.end method
