.class public abstract Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;
.super Ljava/lang/Object;
.source "AbstractInboundHttp2ToHttpAdapterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;",
        "B:",
        "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<",
        "TT;TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final connection:Lio/netty/handler/codec/http2/Http2Connection;

.field private maxContentLength:I

.field private propagateSettings:Z

.field private validateHttpHeaders:Z


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/http2/Http2Connection;)V
    .locals 1
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 40
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "connection"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Connection;

    iput-object v0, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    .line 42
    return-void
.end method


# virtual methods
.method protected build()Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    :try_start_0
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->connection()Lio/netty/handler/codec/http2/Http2Connection;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->maxContentLength()I

    move-result v1

    .line 123
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->isValidateHttpHeaders()Z

    move-result v2

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->isPropagateSettings()Z

    move-result v3

    .line 122
    invoke-virtual {p0, v0, v1, v2, v3}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->build(Lio/netty/handler/codec/http2/Http2Connection;IZZ)Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .local v0, "instance":Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;, "TT;"
    nop

    .line 127
    iget-object v1, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    invoke-interface {v1, v0}, Lio/netty/handler/codec/http2/Http2Connection;->addListener(Lio/netty/handler/codec/http2/Http2Connection$Listener;)V

    .line 128
    return-object v0

    .line 124
    .end local v0    # "instance":Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;, "TT;"
    :catchall_0
    move-exception v0

    .line 125
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed to create a new InboundHttp2ToHttpAdapter"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract build(Lio/netty/handler/codec/http2/Http2Connection;IZZ)Lio/netty/handler/codec/http2/InboundHttp2ToHttpAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/http2/Http2Connection;",
            "IZZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected connection()Lio/netty/handler/codec/http2/Http2Connection;
    .locals 1

    .line 53
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->connection:Lio/netty/handler/codec/http2/Http2Connection;

    return-object v0
.end method

.method protected isPropagateSettings()Z
    .locals 1

    .line 101
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->propagateSettings:Z

    return v0
.end method

.method protected isValidateHttpHeaders()Z
    .locals 1

    .line 79
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->validateHttpHeaders:Z

    return v0
.end method

.method protected maxContentLength()I
    .locals 1

    .line 60
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iget v0, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->maxContentLength:I

    return v0
.end method

.method protected maxContentLength(I)Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;
    .locals 1
    .param p1, "maxContentLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iput p1, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->maxContentLength:I

    .line 72
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->self()Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected propagateSettings(Z)Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;
    .locals 1
    .param p1, "propagate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->propagateSettings:Z

    .line 113
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->self()Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final self()Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    return-object p0
.end method

.method protected validateHttpHeaders(Z)Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;
    .locals 1
    .param p1, "validate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;, "Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder<TT;TB;>;"
    iput-boolean p1, p0, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->validateHttpHeaders:Z

    .line 94
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;->self()Lio/netty/handler/codec/http2/AbstractInboundHttp2ToHttpAdapterBuilder;

    move-result-object v0

    return-object v0
.end method
