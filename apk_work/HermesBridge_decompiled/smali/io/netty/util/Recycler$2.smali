.class Lio/netty/util/Recycler$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Lio/netty/util/Recycler$LocalPool<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/Recycler;


# direct methods
.method constructor <init>(Lio/netty/util/Recycler;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/util/Recycler;

    .line 108
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    iput-object p1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/netty/util/Recycler$LocalPool;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler$LocalPool<",
            "TT;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    new-instance v0, Lio/netty/util/Recycler$LocalPool;

    iget-object v1, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v1}, Lio/netty/util/Recycler;->access$100(Lio/netty/util/Recycler;)I

    move-result v1

    iget-object v2, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v2}, Lio/netty/util/Recycler;->access$200(Lio/netty/util/Recycler;)I

    move-result v2

    iget-object v3, p0, Lio/netty/util/Recycler$2;->this$0:Lio/netty/util/Recycler;

    invoke-static {v3}, Lio/netty/util/Recycler;->access$300(Lio/netty/util/Recycler;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lio/netty/util/Recycler$LocalPool;-><init>(III)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    invoke-virtual {p0}, Lio/netty/util/Recycler$2;->initialValue()Lio/netty/util/Recycler$LocalPool;

    move-result-object v0

    return-object v0
.end method

.method protected onRemoval(Lio/netty/util/Recycler$LocalPool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$LocalPool<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    .local p1, "value":Lio/netty/util/Recycler$LocalPool;, "Lio/netty/util/Recycler$LocalPool<TT;>;"
    invoke-super {p0, p1}, Lio/netty/util/concurrent/FastThreadLocal;->onRemoval(Ljava/lang/Object;)V

    .line 117
    invoke-static {p1}, Lio/netty/util/Recycler$LocalPool;->access$400(Lio/netty/util/Recycler$LocalPool;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    move-result-object v0

    .line 118
    .local v0, "handles":Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;, "Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue<Lio/netty/util/Recycler$DefaultHandle<TT;>;>;"
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lio/netty/util/Recycler$LocalPool;->access$402(Lio/netty/util/Recycler$LocalPool;Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;)Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;

    .line 119
    invoke-static {p1, v1}, Lio/netty/util/Recycler$LocalPool;->access$502(Lio/netty/util/Recycler$LocalPool;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 120
    invoke-interface {v0}, Lio/netty/util/internal/shaded/org/jctools/queues/MessagePassingQueue;->clear()V

    .line 121
    return-void
.end method

.method protected bridge synthetic onRemoval(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/netty/util/Recycler$2;, "Lio/netty/util/Recycler$2;"
    check-cast p1, Lio/netty/util/Recycler$LocalPool;

    invoke-virtual {p0, p1}, Lio/netty/util/Recycler$2;->onRemoval(Lio/netty/util/Recycler$LocalPool;)V

    return-void
.end method
