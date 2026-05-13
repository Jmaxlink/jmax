.class public Lio/ktor/server/engine/ApplicationEngine$Configuration;
.super Ljava/lang/Object;
.source "ApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/engine/ApplicationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u000b\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u0006R\u001a\u0010\u000e\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011\"\u0004\u0008\u0016\u0010\u0013R\u001a\u0010\u0017\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/ktor/server/engine/ApplicationEngine$Configuration;",
        "",
        "()V",
        "callGroupSize",
        "",
        "getCallGroupSize",
        "()I",
        "setCallGroupSize",
        "(I)V",
        "connectionGroupSize",
        "getConnectionGroupSize",
        "setConnectionGroupSize",
        "parallelism",
        "getParallelism",
        "shutdownGracePeriod",
        "",
        "getShutdownGracePeriod",
        "()J",
        "setShutdownGracePeriod",
        "(J)V",
        "shutdownTimeout",
        "getShutdownTimeout",
        "setShutdownTimeout",
        "workerGroupSize",
        "getWorkerGroupSize",
        "setWorkerGroupSize",
        "ktor-server-host-common"
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
.field private callGroupSize:I

.field private connectionGroupSize:I

.field private final parallelism:I

.field private shutdownGracePeriod:J

.field private shutdownTimeout:J

.field private workerGroupSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lio/ktor/server/engine/internal/ApplicationUtilsJvmKt;->availableProcessorsBridge()I

    move-result v0

    iput v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->parallelism:I

    .line 29
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->parallelism:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->connectionGroupSize:I

    .line 34
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->parallelism:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->workerGroupSize:I

    .line 39
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->parallelism:I

    iput v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->callGroupSize:I

    .line 44
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->shutdownGracePeriod:J

    .line 49
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->shutdownTimeout:J

    .line 20
    return-void
.end method


# virtual methods
.method public final getCallGroupSize()I
    .locals 1

    .line 39
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->callGroupSize:I

    return v0
.end method

.method public final getConnectionGroupSize()I
    .locals 1

    .line 29
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->connectionGroupSize:I

    return v0
.end method

.method public final getParallelism()I
    .locals 1

    .line 24
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->parallelism:I

    return v0
.end method

.method public final getShutdownGracePeriod()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->shutdownGracePeriod:J

    return-wide v0
.end method

.method public final getShutdownTimeout()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->shutdownTimeout:J

    return-wide v0
.end method

.method public final getWorkerGroupSize()I
    .locals 1

    .line 34
    iget v0, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->workerGroupSize:I

    return v0
.end method

.method public final setCallGroupSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 39
    iput p1, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->callGroupSize:I

    return-void
.end method

.method public final setConnectionGroupSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 29
    iput p1, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->connectionGroupSize:I

    return-void
.end method

.method public final setShutdownGracePeriod(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 44
    iput-wide p1, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->shutdownGracePeriod:J

    return-void
.end method

.method public final setShutdownTimeout(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 49
    iput-wide p1, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->shutdownTimeout:J

    return-void
.end method

.method public final setWorkerGroupSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 34
    iput p1, p0, Lio/ktor/server/engine/ApplicationEngine$Configuration;->workerGroupSize:I

    return-void
.end method
