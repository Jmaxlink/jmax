.class public final Lio/netty/channel/epoll/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field public static final EPOLLERR:I

.field public static final EPOLLET:I

.field public static final EPOLLIN:I

.field public static final EPOLLOUT:I

.field public static final EPOLLRDHUP:I

.field static final IS_SUPPORTING_RECVMMSG:Z

.field public static final IS_SUPPORTING_SENDMMSG:Z

.field public static final IS_SUPPORTING_TCP_FASTOPEN:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

.field static final IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

.field static final IS_SUPPORTING_UDP_SEGMENT:Z

.field public static final KERNEL_VERSION:Ljava/lang/String;

.field private static final TCP_FASTOPEN_MODE:I

.field public static final TCP_MD5SIG_MAXKEYLEN:I

.field private static final TFO_ENABLED_CLIENT_MASK:I = 0x1

.field private static final TFO_ENABLED_SERVER_MASK:I = 0x2

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 53
    const-class v0, Lio/netty/channel/epoll/Native;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/epoll/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 56
    const/4 v1, 0x0

    .line 62
    .local v1, "selector":Ljava/nio/channels/Selector;
    :try_start_0
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 65
    goto :goto_0

    .line 63
    :catch_0
    move-exception v2

    .line 72
    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lio/netty/channel/unix/PeerCredentials;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Lio/netty/channel/DefaultFileRegion;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/nio/channels/FileChannel;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/io/FileDescriptor;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;

    const/4 v7, 0x4

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Lio/netty/util/internal/ClassInitializerUtil;->tryLoadClasses(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 82
    :try_start_1
    invoke-static {}, Lio/netty/channel/epoll/Native;->offsetofEpollData()I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    if-eqz v1, :cond_0

    .line 89
    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v0

    .line 94
    goto :goto_2

    .line 93
    :cond_0
    :goto_1
    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 83
    :catch_2
    move-exception v0

    .line 85
    .local v0, "ignore":Ljava/lang/UnsatisfiedLinkError;
    :try_start_3
    invoke-static {}, Lio/netty/channel/epoll/Native;->loadNativeLibrary()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .end local v0    # "ignore":Ljava/lang/UnsatisfiedLinkError;
    if-eqz v1, :cond_0

    .line 89
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 95
    :goto_2
    new-instance v0, Lio/netty/channel/epoll/Native$1;

    invoke-direct {v0}, Lio/netty/channel/epoll/Native$1;-><init>()V

    invoke-static {v0}, Lio/netty/channel/unix/Unix;->registerInternal(Ljava/lang/Runnable;)V

    .line 106
    .end local v1    # "selector":Ljava/nio/channels/Selector;
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollin()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->EPOLLIN:I

    .line 107
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollout()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->EPOLLOUT:I

    .line 108
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollrdhup()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->EPOLLRDHUP:I

    .line 109
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollet()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->EPOLLET:I

    .line 110
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->epollerr()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->EPOLLERR:I

    .line 112
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingSendmmsg()Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_SENDMMSG:Z

    .line 113
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->isSupportingRecvmmsg()Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_RECVMMSG:Z

    .line 114
    invoke-static {}, Lio/netty/channel/epoll/Native;->isSupportingUdpSegment()Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_UDP_SEGMENT:Z

    .line 117
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->tcpFastopenMode()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->TCP_FASTOPEN_MODE:I

    .line 122
    sget v0, Lio/netty/channel/epoll/Native;->TCP_FASTOPEN_MODE:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_1

    move v0, v5

    goto :goto_3

    :cond_1
    move v0, v4

    :goto_3
    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

    .line 128
    sget v0, Lio/netty/channel/epoll/Native;->TCP_FASTOPEN_MODE:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_2

    move v0, v5

    goto :goto_4

    :cond_2
    move v0, v4

    :goto_4
    sput-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

    .line 135
    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

    if-eqz v0, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    sput-boolean v4, Lio/netty/channel/epoll/Native;->IS_SUPPORTING_TCP_FASTOPEN:Z

    .line 137
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->tcpMd5SigMaxKeyLen()I

    move-result v0

    sput v0, Lio/netty/channel/epoll/Native;->TCP_MD5SIG_MAXKEYLEN:I

    .line 138
    invoke-static {}, Lio/netty/channel/epoll/NativeStaticallyReferencedJniMethods;->kernelVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/epoll/Native;->KERNEL_VERSION:Ljava/lang/String;

    return-void

    .line 88
    .restart local v1    # "selector":Ljava/nio/channels/Selector;
    :goto_5
    if-eqz v1, :cond_5

    .line 89
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    .line 91
    :catch_3
    move-exception v2

    goto :goto_7

    .line 93
    :cond_5
    :goto_6
    nop

    .line 94
    :goto_7
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 52
    invoke-static {}, Lio/netty/channel/epoll/Native;->registerUnix()I

    move-result v0

    return v0
.end method

.method public static epollBusyWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;)I
    .locals 4
    .param p0, "epollFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p1, "events"    # Lio/netty/channel/epoll/EpollEventArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lio/netty/channel/epoll/Native;->epollBusyWait0(IJI)I

    move-result v0

    .line 223
    .local v0, "ready":I
    if-ltz v0, :cond_0

    .line 226
    return v0

    .line 224
    :cond_0
    const-string v1, "epoll_wait"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method private static native epollBusyWait0(IJI)I
