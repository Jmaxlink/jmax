.class Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;
.super Ljava/lang/Object;
.source "Lz4FrameEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/compression/Lz4FrameEncoder;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/compression/Lz4FrameEncoder;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/compression/Lz4FrameEncoder;

    .line 356
    iput-object p1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;->this$0:Lio/netty/handler/codec/compression/Lz4FrameEncoder;

    iput-object p2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 359
    iget-object v0, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;->this$0:Lio/netty/handler/codec/compression/Lz4FrameEncoder;

    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;->this$0:Lio/netty/handler/codec/compression/Lz4FrameEncoder;

    invoke-static {v1}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->access$000(Lio/netty/handler/codec/compression/Lz4FrameEncoder;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/compression/Lz4FrameEncoder;->access$100(Lio/netty/handler/codec/compression/Lz4FrameEncoder;Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 360
    .local v0, "f":Lio/netty/channel/ChannelFuture;
    iget-object v1, p0, Lio/netty/handler/codec/compression/Lz4FrameEncoder$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/util/concurrent/PromiseNotifier;->cascade(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;

    .line 361
    return-void
.end method
