.class Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;
.super Ljava/lang/Object;
.source "BrotliEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/compression/BrotliEncoder$Writer;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    .line 245
    iput-object p1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;->this$0:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    iput-object p2, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 249
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;->this$0:Lio/netty/handler/codec/compression/BrotliEncoder$Writer;

    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/compression/BrotliEncoder$Writer;->finish(Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lio/netty/handler/codec/compression/BrotliEncoder$Writer$1;->val$promise:Lio/netty/channel/ChannelPromise;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to finish encoding"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 253
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_0
    return-void
.end method
