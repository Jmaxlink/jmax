.class final Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyHttp2Handler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/http2/NettyHttp2Handler;-><init>(Lio/ktor/server/engine/EnginePipeline;Lio/ktor/server/application/Application;Lio/netty/util/concurrent/EventExecutorGroup;Lkotlin/coroutines/CoroutineContext;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Field;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyHttp2Handler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyHttp2Handler.kt\nio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,225:1\n1#2:226\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Field;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;

    invoke-direct {v0}, Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;-><init>()V

    sput-object v0, Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;->INSTANCE:Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/ktor/server/netty/http2/NettyHttp2Handler$streamKeyField$2;->invoke()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Field;
    .locals 4

    .line 161
    :try_start_0
    const-class v0, Lio/netty/handler/codec/http2/Http2FrameCodec;

    .line 162
    const-string v1, "streamKey"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 163
    move-object v1, v0

    .line 226
    .local v1, "it":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 163
    .local v2, "$i$a$-also-NettyHttp2Handler$streamKeyField$2$1":I
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "it":Ljava/lang/reflect/Field;
    .end local v2    # "$i$a$-also-NettyHttp2Handler$streamKeyField$2$1":I
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v1, 0x0

    move-object v0, v1

    .line 161
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method
