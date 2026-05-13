.class public final Lio/netty/channel/epoll/Epoll;
.super Ljava/lang/Object;
.source "Epoll.java"


# static fields
.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "cause":Ljava/lang/Throwable;
    const-string v1, "io.netty.transport.noNative"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Native transport was explicit disabled with -Dio.netty.transport.noNative=true"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    .local v1, "epollFd":Lio/netty/channel/unix/FileDescriptor;
    const/4 v2, 0x0

    .line 40
    .local v2, "eventFd":Lio/netty/channel/unix/FileDescriptor;
    :try_start_0
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEpollCreate()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v3

    move-object v1, v3

    .line 41
    invoke-static {}, Lio/netty/channel/epoll/Native;->newEventFd()Lio/netty/channel/unix/FileDescriptor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 45
    if-eqz v1, :cond_1

    .line 47
    :try_start_1
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v3

    .line 52
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 54
    :try_start_2
    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    :goto_1
    goto :goto_3

    .line 55
    :catch_1
    move-exception v3

    goto :goto_1

    .line 42
    :catchall_0
    move-exception v3

    .line 43
    .local v3, "t":Ljava/lang/Throwable;
    move-object v0, v3

    .line 45
    .end local v3    # "t":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 47
    :try_start_3
    invoke-virtual {v1}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 50
    goto :goto_2

    .line 48
    :catch_2
    move-exception v3

    .line 52
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 54
    :try_start_4
    invoke-virtual {v2}, Lio/netty/channel/unix/FileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 62
    .end local v1    # "epollFd":Lio/netty/channel/unix/FileDescriptor;
    .end local v2    # "eventFd":Lio/netty/channel/unix/FileDescriptor;
    :cond_3
    :goto_3
    sput-object v0, Lio/netty/channel/epoll/Epoll;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 63
    .end local v0    # "cause":Ljava/lang/Throwable;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method

.method public static ensureAvailability()V
    .locals 2

    .line 80
    sget-object v0, Lio/netty/channel/epoll/Epoll;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 84
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "failed to load the required native library"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    sget-object v1, Lio/netty/channel/epoll/Epoll;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 70
    sget-object v0, Lio/netty/channel/epoll/Epoll;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

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

    .line 103
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

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

    .line 113
    invoke-static {}, Lio/netty/channel/epoll/Epoll;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

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

    .line 93
    sget-object v0, Lio/netty/channel/epoll/Epoll;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method
