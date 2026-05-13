.class public Lio/netty/handler/codec/http2/Http2Exception$StreamException;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "Http2Exception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x85c69964ce66d40L


# instance fields
.field private final streamId:I


# direct methods
.method constructor <init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p3, "message"    # Ljava/lang/String;

    .line 274
    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->NO_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p2, p3, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 275
    iput p1, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId:I

    .line 276
    return-void
.end method

.method constructor <init>(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 279
    sget-object v0, Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;->NO_SHUTDOWN:Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;

    invoke-direct {p0, p2, p3, p4, v0}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;Lio/netty/handler/codec/http2/Http2Exception$ShutdownHint;)V

    .line 280
    iput p1, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId:I

    .line 281
    return-void
.end method


# virtual methods
.method public streamId()I
    .locals 1

    .line 284
    iget v0, p0, Lio/netty/handler/codec/http2/Http2Exception$StreamException;->streamId:I

    return v0
.end method
