.class public final Lio/ktor/server/engine/LongKt;
.super Ljava/lang/Object;
.source "Long.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0002*\u00020\u0005H\u0000\"\u0016\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "longStrings",
        "",
        "",
        "[Ljava/lang/String;",
        "toStringFast",
        "",
        "ktor-server-host-common"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final longStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    const/16 v0, 0x400

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 8
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 7
    goto :goto_0

    :cond_0
    sput-object v1, Lio/ktor/server/engine/LongKt;->longStrings:[Ljava/lang/String;

    return-void
.end method

.method public static final toStringFast(J)Ljava/lang/String;
    .locals 4
    .param p0, "$this$toStringFast"    # J

    .line 11
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const-wide/16 v2, 0x400

    cmp-long v0, p0, v2

    if-gez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lio/ktor/server/engine/LongKt;->longStrings:[Ljava/lang/String;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
