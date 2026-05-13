.class final Lio/ktor/server/engine/StartupInfo;
.super Ljava/lang/Object;
.source "BaseApplicationEngine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/server/engine/StartupInfo;",
        "",
        "()V",
        "initializedStartAt",
        "",
        "getInitializedStartAt",
        "()J",
        "setInitializedStartAt",
        "(J)V",
        "isFirstLoading",
        "",
        "()Z",
        "setFirstLoading",
        "(Z)V",
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
.field private initializedStartAt:J

.field private isFirstLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/server/engine/StartupInfo;->isFirstLoading:Z

    .line 99
    invoke-static {}, Lio/ktor/util/date/DateJvmKt;->getTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/ktor/server/engine/StartupInfo;->initializedStartAt:J

    .line 97
    return-void
.end method


# virtual methods
.method public final getInitializedStartAt()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lio/ktor/server/engine/StartupInfo;->initializedStartAt:J

    return-wide v0
.end method

.method public final isFirstLoading()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lio/ktor/server/engine/StartupInfo;->isFirstLoading:Z

    return v0
.end method

.method public final setFirstLoading(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 98
    iput-boolean p1, p0, Lio/ktor/server/engine/StartupInfo;->isFirstLoading:Z

    return-void
.end method

.method public final setInitializedStartAt(J)V
    .locals 0
    .param p1, "<set-?>"    # J

    .line 99
    iput-wide p1, p0, Lio/ktor/server/engine/StartupInfo;->initializedStartAt:J

    return-void
.end method
