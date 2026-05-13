.class public final Lio/ktor/websocket/ProtocolViolationException;
.super Ljava/lang/Exception;
.source "ProtocolViolationException.kt"

# interfaces
.implements Lkotlinx/coroutines/CopyableThrowable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable<",
        "Lio/ktor/websocket/ProtocolViolationException;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00060\u0001j\u0002`\u00022\u0008\u0012\u0004\u0012\u00020\u00000\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000b\u001a\u00020\u0000H\u0016R\u0014\u0010\u0007\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/ktor/websocket/ProtocolViolationException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "Lkotlinx/coroutines/CopyableThrowable;",
        "violation",
        "",
        "(Ljava/lang/String;)V",
        "message",
        "getMessage",
        "()Ljava/lang/String;",
        "getViolation",
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
.field private final violation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "violation"    # Ljava/lang/String;

    const-string v0, "violation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 15
    iput-object p1, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public createCopy()Lio/ktor/websocket/ProtocolViolationException;
    .locals 5

    .line 20
    new-instance v0, Lio/ktor/websocket/ProtocolViolationException;

    iget-object v1, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    invoke-direct {v0, v1}, Lio/ktor/websocket/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .local v1, "it":Lio/ktor/websocket/ProtocolViolationException;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-also-ProtocolViolationException$createCopy$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lio/ktor/util/internal/ExceptionUtilsJvmKt;->initCauseBridge(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 22
    nop

    .line 20
    .end local v1    # "it":Lio/ktor/websocket/ProtocolViolationException;
    .end local v2    # "$i$a$-also-ProtocolViolationException$createCopy$1":I
    nop

    .line 22
    return-object v0
.end method

.method public bridge synthetic createCopy()Ljava/lang/Throwable;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lio/ktor/websocket/ProtocolViolationException;->createCopy()Lio/ktor/websocket/ProtocolViolationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received illegal frame: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getViolation()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lio/ktor/websocket/ProtocolViolationException;->violation:Ljava/lang/String;

    return-object v0
.end method
