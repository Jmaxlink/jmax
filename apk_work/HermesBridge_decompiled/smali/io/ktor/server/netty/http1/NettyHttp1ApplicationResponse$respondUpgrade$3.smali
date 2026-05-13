.class final Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;
.super Lkotlin/jvm/internal/Lambda;
.source "NettyHttp1ApplicationResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse;->respondUpgrade(Lio/ktor/http/content/OutgoingContent$ProtocolUpgrade;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
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


# instance fields
.field final synthetic $bodyHandler:Lio/ktor/server/netty/cio/RequestBodyHandler;

.field final synthetic $upgradedReadChannel:Lio/ktor/utils/io/ByteReadChannel;

.field final synthetic $upgradedWriteChannel:Lio/ktor/utils/io/ByteChannel;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteChannel;Lio/ktor/server/netty/cio/RequestBodyHandler;Lio/ktor/utils/io/ByteReadChannel;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->$upgradedWriteChannel:Lio/ktor/utils/io/ByteChannel;

    iput-object p2, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->$bodyHandler:Lio/ktor/server/netty/cio/RequestBodyHandler;

    iput-object p3, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->$upgradedReadChannel:Lio/ktor/utils/io/ByteReadChannel;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 102
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->invoke(Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "it"    # Ljava/lang/Throwable;

    .line 103
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->$upgradedWriteChannel:Lio/ktor/utils/io/ByteChannel;

    check-cast v0, Lio/ktor/utils/io/ByteWriteChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 104
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->$bodyHandler:Lio/ktor/server/netty/cio/RequestBodyHandler;

    invoke-virtual {v0}, Lio/ktor/server/netty/cio/RequestBodyHandler;->close()V

    .line 105
    iget-object v0, p0, Lio/ktor/server/netty/http1/NettyHttp1ApplicationResponse$respondUpgrade$3;->$upgradedReadChannel:Lio/ktor/utils/io/ByteReadChannel;

    invoke-static {v0}, Lio/ktor/utils/io/ByteReadChannelKt;->cancel(Lio/ktor/utils/io/ByteReadChannel;)Z

    .line 106
    return-void
.end method
