.class public final Lio/ktor/utils/io/bits/ByteOrderKt;
.super Ljava/lang/Object;
.source "ByteOrder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteOrder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,54:1\n9#2:55\n15#2:56\n21#2:57\n*S KotlinDebug\n*F\n+ 1 ByteOrder.kt\nio/ktor/utils/io/bits/ByteOrderKt\n*L\n31#1:55\n36#1:56\n41#1:57\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\n\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0017\u0010\u0013\u001a\u00020\u0014*\u00020\u0014\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a\u0017\u0010\u0013\u001a\u00020\u0017*\u00020\u0017\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\u0017\u0010\u0013\u001a\u00020\u001a*\u00020\u001a\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\"\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\"\u0016\u0010\u0005\u001a\u00020\u0006*\u00020\u00078\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\"\u0016\u0010\n\u001a\u00020\u0002*\u00020\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\"\u0016\u0010\r\u001a\u00020\u0001*\u00020\u00028\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0004\"\u0016\u0010\u000f\u001a\u00020\u0006*\u00020\u00078\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\t\"\u0016\u0010\u0011\u001a\u00020\u0002*\u00020\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u000c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "highByte",
        "",
        "",
        "getHighByte",
        "(S)B",
        "highInt",
        "",
        "",
        "getHighInt",
        "(J)I",
        "highShort",
        "getHighShort",
        "(I)S",
        "lowByte",
        "getLowByte",
        "lowInt",
        "getLowInt",
        "lowShort",
        "getLowShort",
        "reverseByteOrder",
        "Lkotlin/UInt;",
        "reverseByteOrder-WZ4Q5Ns",
        "(I)I",
        "Lkotlin/ULong;",
        "reverseByteOrder-VKZWuLQ",
        "(J)J",
        "Lkotlin/UShort;",
        "reverseByteOrder-xj2QHRw",
        "(S)S",
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
.method public static final getHighByte(S)B
    .locals 2
    .param p0, "$this$highByte"    # S

    const/4 v0, 0x0

    .line 43
    .local v0, "$i$f$getHighByte":I
    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    return v1
.end method

.method public static final getHighInt(J)I
    .locals 3
    .param p0, "$this$highInt"    # J

    const/4 v0, 0x0

    .line 51
    .local v0, "$i$f$getHighInt":I
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    long-to-int v1, v1

    return v1
.end method

.method public static final getHighShort(I)S
    .locals 2
    .param p0, "$this$highShort"    # I

    const/4 v0, 0x0

    .line 47
    .local v0, "$i$f$getHighShort":I
    ushr-int/lit8 v1, p0, 0x10

    int-to-short v1, v1

    return v1
.end method

.method public static final getLowByte(S)B
    .locals 2
    .param p0, "$this$lowByte"    # S

    const/4 v0, 0x0

    .line 45
    .local v0, "$i$f$getLowByte":I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method public static final getLowInt(J)I
    .locals 3
    .param p0, "$this$lowInt"    # J

    const/4 v0, 0x0

    .line 53
    .local v0, "$i$f$getLowInt":I
    const-wide v1, 0xffffffffL

    and-long/2addr v1, p0

    long-to-int v1, v1

    return v1
.end method

.method public static final getLowShort(I)S
    .locals 2
    .param p0, "$this$lowShort"    # I

    const/4 v0, 0x0

    .line 49
    .local v0, "$i$f$getLowShort":I
    const v1, 0xffff

    and-int/2addr v1, p0

    int-to-short v1, v1

    return v1
.end method

.method public static final reverseByteOrder-VKZWuLQ(J)J
    .locals 3
    .param p0, "$this$reverseByteOrder_u2dVKZWuLQ"    # J

    .line 41
    move-wide v0, p0

    .local v0, "$this$reverseByteOrder$iv":J
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$f$reverseByteOrder":I
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 41
    .end local v0    # "$this$reverseByteOrder$iv":J
    .end local v2    # "$i$f$reverseByteOrder":I
    invoke-static {v0, v1}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final reverseByteOrder-WZ4Q5Ns(I)I
    .locals 2
    .param p0, "$this$reverseByteOrder_u2dWZ4Q5Ns"    # I

    .line 36
    move v0, p0

    .local v0, "$this$reverseByteOrder$iv":I
    const/4 v1, 0x0

    .line 56
    .local v1, "$i$f$reverseByteOrder":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 36
    .end local v0    # "$this$reverseByteOrder$iv":I
    .end local v1    # "$i$f$reverseByteOrder":I
    invoke-static {v0}, Lkotlin/UInt;->constructor-impl(I)I

    move-result v0

    return v0
.end method

.method public static final reverseByteOrder-xj2QHRw(S)S
    .locals 2
    .param p0, "$this$reverseByteOrder_u2dxj2QHRw"    # S

    .line 31
    move v0, p0

    .local v0, "$this$reverseByteOrder$iv":S
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$f$reverseByteOrder":I
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    .line 31
    .end local v0    # "$this$reverseByteOrder$iv":S
    .end local v1    # "$i$f$reverseByteOrder":I
    invoke-static {v0}, Lkotlin/UShort;->constructor-impl(S)S

    move-result v0

    return v0
.end method
