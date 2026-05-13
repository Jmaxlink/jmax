.class Lio/netty/channel/embedded/EmbeddedChannel$2;
.super Lio/netty/channel/ChannelInitializer;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/embedded/EmbeddedChannel;->setup(Z[Lio/netty/channel/ChannelHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/ChannelInitializer<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/embedded/EmbeddedChannel;

.field final synthetic val$handlers:[Lio/netty/channel/ChannelHandler;


# direct methods
.method constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;[Lio/netty/channel/ChannelHandler;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/embedded/EmbeddedChannel;

    .line 214
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$2;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    iput-object p2, p0, Lio/netty/channel/embedded/EmbeddedChannel$2;->val$handlers:[Lio/netty/channel/ChannelHandler;

    invoke-direct {p0}, Lio/netty/channel/ChannelInitializer;-><init>()V

    return-void
.end method


# virtual methods
.method protected initChannel(Lio/netty/channel/Channel;)V
    .locals 6
    .param p1, "ch"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 218
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    iget-object v1, p0, Lio/netty/channel/embedded/EmbeddedChannel$2;->val$handlers:[Lio/netty/channel/ChannelHandler;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 219
    .local v4, "h":Lio/netty/channel/ChannelHandler;
    if-nez v4, :cond_0

    .line 220
    goto :goto_1

    .line 222
    :cond_0
    filled-new-array {v4}, [Lio/netty/channel/ChannelHandler;

    move-result-object v5

    invoke-interface {v0, v5}, Lio/netty/channel/ChannelPipeline;->addLast([Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 218
    .end local v4    # "h":Lio/netty/channel/ChannelHandler;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 224
    :cond_1
    :goto_1
    return-void
.end method
