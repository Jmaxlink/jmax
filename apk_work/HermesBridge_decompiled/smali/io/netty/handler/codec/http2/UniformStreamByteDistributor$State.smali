.class final Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;
.super Ljava/lang/Object;
.source "UniformStreamByteDistributor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/UniformStreamByteDistributor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "State"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field enqueued:Z

.field final stream:Lio/netty/handler/codec/http2/Http2Stream;

.field streamableBytes:I

.field final synthetic this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

.field windowNegative:Z

.field writing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    const-class v0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;Lio/netty/handler/codec/http2/Http2Stream;)V
    .locals 0
    .param p2, "stream"    # Lio/netty/handler/codec/http2/Http2Stream;

    .line 141
    iput-object p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    .line 143
    return-void
.end method


# virtual methods
.method addToQueue()V
    .locals 1

    .line 184
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    .line 186
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 188
    :cond_0
    return-void
.end method

.method close()V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->removeFromQueue()V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->updateStreamableBytes(IZI)V

    .line 203
    return-void
.end method

.method removeFromQueue()V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->enqueued:Z

    .line 193
    iget-object v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$300(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-void
.end method

.method updateStreamableBytes(IZI)V
    .locals 6
    .param p1, "newStreamableBytes"    # I
    .param p2, "hasFrame"    # Z
    .param p3, "windowSize"    # I

    .line 146
    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newStreamableBytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 149
    :cond_1
    :goto_0
    iget v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    sub-int v0, p1, v0

    .line 150
    .local v0, "delta":I
    if-eqz v0, :cond_2

    .line 151
    iput p1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->streamableBytes:I

    .line 152
    iget-object v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    iget-object v2, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->this$0:Lio/netty/handler/codec/http2/UniformStreamByteDistributor;

    invoke-static {v2}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$200(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor;->access$202(Lio/netty/handler/codec/http2/UniformStreamByteDistributor;J)J

    .line 161
    :cond_2
    if-gez p3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->windowNegative:Z

    .line 162
    if-eqz p2, :cond_5

    if-gtz p3, :cond_4

    if-nez p3, :cond_5

    iget-boolean v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    if-nez v1, :cond_5

    .line 163
    :cond_4
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->addToQueue()V

    .line 165
    :cond_5
    return-void
.end method

.method write(ILio/netty/handler/codec/http2/StreamByteDistributor$Writer;)V
    .locals 5
    .param p1, "numBytes"    # I
    .param p2, "writer"    # Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    .line 175
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->stream:Lio/netty/handler/codec/http2/Http2Stream;

    invoke-interface {p2, v1, p1}, Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;->write(Lio/netty/handler/codec/http2/Http2Stream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    .line 180
    nop

    .line 181
    return-void

    .line 176
    :catchall_0
    move-exception v1

    .line 177
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->INTERNAL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v3, "byte distribution write error"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    .end local p1    # "numBytes":I
    .end local p2    # "writer":Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local p1    # "numBytes":I
    .restart local p2    # "writer":Lio/netty/handler/codec/http2/StreamByteDistributor$Writer;
    :catchall_1
    move-exception v1

    iput-boolean v0, p0, Lio/netty/handler/codec/http2/UniformStreamByteDistributor$State;->writing:Z

    .line 180
    throw v1
.end method
