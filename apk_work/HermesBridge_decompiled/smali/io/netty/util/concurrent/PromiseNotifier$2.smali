.class final Lio/netty/util/concurrent/PromiseNotifier$2;
.super Lio/netty/util/concurrent/PromiseNotifier;
.source "PromiseNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/concurrent/PromiseNotifier;->cascade(ZLio/netty/util/concurrent/Future;Lio/netty/util/concurrent/Promise;)Lio/netty/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lio/netty/util/concurrent/Future;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;


# direct methods
.method varargs constructor <init>(Z[Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Promise;Lio/netty/util/concurrent/Future;)V
    .locals 0
    .param p1, "logNotifyFailure"    # Z
    .param p2, "promises"    # [Lio/netty/util/concurrent/Promise;

    .line 102
    iput-object p3, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$promise:Lio/netty/util/concurrent/Promise;

    iput-object p4, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$future:Lio/netty/util/concurrent/Future;

    invoke-direct {p0, p1, p2}, Lio/netty/util/concurrent/PromiseNotifier;-><init>(Z[Lio/netty/util/concurrent/Promise;)V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .param p1, "f"    # Lio/netty/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {v0}, Lio/netty/util/concurrent/Promise;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseNotifier$2;->val$future:Lio/netty/util/concurrent/Future;

    invoke-super {p0, v0}, Lio/netty/util/concurrent/PromiseNotifier;->operationComplete(Lio/netty/util/concurrent/Future;)V

    .line 110
    return-void
.end method
