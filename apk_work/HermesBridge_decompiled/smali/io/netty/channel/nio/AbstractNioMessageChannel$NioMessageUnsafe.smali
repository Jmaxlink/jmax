.class final Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "AbstractNioMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioMessageUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final readBuf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lio/netty/channel/nio/AbstractNioMessageChannel;

    return-void
.end method

.method private constructor <init>(Lio/netty/channel/nio/AbstractNioMessageChannel;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/nio/AbstractNioMessageChannel;Lio/netty/channel/nio/AbstractNioMessageChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/nio/AbstractNioMessageChannel;
    .param p2, "x1"    # Lio/netty/channel/nio/AbstractNioMessageChannel$1;

    .line 62
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioMessageChannel;)V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 9

    .line 68
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/nio/NioEventLoop;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 69
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioMessageChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 70
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioMessageChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 71
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioMessageChannel;->unsafe()Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/nio/AbstractNioChannel$NioUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v2

    .line 72
    .local v2, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-interface {v2, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 74
    const/4 v3, 0x0

    .line 75
    .local v3, "closed":Z
    const/4 v4, 0x0

    .line 79
    .local v4, "exception":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    iget-object v5, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-virtual {v5, v6}, Lio/netty/channel/nio/AbstractNioMessageChannel;->doReadMessages(Ljava/util/List;)I

    move-result v5

    .line 80
    .local v5, "localRead":I
    if-nez v5, :cond_1

    .line 81
    goto :goto_0

    .line 83
    :cond_1
    if-gez v5, :cond_2

    .line 84
    const/4 v3, 0x1

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {v2, v5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 89
    .end local v5    # "localRead":I
    iget-object v5, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v5, v2}, Lio/netty/channel/nio/AbstractNioMessageChannel;->continueReading(Lio/netty/channel/RecvByteBufAllocator$Handle;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    .line 92
    :goto_0
    goto :goto_1

    .line 90
    :catchall_0
    move-exception v5

    .line 91
    .local v5, "t":Ljava/lang/Throwable;
    move-object v4, v5

    .line 94
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_1
    iget-object v5, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 95
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 96
    iget-object v7, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lio/netty/channel/nio/AbstractNioMessageChannel;->readPending:Z

    .line 97
    iget-object v7, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 95
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 99
    .end local v6    # "i":I
    :cond_3
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 100
    invoke-interface {v2}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 101
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 103
    if-eqz v4, :cond_4

    .line 104
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v6, v4}, Lio/netty/channel/nio/AbstractNioMessageChannel;->closeOnReadError(Ljava/lang/Throwable;)Z

    move-result v6

    move v3, v6

    .line 106
    invoke-interface {v1, v4}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 109
    :cond_4
    if-eqz v3, :cond_5

    .line 110
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lio/netty/channel/nio/AbstractNioMessageChannel;->inputShutdown:Z

    .line 111
    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v6}, Lio/netty/channel/nio/AbstractNioMessageChannel;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 112
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v6

    invoke-virtual {p0, v6}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    .end local v5    # "size":I
    :cond_5
    iget-object v5, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-boolean v5, v5, Lio/netty/channel/nio/AbstractNioMessageChannel;->readPending:Z

    if-nez v5, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v5

    if-nez v5, :cond_6

    .line 123
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->removeReadOp()V

    .line 126
    :cond_6
    return-void

    .line 122
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-boolean v6, v6, Lio/netty/channel/nio/AbstractNioMessageChannel;->readPending:Z

    if-nez v6, :cond_7

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v6

    if-nez v6, :cond_7

    .line 123
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->removeReadOp()V

    .line 125
    :cond_7
    throw v5

    .line 68
    .end local v0    # "config":Lio/netty/channel/ChannelConfig;
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v2    # "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    .end local v3    # "closed":Z
    .end local v4    # "exception":Ljava/lang/Throwable;
    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
