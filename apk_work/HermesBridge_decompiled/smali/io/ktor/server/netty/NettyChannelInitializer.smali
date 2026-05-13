.class public final Lio/ktor/server/netty/NettyChannelInitializer;
.super Lio/netty/channel/ChannelInitializer;
.source "NettyChannelInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/NettyChannelInitializer$Companion;,
        Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/socket/SocketChannel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyChannelInitializer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyChannelInitializer.kt\nio/ktor/server/netty/NettyChannelInitializer\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,204:1\n37#2,2:205\n37#2,2:208\n1#3:207\n*S KotlinDebug\n*F\n+ 1 NettyChannelInitializer.kt\nio/ktor/server/netty/NettyChannelInitializer\n*L\n55#1:205,2\n90#1:208,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 )2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B|\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u0012\u0017\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017\u00a2\u0006\u0002\u0008\u001a\u00a2\u0006\u0002\u0010\u001bJ\u0018\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0002H\u0014J\u000c\u0010$\u001a\u00020%*\u00020&H\u0002J\u000e\u0010\'\u001a\u0004\u0018\u00010(*\u00020&H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0016\u001a\u0013\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00190\u0017\u00a2\u0006\u0002\u0008\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyChannelInitializer;",
        "Lio/netty/channel/ChannelInitializer;",
        "Lio/netty/channel/socket/SocketChannel;",
        "enginePipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "environment",
        "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
        "callEventGroup",
        "Lio/netty/util/concurrent/EventExecutorGroup;",
        "engineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "userContext",
        "connector",
        "Lio/ktor/server/engine/EngineConnectorConfig;",
        "requestQueueLimit",
        "",
        "runningLimit",
        "responseWriteTimeout",
        "requestReadTimeout",
        "httpServerCodec",
        "Lkotlin/Function0;",
        "Lio/netty/handler/codec/http/HttpServerCodec;",
        "channelPipelineConfig",
        "Lkotlin/Function1;",
        "Lio/netty/channel/ChannelPipeline;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EngineConnectorConfig;IIIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V",
        "sslContext",
        "Lio/netty/handler/ssl/SslContext;",
        "configurePipeline",
        "pipeline",
        "protocol",
        "",
        "initChannel",
        "ch",
        "hasTrustStore",
        "",
        "Lio/ktor/server/engine/EngineSSLConnectorConfig;",
        "trustManagerFactory",
        "Ljavax/net/ssl/TrustManagerFactory;",
        "Companion",
        "NegotiatedPipelineInitializer",
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


# static fields
.field public static final Companion:Lio/ktor/server/netty/NettyChannelInitializer$Companion;

.field private static final alpnProvider$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/netty/handler/ssl/SslProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

.field private final channelPipelineConfig:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lio/netty/channel/ChannelPipeline;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final connector:Lio/ktor/server/engine/EngineConnectorConfig;

.field private final engineContext:Lkotlin/coroutines/CoroutineContext;

.field private final enginePipeline:Lio/ktor/server/engine/EnginePipeline;

.field private final environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

.field private final httpServerCodec:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/netty/handler/codec/http/HttpServerCodec;",
            ">;"
        }
    .end annotation
.end field

.field private final requestQueueLimit:I

.field private final requestReadTimeout:I

.field private final responseWriteTimeout:I

.field private final runningLimit:I

.field private sslContext:Lio/netty/handler/ssl/SslContext;

