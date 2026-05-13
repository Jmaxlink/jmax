.class final synthetic Lio/ktor/websocket/UtilsKt__UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0005\n\u0002\u0008\u0002\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0001H\u0080\u0008\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0080\u000c\u00a8\u0006\u0007"
    }
    d2 = {
        "flagAt",
        "",
        "",
        "at",
        "xor",
        "",
        "other",
        "ktor-websockets"
    }
    k = 0x5
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
    xs = "io/ktor/websocket/UtilsKt"
.end annotation


# direct methods
.method public static final flagAt(ZI)I
    .locals 2
    .param p0, "$this$flagAt"    # Z
    .param p1, "at"    # I

    const/4 v0, 0x0

    .line 14
    .local v0, "$i$f$flagAt":I
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final xor(BB)B
    .locals 2
    .param p0, "$this$xor"    # B
    .param p1, "other"    # B

    const/4 v0, 0x0

    .line 11
    .local v0, "$i$f$xor":I
    xor-int v1, p0, p1

    int-to-byte v1, v1

    return v1
.end method
