.class public final Lio/ktor/server/netty/http2/NettyHttp2Handler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "NettyHttp2Handler.kt"

# interfaces
.implements Lkotlinx/coroutines/CoroutineScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;,
        Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyHttp2Handler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyHttp2Handler.kt\nio/ktor/server/netty/http2/NettyHttp2Handler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1282#2,2:226\n1#3:228\n*S KotlinDebug\n*F\n+ 1 NettyHttp2Handler.kt\nio/ktor/server/netty/http2/NettyHttp2Handler\n*L\n173#1:226,2\n*E\n"
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0001\u0018\u0000 ?2\u00020\u00012\u00020\u0002:\u0002?@B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010)\u001a\u00020\"2\u0006\u0010*\u001a\u00020$2\u0006\u0010+\u001a\u00020,H\u0016J\u0018\u0010-\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010.\u001a\u00020/H\u0002J\u001d\u00100\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u00101\u001a\u000202H\u0001\u00a2\u0006\u0002\u00083J\u0011\u00104\u001a\u00020\u0018*\u0006\u0012\u0002\u0008\u000305H\u0082\u0010J\u0014\u00106\u001a\u00020\"*\u0002072\u0006\u00108\u001a\u00020\u000cH\u0002J\u001c\u00109\u001a\u00020:*\u00020\u001e2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020>H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0017\u001a\u0004\u0018\u00010\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001d\u001a\u00020\u0018*\u00020\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 \u00a8\u0006A"
    }
    d2 = {
        "Lio/ktor/server/netty/http2/NettyHttp2Handler;",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "enginePipeline",
        "Lio/ktor/server/engine/EnginePipeline;",
        "application",
        "Lio/ktor/server/application/Application;",
        "callEventGroup",
        "Lio/netty/util/concurrent/EventExecutorGroup;",
        "userCoroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "runningLimit",
        "",
        "(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/application/Application;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;I)V",
        "coroutineContext",
        "getCoroutineContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "handlerJob",
        "Lkotlinx/coroutines/CompletableJob;",
        "responseWriter",
        "Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;",
        "state",
        "Lio/ktor/server/netty/NettyHttpHandlerState;",
        "streamKeyField",
        "Ljava/lang/reflect/Field;",
        "getStreamKeyField",
        "()Ljava/lang/reflect/Field;",
        "streamKeyField$delegate",
        "Lkotlin/Lazy;",
        "idField",
        "Lio/netty/handler/codec/http2/Http2FrameStream;",
        "getIdField",
        "(Lio/netty/handler/codec/http2/Http2FrameStream;)Ljava/lang/reflect/Field;",
        "channelActive",
        "",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "channelRead",
        "message",
        "",
        "channelReadComplete",
        "exceptionCaught",
        "ctx",
        "cause",
        "",
        "startHttp2",
        "headers",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        "startHttp2PushPromise",
        "builder",
        "Lio/ktor/server/response/ResponsePushBuilder;",
        "startHttp2PushPromise$ktor_server_netty",
        "findIdField",
        "Ljava/lang/Class;",
        "setId",
        "Lio/netty/handler/codec/http2/Http2StreamChannel;",
        "streamId",
        "setStreamAndProperty",
        "",
        "codec",
        "Lio/netty/handler/codec/http2/Http2FrameCodec;",
        "childStream",
        "Lio/netty/handler/codec/http2/Http2Stream;",
        "Companion",
        "Http2ClosedChannelException",
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
.field private static final ApplicationCallKey:Lio/netty/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/AttributeKey<",
            "Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;


# instance fields
.field private final application:Lio/ktor/server/application/Application;

.field private final callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

.field private final enginePipeline:Lio/ktor/server/engine/EnginePipeline;

.field private final handlerJob:Lkotlinx/coroutines/CompletableJob;

.field private responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

.field private final state:Lio/ktor/server/netty/NettyHttpHandlerState;

.field private final streamKeyField$delegate:Lkotlin/Lazy;

.field private final userCoroutineContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method public static synthetic $r8$lambda$BiG5hCxaAjLEkVL8VXztkdTdz-M(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/handler/codec/http2/Http2StreamChannel;Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/util/concurrent/Future;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->startHttp2PushPromise$lambda$4(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/handler/codec/http2/Http2StreamChannel;Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/util/concurrent/Future;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->Companion:Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;

    .line 216
    const-string v0, "ktor.ApplicationCall"

    invoke-static {v0}, Lio/netty/util/AttributeKey;->newInstance(Ljava/lang/String;)Lio/netty/util/AttributeKey;

    move-result-object v0

    sput-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->ApplicationCallKey:Lio/netty/util/AttributeKey;

    return-void
.end method

.method public constructor <init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/application/Application;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;I)V
    .locals 2
    .param p1, "enginePipeline"    # Lio/ktor/server/engine/EnginePipeline;
    .param p2, "application"    # Lio/ktor/server/application/Application;
    .param p3, "callEventGroup"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p4, "userCoroutineContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "runningLimit"    # I

    const-string v0, "enginePipeline"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "application"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callEventGroup"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userCoroutineContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    .line 25
    iput-object p2, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->application:Lio/ktor/server/application/Application;

    .line 26
    iput-object p3, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    .line 27
    iput-object p4, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->userCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 30
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->userCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-static {v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob(Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->handlerJob:Lkotlinx/coroutines/CompletableJob;

    .line 32
    new-instance v0, Lio/ktor/server/netty/NettyHttpHandlerState;

    invoke-direct {v0, p5}, Lio/ktor/server/netty/NettyHttpHandlerState;-><init>(I)V

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    .line 160
    sget-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;->INSTANCE:Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->streamKeyField$delegate:Lkotlin/Lazy;

    .line 23
    return-void
.end method

.method public static final synthetic access$getApplicationCallKey$cp()Lio/netty/util/AttributeKey;
    .locals 1

    .line 22
    sget-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->ApplicationCallKey:Lio/netty/util/AttributeKey;

    return-object v0
.end method

.method private final findIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "$this$findIdField"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 189
    nop

    :goto_0
    nop

    .line 190
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "t":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    move-object v0, v1

    .line 189
    .end local v0    # "t":Ljava/lang/NoSuchFieldException;
    :goto_1
    nop

    .line 194
    .local v0, "idField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    return-object v0

    .line 199
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 200
    .local v1, "superclass":Ljava/lang/Class;
    move-object p1, v1

    .end local v0    # "idField":Ljava/lang/reflect/Field;
    .end local v1    # "superclass":Ljava/lang/Class;
    goto :goto_0

    .line 199
    .restart local v0    # "idField":Ljava/lang/reflect/Field;
    :cond_1
    new-instance v1, Ljava/lang/NoSuchFieldException;

    const-string v2, "id field not found"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final getIdField(Lio/netty/handler/codec/http2/Http2FrameStream;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "$this$idField"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->findIdField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method private final getStreamKeyField()Ljava/lang/reflect/Field;
    .locals 1

    .line 160
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->streamKeyField$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method private final setId(Lio/netty/handler/codec/http2/Http2StreamChannel;I)V
    .locals 2
    .param p1, "$this$setId"    # Lio/netty/handler/codec/http2/Http2StreamChannel;
    .param p2, "streamId"    # I

    .line 156
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    .local v0, "stream":Lio/netty/handler/codec/http2/Http2FrameStream;
    invoke-direct {p0, v0}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->getIdField(Lio/netty/handler/codec/http2/Http2FrameStream;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 158
    return-void
.end method

.method private final setStreamAndProperty(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2Stream;)Z
    .locals 12
    .param p1, "$this$setStreamAndProperty"    # Lio/netty/handler/codec/http2/Http2FrameStream;
    .param p2, "codec"    # Lio/netty/handler/codec/http2/Http2FrameCodec;
    .param p3, "childStream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 170
    invoke-direct {p0}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->getStreamKeyField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    if-eqz v2, :cond_1

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_2

    return v2

    .line 172
    .local v0, "streamKey":Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "javaClass.declaredMethods"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/Object;

    .line 173
    nop

    .local v3, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 226
    .local v4, "$i$f$firstOrNull":I
    array-length v5, v3

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v3, v6

    .local v7, "element$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Ljava/lang/reflect/Method;

    .local v8, "it":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .line 173
    .local v9, "$i$a$-firstOrNull-NettyHttp2Handler$setStreamAndProperty$function$1":I
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "setStreamAndProperty"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 226
    .end local v8    # "it":Ljava/lang/reflect/Method;
    .end local v9    # "$i$a$-firstOrNull-NettyHttp2Handler$setStreamAndProperty$function$1":I
    if-eqz v8, :cond_3

    move-object v1, v7

    goto :goto_3

    .end local v7    # "element$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 227
    :cond_4
    nop

    .line 173
    .end local v3    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$firstOrNull":I
    :goto_3
    check-cast v1, Ljava/lang/reflect/Method;

    .line 174
    if-eqz v1, :cond_5

    .line 173
    nop

    .line 174
    move-object v3, v1

    .line 228
    .local v3, "it":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    .line 174
    .local v4, "$i$a$-also-NettyHttp2Handler$setStreamAndProperty$function$2":I
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 172
    .end local v3    # "it":Ljava/lang/reflect/Method;
    .end local v4    # "$i$a$-also-NettyHttp2Handler$setStreamAndProperty$function$2":I
    nop

    .line 176
    .local v1, "function":Ljava/lang/reflect/Method;
    nop

    .line 177
    :try_start_0
    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    return v5

    .line 178
    :catchall_0
    move-exception v3

    .line 179
    .local v3, "cause":Ljava/lang/Throwable;
    return v2

    .line 174
    .end local v1    # "function":Ljava/lang/reflect/Method;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :cond_5
    return v2
.end method

.method private final startHttp2(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 8
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 92
    new-instance v7, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    .line 93
    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->application:Lio/ktor/server/application/Application;

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 97
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->handlerJob:Lkotlinx/coroutines/CompletableJob;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v2}, Lkotlinx/coroutines/CompletableJob;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 98
    iget-object v6, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->userCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 92
    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;-><init>(Lio/ktor/server/application/Application;Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;Lio/ktor/server/netty/http2/NettyHttp2Handler;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;)V

    .line 100
    .local v0, "call":Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;
    sget-object v1, Lio/ktor/server/netty/http2/NettyHttp2Handler;->Companion:Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;

    invoke-static {v1, p1, v0}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;->access$setApplicationCall(Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;)V

    .line 102
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 103
    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    if-nez v1, :cond_0

    const-string v1, "responseWriter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Lio/ktor/server/netty/NettyApplicationCall;

    invoke-virtual {v1, v2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->processResponse$ktor_server_netty(Lio/ktor/server/netty/NettyApplicationCall;)V

    .line 104
    return-void
.end method

.method private static final startHttp2PushPromise$lambda$4(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/handler/codec/http2/Http2StreamChannel;Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p0, "this$0"    # Lio/ktor/server/netty/http2/NettyHttp2Handler;
    .param p1, "$child"    # Lio/netty/handler/codec/http2/Http2StreamChannel;
    .param p2, "$headers"    # Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    .param p3, "future"    # Lio/netty/util/concurrent/Future;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-interface {p3}, Lio/netty/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 149
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->firstContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    const-string v1, "child.pipeline().firstContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http2/Http2Headers;

    invoke-direct {p0, v0, v1}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->startHttp2(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 150
    return-void
.end method


# virtual methods
.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .line 69
    nop

    .line 70
    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    .line 71
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 68
    invoke-direct {v0, p1, v1, v2}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;-><init>(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/netty/NettyHttpHandlerState;Lkotlin/coroutines/CoroutineContext;)V

    iput-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    .line 74
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$channelActive_u24lambda_u242":Lio/netty/channel/ChannelPipeline;
    const/4 v1, 0x0

    .line 75
    .local v1, "$i$a$-apply-NettyHttp2Handler$channelActive$1":I
    iget-object v2, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->callEventGroup:Lio/netty/util/concurrent/EventExecutorGroup;

    const/4 v3, 0x1

    new-array v3, v3, [Lio/netty/channel/ChannelHandler;

    new-instance v4, Lio/ktor/server/netty/NettyApplicationCallHandler;

    iget-object v5, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->userCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    iget-object v6, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->enginePipeline:Lio/ktor/server/engine/EnginePipeline;

    invoke-direct {v4, v5, v6}, Lio/ktor/server/netty/NettyApplicationCallHandler;-><init>(Lkotlin/coroutines/CoroutineContext;Lio/ktor/server/engine/EnginePipeline;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v2, v3}, Lio/netty/channel/ChannelPipeline;->addLast(Lio/netty/util/concurrent/EventExecutorGroup;[Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 76
    nop

    .line 74
    .end local v0    # "$this$channelActive_u24lambda_u242":Lio/netty/channel/ChannelPipeline;
    .end local v1    # "$i$a$-apply-NettyHttp2Handler$channelActive$1":I
    nop

    .line 77
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelActive()Lio/netty/channel/ChannelHandlerContext;

    .line 78
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "message"    # Ljava/lang/Object;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    nop

    .line 40
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v3, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 42
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v1, Lio/ktor/server/netty/NettyHttpHandlerState;->activeRequests$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    .line 43
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2HeadersFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2HeadersFrame;->headers()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    const-string v1, "message.headers()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->startHttp2(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)V

    goto/16 :goto_2

    .line 45
    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2DataFrame;

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 46
    sget-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->Companion:Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;

    invoke-static {v0, p1}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;->access$getApplicationCall(Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;Lio/netty/channel/ChannelHandlerContext;)Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getRequest()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "$this$channelRead_u24lambda_u240":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$a$-apply-NettyHttp2Handler$channelRead$1":I
    move-object v5, p2

    check-cast v5, Lio/netty/handler/codec/http2/Http2DataFrame;

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2DataFrame;->isEndStream()Z

    move-result v5

    .line 48
    .local v5, "eof":Z
    invoke-virtual {v0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getContentActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v6

    invoke-interface {v6, p2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlinx/coroutines/channels/ChannelResult;->isSuccess-impl(Ljava/lang/Object;)Z

    .line 49
    if-eqz v5, :cond_1

    .line 50
    invoke-virtual {v0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getContentActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v6

    invoke-static {v6, v3, v2, v3}, Lkotlinx/coroutines/channels/SendChannel$DefaultImpls;->close$default(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 51
    iget-object v3, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v6, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v3, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v6, Lio/ktor/server/netty/NettyHttpHandlerState;->isCurrentRequestFullyRead$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v6, v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 55
    :goto_0
    nop

    .line 46
    .end local v0    # "$this$channelRead_u24lambda_u240":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;
    .end local v4    # "$i$a$-apply-NettyHttp2Handler$channelRead$1":I
    .end local v5    # "eof":Z
    goto :goto_2

    .line 55
    :cond_2
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http2/Http2DataFrame;

    invoke-interface {v0}, Lio/netty/handler/codec/http2/Http2DataFrame;->release()Z

    goto :goto_2

    .line 57
    :cond_3
    instance-of v0, p2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    if-eqz v0, :cond_6

    .line 58
    sget-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->Companion:Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;

    invoke-static {v0, p1}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;->access$getApplicationCall(Lio/ktor/server/netty/http2/NettyHttp2Handler$Companion;Lio/netty/channel/ChannelHandlerContext;)Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationCall;->getRequest()Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .local v0, "r":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;
    const/4 v1, 0x0

    .line 59
    .local v1, "$i$a$-let-NettyHttp2Handler$channelRead$2":I
    move-object v2, p2

    check-cast v2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2ResetFrame;->errorCode()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;

    move-object v2, p2

    check-cast v2, Lio/netty/handler/codec/http2/Http2ResetFrame;

    invoke-interface {v2}, Lio/netty/handler/codec/http2/Http2ResetFrame;->errorCode()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;-><init>(J)V

    :goto_1
    move-object v2, v3

    .line 60
    .local v2, "e":Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
    invoke-virtual {v0}, Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;->getContentActor()Lkotlinx/coroutines/channels/SendChannel;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/channels/SendChannel;->close(Ljava/lang/Throwable;)Z

    .line 58
    .end local v0    # "r":Lio/ktor/server/netty/http2/NettyHttp2ApplicationRequest;
    .end local v1    # "$i$a$-let-NettyHttp2Handler$channelRead$2":I
    .end local v2    # "e":Lio/ktor/server/netty/http2/NettyHttp2Handler$Http2ClosedChannelException;
    :cond_5
    goto :goto_2

    .line 63
    :cond_6
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 65
    :goto_2
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->state:Lio/ktor/server/netty/NettyHttpHandlerState;

    sget-object v1, Lio/ktor/server/netty/NettyHttpHandlerState;->isChannelReadCompleted$FU$internal:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 82
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->responseWriter:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;

    if-nez v0, :cond_0

    const-string v0, "responseWriter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->flushIfNeeded$ktor_server_netty()V

    .line 83
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 84
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 89
    return-void
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler;->handlerJob:Lkotlinx/coroutines/CompletableJob;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public final startHttp2PushPromise$ktor_server_netty(Lio/netty/channel/ChannelHandlerContext;Lio/ktor/server/response/ResponsePushBuilder;)V
    .locals 21
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "builder"    # Lio/ktor/server/response/ResponsePushBuilder;
    .annotation runtime Lio/ktor/server/response/UseHttp2Push;
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "context"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "builder"

    move-object/from16 v3, p2

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface/range {p1 .. p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type io.netty.handler.codec.http2.Http2StreamChannel"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lio/netty/handler/codec/http2/Http2StreamChannel;

    .line 110
    .local v1, "channel":Lio/netty/handler/codec/http2/Http2StreamChannel;
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/handler/codec/http2/Http2FrameStream;->id()I

    move-result v4

    .line 111
    .local v4, "streamId":I
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    const-class v6, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    invoke-interface {v5, v6}, Lio/netty/channel/ChannelPipeline;->get(Ljava/lang/Class;)Lio/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v12, v5

    check-cast v12, Lio/netty/handler/codec/http2/Http2MultiplexCodec;

    .line 112
    .local v12, "codec":Lio/netty/handler/codec/http2/Http2MultiplexCodec;
    invoke-virtual {v12}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v13

    .line 114
    .local v13, "connection":Lio/netty/handler/codec/http2/Http2Connection;
    invoke-interface {v13}, Lio/netty/handler/codec/http2/Http2Connection;->remote()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->allowPushTo()Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    return-void

    .line 118
    :cond_0
    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/ChannelPipeline;->lastContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v14

    .line 120
    .local v14, "rootContext":Lio/netty/channel/ChannelHandlerContext;
    invoke-interface {v13}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->incrementAndGetNextStreamId()I

    move-result v15

    .line 121
    .local v15, "promisedStreamId":I
    new-instance v5, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-direct {v5}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>()V

    move-object v6, v5

    .local v6, "$this$startHttp2PushPromise_u24lambda_u243":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    const/4 v7, 0x0

    .line 122
    .local v7, "$i$a$-apply-NettyHttp2Handler$startHttp2PushPromise$headers$1":I
    invoke-interface/range {p2 .. p2}, Lio/ktor/server/response/ResponsePushBuilder;->getUrl()Lio/ktor/http/URLBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lio/ktor/http/URLBuilder;->build()Lio/ktor/http/Url;

    move-result-object v8

    .line 124
    .local v8, "url":Lio/ktor/http/Url;
    invoke-interface/range {p2 .. p2}, Lio/ktor/server/response/ResponsePushBuilder;->getMethod()Lio/ktor/http/HttpMethod;

    move-result-object v9

    invoke-virtual {v9}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 125
    invoke-static {v8}, Lio/ktor/http/URLUtilsKt;->getHostWithPort(Lio/ktor/http/Url;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 126
    invoke-virtual {v8}, Lio/ktor/http/Url;->getProtocol()Lio/ktor/http/URLProtocol;

    move-result-object v9

    invoke-virtual {v9}, Lio/ktor/http/URLProtocol;->getName()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 127
    invoke-virtual {v8}, Lio/ktor/http/Url;->getEncodedPathAndQuery()Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 128
    nop

    .line 121
    .end local v6    # "$this$startHttp2PushPromise_u24lambda_u243":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    .end local v7    # "$i$a$-apply-NettyHttp2Handler$startHttp2PushPromise$headers$1":I
    .end local v8    # "url":Lio/ktor/http/Url;
    move-object v11, v5

    .line 130
    .local v11, "headers":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    new-instance v5, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    invoke-interface {v1}, Lio/netty/handler/codec/http2/Http2StreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;-><init>(Lio/netty/channel/Channel;)V

    move-object v6, v0

    check-cast v6, Lio/netty/channel/ChannelHandler;

    invoke-virtual {v5, v6}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->handler(Lio/netty/channel/ChannelHandler;)Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;

    move-result-object v16

    .line 131
    .local v16, "bs":Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;
    invoke-virtual/range {v16 .. v16}, Lio/netty/handler/codec/http2/Http2StreamChannelBootstrap;->open()Lio/netty/util/concurrent/Future;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lio/netty/handler/codec/http2/Http2StreamChannel;

    .line 133
    .local v10, "child":Lio/netty/handler/codec/http2/Http2StreamChannel;
    const-string v5, "child"

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v10, v15}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->setId(Lio/netty/handler/codec/http2/Http2StreamChannel;I)V

    .line 135
    invoke-interface {v14}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v9

    .line 136
    .local v9, "promise":Lio/netty/channel/ChannelPromise;
    invoke-interface {v13}, Lio/netty/handler/codec/http2/Http2Connection;->local()Lio/netty/handler/codec/http2/Http2Connection$Endpoint;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v15, v6}, Lio/netty/handler/codec/http2/Http2Connection$Endpoint;->createStream(IZ)Lio/netty/handler/codec/http2/Http2Stream;

    move-result-object v8

    .line 137
    .local v8, "childStream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-interface {v10}, Lio/netty/handler/codec/http2/Http2StreamChannel;->stream()Lio/netty/handler/codec/http2/Http2FrameStream;

    move-result-object v5

    const-string v6, "child.stream()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v12

    check-cast v6, Lio/netty/handler/codec/http2/Http2FrameCodec;

    const-string v7, "childStream"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5, v6, v8}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->setStreamAndProperty(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2FrameCodec;Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    invoke-interface {v8}, Lio/netty/handler/codec/http2/Http2Stream;->close()Lio/netty/handler/codec/http2/Http2Stream;

    .line 139
    invoke-interface {v10}, Lio/netty/handler/codec/http2/Http2StreamChannel;->close()Lio/netty/channel/ChannelFuture;

    .line 140
    return-void

    .line 143
    :cond_1
    invoke-virtual {v12}, Lio/netty/handler/codec/http2/Http2MultiplexCodec;->encoder()Lio/netty/handler/codec/http2/Http2ConnectionEncoder;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/handler/codec/http2/Http2ConnectionEncoder;->frameWriter()Lio/netty/handler/codec/http2/Http2FrameWriter;

    move-result-object v5

    move-object/from16 v17, v11

    check-cast v17, Lio/netty/handler/codec/http2/Http2Headers;

    const/16 v18, 0x0

    move-object v6, v14

    move v7, v4

    move-object/from16 v19, v8

    .end local v8    # "childStream":Lio/netty/handler/codec/http2/Http2Stream;
    .local v19, "childStream":Lio/netty/handler/codec/http2/Http2Stream;
    move v8, v15

    move-object/from16 v20, v9

    .end local v9    # "promise":Lio/netty/channel/ChannelPromise;
    .local v20, "promise":Lio/netty/channel/ChannelPromise;
    move-object/from16 v9, v17

    move-object/from16 v17, v10

    .end local v10    # "child":Lio/netty/handler/codec/http2/Http2StreamChannel;
    .local v17, "child":Lio/netty/handler/codec/http2/Http2StreamChannel;
    move/from16 v10, v18

    move-object/from16 v18, v1

    move-object v1, v11

    .end local v11    # "headers":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    .local v1, "headers":Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    .local v18, "channel":Lio/netty/handler/codec/http2/Http2StreamChannel;
    move-object/from16 v11, v20

    invoke-interface/range {v5 .. v11}, Lio/netty/handler/codec/http2/Http2FrameWriter;->writePushPromise(Lio/netty/channel/ChannelHandlerContext;IILio/netty/handler/codec/http2/Http2Headers;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 144
    invoke-interface/range {v20 .. v20}, Lio/netty/channel/ChannelPromise;->isSuccess()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    invoke-interface/range {v17 .. v17}, Lio/netty/handler/codec/http2/Http2StreamChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/ChannelPipeline;->firstContext()Lio/netty/channel/ChannelHandlerContext;

    move-result-object v5

    const-string v6, "child.pipeline().firstContext()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v1

    check-cast v6, Lio/netty/handler/codec/http2/Http2Headers;

    invoke-direct {v0, v5, v6}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->startHttp2(Lio/netty/channel/ChannelHandlerContext;Lio/netty/handler/codec/http2/Http2Headers;)V

    move-object/from16 v6, v17

    move-object/from16 v7, v20

    goto :goto_0

    .line 147
    :cond_2
    new-instance v5, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;

    move-object/from16 v6, v17

    .end local v17    # "child":Lio/netty/handler/codec/http2/Http2StreamChannel;
    .local v6, "child":Lio/netty/handler/codec/http2/Http2StreamChannel;
    invoke-direct {v5, v0, v6, v1}, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;-><init>(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/handler/codec/http2/Http2StreamChannel;Lio/netty/handler/codec/http2/DefaultHttp2Headers;)V

    move-object/from16 v7, v20

    .end local v20    # "promise":Lio/netty/channel/ChannelPromise;
    .local v7, "promise":Lio/netty/channel/ChannelPromise;
    invoke-interface {v7, v5}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 152
    :goto_0
    return-void
.end method
