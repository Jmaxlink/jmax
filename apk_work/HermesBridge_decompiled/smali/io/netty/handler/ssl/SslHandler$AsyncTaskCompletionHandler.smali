.class final Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;
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
    name = "AsyncTaskCompletionHandler"
.end annotation


# instance fields
.field didRun:Z

.field private final inUnwrap:Z

.field resumeLater:Z

.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Z)V
    .locals 0
    .param p2, "inUnwrap"    # Z

    .line 1686
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    iput-boolean p2, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->inUnwrap:Z

    .line 1688
    return-void
.end method


# virtual methods
.method resumeLater()Z
    .locals 1

    .line 1699
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->didRun:Z

    if-nez v0, :cond_0

    .line 1700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->resumeLater:Z

    .line 1701
    return v0

    .line 1703
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1692
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->didRun:Z

    .line 1693
    iget-boolean v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->resumeLater:Z

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->this$0:Lio/netty/handler/ssl/SslHandler;

    iget-boolean v1, p0, Lio/netty/handler/ssl/SslHandler$AsyncTaskCompletionHandler;->inUnwrap:Z

    invoke-static {v0, v1}, Lio/netty/handler/ssl/SslHandler;->access$800(Lio/netty/handler/ssl/SslHandler;Z)Lio/netty/handler/ssl/SslHandler$SslTasksRunner;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/ssl/SslHandler$SslTasksRunner;->runComplete()V

    .line 1696
    :cond_0
    return-void
.end method
