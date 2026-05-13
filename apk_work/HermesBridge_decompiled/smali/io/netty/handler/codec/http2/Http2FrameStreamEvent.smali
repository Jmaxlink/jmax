.class public final Lio/netty/handler/codec/http2/Http2FrameStreamEvent;
.super Ljava/lang/Object;
.source "Http2FrameStreamEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;
    }
.end annotation


# instance fields
.field private final stream:Lio/netty/handler/codec/http2/Http2FrameStream;

.field private final type:Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;)V
    .locals 0
    .param p1, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;
    .param p2, "type"    # Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 34
    iput-object p2, p0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->type:Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    .line 35
    return-void
.end method

.method static stateChanged(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2FrameStreamEvent;
    .locals 2
    .param p0, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 46
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    sget-object v1, Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;->State:Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;-><init>(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;)V

    return-object v0
.end method

.method static writabilityChanged(Lio/netty/handler/codec/http2/Http2FrameStream;)Lio/netty/handler/codec/http2/Http2FrameStreamEvent;
    .locals 2
    .param p0, "stream"    # Lio/netty/handler/codec/http2/Http2FrameStream;

    .line 50
    new-instance v0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;

    sget-object v1, Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;->Writability:Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;-><init>(Lio/netty/handler/codec/http2/Http2FrameStream;Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;)V

    return-object v0
.end method


# virtual methods
.method public stream()Lio/netty/handler/codec/http2/Http2FrameStream;
    .locals 1

    .line 38
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->stream:Lio/netty/handler/codec/http2/Http2FrameStream;

    return-object v0
.end method

.method public type()Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/netty/handler/codec/http2/Http2FrameStreamEvent;->type:Lio/netty/handler/codec/http2/Http2FrameStreamEvent$Type;

    return-object v0
.end method