.field private final userContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public static synthetic $r8$lambda$z2B0uIYW-ln0hQD9FfKpwU_fHQc(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0, p1}, Lio/ktor/server/netty/NettyChannelInitializer;->configurePipeline$lambda$5(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/netty/NettyChannelInitializer;->Companion:Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    .line 183
    sget-object v0, Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;->INSTANCE:Lio/ktor/server/netty/NettyChannelInitializer$Companion$alpnProvider$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/NettyChannelInitializer;->alpnProvider$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EngineConnectorConfig;IIIILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 22
    .param p1, "enginePipeline"    # Lio/ktor/server/engine/EnginePipeline;
    .param p2, "environment"    # Lio/ktor/server/engine/ApplicationEngineEnvironment;
    .param p3, "callEventGroup"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p4, "engineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "userContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p6, "connector"    # Lio/ktor/server/engine/EngineConnectorConfig;
    .param p7, "requestQueueLimit"    # I
    .param p8, "runningLimit"    # I
    .param p9, "responseWriteTimeout"    # I
    .param p10, "requestReadTimeout"    # I
    .param p11, "httpServerCodec"    # Lkotlin/jvm/functions/Function0;
    .param p12, "channelPipelineConfig"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/server/engine/EnginePipeline;",
            "Lio/ktor/server/engine/ApplicationEngineEnvironment;",
            "Lio/netty/util/concurrent/EventExecutorGroup;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lio/ktor/server/engine/EngineConnectorConfig;",
            "IIII",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/netty/handler/codec/http/HttpServerCodec;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/netty/channel/ChannelPipeline;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    const-string v9, "enginePipeline"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "environment"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "callEventGroup"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "engineContext"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "userContext"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "connector"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "httpServerCodec"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "channelPipelineConfig"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct/range {p0 .. p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    .line 30
    iput-object v1, v0, Lio/ktor/server/netty/NettyChannelInitializer;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 31
    iput-object v2, v0, Lio/ktor/server/netty/NettyChannelInitializer;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    .line 32
    iput-object v3, v0, Lio/ktor/server/netty/NettyChannelInitializer;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    .line 33
    iput-object v4, v0, Lio/ktor/server/netty/NettyChannelInitializer;->engineContext:Lkotlin/coroutines/CoroutineContext;

    .line 34
    iput-object v5, v0, Lio/ktor/server/netty/NettyChannelInitializer;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 35
    iput-object v6, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    .line 36
    move/from16 v9, p7

    iput v9, v0, Lio/ktor/server/netty/NettyChannelInitializer;->requestQueueLimit:I

    .line 37
    move/from16 v10, p8

    iput v10, v0, Lio/ktor/server/netty/NettyChannelInitializer;->runningLimit:I

    .line 38
    move/from16 v11, p9

    iput v11, v0, Lio/ktor/server/netty/NettyChannelInitializer;->responseWriteTimeout:I

    .line 39
    move/from16 v12, p10

    iput v12, v0, Lio/ktor/server/netty/NettyChannelInitializer;->requestReadTimeout:I

    .line 40
    iput-object v7, v0, Lio/ktor/server/netty/NettyChannelInitializer;->httpServerCodec:Lkotlin/jvm/functions/Function0;

    .line 41
    iput-object v8, v0, Lio/ktor/server/netty/NettyChannelInitializer;->channelPipelineConfig:Lkotlin/jvm/functions/Function1;

    .line 45
    nop

    .line 46
    iget-object v13, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    instance-of v13, v13, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    if-eqz v13, :cond_2

    .line 54
    iget-object v13, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v13, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-interface {v13}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v13

    iget-object v14, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v14, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-interface {v14}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getKeyAlias()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v13

    const-string v14, "connector.keyStore.getCe\u2026Chain(connector.keyAlias)"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, [Ljava/lang/Object;

    invoke-static {v13}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const-string v14, "null cannot be cast to non-null type kotlin.collections.List<java.security.cert.X509Certificate>"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v13, "chain1":Ljava/util/List;
    move-object v14, v13

    check-cast v14, Ljava/lang/Iterable;

    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    .local v14, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v15, 0x0

    .line 205
    .local v15, "$i$f$toTypedArray":I
    move-object/from16 v16, v14

    .line 206
    .local v16, "thisCollection$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    move-object/from16 v2, v16

    .end local v16    # "thisCollection$iv":Ljava/util/Collection;
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 55
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    .end local v14    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v15    # "$i$f$toTypedArray":I
    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 56
    .local v1, "certs":[Ljava/security/cert/X509Certificate;
    iget-object v2, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v2, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-interface {v2}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getPrivateKeyPassword()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    .line 57
    .local v2, "password":[C
    iget-object v14, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v14, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-interface {v14}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v14

    iget-object v15, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v15, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-interface {v15}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getKeyAlias()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type java.security.PrivateKey"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v15, v14

    check-cast v15, Ljava/security/PrivateKey;

    .line 58
    .local v15, "pk":Ljava/security/PrivateKey;
    const/16 v18, 0x6

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object v14, v2

    move-object/from16 v21, v2

    move-object v2, v15

    .end local v15    # "pk":Ljava/security/PrivateKey;
    .local v2, "pk":Ljava/security/PrivateKey;
    .local v21, "password":[C
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v20

    invoke-static/range {v14 .. v19}, Lkotlin/collections/ArraysKt;->fill$default([CCIIILjava/lang/Object;)V

    .line 60
    array-length v14, v1

    invoke-static {v1, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/security/cert/X509Certificate;

    invoke-static {v2, v14}, Lio/netty/handler/ssl/SslContextBuilder;->forServer(Ljava/security/PrivateKey;[Ljava/security/cert/X509Certificate;)Lio/netty/handler/ssl/SslContextBuilder;

    move-result-object v14

    move-object v15, v14

    .local v15, "$this$_init__u24lambda_u241":Lio/netty/handler/ssl/SslContextBuilder;
    const/16 v16, 0x0

    .line 61
    .local v16, "$i$a$-apply-NettyChannelInitializer$1":I
    sget-object v17, Lio/ktor/server/netty/NettyChannelInitializer;->Companion:Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    invoke-virtual/range {v17 .. v17}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;->getAlpnProvider$ktor_server_netty()Lio/netty/handler/ssl/SslProvider;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 62
    sget-object v17, Lio/ktor/server/netty/NettyChannelInitializer;->Companion:Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    move-object/from16 v18, v1

    .end local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .local v18, "certs":[Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;->getAlpnProvider$ktor_server_netty()Lio/netty/handler/ssl/SslProvider;

    move-result-object v1

    invoke-virtual {v15, v1}, Lio/netty/handler/ssl/SslContextBuilder;->sslProvider(Lio/netty/handler/ssl/SslProvider;)Lio/netty/handler/ssl/SslContextBuilder;

    .line 63
    sget-object v1, Lio/netty/handler/codec/http2/Http2SecurityUtil;->CIPHERS:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    sget-object v17, Lio/netty/handler/ssl/SupportedCipherSuiteFilter;->INSTANCE:Lio/netty/handler/ssl/SupportedCipherSuiteFilter;

    move-object/from16 v19, v2

    .end local v2    # "pk":Ljava/security/PrivateKey;
    .local v19, "pk":Ljava/security/PrivateKey;
    move-object/from16 v2, v17

    check-cast v2, Lio/netty/handler/ssl/CipherSuiteFilter;

    invoke-virtual {v15, v1, v2}, Lio/netty/handler/ssl/SslContextBuilder;->ciphers(Ljava/lang/Iterable;Lio/netty/handler/ssl/CipherSuiteFilter;)Lio/netty/handler/ssl/SslContextBuilder;

    .line 64
    nop

    .line 65
    new-instance v1, Lio/netty/handler/ssl/ApplicationProtocolConfig;

    .line 66
    sget-object v2, Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;->ALPN:Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;

    .line 67
    sget-object v3, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;->NO_ADVERTISE:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;

    .line 68
    sget-object v4, Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;->ACCEPT:Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;

    .line 69
    nop

    .line 70
    const-string v5, "http/1.1"

    const-string v6, "h2"

    filled-new-array {v6, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 69
    nop

    .line 65
    invoke-direct {v1, v2, v3, v4, v5}, Lio/netty/handler/ssl/ApplicationProtocolConfig;-><init>(Lio/netty/handler/ssl/ApplicationProtocolConfig$Protocol;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectorFailureBehavior;Lio/netty/handler/ssl/ApplicationProtocolConfig$SelectedListenerFailureBehavior;[Ljava/lang/String;)V

    .line 64
    invoke-virtual {v15, v1}, Lio/netty/handler/ssl/SslContextBuilder;->applicationProtocolConfig(Lio/netty/handler/ssl/ApplicationProtocolConfig;)Lio/netty/handler/ssl/SslContextBuilder;

    goto :goto_0

    .line 61
    .end local v18    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v19    # "pk":Ljava/security/PrivateKey;
    .restart local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v2    # "pk":Ljava/security/PrivateKey;
    :cond_0
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    .line 74
    .end local v1    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v2    # "pk":Ljava/security/PrivateKey;
    .restart local v18    # "certs":[Ljava/security/cert/X509Certificate;
    .restart local v19    # "pk":Ljava/security/PrivateKey;
    :goto_0
    iget-object v1, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v1, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-direct {v0, v1}, Lio/ktor/server/netty/NettyChannelInitializer;->trustManagerFactory(Lio/ktor/server/engine/EngineSSLConnectorConfig;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 207
    .local v1, "it":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v2, 0x0

    .line 74
    .local v2, "$i$a$-let-NettyChannelInitializer$1$1":I
    invoke-virtual {v15, v1}, Lio/netty/handler/ssl/SslContextBuilder;->trustManager(Ljavax/net/ssl/TrustManagerFactory;)Lio/netty/handler/ssl/SslContextBuilder;

    .line 75
    .end local v1    # "it":Ljavax/net/ssl/TrustManagerFactory;
    .end local v2    # "$i$a$-let-NettyChannelInitializer$1$1":I
    :cond_1
    nop

    .line 60
    .end local v15    # "$this$_init__u24lambda_u241":Lio/netty/handler/ssl/SslContextBuilder;
    .end local v16    # "$i$a$-apply-NettyChannelInitializer$1":I
    nop

    .line 76
    invoke-virtual {v14}, Lio/netty/handler/ssl/SslContextBuilder;->build()Lio/netty/handler/ssl/SslContext;

    move-result-object v1

    .line 60
    iput-object v1, v0, Lio/ktor/server/netty/NettyChannelInitializer;->sslContext:Lio/netty/handler/ssl/SslContext;

    .line 78
    .end local v13    # "chain1":Ljava/util/List;
    .end local v18    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v19    # "pk":Ljava/security/PrivateKey;
    .end local v21    # "password":[C
    :cond_2
    nop

    .line 29
    return-void
.end method

.method public static final synthetic access$configurePipeline(Lio/ktor/server/netty/NettyChannelInitializer;Lio/netty/channel/ChannelPipeline;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lio/ktor/server/netty/NettyChannelInitializer;
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "protocol"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1, p2}, Lio/ktor/server/netty/NettyChannelInitializer;->configurePipeline(Lio/netty/channel/ChannelPipeline;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getAlpnProvider$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 29
    sget-object v0, Lio/ktor/server/netty/NettyChannelInitializer;->alpnProvider$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final configurePipeline(Lio/netty/channel/ChannelPipeline;Ljava/lang/String;)V
    .locals 8
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "protocol"    # Ljava/lang/String;

    .line 107
    nop

    .line 108
    const-string v0, "h2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2Handler;

    .line 110
    iget-object v2, p0, Lio/ktor/server/netty/NettyChannelInitializer;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 111
    iget-object v1, p0, Lio/ktor/server/netty/NettyChannelInitializer;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v1}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getApplication()Lio/ktor/server/application/Application;

    move-result-object v3

    .line 112
    iget-object v4, p0, Lio/ktor/server/netty/NettyChannelInitializer;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    .line 113
    iget-object v5, p0, Lio/ktor/server/netty/NettyChannelInitializer;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 114
    iget v6, p0, Lio/ktor/server/netty/NettyChannelInitializer;->runningLimit:I

    .line 109
    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/ktor/server/netty/http2/NettyHttp2Handler;-><init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/application/Application;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;I)V

    .line 117
    .local v0, "handler":Lio/ktor/server/netty/http2/NettyHttp2Handler;
    const/4 v1, 0x1

    new-array v1, v1, [Lio/netty/channel/ChannelHandler;

    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelHandler;

    invoke-static {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodecBuilder;->forServer(Lio/netty/channel/ChannelHandler;)Lio/netty/handler/codec/http2/Http2MultiplexCodecBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2MultiplexCodecBuilder;->build()Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 118
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->closeFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v1

    new-instance v2, Lio/ktor/server/netty/NettyChannelInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lio/ktor/server/netty/NettyChannelInitializer$$ExternalSyntheticLambda0;-><init>(Lio/ktor/server/netty/http2/NettyHttp2Handler;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 121
    iget-object v1, p0, Lio/ktor/server/netty/NettyChannelInitializer;->channelPipelineConfig:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 123
    .end local v0    # "handler":Lio/ktor/server/netty/http2/NettyHttp2Handler;
    :cond_0
    const-string v0, "http/1.1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-instance v0, Lio/ktor/server/netty/http1/NettyHttp1Handler;

    .line 125
    iget-object v2, p0, Lio/ktor/server/netty/NettyChannelInitializer;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 126
    iget-object v3, p0, Lio/ktor/server/netty/NettyChannelInitializer;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    .line 127
    iget-object v4, p0, Lio/ktor/server/netty/NettyChannelInitializer;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    .line 128
    iget-object v5, p0, Lio/ktor/server/netty/NettyChannelInitializer;->engineContext:Lkotlin/coroutines/CoroutineContext;

    .line 129
    iget-object v6, p0, Lio/ktor/server/netty/NettyChannelInitializer;->userContext:Lkotlin/coroutines/CoroutineContext;

    .line 130
    iget v7, p0, Lio/ktor/server/netty/NettyChannelInitializer;->runningLimit:I

    .line 124
    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lio/ktor/server/netty/http1/NettyHttp1Handler;-><init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/engine/ApplicationEngineEnvironment;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;I)V

    .line 133
    .local v0, "handler":Lio/ktor/server/netty/http1/NettyHttp1Handler;
    move-object v1, p1

    .local v1, "$this$configurePipeline_u24lambda_u246":Lio/netty/channel/ChannelPipeline;
    const/4 v2, 0x0

    .line 135
    .local v2, "$i$a$-with-NettyChannelInitializer$configurePipeline$2":I
    iget v3, p0, Lio/ktor/server/netty/NettyChannelInitializer;->requestReadTimeout:I

    if-lez v3, :cond_1

    .line 136
    new-instance v3, Lio/netty/handler/timeout/ReadTimeoutHandler;

    iget v4, p0, Lio/ktor/server/netty/NettyChannelInitializer;->requestReadTimeout:I

    invoke-direct {v3, v4}, Lio/netty/handler/timeout/ReadTimeoutHandler;-><init>(I)V

    check-cast v3, Lio/netty/channel/ChannelHandler;

    const-string v4, "readTimeout"

    invoke-interface {v1, v4, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 138
    :cond_1
    iget-object v3, p0, Lio/ktor/server/netty/NettyChannelInitializer;->httpServerCodec:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/ChannelHandler;

    const-string v4, "codec"

    invoke-interface {v1, v4, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 139
    new-instance v3, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;

    invoke-direct {v3}, Lio/netty/handler/codec/http/HttpServerExpectContinueHandler;-><init>()V

    check-cast v3, Lio/netty/channel/ChannelHandler;

    const-string v5, "continue"

    invoke-interface {v1, v5, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 140
    new-instance v3, Lio/netty/handler/timeout/WriteTimeoutHandler;

    iget v5, p0, Lio/ktor/server/netty/NettyChannelInitializer;->responseWriteTimeout:I

    invoke-direct {v3, v5}, Lio/netty/handler/timeout/WriteTimeoutHandler;-><init>(I)V

    check-cast v3, Lio/netty/channel/ChannelHandler;

    const-string v5, "timeout"

    invoke-interface {v1, v5, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 141
    const-string v3, "http1"

    move-object v5, v0

    check-cast v5, Lio/netty/channel/ChannelHandler;

    invoke-interface {v1, v3, v5}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 142
    iget-object v3, p0, Lio/ktor/server/netty/NettyChannelInitializer;->channelPipelineConfig:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    nop

    .line 133
    .end local v1    # "$this$configurePipeline_u24lambda_u246":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "$i$a$-with-NettyChannelInitializer$configurePipeline$2":I
    nop

    .line 145
    invoke-interface {p1, v4}, Lio/netty/channel/ChannelPipeline;->context(Ljava/lang/String;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    goto :goto_0

    .line 148
    .end local v0    # "handler":Lio/ktor/server/netty/http1/NettyHttp1Handler;
    :cond_2
    iget-object v0, p0, Lio/ktor/server/netty/NettyChannelInitializer;->environment:Lio/ktor/server/engine/ApplicationEngineEnvironment;

    invoke-interface {v0}, Lio/ktor/server/engine/ApplicationEngineEnvironment;->getLog()Lorg/slf4j/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported protocol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 149
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->close()Lio/netty/channel/ChannelFuture;

    .line 152
    :goto_0
    return-void
.end method

.method private static final configurePipeline$lambda$5(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/util/concurrent/Future;)V
    .locals 3
    .param p0, "$handler"    # Lio/ktor/server/netty/http2/NettyHttp2Handler;
    .param p1, "it"    # Lio/netty/util/concurrent/Future;

    const-string v0, "$handler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method private final hasTrustStore(Lio/ktor/server/engine/EngineSSLConnectorConfig;)Z
    .locals 1
    .param p1, "$this$hasTrustStore"    # Lio/ktor/server/engine/EngineSSLConnectorConfig;

    .line 154
    invoke-interface {p1}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getTrustStore()Ljava/security/KeyStore;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getTrustStorePath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final trustManagerFactory(Lio/ktor/server/engine/EngineSSLConnectorConfig;)Ljavax/net/ssl/TrustManagerFactory;
    .locals 10
    .param p1, "$this$trustManagerFactory"    # Lio/ktor/server/engine/EngineSSLConnectorConfig;

    .line 157
    invoke-interface {p1}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getTrustStore()Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getTrustStorePath()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$a$-let-NettyChannelInitializer$trustManagerFactory$trustStore$1":I
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast v3, Ljava/io/Closeable;

    :try_start_0
    move-object v4, v3

    check-cast v4, Ljava/io/FileInputStream;

    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 159
    .local v5, "$i$a$-use-NettyChannelInitializer$trustManagerFactory$trustStore$1$1":I
    const-string v6, "JKS"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    move-object v7, v6

    .line 207
    .local v7, "it":Ljava/security/KeyStore;
    const/4 v8, 0x0

    .line 159
    .local v8, "$i$a$-also-NettyChannelInitializer$trustManagerFactory$trustStore$1$1$1":I
    move-object v9, v4

    check-cast v9, Ljava/io/InputStream;

    invoke-virtual {v7, v9, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "$i$a$-use-NettyChannelInitializer$trustManagerFactory$trustStore$1$1":I
    .end local v7    # "it":Ljava/security/KeyStore;
    .end local v8    # "$i$a$-also-NettyChannelInitializer$trustManagerFactory$trustStore$1$1$1":I
    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 157
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "$i$a$-let-NettyChannelInitializer$trustManagerFactory$trustStore$1":I
    move-object v0, v6

    goto :goto_0

    .line 158
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "$i$a$-let-NettyChannelInitializer$trustManagerFactory$trustStore$1":I
    :catchall_0
    move-exception v1

    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "$i$a$-let-NettyChannelInitializer$trustManagerFactory$trustStore$1":I
    .end local p1    # "$this$trustManagerFactory":Lio/ktor/server/engine/EngineSSLConnectorConfig;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "$i$a$-let-NettyChannelInitializer$trustManagerFactory$trustStore$1":I
    .restart local p1    # "$this$trustManagerFactory":Lio/ktor/server/engine/EngineSSLConnectorConfig;
    :catchall_1
    move-exception v4

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    .line 157
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "$i$a$-let-NettyChannelInitializer$trustManagerFactory$trustStore$1":I
    :cond_0
    move-object v0, v1

    .line 162
    .local v0, "trustStore":Ljava/security/KeyStore;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    .local v1, "store":Ljava/security/KeyStore;
    const/4 v2, 0x0

    .line 163
    .local v2, "$i$a$-let-NettyChannelInitializer$trustManagerFactory$1":I
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    move-object v4, v3

    .line 207
    .local v4, "it":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    .line 163
    .local v5, "$i$a$-also-NettyChannelInitializer$trustManagerFactory$1$1":I
    invoke-virtual {v4, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 162
    .end local v1    # "store":Ljava/security/KeyStore;
    .end local v2    # "$i$a$-let-NettyChannelInitializer$trustManagerFactory$1":I
    .end local v4    # "it":Ljavax/net/ssl/TrustManagerFactory;
    .end local v5    # "$i$a$-also-NettyChannelInitializer$trustManagerFactory$1$1":I
    move-object v1, v3

    :cond_2
    return-object v1
.end method


# virtual methods
.method public bridge synthetic initChannel(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "p0"    # Lio/netty/channel/Channel;

    .line 29
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/SocketChannel;

    invoke-virtual {p0, v0}, Lio/ktor/server/netty/NettyChannelInitializer;->initChannel(Lio/netty/channel/socket/SocketChannel;)V

    return-void
.end method

.method protected initChannel(Lio/netty/channel/socket/SocketChannel;)V
    .locals 16
    .param p1, "ch"    # Lio/netty/channel/socket/SocketChannel;

    move-object/from16 v0, p0

    const-string v1, "ch"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/socket/SocketChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .local v1, "$this$initChannel_u24lambda_u244":Lio/netty/channel/ChannelPipeline;
    const/4 v3, 0x0

    .line 83
    .local v3, "$i$a$-with-NettyChannelInitializer$initChannel$1":I
    iget-object v4, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    instance-of v4, v4, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    const-string v5, "http/1.1"

    const-string v6, "this"

    if-eqz v4, :cond_3

    .line 84
    iget-object v4, v0, Lio/ktor/server/netty/NettyChannelInitializer;->sslContext:Lio/netty/handler/ssl/SslContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Lio/netty/channel/socket/SocketChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v7

    invoke-virtual {v4, v7}, Lio/netty/handler/ssl/SslContext;->newEngine(Lio/netty/buffer/ByteBufAllocator;)Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    move-object v7, v4

    .local v7, "$this$initChannel_u24lambda_u244_u24lambda_u243":Ljavax/net/ssl/SSLEngine;
    const/4 v8, 0x0

    .line 85
    .local v8, "$i$a$-apply-NettyChannelInitializer$initChannel$1$sslEngine$1":I
    iget-object v9, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v9, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-direct {v0, v9}, Lio/ktor/server/netty/NettyChannelInitializer;->hasTrustStore(Lio/ktor/server/engine/EngineSSLConnectorConfig;)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_0

    .line 86
    invoke-virtual {v7, v11}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 87
    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 89
    :cond_0
    iget-object v9, v0, Lio/ktor/server/netty/NettyChannelInitializer;->connector:Lio/ktor/server/engine/EngineConnectorConfig;

    check-cast v9, Lio/ktor/server/engine/EngineSSLConnectorConfig;

    invoke-interface {v9}, Lio/ktor/server/engine/EngineSSLConnectorConfig;->getEnabledProtocols()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    .local v9, "it":Ljava/util/List;
    const/4 v12, 0x0

    .line 90
    .local v12, "$i$a$-let-NettyChannelInitializer$initChannel$1$sslEngine$1$1":I
    move-object v13, v9

    check-cast v13, Ljava/util/Collection;

    .local v13, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v14, 0x0

    .line 208
    .local v14, "$i$f$toTypedArray":I
    move-object v15, v13

    .line 209
    .local v15, "thisCollection$iv":Ljava/util/Collection;
    new-array v10, v11, [Ljava/lang/String;

    invoke-interface {v15, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .end local v13    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v14    # "$i$f$toTypedArray":I
    .end local v15    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v10, [Ljava/lang/String;

    .line 90
    invoke-virtual {v7, v10}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 91
    nop

    .line 89
    .end local v9    # "it":Ljava/util/List;
    .end local v12    # "$i$a$-let-NettyChannelInitializer$initChannel$1$sslEngine$1$1":I
    nop

    .line 92
    :cond_1
    nop

    .line 84
    .end local v7    # "$this$initChannel_u24lambda_u244_u24lambda_u243":Ljavax/net/ssl/SSLEngine;
    .end local v8    # "$i$a$-apply-NettyChannelInitializer$initChannel$1$sslEngine$1":I
    nop

    .line 93
    .local v4, "sslEngine":Ljavax/net/ssl/SSLEngine;
    new-instance v7, Lio/netty/handler/ssl/SslHandler;

    invoke-direct {v7, v4}, Lio/netty/handler/ssl/SslHandler;-><init>(Ljavax/net/ssl/SSLEngine;)V

    check-cast v7, Lio/netty/channel/ChannelHandler;

    const-string v8, "ssl"

    invoke-interface {v1, v8, v7}, Lio/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 95
    sget-object v7, Lio/ktor/server/netty/NettyChannelInitializer;->Companion:Lio/ktor/server/netty/NettyChannelInitializer$Companion;

    invoke-virtual {v7}, Lio/ktor/server/netty/NettyChannelInitializer$Companion;->getAlpnProvider$ktor_server_netty()Lio/netty/handler/ssl/SslProvider;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 96
    const/4 v5, 0x1

    new-array v5, v5, [Lio/netty/channel/ChannelHandler;

    new-instance v6, Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;

    invoke-direct {v6, v0}, Lio/ktor/server/netty/NettyChannelInitializer$NegotiatedPipelineInitializer;-><init>(Lio/ktor/server/netty/NettyChannelInitializer;)V

    aput-object v6, v5, v11

    invoke-interface {v1, v5}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 98
    :cond_2
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lio/ktor/server/netty/NettyChannelInitializer;->configurePipeline(Lio/netty/channel/ChannelPipeline;Ljava/lang/String;)V

    .end local v4    # "sslEngine":Ljavax/net/ssl/SSLEngine;
    goto :goto_0

    .line 101
    :cond_3
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v5}, Lio/ktor/server/netty/NettyChannelInitializer;->configurePipeline(Lio/netty/channel/ChannelPipeline;Ljava/lang/String;)V

    .line 83
    :goto_0
    nop

    .line 82
    .end local v1    # "$this$initChannel_u24lambda_u244":Lio/netty/channel/ChannelPipeline;
    .end local v3    # "$i$a$-with-NettyChannelInitializer$initChannel$1":I
    nop

    .line 104
    return-void
.end method
