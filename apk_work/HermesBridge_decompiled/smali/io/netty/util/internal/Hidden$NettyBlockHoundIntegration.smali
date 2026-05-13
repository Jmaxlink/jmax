.class public final Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;
.super Ljava/lang/Object;
.source "Hidden.java"

# interfaces
.implements Lreactor/blockhound/integration/BlockHoundIntegration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/Hidden;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NettyBlockHoundIntegration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTo(Lreactor/blockhound/BlockHound$Builder;)V
    .locals 4
    .param p1, "builder"    # Lreactor/blockhound/BlockHound$Builder;

    .line 43
    const-string v0, "io.netty.channel.nio.NioEventLoop"

    const-string v1, "handleLoopException"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 48
    const-string v0, "io.netty.channel.kqueue.KQueueEventLoop"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 53
    const-string v0, "io.netty.channel.epoll.EpollEventLoop"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 58
    const-string v0, "start"

    const-string v1, "io.netty.util.HashedWheelTimer"

    invoke-virtual {p1, v1, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 63
    const-string v0, "stop"

    invoke-virtual {p1, v1, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 68
    const-string v0, "io.netty.util.HashedWheelTimer$Worker"

    const-string v1, "waitForNextTick"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 73
    const-string v0, "confirmShutdown"

    const-string v1, "io.netty.util.concurrent.SingleThreadEventExecutor"

    invoke-virtual {p1, v1, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 78
    const-string v0, "io.netty.buffer.PoolArena"

    const-string v2, "lock"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 83
    const-string v0, "io.netty.buffer.PoolSubpage"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 88
    const-string v0, "allocateRun"

    const-string v2, "io.netty.buffer.PoolChunk"

    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 93
    const-string v0, "free"

    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 98
    const-string v0, "handshake"

    const-string v2, "io.netty.handler.ssl.SslHandler"

    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 103
    const-string v0, "runAllDelegatedTasks"

    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 107
    const-string v0, "runDelegatedTasks"

    invoke-virtual {p1, v2, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 111
    const-string v0, "io.netty.util.concurrent.GlobalEventExecutor"

    const-string v2, "takeTask"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 115
    const-string v3, "addTask"

    invoke-virtual {p1, v0, v3}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 119
    invoke-virtual {p1, v1, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 123
    invoke-virtual {p1, v1, v3}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 127
    const-string v0, "io.netty.handler.ssl.ReferenceCountedOpenSslClientContext$ExtendedTrustManagerVerifyCallback"

    const-string v1, "verify"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 131
    const-string v0, "io.netty.handler.ssl.JdkSslContext$Defaults"

    const-string v1, "init"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 137
    const-string v0, "unwrap"

    const-string v1, "sun.security.ssl.SSLEngineImpl"

    invoke-virtual {p1, v1, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 141
    const-string v0, "wrap"

    invoke-virtual {p1, v1, v0}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 145
    const-string v0, "io.netty.resolver.dns.UnixResolverDnsServerAddressStreamProvider"

    const-string v1, "parse"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 149
    const-string v2, "parseEtcResolverSearchDomains"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 153
    const-string v2, "parseEtcResolverOptions"

    invoke-virtual {p1, v0, v2}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 157
    const-string v0, "io.netty.resolver.HostsFileEntriesProvider$ParserImpl"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 161
    const-string v0, "io.netty.util.NetUtil$SoMaxConnAction"

    const-string v1, "run"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 165
    const-string v0, "io.netty.util.internal.ReferenceCountUpdater"

    const-string v1, "retryRelease0"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 168
    const-string v0, "io.netty.util.internal.PlatformDependent"

    const-string v1, "createTempFile"

    invoke-virtual {p1, v0, v1}, Lreactor/blockhound/BlockHound$Builder;->allowBlockingCallsInside(Ljava/lang/String;Ljava/lang/String;)Lreactor/blockhound/BlockHound$Builder;

    .line 169
    new-instance v0, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;

    invoke-direct {v0, p0}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration$1;-><init>(Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;)V

    invoke-virtual {p1, v0}, Lreactor/blockhound/BlockHound$Builder;->nonBlockingThreadPredicate(Ljava/util/function/Function;)Lreactor/blockhound/BlockHound$Builder;

    .line 183
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 37
    check-cast p1, Lreactor/blockhound/integration/BlockHoundIntegration;

    invoke-virtual {p0, p1}, Lio/netty/util/internal/Hidden$NettyBlockHoundIntegration;->compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lreactor/blockhound/integration/BlockHoundIntegration;)I
    .locals 1
    .param p1, "o"    # Lreactor/blockhound/integration/BlockHoundIntegration;

    .line 187
    const/4 v0, 0x0

    return v0
.end method
