.class final Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyHttpResponsePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/cio/NettyHttpResponsePipeline;->respondBodyWithFlushOnLimit(Lio/ktor/server/netty/NettyApplicationCall;Lio/ktor/server/netty/NettyApplicationResponse;Lio/netty/channel/ChannelFuture;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "unflushedBytes",
        "",
        "invoke",
        "(Lio/ktor/utils/io/ByteReadChannel;I)Ljava/lang/Boolean;"
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
.field public static final INSTANCE:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;

    invoke-direct {v0}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;-><init>()V

    sput-object v0, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;->INSTANCE:Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/utils/io/ByteReadChannel;I)Ljava/lang/Boolean;
    .locals 1
    .param p2, "unflushedBytes"    # I

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    const/high16 p1, 0x10000

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 295
    move-object v0, p1

    check-cast v0, Lio/ktor/utils/io/ByteReadChannel;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/ktor/server/netty/cio/NettyHttpResponsePipeline$respondBodyWithFlushOnLimit$2;->invoke(Lio/ktor/utils/io/ByteReadChannel;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
