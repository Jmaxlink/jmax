.class public final Lio/ktor/server/netty/NettyApplicationEngine$Configuration;
.super Lio/ktor/server/engine/BaseApplicationEngine$Configuration;
.source "NettyApplicationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/NettyApplicationEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u00108\u001a\u00020\u0012H\u0002R+\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR+\u0010\u000c\u001a\u0013\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0002\u0008\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\u001a\u0010 \u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u001a\"\u0004\u0008\"\u0010\u001cR\u001a\u0010#\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001a\"\u0004\u0008%\u0010\u001cR\u001a\u0010&\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u001a\"\u0004\u0008(\u0010\u001cR\u001a\u0010)\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001a\"\u0004\u0008+\u0010\u001cR\u001a\u0010,\u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010\u001a\"\u0004\u0008.\u0010\u001cR\u001a\u0010/\u001a\u000200X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001a\u00105\u001a\u000200X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00102\"\u0004\u00087\u00104\u00a8\u00069"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyApplicationEngine$Configuration;",
        "Lio/ktor/server/engine/BaseApplicationEngine$Configuration;",
        "()V",
        "channelPipelineConfig",
        "Lkotlin/Function1;",
        "Lio/netty/channel/ChannelPipeline;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getChannelPipelineConfig",
        "()Lkotlin/jvm/functions/Function1;",
        "setChannelPipelineConfig",
        "(Lkotlin/jvm/functions/Function1;)V",
        "configureBootstrap",
        "Lio/netty/bootstrap/ServerBootstrap;",
        "getConfigureBootstrap",
        "setConfigureBootstrap",
        "httpServerCodec",
        "Lkotlin/Function0;",
        "Lio/netty/handler/codec/http/HttpServerCodec;",
        "getHttpServerCodec",
        "()Lkotlin/jvm/functions/Function0;",
        "setHttpServerCodec",
        "(Lkotlin/jvm/functions/Function0;)V",
        "maxChunkSize",
        "",
        "getMaxChunkSize",
        "()I",
        "setMaxChunkSize",
        "(I)V",
        "maxHeaderSize",
        "getMaxHeaderSize",
        "setMaxHeaderSize",
        "maxInitialLineLength",
        "getMaxInitialLineLength",
        "setMaxInitialLineLength",
        "requestQueueLimit",
        "getRequestQueueLimit",
        "setRequestQueueLimit",
        "requestReadTimeoutSeconds",
        "getRequestReadTimeoutSeconds",
        "setRequestReadTimeoutSeconds",
        "responseWriteTimeoutSeconds",
        "getResponseWriteTimeoutSeconds",
        "setResponseWriteTimeoutSeconds",
        "runningLimit",
        "getRunningLimit",
        "setRunningLimit",
        "shareWorkGroup",
        "",
        "getShareWorkGroup",
        "()Z",
        "setShareWorkGroup",
        "(Z)V",
        "tcpKeepAlive",
        "getTcpKeepAlive",
        "setTcpKeepAlive",
        "defaultHttpServerCodec",
        "ktor-server-netty"
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
.field private channelPipelineConfig:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/netty/channel/ChannelPipeline;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private configureBootstrap:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/netty/bootstrap/ServerBootstrap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private httpServerCodec:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/netty/handler/codec/http/HttpServerCodec;",
            ">;"
        }
    .end annotation
.end field

.field private maxChunkSize:I

.field private maxHeaderSize:I

.field private maxInitialLineLength:I

.field private requestQueueLimit:I

.field private requestReadTimeoutSeconds:I

.field private responseWriteTimeoutSeconds:I

.field private runningLimit:I

.field private shareWorkGroup:Z

.field private tcpKeepAlive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lio/ktor/server/engine/BaseApplicationEngine$Configuration;-><init>()V

    .line 42
    const/16 v0, 0x10

    iput v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->requestQueueLimit:I

    .line 47
    const/16 v0, 0x20

    iput v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->runningLimit:I

    .line 57
    sget-object v0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration$configureBootstrap$1;->INSTANCE:Lio/ktor/server/netty/NettyApplicationEngine$Configuration$configureBootstrap$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->configureBootstrap:Lkotlin/jvm/functions/Function1;

    .line 62
    const/16 v0, 0xa

    iput v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->responseWriteTimeoutSeconds:I

    .line 80
    const/16 v0, 0x1000

    iput v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxInitialLineLength:I

    .line 86
    const/16 v0, 0x2000

    iput v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxHeaderSize:I

    .line 91
    iput v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxChunkSize:I

    .line 96
    new-instance v0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration$httpServerCodec$1;

    invoke-direct {v0, p0}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration$httpServerCodec$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->httpServerCodec:Lkotlin/jvm/functions/Function0;

    .line 101
    sget-object v0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration$channelPipelineConfig$1;->INSTANCE:Lio/ktor/server/netty/NettyApplicationEngine$Configuration$channelPipelineConfig$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iput-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->channelPipelineConfig:Lkotlin/jvm/functions/Function1;

    .line 38
    return-void
