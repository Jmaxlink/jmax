.class final Lio/netty/handler/codec/http2/Http2Exception$StacklessHttp2Exception;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "Http2Exception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StacklessHttp2Exception"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xef56ddde8ded4f3L


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V
    .locals 0
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    .line 330
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 331
    return-void
.end method

.method constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;Z)V
    .locals 6
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "shutdownHint"    # Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;
    .param p4, "shared"    # Z

    .line 334
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;ZLio/netty/handler/codec/http2/Http2Exception$1;)V

    .line 335
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 341
    return-object p0
.end method
