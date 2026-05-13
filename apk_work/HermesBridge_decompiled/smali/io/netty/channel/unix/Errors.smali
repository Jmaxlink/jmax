.class public final Lio/netty/channel/unix/Errors;
.super Ljava/lang/Object;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/unix/Errors$NativeConnectException;,
        Lio/netty/channel/unix/Errors$NativeIoException;
    }
.end annotation


# static fields
.field public static final ERRNO_EAGAIN_NEGATIVE:I

.field public static final ERRNO_EBADF_NEGATIVE:I

.field public static final ERRNO_ECONNRESET_NEGATIVE:I

.field public static final ERRNO_EINPROGRESS_NEGATIVE:I

.field public static final ERRNO_ENOENT_NEGATIVE:I

.field public static final ERRNO_ENOTCONN_NEGATIVE:I

.field public static final ERRNO_EPIPE_NEGATIVE:I

.field public static final ERRNO_EWOULDBLOCK_NEGATIVE:I

.field private static final ERRORS:[Ljava/lang/String;

.field public static final ERROR_EALREADY_NEGATIVE:I

.field public static final ERROR_ECONNREFUSED_NEGATIVE:I

.field public static final ERROR_EHOSTUNREACH_NEGATIVE:I

.field public static final ERROR_EISCONN_NEGATIVE:I

.field public static final ERROR_ENETUNREACH_NEGATIVE:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoENOENT()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    .line 51
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoENOTCONN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOTCONN_NEGATIVE:I

    .line 52
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEBADF()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EBADF_NEGATIVE:I

    .line 53
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEPIPE()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EPIPE_NEGATIVE:I

    .line 54
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoECONNRESET()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_ECONNRESET_NEGATIVE:I

    .line 55
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEAGAIN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    .line 56
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEWOULDBLOCK()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    .line 57
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errnoEINPROGRESS()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    .line 58
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorECONNREFUSED()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_ECONNREFUSED_NEGATIVE:I

    .line 59
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEISCONN()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_EISCONN_NEGATIVE:I

    .line 60
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEALREADY()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_EALREADY_NEGATIVE:I

    .line 61
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorENETUNREACH()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_ENETUNREACH_NEGATIVE:I

    .line 62
    invoke-static {}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->errorEHOSTUNREACH()I

    move-result v0

    neg-int v0, v0

    sput v0, Lio/netty/channel/unix/Errors;->ERROR_EHOSTUNREACH_NEGATIVE:I

    .line 72
    const/16 v0, 0x800

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 121
    sget-object v1, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    invoke-static {v0}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->strError(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 48
    invoke-static {p0}, Lio/netty/channel/unix/Errors;->errnoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static errnoString(I)Ljava/lang/String;
    .locals 1
    .param p0, "err"    # I

    .line 150
    sget-object v0, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge p0, v0, :cond_0

    .line 151
    sget-object v0, Lio/netty/channel/unix/Errors;->ERRORS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 153
    :cond_0
    invoke-static {p0}, Lio/netty/channel/unix/ErrorsStaticallyReferencedJniMethods;->strError(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handleConnectErrno(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EINPROGRESS_NEGATIVE:I

    if-eq p1, v0, :cond_1

    sget v0, Lio/netty/channel/unix/Errors;->ERROR_EALREADY_NEGATIVE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p0, p1}, Lio/netty/channel/unix/Errors;->newConnectException0(Ljava/lang/String;I)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 129
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static ioResult(Ljava/lang/String;I)I
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EBADF_NEGATIVE:I

    if-eq p1, v0, :cond_3

    .line 212
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOTCONN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    .line 215
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    if-ne p1, v0, :cond_1

    .line 216
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 219
    :cond_1
    new-instance v0, Lio/netty/channel/unix/Errors$NativeIoException;

    invoke-direct {v0, p0, p1, v1}, Lio/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;IZ)V

    throw v0

    .line 213
    :cond_2
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 210
    :cond_3
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 207
    :cond_4
    :goto_0
    return v1
.end method

.method public static ioResult(Ljava/lang/String;ILio/netty/channel/unix/Errors$NativeIoException;Ljava/nio/channels/ClosedChannelException;)I
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "err"    # I
    .param p2, "resetCause"    # Lio/netty/channel/unix/Errors$NativeIoException;
    .param p3, "closedCause"    # Ljava/nio/channels/ClosedChannelException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EAGAIN_NEGATIVE:I

    if-eq p1, v0, :cond_5

    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EWOULDBLOCK_NEGATIVE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p2}, Lio/netty/channel/unix/Errors$NativeIoException;->expectedErr()I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 189
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_EBADF_NEGATIVE:I

    if-eq p1, v0, :cond_3

    .line 192
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOTCONN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    .line 195
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    if-ne p1, v0, :cond_1

    .line 196
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 201
    :cond_1
    invoke-static {p0, p1}, Lio/netty/channel/unix/Errors;->newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;

    move-result-object v0

    throw v0

    .line 193
    :cond_2
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0

    .line 190
    :cond_3
    throw p3

    .line 187
    :cond_4
    throw p2

    .line 184
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static newConnectException0(Ljava/lang/String;I)Ljava/io/IOException;
    .locals 3
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "err"    # I

    .line 157
    sget v0, Lio/netty/channel/unix/Errors;->ERROR_ENETUNREACH_NEGATIVE:I

    if-eq p1, v0, :cond_3

    sget v0, Lio/netty/channel/unix/Errors;->ERROR_EHOSTUNREACH_NEGATIVE:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    sget v0, Lio/netty/channel/unix/Errors;->ERROR_EISCONN_NEGATIVE:I

    if-eq p1, v0, :cond_2

    .line 163
    sget v0, Lio/netty/channel/unix/Errors;->ERRNO_ENOENT_NEGATIVE:I

    if-ne p1, v0, :cond_1

    .line 164
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    return-object v0

    .line 166
    :cond_1
    new-instance v0, Ljava/net/ConnectException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(..) failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    neg-int v2, p1

    invoke-static {v2}, Lio/netty/channel/unix/Errors;->errnoString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 161
    :cond_2
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 158
    :cond_3
    :goto_0
    new-instance v0, Ljava/net/NoRouteToHostException;

    invoke-direct {v0}, Ljava/net/NoRouteToHostException;-><init>()V

    return-object v0
.end method

.method public static newConnectionResetException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;
    .locals 2
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "errnoNegative"    # I

    .line 170
    new-instance v0, Lio/netty/channel/unix/Errors$NativeIoException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;IZ)V

    .line 171
    .local v0, "exception":Lio/netty/channel/unix/Errors$NativeIoException;
    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lio/netty/channel/unix/Errors$NativeIoException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 172
    return-object v0
.end method

.method public static newIOException(Ljava/lang/String;I)Lio/netty/channel/unix/Errors$NativeIoException;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "err"    # I

    .line 176
    new-instance v0, Lio/netty/channel/unix/Errors$NativeIoException;

    invoke-direct {v0, p0, p1}, Lio/netty/channel/unix/Errors$NativeIoException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static throwConnectException(Ljava/lang/String;I)V
    .locals 1
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    sget v0, Lio/netty/channel/unix/Errors;->ERROR_EALREADY_NEGATIVE:I

    if-ne p1, v0, :cond_0

    .line 143
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 145
    :cond_0
    invoke-static {p0, p1}, Lio/netty/channel/unix/Errors;->newConnectException0(Ljava/lang/String;I)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