.end method

.method public static final synthetic access$defaultHttpServerCodec(Lio/ktor/server/netty/NettyApplicationEngine$Configuration;)Lio/netty/handler/codec/http/HttpServerCodec;
    .locals 1
    .param p0, "$this"    # Lio/ktor/server/netty/NettyApplicationEngine$Configuration;

    .line 38
    invoke-direct {p0}, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->defaultHttpServerCodec()Lio/netty/handler/codec/http/HttpServerCodec;

    move-result-object v0

    return-object v0
.end method

.method private final defaultHttpServerCodec()Lio/netty/handler/codec/http/HttpServerCodec;
    .locals 4

    .line 106
    new-instance v0, Lio/netty/handler/codec/http/HttpServerCodec;

    .line 107
    iget v1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxInitialLineLength:I

    .line 108
    iget v2, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxHeaderSize:I

    .line 109
    iget v3, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxChunkSize:I

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpServerCodec;-><init>(III)V

    .line 110
    return-object v0
.end method


# virtual methods
.method public final getChannelPipelineConfig()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/netty/channel/ChannelPipeline;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->channelPipelineConfig:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getConfigureBootstrap()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lio/netty/bootstrap/ServerBootstrap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->configureBootstrap:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getHttpServerCodec()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/netty/handler/codec/http/HttpServerCodec;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->httpServerCodec:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getMaxChunkSize()I
    .locals 1

    .line 91
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxChunkSize:I

    return v0
.end method

.method public final getMaxHeaderSize()I
    .locals 1

    .line 86
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxHeaderSize:I

    return v0
.end method

.method public final getMaxInitialLineLength()I
    .locals 1

    .line 80
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxInitialLineLength:I

    return v0
.end method

.method public final getRequestQueueLimit()I
    .locals 1

    .line 42
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->requestQueueLimit:I

    return v0
.end method

.method public final getRequestReadTimeoutSeconds()I
    .locals 1

    .line 67
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->requestReadTimeoutSeconds:I

    return v0
.end method

.method public final getResponseWriteTimeoutSeconds()I
    .locals 1

    .line 62
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->responseWriteTimeoutSeconds:I

    return v0
.end method

.method public final getRunningLimit()I
    .locals 1

    .line 47
    iget v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->runningLimit:I

    return v0
.end method

.method public final getShareWorkGroup()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->shareWorkGroup:Z

    return v0
.end method

.method public final getTcpKeepAlive()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->tcpKeepAlive:Z

    return v0
.end method

.method public final setChannelPipelineConfig(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/netty/channel/ChannelPipeline;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->channelPipelineConfig:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setConfigureBootstrap(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/netty/bootstrap/ServerBootstrap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->configureBootstrap:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setHttpServerCodec(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/netty/handler/codec/http/HttpServerCodec;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->httpServerCodec:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setMaxChunkSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 91
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxChunkSize:I

    return-void
.end method

.method public final setMaxHeaderSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 86
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxHeaderSize:I

    return-void
.end method

.method public final setMaxInitialLineLength(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 80
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->maxInitialLineLength:I

    return-void
.end method

.method public final setRequestQueueLimit(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 42
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->requestQueueLimit:I

    return-void
.end method

.method public final setRequestReadTimeoutSeconds(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 67
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->requestReadTimeoutSeconds:I

    return-void
.end method

.method public final setResponseWriteTimeoutSeconds(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 62
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->responseWriteTimeoutSeconds:I

    return-void
.end method

.method public final setRunningLimit(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 47
    iput p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->runningLimit:I

    return-void
.end method

.method public final setShareWorkGroup(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 52
    iput-boolean p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->shareWorkGroup:Z

    return-void
.end method

.method public final setTcpKeepAlive(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 75
    iput-boolean p1, p0, Lio/ktor/server/netty/NettyApplicationEngine$Configuration;->tcpKeepAlive:Z

    return-void
.end method
