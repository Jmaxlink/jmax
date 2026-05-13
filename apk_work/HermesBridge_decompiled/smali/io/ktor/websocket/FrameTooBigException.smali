.class public final Lio/ktor/websocket/FrameTooBigException;
.super Ljava/lang/Exception;
.source "FrameTooBigException.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/websocket/FrameTooBigException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u0000H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/websocket/FrameTooBigException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "frameSize",
        "",
        "(J)V",
        "getFrameSize",
        "()J",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "createCopy",
        "ktor-websockets"
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
.field private final frameSize:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .param p1, "frameSize"    # J

    .line 17
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    iput-wide p1, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    .line 15
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/websocket/FrameTooBigException;
    .locals 5

    .line 22
    new-instance v0, Lio/ktor/websocket/FrameTooBigException;

    iget-wide v1, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    invoke-direct {v0, v1, v2}, Lio/ktor/websocket/FrameTooBigException;-><init>(J)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/websocket/FrameTooBigException;
    const/4 v2, 0x0

    .line 23
    .local v2, "$i$a$-also-FrameTooBigException$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 24
    nop

    .line 22
    .end local v1    # "it":Lio/ktor/websocket/FrameTooBigException;
    .end local v2    # "$i$a$-also-FrameTooBigException$createCopy$1":I
    nop

    .line 24
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lio/ktor/websocket/FrameTooBigException;->createCopy()Lio/ktor/websocket/FrameTooBigException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getFrameSize()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Frame is too big: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lio/ktor/websocket/FrameTooBigException;->frameSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
