.class public final Lio/netty/handler/codec/http2/Http2Exception$ClosedStreamCreationException;
.super Lio/netty/handler/codec/http2/Http2Exception;
.source "Http2Exception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http2/Http2Exception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClosedStreamCreationException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5da08917295d72beL


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;)V
    .locals 0
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;

    .line 254
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;)V

    .line 255
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;

    .line 258
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "error"    # Lio/netty/handler/codec/http2/Http2Error;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/Http2Exception;-><init>(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    return-void
.end method
