.class final Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
.super Ljava/lang/Object;
.source "DefaultHttp2Connection.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Connection$PropertyKey;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/DefaultHttp2Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultPropertyKey"
.end annotation


# instance fields
.field final index:I

.field final synthetic this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/DefaultHttp2Connection;I)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/http2/DefaultHttp2Connection;
    .param p2, "index"    # I

    .line 1044
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    iput p2, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->index:I

    .line 1046
    return-void
.end method


# virtual methods
.method verifyConnection(Lio/netty/handler/codec/http2/Http2Connection;)Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;
    .locals 2
    .param p1, "connection"    # Lio/netty/handler/codec/http2/Http2Connection;

    .line 1049
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Connection$DefaultPropertyKey;->this$0:Lio/netty/handler/codec/http2/DefaultHttp2Connection;

    if-ne p1, v0, :cond_0

    .line 1052
    return-object p0

    .line 1050
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Using a key that was not created by this connection"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
