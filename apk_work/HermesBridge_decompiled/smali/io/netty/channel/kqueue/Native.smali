.class final Lio/netty/channel/kqueue/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field private static final CONNECT_DATA_IDEMPOTENT:I

.field private static final CONNECT_RESUME_ON_READ_WRITE:I

.field static final CONNECT_TCP_FASTOPEN:I

.field static final EVFILT_READ:S

.field static final EVFILT_SOCK:S

.field static final EVFILT_USER:S

.field static final EVFILT_WRITE:S

.field static final EV_ADD:S

.field static final EV_ADD_CLEAR_ENABLE:S

.field static final EV_CLEAR:S

.field static final EV_DELETE:S

.field static final EV_DELETE_DISABLE:S

.field static final EV_DISABLE:S

.field static final EV_ENABLE:S

.field static final EV_EOF:S

.field static final EV_ERROR:S

.field static final IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

.field static final IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

.field static final NOTE_CONNRESET:I

.field static final NOTE_DISCONNECTED:I

.field static final NOTE_RDHUP:I

.field static final NOTE_READCLOSED:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 57
    const-class v0, Lio/netty/channel/kqueue/Native;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/channel/kqueue/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lio/netty/channel/unix/PeerCredentials;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lio/netty/channel/DefaultFileRegion;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/nio/channels/FileChannel;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Ljava/io/FileDescriptor;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lio/netty/util/internal/ClassInitializerUtil;->tryLoadClasses(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 73
    :try_start_0
    invoke-static {}, Lio/netty/channel/kqueue/Native;->sizeofKEvent()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "ignore":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {}, Lio/netty/channel/kqueue/Native;->loadNativeLibrary()V

    .line 78
    .end local v0    # "ignore":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v0, Lio/netty/channel/kqueue/Native$1;

    invoke-direct {v0}, Lio/netty/channel/kqueue/Native$1;-><init>()V

    invoke-static {v0}, Lio/netty/channel/unix/Unix;->registerInternal(Ljava/lang/Runnable;)V

    .line 88
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evAdd()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_ADD:S

    .line 89
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evEnable()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_ENABLE:S

    .line 90
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evDisable()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_DISABLE:S

    .line 91
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evDelete()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_DELETE:S

    .line 92
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evClear()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_CLEAR:S

    .line 93
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evError()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_ERROR:S

    .line 94
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evEOF()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_EOF:S

    .line 96
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->noteReadClosed()S

    move-result v0

    sput v0, Lio/netty/channel/kqueue/Native;->NOTE_READCLOSED:I

    .line 97
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->noteConnReset()S

    move-result v0

    sput v0, Lio/netty/channel/kqueue/Native;->NOTE_CONNRESET:I

    .line 98
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->noteDisconnected()S

    move-result v0

    sput v0, Lio/netty/channel/kqueue/Native;->NOTE_DISCONNECTED:I

    .line 100
    sget v0, Lio/netty/channel/kqueue/Native;->NOTE_READCLOSED:I

    sget v1, Lio/netty/channel/kqueue/Native;->NOTE_CONNRESET:I

    or-int/2addr v0, v1

    sget v1, Lio/netty/channel/kqueue/Native;->NOTE_DISCONNECTED:I

    or-int/2addr v0, v1

    sput v0, Lio/netty/channel/kqueue/Native;->NOTE_RDHUP:I

    .line 103
    sget-short v0, Lio/netty/channel/kqueue/Native;->EV_ADD:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_CLEAR:S

    or-int/2addr v0, v1

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_ENABLE:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_ADD_CLEAR_ENABLE:S

    .line 104
    sget-short v0, Lio/netty/channel/kqueue/Native;->EV_DELETE:S

    sget-short v1, Lio/netty/channel/kqueue/Native;->EV_DISABLE:S

    or-int/2addr v0, v1

    int-to-short v0, v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EV_DELETE_DISABLE:S

    .line 106
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evfiltRead()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_READ:S

    .line 107
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evfiltWrite()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_WRITE:S

    .line 108
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evfiltUser()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_USER:S

    .line 109
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->evfiltSock()S

    move-result v0

    sput-short v0, Lio/netty/channel/kqueue/Native;->EVFILT_SOCK:S

    .line 112
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->connectResumeOnReadWrite()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/Native;->CONNECT_RESUME_ON_READ_WRITE:I

    .line 113
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->connectDataIdempotent()I

    move-result v0

    sput v0, Lio/netty/channel/kqueue/Native;->CONNECT_DATA_IDEMPOTENT:I

    .line 114
    sget v0, Lio/netty/channel/kqueue/Native;->CONNECT_RESUME_ON_READ_WRITE:I

    sget v1, Lio/netty/channel/kqueue/Native;->CONNECT_DATA_IDEMPOTENT:I

    or-int/2addr v0, v1

    sput v0, Lio/netty/channel/kqueue/Native;->CONNECT_TCP_FASTOPEN:I

    .line 115
    invoke-static {}, Lio/netty/channel/kqueue/Native;->isSupportingFastOpenClient()Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/kqueue/Native;->IS_SUPPORTING_TCP_FASTOPEN_CLIENT:Z

    .line 116
    invoke-static {}, Lio/netty/channel/kqueue/Native;->isSupportingFastOpenServer()Z

    move-result v0

    sput-boolean v0, Lio/netty/channel/kqueue/Native;->IS_SUPPORTING_TCP_FASTOPEN_SERVER:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 56
    invoke-static {}, Lio/netty/channel/kqueue/Native;->registerUnix()I

    move-result v0

    return v0
.end method

.method private static isSupportingFastOpenClient()Z
    .locals 4

    .line 169
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->fastOpenClient()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/netty/channel/kqueue/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to probe fastOpenClient sysctl, assuming client-side TCP FastOpen cannot be used."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method private static isSupportingFastOpenServer()Z
    .locals 4

    .line 178
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lio/netty/channel/kqueue/KQueueStaticallyReferencedJniMethods;->fastOpenServer()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lio/netty/channel/kqueue/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Failed to probe fastOpenServer sysctl, assuming server-side TCP FastOpen cannot be used."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method static native keventAddUserEvent(II)I
.end method

.method static native keventTriggerUserEvent(II)I
.end method

.method private static native keventWait(IJIJIII)I
.end method

.method static keventWait(ILio/netty/channel/kqueue/KQueueEventArray;Lio/netty/channel/kqueue/KQueueEventArray;II)I
    .locals 9
    .param p0, "kqueueFd"    # I
    .param p1, "changeList"    # Lio/netty/channel/kqueue/KQueueEventArray;
    .param p2, "eventList"    # Lio/netty/channel/kqueue/KQueueEventArray;
    .param p3, "tvSec"    # I
    .param p4, "tvNsec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress()J

    move-result-wide v1

    invoke-virtual {p1}, Lio/netty/channel/kqueue/KQueueEventArray;->size()I

    move-result v3

    .line 125
    invoke-virtual {p2}, Lio/netty/channel/kqueue/KQueueEventArray;->memoryAddress()J

    move-result-wide v4

    invoke-virtual {p2}, Lio/netty/channel/kqueue/KQueueEventArray;->capacity()I

    move-result v6

    .line 124
    move v0, p0

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lio/netty/channel/kqueue/Native;->keventWait(IJIJIII)I

    move-result v0

    .line 126
    .local v0, "ready":I
    if-ltz v0, :cond_0

    .line 129
    return v0

    .line 127
    :cond_0
    const-string v1, "kevent"

    invoke-static {v1, v0}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v1

    throw v1
.end method

.method private static native kqueueCreate()I
.end method

.method private static loadNativeLibrary()V
    .locals 7

    .line 147
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "name":Ljava/lang/String;
    const-string v1, "osx"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "bsd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Only supported on OSX/BSD"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_1
    :goto_0
    const-string v1, "netty_transport_native_kqueue"

    .line 152
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

    .line 153
    .local v2, "sharedLibName":Ljava/lang/String;
    const-class v3, Lio/netty/channel/kqueue/Native;

    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 155
    .local v3, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {v2, v3}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_1

    .line 156
    :catch_0
    move-exception v4

    .line 158
    .local v4, "e1":Ljava/lang/UnsatisfiedLinkError;
    :try_start_1
    invoke-static {v1, v3}, Lio/netty/util/internal/NativeLibraryLoader;->load(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 159
    sget-object v5, Lio/netty/channel/kqueue/Native;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v6, "Failed to load {}"

    invoke-interface {v5, v6, v2, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    nop

    .line 165
    .end local v4    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :goto_1
    return-void

    .line 160
    .restart local v4    # "e1":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v5

    .line 161
    .local v5, "e2":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {v4, v5}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 162
    throw v4
.end method

.method static newKQueue()Lio/netty/channel/unix/FileDescriptor;
    .locals 2

    .line 119
    new-instance v0, Lio/netty/channel/unix/FileDescriptor;

    invoke-static {}, Lio/netty/channel/kqueue/Native;->kqueueCreate()I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/channel/unix/FileDescriptor;-><init>(I)V

    return-object v0
.end method

.method static native offsetofKEventFFlags()I
.end method

.method static native offsetofKEventFilter()I
.end method

.method static native offsetofKEventFlags()I
.end method

.method static native offsetofKEventIdent()I
.end method

.method static native offsetofKeventData()I
.end method

.method private static native registerUnix()I
.end method

.method static native sizeofKEvent()I
.end method
