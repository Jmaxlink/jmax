.class public final Lio/netty/handler/codec/http2/Http2MultiplexActiveStreamsException;
.super Ljava/lang/Exception;
.source "Http2MultiplexActiveStreamsException.java"


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 27
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 31
    return-object p0
.end method
