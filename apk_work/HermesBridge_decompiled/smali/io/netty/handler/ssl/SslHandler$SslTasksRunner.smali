.class final Lio/netty/handler/ssl/SslHandler$SslTasksRunner;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SslTasksRunner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final inUnwrap:Z

.field private final runCompleteTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1711
    const-class v0, Lio/netty/handler/ssl/SslHandler;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Z)V
    .locals 0
    .param p2, "inUnwrap"    # Z

    .line 1720
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    new-instance p1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$1;

    invoke-direct {p1, p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$1;-><init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->runCompleteTask:Ljava/lang/Runnable;

    .line 1721
    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    .line 1722
    return-void
.end method

.method static synthetic access$2000(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    .line 1711
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->resumeOnEventExecutor()V

    return-void
.end method

.method static synthetic access$2100(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/ssl/SslHandler$SslTasksRunner;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 1711
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1898
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 1899
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_0

    .line 1900
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1400(Lio/netty/handler/ssl/SslHandler;I)V

    .line 1901
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1904
    :cond_0
    :try_start_0
    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$3;-><init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    goto :goto_0

    .line 1911
    :catch_0
    move-exception v1

    .line 1912
    .local v1, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v3, v2}, Lio/netty/handler/ssl/SslHandler;->access$1400(Lio/netty/handler/ssl/SslHandler;I)V

    .line 1915
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1918
    .end local v1    # "ignore":Ljava/util/concurrent/RejectedExecutionException;
    :goto_0
    return-void
.end method

.method private resumeOnEventExecutor()V
    .locals 4

    .line 1779
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1780
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1400(Lio/netty/handler/ssl/SslHandler;I)V

    .line 1782
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    .line 1783
    .local v0, "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    sget-object v1, Lio/netty/handler/ssl/SslHandler$11;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1853
    new-instance v1, Ljava/lang/AssertionError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/16 :goto_1

    .line 1820
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)I
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1824
    nop

    .line 1825
    :try_start_2
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->tryDecodeAgain()V

    .line 1826
    goto/16 :goto_0

    .line 1821
    :catch_0
    move-exception v1

    .line 1822
    .local v1, "e":Ljavax/net/ssl/SSLException;
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v3, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v3}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/netty/handler/ssl/SslHandler;->access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1823
    return-void

    .line 1832
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/SslHandler;->access$1900(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-eqz v1, :cond_0

    .line 1837
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)I

    .line 1841
    :cond_0
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1200(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1845
    nop

    .line 1848
    :try_start_4
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->tryDecodeAgain()V

    .line 1849
    goto :goto_0

    .line 1842
    :catchall_0
    move-exception v1

    .line 1843
    .local v1, "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->taskError(Ljava/lang/Throwable;)V

    .line 1844
    return-void

    .line 1795
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_2
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$1600(Lio/netty/handler/ssl/SslHandler;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1799
    :try_start_5
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    iget-boolean v3, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    invoke-static {v1, v2, v3}, Lio/netty/handler/ssl/SslHandler;->access$1700(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1803
    nop

    .line 1804
    :try_start_6
    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-eqz v1, :cond_1

    .line 1807
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1800(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)I

    .line 1811
    :cond_1
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1200(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1813
    invoke-direct {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->tryDecodeAgain()V

    .line 1814
    goto :goto_0

    .line 1800
    :catchall_1
    move-exception v1

    .line 1801
    .restart local v1    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->taskError(Ljava/lang/Throwable;)V

    .line 1802
    return-void

    .line 1787
    .end local v1    # "e":Ljava/lang/Throwable;
    :pswitch_3
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1, p0}, Lio/netty/handler/ssl/SslHandler;->access$1500(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    .line 1789
    nop

    .line 1857
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_0
    goto :goto_2

    .line 1853
    .restart local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_1
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1855
    .end local v0    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :catchall_2
    move-exception v0

    .line 1856
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    .line 1858
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 1779
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private safeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1745
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1748
    goto :goto_0

    .line 1746
    :catchall_0
    move-exception v0

    .line 1747
    .local v0, "error":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/netty/channel/ChannelHandlerContext;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;

    .line 1749
    .end local v0    # "error":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private taskError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 1726
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-eqz v0, :cond_0

    .line 1732
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/netty/handler/ssl/SslHandler;->access$1000(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1733
    :catchall_0
    move-exception v0

    .line 1734
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V

    .line 1735
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1737
    :cond_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/netty/handler/ssl/SslHandler;->access$1100(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 1738
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1200(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1740
    :goto_1
    return-void
.end method

.method private tryDecodeAgain()V
    .locals 3

    .line 1763
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/ssl/SslHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1764
    :catchall_0
    move-exception v0

    .line 1765
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->safeExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1770
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v1}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$1300(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1771
    nop

    .line 1772
    return-void

    .line 1770
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v2}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/handler/ssl/SslHandler;->access$1300(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelHandlerContext;)V

    .line 1771
    throw v0
.end method

.method private wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 1752
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->inUnwrap:Z

    if-nez v0, :cond_0

    .line 1754
    return-object p1

    .line 1758
    :cond_0
    instance-of v0, p1, Lio/netty/handler/codec/DecoderException;

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v0, p1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1880
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$100(Lio/netty/handler/ssl/SslHandler;)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .line 1881
    .local v0, "task":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    .line 1883
    return-void

    .line 1885
    :cond_0
    instance-of v1, v0, Lio/netty/handler/ssl/AsyncRunnable;

    if-eqz v1, :cond_1

    .line 1886
    move-object v1, v0

    check-cast v1, Lio/netty/handler/ssl/AsyncRunnable;

    .line 1887
    .local v1, "asyncTask":Lio/netty/handler/ssl/AsyncRunnable;
    iget-object v2, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->runCompleteTask:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lio/netty/handler/ssl/AsyncRunnable;->run(Ljava/lang/Runnable;)V

    .line 1888
    .end local v1    # "asyncTask":Lio/netty/handler/ssl/AsyncRunnable;
    goto :goto_0

    .line 1889
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1890
    invoke-virtual {p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->runComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1894
    .end local v0    # "task":Ljava/lang/Runnable;
    :goto_0
    goto :goto_1

    .line 1892
    :catchall_0
    move-exception v0

    .line 1893
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->handleException(Ljava/lang/Throwable;)V

    .line 1895
    .end local v0    # "cause":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method runComplete()V
    .locals 2

    .line 1861
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$900(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 1869
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    new-instance v1, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;

    invoke-direct {v1, p0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner$2;-><init>(Lio/netty/handler/ssl/SslHandler$SslTasksRunner;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1875
    return-void
.end method
