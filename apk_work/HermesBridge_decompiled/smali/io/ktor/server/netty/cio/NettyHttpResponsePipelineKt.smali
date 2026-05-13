.class public final Lio/ktor/server/netty/cio/NettyHttpResponsePipelineKt;
.super Ljava/lang/Object;
.source "NettyHttpResponsePipeline.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0002\u001a\u00020\u0003*\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "UNFLUSHED_LIMIT",
        "",
        "isUpgradeResponse",
        "",
        "Lio/ktor/server/netty/NettyApplicationResponse;",
        "ktor-server-netty"
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
.field private static final UNFLUSHED_LIMIT:I = 0x10000


# direct methods
.method public static final synthetic access$isUpgradeResponse(Lio/ktor/server/netty/NettyApplicationResponse;)Z
    .locals 1
    .param p0, "$receiver"    # Lio/ktor/server/netty/NettyApplicationResponse;

    .line 1
    invoke-static {p0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipelineKt;->isUpgradeResponse(Lio/ktor/server/netty/NettyApplicationResponse;)Z

    move-result v0

    return v0
.end method

.method private static final isUpgradeResponse(Lio/ktor/server/netty/NettyApplicationResponse;)Z
    .locals 3
    .param p0, "$this$isUpgradeResponse"    # Lio/ktor/server/netty/NettyApplicationResponse;

    .line 363
    invoke-virtual {p0}, Lio/ktor/server/netty/NettyApplicationResponse;->status()Lio/ktor/http/HttpStatusCode;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v0

    sget-object v2, Lio/ktor/http/HttpStatusCode;->Companion:Lio/ktor/http/HttpStatusCode$Companion;

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode$Companion;->getSwitchingProtocols()Lio/ktor/http/HttpStatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lio/ktor/http/HttpStatusCode;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
