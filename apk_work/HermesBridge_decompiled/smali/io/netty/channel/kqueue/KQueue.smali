.class public final Lio/netty/channel/kqueue/KQueue;
.super Ljava/lang/Object;
.source "KQueue.java"


# static fields
.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "cause":Ljava/lang/Throwable;
    const-string v1, "io.netty.transport.noNative"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Native transport was explicit disabled with -Dio.netty.transport.noNative=true"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 38
    .local v1, "kqueueFd":Lio/netty/channel/unix/FileDescriptor;
    :try_start_0
    invoke-static {}, Lio/netty/channel/kqueue/Native;->newKQueue()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 42
    if-eqz v1, :cond_1

    .line 44
    :try_start_1
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V

    .line 47
    :goto_0
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v2

    .line 40
    .local v2, "t":Ljava/lang/Throwable;
    move-object v0, v2

    .line 42
    .end local v2    # "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_1

    .line 44
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "kqueueFd":Lio/netty/channel/unix/FileDescriptor;
    :cond_1
    :goto_1
    sput-object v0, Lio/netty/channel/kqueue/KQueue;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 53
    .end local v0    # "cause":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static ensureAvailability()V
    .locals 2

    .line 70
    sget-object v0, Lio/netty/channel/kqueue/KQueue;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "failed to load the required native library"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/netty/channel/kqueue/KQueue;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 60
    sget-object v0, Lio/netty/channel/kqueue/KQueue;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTcpFastOpenClientSideAvailable()Z
    .locals 1

    .line 93
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/netty/channel/kqueue/Native;->IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTcpFastOpenServerSideAvailable()Z
    .locals 1

    .line 103
    invoke-static {}, Lio/netty/channel/kqueue/KQueue;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/netty/channel/kqueue/Native;->IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static unavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 83
    sget-object v0, Lio/netty/channel/kqueue/KQueue;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method
