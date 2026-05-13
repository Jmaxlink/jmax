.class final Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;
.super Ljava/lang/Object;
.source "DefaultHttp2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActiveStreams"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/Http2Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;",
            ">;"
        }
    .end annotation
.end field

.field private pendingIterations:I

.field private final streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/handler/codec/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/Http2Connection$Listener;",
            ">;)V"
        }
    .end annotation

    .line 940
    .local p2, "listeners":Ljava/util/List;, "Ljava/util/List<Lio/netty/handler/codec/http2/Http2Connection$Listener;>;"
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 936
    new-instance p1, Ljava/util/ArrayDeque;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    .line 937
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    .line 941
    iput-object p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->listeners:Ljava/util/List;

    .line 942
    return-void
.end method


# virtual methods
.method public activate(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    .line 949
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->addToActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    goto :goto_0

    .line 952
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$1;

    invoke-direct {v1, p0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$1;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 959
    :goto_0
    return-void
.end method

.method addToActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;)V
    .locals 4
    .param p1, "stream"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;

    .line 989
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->createdBy()Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    move-result-object v0

    iget v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    .line 993
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 995
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Connection$Listener;

    invoke-interface {v1, p1}, Lio/netty/handler/codec/http2/Http2Connection$Listener;->onStreamActive(Lio/netty/handler/codec/http2/Http2Stream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    goto :goto_1

    .line 996
    :catchall_0
    move-exception v1

    .line 997
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->access$400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Caught Throwable from listener onStreamActive."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 993
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1001
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method allowModifications()Z
    .locals 1

    .line 1013
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deactivate(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 962
    .local p2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 965
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams$2;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 963
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->removeFromActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    .line 972
    :goto_1
    return-void
.end method

.method decrementPendingIterations()V
    .locals 4

    .line 1021
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    .line 1022
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->allowModifications()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    :goto_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;

    .line 1025
    .local v0, "event":Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;
    if-nez v0, :cond_0

    .line 1026
    goto :goto_2

    .line 1029
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    goto :goto_1

    .line 1030
    :catchall_0
    move-exception v1

    .line 1031
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-static {}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->access$400()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Caught Throwable while processing pending ActiveStreams$Event."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1033
    .end local v0    # "event":Lio/netty/handler/codec/http2/DefaultHttp2Connection$Event;
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 1035
    :cond_1
    :goto_2
    return-void
.end method

.method public forEachActiveStream(Lio/netty/handler/codec/http2/Http2StreamVisitor;)Lio/netty/handler/codec/http2/Http2Stream;
    .locals 3
    .param p1, "visitor"    # Lio/netty/handler/codec/http2/Http2StreamVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 975
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->incrementPendingIterations()V

    .line 977
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/handler/codec/http2/Http2Stream;

    .line 978
    .local v1, "stream":Lio/netty/handler/codec/http2/Http2Stream;
    invoke-interface {p1, v1}, Lio/netty/handler/codec/http2/Http2StreamVisitor;->visit(Lio/netty/handler/codec/http2/Http2Stream;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 979
    nop

    .line 984
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    .line 979
    return-object v1

    .line 981
    .end local v1    # "stream":Lio/netty/handler/codec/http2/Http2Stream;
    :cond_0
    goto :goto_0

    .line 982
    :cond_1
    nop

    .line 984
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    .line 982
    const/4 v0, 0x0

    return-object v0

    .line 984
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->decrementPendingIterations()V

    .line 985
    throw v0
.end method

.method incrementPendingIterations()V
    .locals 1

    .line 1017
    iget v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->pendingIterations:I

    .line 1018
    return-void
.end method

.method removeFromActiveStreams(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V
    .locals 2
    .param p1, "stream"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 1004
    .local p2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;->createdBy()Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;

    move-result-object v0

    iget v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultEndpoint;->numActiveStreams:I

    .line 1007
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->notifyClosed(Lio/netty/handler/codec/http2/Http2Stream;)V

    .line 1009
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Connection;->removeStream(Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultStream;Ljava/util/Iterator;)V

    .line 1010
    return-void
.end method

.method public size()I
    .locals 1

    .line 945
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$ActiveStreams;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