.end method

.method private static native epollCreate()I
.end method

.method public static epollCtlAdd(III)V
    .locals 2
    .param p0, "efd"    # I
    .param p1, "fd"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollCtlAdd0(III)I

    move-result v0

    .line 236
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 239
    return-void

    .line 237
    :cond_0
    const-string v1, "epoll_ctl"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method private static native epollCtlAdd0(III)I
.end method

.method public static epollCtlDel(II)V
    .locals 2
    .param p0, "efd"    # I
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-static {p0, p1}, Lio/netty/channel/epoll/Native;->epollCtlDel0(II)I

    move-result v0

    .line 252
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 255
    return-void

    .line 253
    :cond_0
    const-string v1, "epoll_ctl"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method private static native epollCtlDel0(II)I
.end method

.method public static epollCtlMod(III)V
    .locals 2
    .param p0, "efd"    # I
    .param p1, "fd"    # I
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->epollCtlMod0(III)I

    move-result v0

    .line 244
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    const-string v1, "epoll_ctl"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method private static native epollCtlMod0(III)I
.end method

.method static epollReady(J)I
    .locals 2
    .param p0, "result"    # J

    .line 193
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method static epollTimerWasUsed(J)Z
    .locals 4
    .param p0, "result"    # J

    .line 198
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native epollWait(IJII)I
.end method

.method static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I
    .locals 4
    .param p0, "epollFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p1, "events"    # Lio/netty/channel/epoll/EpollEventArray;
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3, p2}, Lio/netty/channel/epoll/Native;->epollWait(IJII)I

    move-result v0

    .line 210
    .local v0, "ready":I
    if-ltz v0, :cond_0

    .line 213
    return v0

    .line 211
    :cond_0
    const-string v1, "epoll_wait"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method public static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;II)I
    .locals 7
    .param p0, "epollFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p1, "events"    # Lio/netty/channel/epoll/EpollEventArray;
    .param p2, "timerFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p3, "timeoutSec"    # I
    .param p4, "timeoutNs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;IIJ)J

    move-result-wide v0

    .line 167
    .local v0, "result":J
    invoke-static {v0, v1}, Lio/netty/channel/epoll/Native;->epollReady(J)I

    move-result v2

    return v2
.end method

.method static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Z)I
    .locals 1
    .param p0, "epollFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p1, "events"    # Lio/netty/channel/epoll/EpollEventArray;
    .param p2, "immediatePoll"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    invoke-static {p0, p1, v0}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I

    move-result v0

    return v0
.end method

.method static epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;Lio/netty/channel/unix/FileDescriptor;IIJ)J
    .locals 9
    .param p0, "epollFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p1, "events"    # Lio/netty/channel/epoll/EpollEventArray;
    .param p2, "timerFd"    # Lio/netty/channel/unix/FileDescriptor;
    .param p3, "timeoutSec"    # I
    .param p4, "timeoutNs"    # I
    .param p5, "millisThreshold"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 175
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/netty/channel/epoll/Native;->epollWait(Lio/netty/channel/unix/FileDescriptor;Lio/netty/channel/epoll/EpollEventArray;I)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0

    .line 177
    :cond_0
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_1

    .line 179
    const/4 p3, 0x0

    .line 180
    const/4 p4, 0x0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->memoryAddress()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/netty/channel/epoll/EpollEventArray;->length()I

    move-result v3

    invoke-virtual {p2}, Lio/netty/channel/unix/FileDescriptor;->intValue()I

    move-result v4

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-static/range {v0 .. v8}, Lio/netty/channel/epoll/Native;->epollWait0(IJIIIIJ)J

    move-result-wide v0

    .line 184
    .local v0, "result":J
    invoke-static {v0, v1}, Lio/netty/channel/epoll/Native;->epollReady(J)I

    move-result v2

    .line 185
    .local v2, "ready":I
    if-ltz v2, :cond_2

    .line 188
    return-wide v0

    .line 186
    :cond_2
    const-string v3, "epoll_wait"

    invoke-static {v3, v2}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v3

    throw v3
