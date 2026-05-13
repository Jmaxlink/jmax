.class public final Lio/netty/channel/ServerChannelRecvByteBufAllocator;
.super Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;
.source "ServerChannelRecvByteBufAllocator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;-><init>(IZ)V

    .line 24
    return-void
.end method


# virtual methods
.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 1

    .line 28
    new-instance v0, Lio/netty/channel/ServerChannelRecvByteBufAllocator$1;

    invoke-direct {v0, p0}, Lio/netty/channel/ServerChannelRecvByteBufAllocator$1;-><init>(Lio/netty/channel/ServerChannelRecvByteBufAllocator;)V

    return-object v0
.end method
