.class final Lio/netty/util/concurrent/PromiseNotifier$1;
.super Ljava/lang/Object;
.source "PromiseNotifier.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


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


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/Future;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lio/netty/util/concurrent/PromiseNotifier$1;->val$future:Lio/netty/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 2
    .param p1, "f"    # Lio/netty/util/concurrent/Future;

    .line 97
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/netty/util/concurrent/PromiseNotifier$1;->val$future:Lio/netty/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Future;->cancel(Z)Z

    .line 100
    :cond_0
    return-void
.end method
