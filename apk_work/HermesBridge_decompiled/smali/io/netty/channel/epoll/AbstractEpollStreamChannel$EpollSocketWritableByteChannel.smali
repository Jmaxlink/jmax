.class final Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;
.super Lio/netty/channel/unix/SocketWritableByteChannel;
.source "AbstractEpollStreamChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/epoll/AbstractEpollStreamChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EpollSocketWritableByteChannel"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1043
    const-class v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/epoll/AbstractEpollStreamChannel;)V
    .locals 1

    .line 1044
    iput-object p1, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    .line 1045
    iget-object v0, p1, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-direct {p0, v0}, Lio/netty/channel/unix/SocketWritableByteChannel;-><init>(Lio/netty/channel/unix/FileDescriptor;)V

    .line 1046
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;->fd:Lio/netty/channel/unix/FileDescriptor;

    iget-object p1, p1, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    if-ne v0, p1, :cond_0

    .line 1047
    return-void

    .line 1046
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method protected alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 1056
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    invoke-virtual {v0}, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method protected write(Ljava/nio/ByteBuffer;II)I
    .locals 1
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lio/netty/channel/epoll/AbstractEpollStreamChannel$EpollSocketWritableByteChannel;->this$0:Lio/netty/channel/epoll/AbstractEpollStreamChannel;

    iget-object v0, v0, Lio/netty/channel/epoll/AbstractEpollStreamChannel;->socket:Lio/netty/channel/epoll/LinuxSocket;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/epoll/LinuxSocket;->send(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method
