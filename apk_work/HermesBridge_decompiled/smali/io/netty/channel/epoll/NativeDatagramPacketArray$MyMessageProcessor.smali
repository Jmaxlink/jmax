.class final Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;
.super Ljava/lang/Object;
.source "NativeDatagramPacketArray.java"

# interfaces
.implements Lio/netty/channel/ChannelOutboundBuffer$MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/NativeDatagramPacketArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyMessageProcessor"
.end annotation


# instance fields
.field private connected:Z

.field private maxMessagesPerWrite:I

.field final synthetic this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;


# direct methods
.method private constructor <init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/channel/epoll/NativeDatagramPacketArray$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray;
    .param p2, "x1"    # Lio/netty/channel/epoll/NativeDatagramPacketArray$1;

    .line 113
    invoke-direct {p0, p1}, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;-><init>(Lio/netty/channel/epoll/NativeDatagramPacketArray;)V

    return-void
.end method

.method static synthetic access$202(Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;
    .param p1, "x1"    # Z

    .line 113
    iput-boolean p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->connected:Z

    return p1
.end method

.method static synthetic access$302(Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;I)I
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;
    .param p1, "x1"    # I

    .line 113
    iput p1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->maxMessagesPerWrite:I

    return p1
.end method


# virtual methods
.method public processMessage(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "msg"    # Ljava/lang/Object;

    .line 120
    instance-of v0, p1, Lio/netty/channel/socket/DatagramPacket;

    if-eqz v0, :cond_1

    .line 121
    move-object v0, p1

    check-cast v0, Lio/netty/channel/socket/DatagramPacket;

    .line 122
    .local v0, "packet":Lio/netty/channel/socket/DatagramPacket;
    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->content()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 123
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    .line 124
    .local v2, "segmentSize":I
    instance-of v3, v0, Lio/netty/channel/unix/SegmentedDatagramPacket;

    if-eqz v3, :cond_0

    .line 125
    move-object v3, v0

    check-cast v3, Lio/netty/channel/unix/SegmentedDatagramPacket;

    invoke-virtual {v3}, Lio/netty/channel/unix/SegmentedDatagramPacket;->segmentSize()I

    move-result v3

    .line 128
    .local v3, "seg":I
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 129
    move v2, v3

    move v8, v2

    goto :goto_0

    .line 132
    .end local v3    # "seg":I
    :cond_0
    move v8, v2

    .end local v2    # "segmentSize":I
    .local v8, "segmentSize":I
    :goto_0
    iget-object v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-virtual {v0}, Lio/netty/channel/socket/DatagramPacket;->recipient()Ljava/net/SocketAddress;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/net/InetSocketAddress;

    move-object v3, v1

    move v6, v8

    invoke-static/range {v2 .. v7}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$400(Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;IIILjava/net/InetSocketAddress;)Z

    move-result v0

    .line 133
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v8    # "segmentSize":I
    .local v0, "added":Z
    goto :goto_1

    .end local v0    # "added":Z
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->connected:Z

    if-eqz v0, :cond_2

    .line 134
    move-object v0, p1

    check-cast v0, Lio/netty/buffer/ByteBuf;

    .line 135
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->this$0:Lio/netty/channel/epoll/NativeDatagramPacketArray;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/netty/channel/epoll/NativeDatagramPacketArray;->access$400(Lio/netty/channel/epoll/NativeDatagramPacketArray;Lio/netty/buffer/ByteBuf;IIILjava/net/InetSocketAddress;)Z

    move-result v0

    .line 136
    .local v0, "added":Z
    goto :goto_1

    .line 137
    .end local v0    # "added":Z
    :cond_2
    const/4 v0, 0x0

    .line 139
    .restart local v0    # "added":Z
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 140
    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->maxMessagesPerWrite:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->maxMessagesPerWrite:I

    .line 141
    iget v2, p0, Lio/netty/channel/epoll/NativeDatagramPacketArray$MyMessageProcessor;->maxMessagesPerWrite:I

    if-lez v2, :cond_3

    move v1, v3

    :cond_3
    return v1

    .line 143
    :cond_4
    return v1
.end method
