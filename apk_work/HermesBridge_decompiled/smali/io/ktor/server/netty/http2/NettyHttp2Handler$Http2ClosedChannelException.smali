.class final Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
.super Ljava/nio/channels/ClosedChannelException;
.source "NettyHttp2Handler.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/http2/NettyHttp2Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Http2ClosedChannelException"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/channels/ClosedChannelException;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u000c\u001a\u00020\u0000H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;",
        "Ljava/nio/channels/ClosedChannelException;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "errorCode",
        "",
        "(J)V",
        "getErrorCode",
        "()J",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "createCopy",
        "ktor-server-netty"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final errorCode:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "errorCode"    # J

    .line 206
    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 205
    iput-wide p1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;->errorCode:J

    .line 204
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
    .locals 4

    .line 210
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;

    iget-wide v1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;->errorCode:J

    invoke-direct {v0, v1, v2}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;-><init>(J)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$a$-also-NettyHttp2Handler$Http2ClosedChannelException$createCopy$1":I
    move-object v3, p0

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 212
    nop

    .line 210
    .end local v1    # "it":Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
    .end local v2    # "$i$a$-also-NettyHttp2Handler$Http2ClosedChannelException$createCopy$1":I
    nop

    .line 212
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 203
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;->createCopy()Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getErrorCode()J
    .locals 2

    .line 205
    iget-wide v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;->errorCode:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got close frame with code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;->errorCode:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
