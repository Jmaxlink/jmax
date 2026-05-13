.class abstract Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;
.super Lio/netty/channel/kqueue/AbstractKQueueChannel;
.source "AbstractKQueueDatagramChannel.java"


# static fields
.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x1

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lio/netty/channel/ChannelMetadata;-><init>(ZI)V

    sput-object v0, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V
    .locals 0
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "fd"    # Lio/netty/channel/kqueue/BsdSocket;
    .param p3, "active"    # Z

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/kqueue/AbstractKQueueChannel;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/kqueue/BsdSocket;Z)V

    .line 30
    return-void
.end method


# virtual methods
.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 5
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->maxMessagesPerWrite()I

    move-result v0

    .line 42
    .local v0, "maxMessagesPerWrite":I
    :goto_0
    if-lez v0, :cond_4

    .line 43
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v1

    .line 44
    .local v1, "msg":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 45
    goto :goto_4

    .line 49
    :cond_0
    const/4 v2, 0x0

    .line 50
    .local v2, "done":Z
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->config()Lio/netty/channel/kqueue/KQueueChannelConfig;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/channel/kqueue/KQueueChannelConfig;->getWriteSpinCount()I

    move-result v3

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_2

    .line 51
    invoke-virtual {p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->doWriteMessage(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 52
    const/4 v2, 0x1

    .line 53
    goto :goto_2

    .line 50
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 57
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 58
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v0, v0, -0x1

    .line 70
    .end local v2    # "done":Z
    goto :goto_3

    .line 61
    .restart local v2    # "done":Z
    :cond_3
    goto :goto_4

    .line 63
    .end local v2    # "done":Z
    :catch_0
    move-exception v2

    .line 64
    .local v2, "e":Ljava/io/IOException;
    add-int/lit8 v0, v0, -0x1

    .line 69
    invoke-virtual {p1, v2}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    .line 71
    .end local v1    # "msg":Ljava/lang/Object;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    goto :goto_0

    .line 74
    :cond_4
    :goto_4
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->writeFilter(Z)V

    .line 75
    return-void
.end method

.method protected abstract doWriteMessage(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 34
    sget-object v0, Lio/netty/channel/kqueue/AbstractKQueueDatagramChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method
