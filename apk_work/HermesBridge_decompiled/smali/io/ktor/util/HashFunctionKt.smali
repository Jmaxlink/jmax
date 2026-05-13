.class public final Lio/ktor/util/HashFunctionKt;
.super Ljava/lang/Object;
.source "HashFunction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u001a(\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u0000\u001a\u0015\u0010\u0007\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0005H\u0082\u0004\u00a8\u0006\t"
    }
    d2 = {
        "digest",
        "",
        "Lio/ktor/util/HashFunction;",
        "input",
        "offset",
        "",
        "length",
        "leftRotate",
        "bitCount",
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


# direct methods
.method public static final synthetic access$leftRotate(II)I
    .locals 1
    .param p0, "$receiver"    # I
    .param p1, "bitCount"    # I

    .line 1
    invoke-static {p0, p1}, Lio/ktor/util/HashFunctionKt;->leftRotate(II)I

    move-result v0

    return v0
.end method

.method public static final digest(Lio/ktor/util/HashFunction;[BII)[B
    .locals 1
    .param p0, "$this$digest"    # Lio/ktor/util/HashFunction;
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0, p1, p2, p3}, Lio/ktor/util/HashFunction;->update([BII)V

    .line 14
    invoke-interface {p0}, Lio/ktor/util/HashFunction;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public static synthetic digest$default(Lio/ktor/util/HashFunction;[BIIILjava/lang/Object;)[B
    .locals 0

    .line 12
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    array-length p3, p1

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/util/HashFunctionKt;->digest(Lio/ktor/util/HashFunction;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static final leftRotate(II)I
    .locals 2
    .param p0, "$this$leftRotate"    # I
    .param p1, "bitCount"    # I

    .line 18
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method
