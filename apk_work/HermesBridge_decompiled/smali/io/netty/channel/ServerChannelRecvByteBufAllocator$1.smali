.class Lio/netty/channel/ServerChannelRecvByteBufAllocator$1;
.super Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
.source "ServerChannelRecvByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/ServerChannelRecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/ServerChannelRecvByteBufAllocator;


# direct methods
.method constructor <init>(Lio/netty/channel/ServerChannelRecvByteBufAllocator;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/ServerChannelRecvByteBufAllocator;

    .line 28
    iput-object p1, p0, Lio/netty/channel/ServerChannelRecvByteBufAllocator$1;->this$0:Lio/netty/channel/ServerChannelRecvByteBufAllocator;

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;-><init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)V

    return-void
.end method


# virtual methods
.method public guess()I
    .locals 1

    .line 31
    const/16 v0, 0x80

    return v0
.end method
