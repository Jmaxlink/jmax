.class public Lio/netty/handler/codec/http2/Http2Exception;
.super Ljava/lang/Exception;
.source "Http2Exception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;,
        Lio/netty/handler/codec/http2/Http2Exception$CompositeStreamException;,
        Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;,
        Lio/netty/handler/codec/http2/Http2Exception$StreamException;,
        Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;,
        Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x60540c34872822f1L


# instance fields
.field private final error:Lio/netty/handler/codec/http2/Http2Error;

.field private final shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 34
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;)V
    .locals 1
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;

    .line 41
    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 1
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    const-string v0, "error"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Error;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    .line 46
    const-string v0, "shutdownHint"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 47
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 1
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;

    .line 50
    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 1
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 54
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    const-string v0, "error"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Error;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    .line 56
    const-string v0, "shutdownHint"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 57
    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V
    .locals 3
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .param p4, "shared"    # Z

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p2, v2, v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 84
    if-eqz p4, :cond_0

    .line 85
    const-string v0, "error"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Error;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    .line 86
    const-string v0, "shutdownHint"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 87
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;ZLio/netty/handler/codec/http2/Http2Exception$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lio/netty/handler/codec/http2/Http2Exception$1;

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V

    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 60
    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->HARD_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 1
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 64
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    const-string v0, "error"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Error;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    .line 66
    const-string v0, "shutdownHint"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    iput-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 67
    return-void
.end method

.method public static varargs closedStreamError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 135
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 109
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception;

    invoke-static {p1, p2}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 123
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception;

    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "fmt"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 199
    if-nez p0, :cond_2

    .line 200
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_1
    :goto_0
    const-string v0, "Unexpected error"

    return-object v0

    .line 205
    :cond_2
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs headerListSizeError(ILio/netty/handler/codec/http2/Http2Error;ZLjava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "id"    # I
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "onDecode"    # Z
    .param p3, "fmt"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 193
    if-nez p0, :cond_0

    .line 194
    invoke-static {p1, p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;

    .line 195
    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lio/netty/handler/codec/http2/Http2Exception$HeaderListSizeException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Z)V

    .line 193
    :goto_0
    return-object v0
.end method

.method public static isStreamError(Lio/netty/handler/codec/http2/Http2Exception;)Z
    .locals 1
    .param p0, "e"    # Lio/netty/handler/codec/http2/Http2Exception;

    .line 215
    instance-of v0, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    return v0
.end method

.method static newStatic(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .param p4, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2Error;",
            "Ljava/lang/String;",
            "Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lio/netty/handler/codec/http2/Http2Exception;"
        }
    .end annotation

    .line 72
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 73
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V

    .local v0, "exception":Lio/netty/handler/codec/http2/Http2Exception;
    goto :goto_0

    .line 75
    .end local v0    # "exception":Lio/netty/handler/codec/http2/Http2Exception;
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;

    invoke-direct {v0, p0, p1, p2}, Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 77
    .restart local v0    # "exception":Lio/netty/handler/codec/http2/Http2Exception;
    :goto_0
    invoke-static {v0, p3, p4}, Lio/netty/util/internal/ThrowableUtil;->unknownStackTrace(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Exception;

    return-object v1
.end method

.method public static varargs streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "id"    # I
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 151
    if-nez p0, :cond_0

    .line 152
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 153
    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-object v0
.end method

.method public static varargs streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;
    .locals 2
    .param p0, "id"    # I
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "fmt"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 171
    if-nez p0, :cond_0

    .line 172
    invoke-static {p1, p2, p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    .line 173
    invoke-static {p3, p4}, Lio/netty/handler/codec/http2/Http2Exception;->formatErrorMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p2}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;-><init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :goto_0
    return-object v0
.end method

.method public static streamId(Lio/netty/handler/codec/http2/Http2Exception;)I
    .locals 1
    .param p0, "e"    # Lio/netty/handler/codec/http2/Http2Exception;

    .line 225
    invoke-static {p0}, Lio/netty/handler/codec/http2/Http2Exception;->isStreamError(Lio/netty/handler/codec/http2/Http2Exception;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public error()Lio/netty/handler/codec/http2/Http2Error;
    .locals 1

    .line 90
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->error:Lio/netty/handler/codec/http2/Http2Error;

    return-object v0
.end method

.method public shutdownHint()Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .locals 1

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2Exception;->shutdownHint:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    return-object v0
.end method
