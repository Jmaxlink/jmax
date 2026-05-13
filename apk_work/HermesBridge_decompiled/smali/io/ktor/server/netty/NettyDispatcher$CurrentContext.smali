.class public final Lio/ktor/server/netty/NettyDispatcher$CurrentContext;
.super Lkotlin/coroutines/AbstractCoroutineContextElement;
.source "CIO.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/server/netty/NettyDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrentContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lio/ktor/server/netty/NettyDispatcher$CurrentContext;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "context",
        "Lio/netty/channel/ChannelHandlerContext;",
        "(Lio/netty/channel/ChannelHandlerContext;)V",
        "getContext",
        "()Lio/netty/channel/ChannelHandlerContext;",
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
.field private final context:Lio/netty/channel/ChannelHandlerContext;


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "context"    # Lio/netty/channel/ChannelHandlerContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;->INSTANCE:Lio/ktor/server/netty/NettyDispatcher$CurrentContextKey;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-direct {p0, v0}, Lkotlin/coroutines/AbstractCoroutineContextElement;-><init>(Lkotlin/coroutines/CoroutineContext$Key;)V

    iput-object p1, p0, Lio/ktor/server/netty/NettyDispatcher$CurrentContext;->context:Lio/netty/channel/ChannelHandlerContext;

    return-void
.end method


# virtual methods
.method public final getContext()Lio/netty/channel/ChannelHandlerContext;
    .locals 1

    .line 72
    iget-object v0, p0, Lio/ktor/server/netty/NettyDispatcher$CurrentContext;->context:Lio/netty/channel/ChannelHandlerContext;

    return-object v0
.end method
