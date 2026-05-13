.class public final synthetic Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Lio/ktor/server/netty/http2/NettyHttp2Handler;

.field public final synthetic f$1:Lio/netty/handler/codec/http2/Http2StreamChannel;

.field public final synthetic f$2:Lio/netty/handler/codec/http2/DefaultHttp2Headers;


# direct methods
.method public synthetic constructor <init>(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/handler/codec/http2/Http2StreamChannel;Lio/netty/handler/codec/http2/DefaultHttp2Headers;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;->f$0:Lio/ktor/server/netty/http2/NettyHttp2Handler;

    iput-object p2, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;->f$1:Lio/netty/handler/codec/http2/Http2StreamChannel;

    iput-object p3, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;->f$2:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;->f$0:Lio/ktor/server/netty/http2/NettyHttp2Handler;

    iget-object v1, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;->f$1:Lio/netty/handler/codec/http2/Http2StreamChannel;

    iget-object v2, p0, Lio/ktor/server/netty/http2/NettyHttp2Handler$$ExternalSyntheticLambda0;->f$2:Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-static {v0, v1, v2, p1}, Lio/ktor/server/netty/http2/NettyHttp2Handler;->$r8$lambda$BiG5hCxaAjLEkVL8VXztkdTdz-M(Lio/ktor/server/netty/http2/NettyHttp2Handler;Lio/netty/handler/codec/http2/Http2StreamChannel;Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/util/concurrent/Future;)V

    return-void
.end method