.end method

.method private static native epollWait0(IJIIIIJ)J
.end method

.method private static native eventFd()I
.end method

.method public static native eventFdRead(I)V
.end method

.method public static native eventFdWrite(IJ)V
.end method

.method private static native isSupportingUdpSegment()Z
.end method

.method private static loadNativeLibrary()V
    .locals 7

    .line 315
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "name":Ljava/lang/String;
    const-string v1, "linux"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "netty_transport_native_epoll"

    .line 320
    .local v1, "staticLibName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "sharedLibName":Ljava/lang/String;
    const-class v3, Lio/netty/channel/epoll/Native;

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 323
    .local v3, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {v2, v3}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 324
    :catch_0
    move-exception v4

    .line 326
    .local v4, "e1":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    invoke-static {v1, v3}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 327
    sget-object v5, Lio/netty/channel/epoll/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Failed to load {}"

    invoke-interface {v5, v6, v2, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    nop

    .line 333
    .end local v4    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 328
    .restart local v4    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v5

    .line 329
    .local v5, "e2":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {v4, v5}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 330
    throw v4

    .line 317
    .end local v1    # "staticLibName":Ljava/lang/String;
    .end local v2    # "sharedLibName":Ljava/lang/String;
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "e1":Ljava/lang/UnsatisfiedLinkError;
    .end local v5    # "e2":Ljava/lang/UnsatisfiedLinkError;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only supported on Linux"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newEpollCreate()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 155
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/epoll/Native;->epollCreate()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static newEventFd()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 141
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/epoll/Native;->eventFd()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static newTimerFd()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 145
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/epoll/Native;->timerFd()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method public static native offsetofEpollData()I
.end method

.method static recvmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 2
    .param p0, "fd"    # I
    .param p1, "ipv6"    # Z
    .param p2, "msgs"    # [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/Native;->recvmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v0

    .line 290
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 291
    return v0

    .line 293
    :cond_0
    const-string v1, "recvmmsg"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static native recvmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
.end method

.method static recvmsg(IZLio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;)I
    .locals 2
    .param p0, "fd"    # I
    .param p1, "ipv6"    # Z
    .param p2, "packet"    # Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    invoke-static {p0, p1, p2}, Lio/netty/channel/epoll/Native;->recvmsg0(IZLio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;)I

    move-result v0

    .line 301
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 302
    return v0

    .line 304
    :cond_0
    const-string v1, "recvmsg"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static native recvmsg0(IZLio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;)I
.end method

.method private static native registerUnix()I
.end method

.method static sendmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 2
    .param p0, "fd"    # I
    .param p1, "ipv6"    # Z
    .param p2, "msgs"    # [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-static {p0, p1, p2, p3, p4}, Lio/netty/channel/epoll/Native;->sendmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v0

    .line 278
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 279
    return v0

    .line 281
    :cond_0
    const-string v1, "sendmmsg"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static sendmmsg(I[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
    .locals 1
    .param p0, "fd"    # I
    .param p1, "msgs"    # [Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 272
    invoke-static {}, Lio/netty/channel/unix/Socket;->isIPv6Preferred()Z

    move-result v0

    invoke-static {p0, v0, p1, p2, p3}, Lio/netty/channel/epoll/Native;->sendmmsg(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I

    move-result v0

    return v0
.end method

.method private static native sendmmsg0(IZ[Lio/netty/channel/epoll/NativeDatagramPacketArray$NativeDatagramPacket;II)I
.end method

.method public static native sizeofEpollEvent()I
.end method

.method public static splice(IJIJJ)I
    .locals 2
    .param p0, "fd"    # I
    .param p1, "offIn"    # J
    .param p3, "fdOut"    # I
    .param p4, "offOut"    # J
    .param p6, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    invoke-static/range {p0 .. p7}, Lio/netty/channel/epoll/Native;->splice0(IJIJJ)I

    move-result v0

    .line 261
    .local v0, "res":I
    if-ltz v0, :cond_0

    .line 262
    return v0

    .line 264
    :cond_0
    const-string v1, "splice"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->ioResult(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static native splice0(IJIJJ)I
.end method

.method private static native timerFd()I
.end method
