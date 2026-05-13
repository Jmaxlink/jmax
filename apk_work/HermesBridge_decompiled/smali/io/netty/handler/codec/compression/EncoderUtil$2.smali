.class final Lio/netty/handler/codec/compression/EncoderUtil$2;
.super Ljava/lang/Object;
.source "EncoderUtil.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/compression/EncoderUtil;->closeAfterFinishEncode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Lio/netty/channel/ChannelHandlerContext;

.field final synthetic val$future:Lio/netty/util/concurrent/Future;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/Future;Lio/netty/channel/ChannelPromise;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$future:Lio/netty/util/concurrent/Future;

    iput-object p2, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$promise:Lio/netty/channel/ChannelPromise;

    iput-object p3, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "f"    # Lio/netty/channel/ChannelFuture;

    .line 44
    iget-object v0, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$future:Lio/netty/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 45
    iget-object v0, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$ctx:Lio/netty/channel/ChannelHandlerContext;

    iget-object v1, p0, Lio/netty/handler/codec/compression/EncoderUtil$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 48
    :cond_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/compression/EncoderUtil$2;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
