.class public final Lio/ktor/utils/io/bits/PrimiteArraysKt;
.super Ljava/lang/Object;
.source "PrimiteArrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrimiteArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,539:1\n282#1:548\n283#1,3:553\n282#1,4:556\n297#1:560\n298#1,3:565\n297#1,4:568\n17#2,4:540\n17#2,4:544\n17#2,4:549\n17#2,4:561\n*S KotlinDebug\n*F\n+ 1 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n*L\n313#1:548\n313#1:553,3\n313#1:556,4\n327#1:560\n327#1:565,3\n327#1:568,4\n282#1:540,4\n297#1:544,4\n313#1:549,4\n327#1:561,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u001a>\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u001a>\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a>\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\n\u001a>\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u000c\u001a>\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a>\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0014\u001a>\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a>\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0019\u001a>\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a>\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001e\u001a>\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00062\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010\n\u001a>\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00062\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010\u000c\u001a>\u0010#\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000e2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\n\u001a>\u0010#\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000e2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\u000c\u001a>\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0013\u001a>\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0014\u001a>\u0010\'\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00162\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0018\u001a>\u0010\'\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00162\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0019\u001a>\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001b2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010\u001d\u001a>\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001b2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010\u001e\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006+"
    }
    d2 = {
        "loadByteArray",
        "",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "",
        "destination",
        "",
        "destinationOffset",
        "count",
        "loadByteArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[BII)V",
        "",
        "(Ljava/nio/ByteBuffer;J[BII)V",
        "loadUByteArray",
        "Lkotlin/UByteArray;",
        "loadUByteArray-KqtU1YU",
        "loadUIntArray",
        "Lkotlin/UIntArray;",
        "loadUIntArray-EM3dPTA",
        "(Ljava/nio/ByteBuffer;I[III)V",
        "(Ljava/nio/ByteBuffer;J[III)V",
        "loadULongArray",
        "Lkotlin/ULongArray;",
        "loadULongArray-bNlDJKc",
        "(Ljava/nio/ByteBuffer;I[JII)V",
        "(Ljava/nio/ByteBuffer;J[JII)V",
        "loadUShortArray",
        "Lkotlin/UShortArray;",
        "loadUShortArray-m8CCUi4",
        "(Ljava/nio/ByteBuffer;I[SII)V",
        "(Ljava/nio/ByteBuffer;J[SII)V",
        "storeByteArray",
        "source",
        "sourceOffset",
        "storeByteArray-9zorpBc",
        "storeUByteArray",
        "storeUByteArray-KqtU1YU",
        "storeUIntArray",
        "storeUIntArray-EM3dPTA",
        "storeULongArray",
        "storeULongArray-bNlDJKc",
        "storeUShortArray",
        "storeUShortArray-m8CCUi4",
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
.method public static final loadByteArray-9zorpBc(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1
    .param p0, "$this$loadByteArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    .local v0, "$i$f$loadByteArray-9zorpBc":I
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 16
    return-void
.end method

.method public static final loadByteArray-9zorpBc(Ljava/nio/ByteBuffer;J[BII)V
    .locals 7
    .param p0, "$this$loadByteArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [B
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$loadByteArray-9zorpBc":I
    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p5

    move v6, p4

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    .line 30
    return-void
.end method

.method public static synthetic loadByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$loadByteArray_u2d9zorpBc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    .line 9
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 12
    const/4 p3, 0x0

    .line 9
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 13
    array-length p5, p2

    sub-int p4, p5, p3

    .line 9
    :cond_1
    const-string p5, "$this$loadByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 15
    .local p5, "$i$f$loadByteArray-9zorpBc":I
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 16
    return-void
.end method

.method public static synthetic loadByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$loadByteArray_u2d9zorpBc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [B
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    .line 23
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 26
    const/4 p4, 0x0

    .line 23
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 27
    array-length p6, p3

    sub-int p5, p6, p4

    .line 23
    :cond_1
    const-string p6, "$this$loadByteArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "destination"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 29
    .local p6, "$i$f$loadByteArray-9zorpBc":I
    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    move v4, p5

    move v5, p4

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    .line 30
    return-void
.end method

.method public static final loadUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1
    .param p0, "$this$loadUByteArray_u2dKqtU1YU"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    .local v0, "$i$f$loadUByteArray-KqtU1YU":I
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 45
    return-void
.end method

.method public static final loadUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;J[BII)V
    .locals 7
    .param p0, "$this$loadUByteArray_u2dKqtU1YU"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [B
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 59
    .local v0, "$i$f$loadUByteArray-KqtU1YU":I
    move-object v1, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p5

    move v6, p4

    invoke-static/range {v1 .. v6}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    .line 60
    return-void
.end method

.method public static synthetic loadUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$loadUByteArray_u2dKqtU1YU_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [B
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    .line 38
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 41
    const/4 p3, 0x0

    .line 38
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 42
    invoke-static {p2}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p5

    sub-int p4, p5, p3

    .line 38
    :cond_1
    const-string p5, "$this$loadUByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 44
    .local p5, "$i$f$loadUByteArray-KqtU1YU":I
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    .line 45
    return-void
.end method

.method public static synthetic loadUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$loadUByteArray_u2dKqtU1YU_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [B
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    .line 53
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 56
    const/4 p4, 0x0

    .line 53
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 57
    invoke-static {p3}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p6

    sub-int p5, p6, p4

    .line 53
    :cond_1
    const-string p6, "$this$loadUByteArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "destination"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 59
    .local p6, "$i$f$loadUByteArray-KqtU1YU":I
    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    move v4, p5

    move v5, p4

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    .line 60
    return-void
.end method

.method public static final loadUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;I[III)V
    .locals 1
    .param p0, "$this$loadUIntArray_u2dEM3dPTA"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [I
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    .local v0, "$i$f$loadUIntArray-EM3dPTA":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 153
    return-void
.end method

.method public static final loadUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;J[III)V
    .locals 1
    .param p0, "$this$loadUIntArray_u2dEM3dPTA"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [I
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 167
    .local v0, "$i$f$loadUIntArray-EM3dPTA":I
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    .line 168
    return-void
.end method

.method public static synthetic loadUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;I[IIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$loadUIntArray_u2dEM3dPTA_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [I
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    .line 146
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 149
    const/4 p3, 0x0

    .line 146
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 150
    invoke-static {p2}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p5

    sub-int p4, p5, p3

    .line 146
    :cond_1
    const-string p5, "$this$loadUIntArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 152
    .local p5, "$i$f$loadUIntArray-EM3dPTA":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 153
    return-void
.end method

.method public static synthetic loadUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;J[IIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$loadUIntArray_u2dEM3dPTA_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [I
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    .line 161
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 164
    const/4 p4, 0x0

    .line 161
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 165
    invoke-static {p3}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p6

    sub-int p5, p6, p4

    .line 161
    :cond_1
    const-string p6, "$this$loadUIntArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "destination"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 167
    .local p6, "$i$f$loadUIntArray-EM3dPTA":I
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    .line 168
    return-void
.end method

.method public static final loadULongArray-bNlDJKc(Ljava/nio/ByteBuffer;I[JII)V
    .locals 1
    .param p0, "$this$loadULongArray_u2dbNlDJKc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [J
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 206
    .local v0, "$i$f$loadULongArray-bNlDJKc":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 207
    return-void
.end method

.method public static final loadULongArray-bNlDJKc(Ljava/nio/ByteBuffer;J[JII)V
    .locals 1
    .param p0, "$this$loadULongArray_u2dbNlDJKc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [J
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    .local v0, "$i$f$loadULongArray-bNlDJKc":I
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    .line 222
    return-void
.end method

.method public static synthetic loadULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;I[JIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$loadULongArray_u2dbNlDJKc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [J
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    .line 200
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 203
    const/4 p3, 0x0

    .line 200
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 204
    invoke-static {p2}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p5

    sub-int p4, p5, p3

    .line 200
    :cond_1
    const-string p5, "$this$loadULongArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 206
    .local p5, "$i$f$loadULongArray-bNlDJKc":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 207
    return-void
.end method

.method public static synthetic loadULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;J[JIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$loadULongArray_u2dbNlDJKc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [J
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    .line 215
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 218
    const/4 p4, 0x0

    .line 215
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 219
    invoke-static {p3}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p6

    sub-int p5, p6, p4

    .line 215
    :cond_1
    const-string p6, "$this$loadULongArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "destination"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 221
    .local p6, "$i$f$loadULongArray-bNlDJKc":I
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    .line 222
    return-void
.end method

.method public static final loadUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;I[SII)V
    .locals 1
    .param p0, "$this$loadUShortArray_u2dm8CCUi4"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [S
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$loadUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 98
    .local v0, "$i$f$loadUShortArray-m8CCUi4":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 99
    return-void
.end method

.method public static final loadUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;J[SII)V
    .locals 1
    .param p0, "$this$loadUShortArray_u2dm8CCUi4"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [S
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$loadUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 113
    .local v0, "$i$f$loadUShortArray-m8CCUi4":I
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    .line 114
    return-void
.end method

.method public static synthetic loadUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;I[SIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$loadUShortArray_u2dm8CCUi4_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "destination"    # [S
    .param p3, "destinationOffset"    # I
    .param p4, "count"    # I

    .line 92
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 95
    const/4 p3, 0x0

    .line 92
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 96
    invoke-static {p2}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p5

    sub-int p4, p5, p3

    .line 92
    :cond_1
    const-string p5, "$this$loadUShortArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 98
    .local p5, "$i$f$loadUShortArray-m8CCUi4":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 99
    return-void
.end method

.method public static synthetic loadUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;J[SIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$loadUShortArray_u2dm8CCUi4_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "destination"    # [S
    .param p4, "destinationOffset"    # I
    .param p5, "count"    # I

    .line 107
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 110
    const/4 p4, 0x0

    .line 107
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 111
    invoke-static {p3}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p6

    sub-int p5, p6, p4

    .line 107
    :cond_1
    const-string p6, "$this$loadUShortArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "destination"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 113
    .local p6, "$i$f$loadUShortArray-m8CCUi4":I
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    .line 114
    return-void
.end method

.method public static final storeByteArray-9zorpBc(Ljava/nio/ByteBuffer;I[BII)V
    .locals 6
    .param p0, "$this$storeByteArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [B
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 282
    .local v0, "$i$f$storeByteArray-9zorpBc":I
    move-object v1, p2

    .local v1, "$this$useMemory$iv":[B
    const/4 v2, 0x0

    .line 540
    .local v2, "$i$f$useMemory":I
    nop

    .line 543
    invoke-static {v1, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .local v3, "sourceMemory":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .line 283
    .local v4, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1":I
    const/4 v5, 0x0

    invoke-static {v3, p0, v5, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 284
    nop

    .line 543
    .end local v3    # "sourceMemory":Ljava/nio/ByteBuffer;
    .end local v4    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1":I
    nop

    .line 285
    .end local v1    # "$this$useMemory$iv":[B
    .end local v2    # "$i$f$useMemory":I
    return-void
.end method

.method public static final storeByteArray-9zorpBc(Ljava/nio/ByteBuffer;J[BII)V
    .locals 17
    .param p0, "$this$storeByteArray_u2d9zorpBc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [B
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    move/from16 v0, p5

    const-string v1, "$this$storeByteArray"

    move-object/from16 v10, p0

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 297
    .local v1, "$i$f$storeByteArray-9zorpBc":I
    move-object/from16 v12, p3

    .local v12, "$this$useMemory$iv":[B
    const/4 v13, 0x0

    .line 544
    .local v13, "$i$f$useMemory":I
    nop

    .line 547
    move/from16 v14, p4

    invoke-static {v12, v14, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v3, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .local v15, "sourceMemory":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 298
    .local v16, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2":I
    const-wide/16 v4, 0x0

    int-to-long v6, v0

    move-object v2, v15

    move-object/from16 v3, p0

    move-wide/from16 v8, p1

    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 299
    nop

    .line 547
    .end local v15    # "sourceMemory":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2":I
    nop

    .line 300
    .end local v12    # "$this$useMemory$iv":[B
    .end local v13    # "$i$f$useMemory":I
    return-void
.end method

.method public static synthetic storeByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 4
    .param p0, "$this$storeByteArray_u2d9zorpBc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [B
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 276
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 279
    const/4 p3, 0x0

    .line 276
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 280
    array-length p5, p2

    sub-int p4, p5, p3

    .line 276
    :cond_1
    const-string p5, "$this$storeByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 282
    .local p5, "$i$f$storeByteArray-9zorpBc":I
    move-object p6, p2

    .local p6, "$this$useMemory$iv":[B
    const/4 v0, 0x0

    .line 540
    .local v0, "$i$f$useMemory":I
    nop

    .line 543
    invoke-static {p6, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "sourceMemory":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 283
    .local v2, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1":I
    const/4 v3, 0x0

    invoke-static {v1, p0, v3, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 284
    nop

    .line 543
    .end local v1    # "sourceMemory":Ljava/nio/ByteBuffer;
    .end local v2    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1":I
    nop

    .line 285
    .end local v0    # "$i$f$useMemory":I
    .end local p6    # "$this$useMemory$iv":[B
    return-void
.end method

.method public static synthetic storeByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 17
    .param p0, "$this$storeByteArray_u2d9zorpBc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [B
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    .line 291
    move-object/from16 v0, p3

    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_0

    .line 294
    const/4 v1, 0x0

    .end local p4    # "sourceOffset":I
    .local v1, "sourceOffset":I
    goto :goto_0

    .line 291
    .end local v1    # "sourceOffset":I
    .restart local p4    # "sourceOffset":I
    :cond_0
    move/from16 v1, p4

    .end local p4    # "sourceOffset":I
    .restart local v1    # "sourceOffset":I
    :goto_0
    and-int/lit8 v2, p6, 0x8

    if-eqz v2, :cond_1

    .line 295
    array-length v2, v0

    sub-int/2addr v2, v1

    .end local p5    # "count":I
    .local v2, "count":I
    goto :goto_1

    .line 291
    .end local v2    # "count":I
    .restart local p5    # "count":I
    :cond_1
    move/from16 v2, p5

    .end local p5    # "count":I
    .restart local v2    # "count":I
    :goto_1
    const-string v3, "$this$storeByteArray"

    move-object/from16 v12, p0

    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "source"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 297
    .local v3, "$i$f$storeByteArray-9zorpBc":I
    move-object/from16 v13, p3

    .local v13, "$this$useMemory$iv":[B
    const/4 v14, 0x0

    .line 544
    .local v14, "$i$f$useMemory":I
    nop

    .line 547
    invoke-static {v13, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v5, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v15

    .local v15, "sourceMemory":Ljava/nio/ByteBuffer;
    const/16 v16, 0x0

    .line 298
    .local v16, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2":I
    const-wide/16 v6, 0x0

    int-to-long v8, v2

    move-object v4, v15

    move-object/from16 v5, p0

    move-wide/from16 v10, p1

    invoke-static/range {v4 .. v11}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 299
    nop

    .line 547
    .end local v15    # "sourceMemory":Ljava/nio/ByteBuffer;
    .end local v16    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2":I
    nop

    .line 300
    .end local v13    # "$this$useMemory$iv":[B
    .end local v14    # "$i$f$useMemory":I
    return-void
.end method

.method public static final storeUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;I[BII)V
    .locals 9
    .param p0, "$this$storeUByteArray_u2dKqtU1YU"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [B
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 313
    .local v0, "$i$f$storeUByteArray-KqtU1YU":I
    move-object v1, p0

    .local v1, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    move-object v2, p2

    .local v2, "source$iv":[B
    const/4 v3, 0x0

    .line 548
    .local v3, "$i$f$storeByteArray-9zorpBc":I
    move-object v4, v2

    .local v4, "$this$useMemory$iv$iv":[B
    const/4 v5, 0x0

    .line 549
    .local v5, "$i$f$useMemory":I
    nop

    .line 552
    invoke-static {v4, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    const-string v7, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 553
    .local v7, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    const/4 v8, 0x0

    invoke-static {v6, v1, v8, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 554
    nop

    .line 552
    .end local v6    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v7    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    nop

    .line 555
    .end local v4    # "$this$useMemory$iv$iv":[B
    .end local v5    # "$i$f$useMemory":I
    nop

    .line 314
    .end local v1    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v2    # "source$iv":[B
    .end local v3    # "$i$f$storeByteArray-9zorpBc":I
    return-void
.end method

.method public static final storeUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;J[BII)V
    .locals 18
    .param p0, "$this$storeUByteArray_u2dKqtU1YU"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [B
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    move/from16 v0, p5

    const-string v1, "$this$storeUByteArray"

    move-object/from16 v10, p0

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 327
    .local v1, "$i$f$storeUByteArray-KqtU1YU":I
    move-object/from16 v12, p3

    .local v12, "source$iv":[B
    move-object/from16 v3, p0

    .local v3, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/4 v13, 0x0

    .line 560
    .local v13, "$i$f$storeByteArray-9zorpBc":I
    move-object v14, v12

    .local v14, "$this$useMemory$iv$iv":[B
    const/4 v15, 0x0

    .line 561
    .local v15, "$i$f$useMemory":I
    nop

    .line 564
    move/from16 v8, p4

    invoke-static {v14, v8, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-string v4, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    .local v16, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/16 v17, 0x0

    .line 565
    .local v17, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2$iv":I
    const-wide/16 v4, 0x0

    int-to-long v6, v0

    move-object/from16 v2, v16

    move-wide/from16 v8, p1

    invoke-static/range {v2 .. v9}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 566
    nop

    .line 564
    .end local v16    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v17    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2$iv":I
    nop

    .line 567
    .end local v14    # "$this$useMemory$iv$iv":[B
    .end local v15    # "$i$f$useMemory":I
    nop

    .line 328
    .end local v3    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v12    # "source$iv":[B
    .end local v13    # "$i$f$storeByteArray-9zorpBc":I
    return-void
.end method

.method public static synthetic storeUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 7
    .param p0, "$this$storeUByteArray_u2dKqtU1YU_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [B
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 307
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 310
    const/4 p3, 0x0

    .line 307
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 311
    invoke-static {p2}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p5

    sub-int p4, p5, p3

    .line 307
    :cond_1
    const-string p5, "$this$storeUByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 313
    .local p5, "$i$f$storeUByteArray-KqtU1YU":I
    move-object p6, p0

    .local p6, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    move-object v0, p2

    .local v0, "source$iv":[B
    const/4 v1, 0x0

    .line 556
    .local v1, "$i$f$storeByteArray-9zorpBc":I
    move-object v2, v0

    .local v2, "$this$useMemory$iv$iv":[B
    const/4 v3, 0x0

    .line 549
    .local v3, "$i$f$useMemory":I
    nop

    .line 552
    invoke-static {v2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v5, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .local v4, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .line 557
    .local v5, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    const/4 v6, 0x0

    invoke-static {v4, p6, v6, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 558
    nop

    .line 552
    .end local v4    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v5    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$1$iv":I
    nop

    .line 559
    .end local v2    # "$this$useMemory$iv$iv":[B
    .end local v3    # "$i$f$useMemory":I
    nop

    .line 314
    .end local v0    # "source$iv":[B
    .end local v1    # "$i$f$storeByteArray-9zorpBc":I
    .end local p6    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    return-void
.end method

.method public static synthetic storeUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 19
    .param p0, "$this$storeUByteArray_u2dKqtU1YU_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [B
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    .line 321
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .end local p4    # "sourceOffset":I
    .local v0, "sourceOffset":I
    goto :goto_0

    .line 321
    .end local v0    # "sourceOffset":I
    .restart local p4    # "sourceOffset":I
    :cond_0
    move/from16 v0, p4

    .end local p4    # "sourceOffset":I
    .restart local v0    # "sourceOffset":I
    :goto_0
    and-int/lit8 v1, p6, 0x8

    if-eqz v1, :cond_1

    .line 325
    invoke-static/range {p3 .. p3}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result v1

    sub-int/2addr v1, v0

    .end local p5    # "count":I
    .local v1, "count":I
    goto :goto_1

    .line 321
    .end local v1    # "count":I
    .restart local p5    # "count":I
    :cond_1
    move/from16 v1, p5

    .end local p5    # "count":I
    .restart local v1    # "count":I
    :goto_1
    const-string v2, "$this$storeUByteArray"

    move-object/from16 v11, p0

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 327
    .local v2, "$i$f$storeUByteArray-KqtU1YU":I
    move-object/from16 v13, p3

    .local v13, "source$iv":[B
    move-object/from16 v4, p0

    .local v4, "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    .line 568
    .local v14, "$i$f$storeByteArray-9zorpBc":I
    move-object v15, v13

    .local v15, "$this$useMemory$iv$iv":[B
    const/16 v16, 0x0

    .line 561
    .local v16, "$i$f$useMemory":I
    nop

    .line 564
    invoke-static {v15, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v5, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v17

    .local v17, "sourceMemory$iv":Ljava/nio/ByteBuffer;
    const/16 v18, 0x0

    .line 569
    .local v18, "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2$iv":I
    const-wide/16 v5, 0x0

    int-to-long v7, v1

    move-object/from16 v3, v17

    move-wide/from16 v9, p1

    invoke-static/range {v3 .. v10}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    .line 570
    nop

    .line 564
    .end local v17    # "sourceMemory$iv":Ljava/nio/ByteBuffer;
    .end local v18    # "$i$a$-useMemory-PrimiteArraysKt$storeByteArray$2$iv":I
    nop

    .line 571
    .end local v15    # "$this$useMemory$iv$iv":[B
    .end local v16    # "$i$f$useMemory":I
    nop

    .line 328
    .end local v4    # "$this$storeByteArray_u2d9zorpBc$iv":Ljava/nio/ByteBuffer;
    .end local v13    # "source$iv":[B
    .end local v14    # "$i$f$storeByteArray-9zorpBc":I
    return-void
.end method

.method public static final storeUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;I[III)V
    .locals 1
    .param p0, "$this$storeUIntArray_u2dEM3dPTA"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [I
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 420
    .local v0, "$i$f$storeUIntArray-EM3dPTA":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 421
    return-void
.end method

.method public static final storeUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;J[III)V
    .locals 1
    .param p0, "$this$storeUIntArray_u2dEM3dPTA"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [I
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 435
    .local v0, "$i$f$storeUIntArray-EM3dPTA":I
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    .line 436
    return-void
.end method

.method public static synthetic storeUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;I[IIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$storeUIntArray_u2dEM3dPTA_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [I
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 414
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 417
    const/4 p3, 0x0

    .line 414
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 418
    invoke-static {p2}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p5

    sub-int p4, p5, p3

    .line 414
    :cond_1
    const-string p5, "$this$storeUIntArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 420
    .local p5, "$i$f$storeUIntArray-EM3dPTA":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    .line 421
    return-void
.end method

.method public static synthetic storeUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;J[IIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$storeUIntArray_u2dEM3dPTA_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [I
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    .line 429
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 432
    const/4 p4, 0x0

    .line 429
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 433
    invoke-static {p3}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p6

    sub-int p5, p6, p4

    .line 429
    :cond_1
    const-string p6, "$this$storeUIntArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "source"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 435
    .local p6, "$i$f$storeUIntArray-EM3dPTA":I
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    .line 436
    return-void
.end method

.method public static final storeULongArray-bNlDJKc(Ljava/nio/ByteBuffer;I[JII)V
    .locals 1
    .param p0, "$this$storeULongArray_u2dbNlDJKc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [J
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 474
    .local v0, "$i$f$storeULongArray-bNlDJKc":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 475
    return-void
.end method

.method public static final storeULongArray-bNlDJKc(Ljava/nio/ByteBuffer;J[JII)V
    .locals 1
    .param p0, "$this$storeULongArray_u2dbNlDJKc"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [J
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 489
    .local v0, "$i$f$storeULongArray-bNlDJKc":I
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    .line 490
    return-void
.end method

.method public static synthetic storeULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;I[JIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$storeULongArray_u2dbNlDJKc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [J
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 468
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 471
    const/4 p3, 0x0

    .line 468
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 472
    invoke-static {p2}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p5

    sub-int p4, p5, p3

    .line 468
    :cond_1
    const-string p5, "$this$storeULongArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 474
    .local p5, "$i$f$storeULongArray-bNlDJKc":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    .line 475
    return-void
.end method

.method public static synthetic storeULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;J[JIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$storeULongArray_u2dbNlDJKc_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [J
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    .line 483
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 486
    const/4 p4, 0x0

    .line 483
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 487
    invoke-static {p3}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p6

    sub-int p5, p6, p4

    .line 483
    :cond_1
    const-string p6, "$this$storeULongArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "source"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 489
    .local p6, "$i$f$storeULongArray-bNlDJKc":I
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    .line 490
    return-void
.end method

.method public static final storeUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;I[SII)V
    .locals 1
    .param p0, "$this$storeUShortArray_u2dm8CCUi4"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [S
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    const-string v0, "$this$storeUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 366
    .local v0, "$i$f$storeUShortArray-m8CCUi4":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 367
    return-void
.end method

.method public static final storeUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;J[SII)V
    .locals 1
    .param p0, "$this$storeUShortArray_u2dm8CCUi4"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [S
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    const-string v0, "$this$storeUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 381
    .local v0, "$i$f$storeUShortArray-m8CCUi4":I
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    .line 382
    return-void
.end method

.method public static synthetic storeUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;I[SIIILjava/lang/Object;)V
    .locals 0
    .param p0, "$this$storeUShortArray_u2dm8CCUi4_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "source"    # [S
    .param p3, "sourceOffset"    # I
    .param p4, "count"    # I

    .line 360
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 363
    const/4 p3, 0x0

    .line 360
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 364
    invoke-static {p2}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p5

    sub-int p4, p5, p3

    .line 360
    :cond_1
    const-string p5, "$this$storeUShortArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 366
    .local p5, "$i$f$storeUShortArray-m8CCUi4":I
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    .line 367
    return-void
.end method

.method public static synthetic storeUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;J[SIIILjava/lang/Object;)V
    .locals 6
    .param p0, "$this$storeUShortArray_u2dm8CCUi4_u24default"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # J
    .param p3, "source"    # [S
    .param p4, "sourceOffset"    # I
    .param p5, "count"    # I

    .line 375
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 378
    const/4 p4, 0x0

    .line 375
    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 379
    invoke-static {p3}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p6

    sub-int p5, p6, p4

    .line 375
    :cond_1
    const-string p6, "$this$storeUShortArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "source"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p6, 0x0

    .line 381
    .local p6, "$i$f$storeUShortArray-m8CCUi4":I
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    .line 382
    return-void
.end method
