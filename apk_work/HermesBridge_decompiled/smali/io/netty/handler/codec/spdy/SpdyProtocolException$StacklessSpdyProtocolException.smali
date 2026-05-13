.class final Lio/netty/handler/codec/spdy/SpdyProtocolException$StacklessSpdyProtocolException;
.super Lio/netty/handler/codec/spdy/SpdyProtocolException;
.source "SpdyProtocolException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/spdy/SpdyProtocolException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StacklessSpdyProtocolException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5777e18ef010022bL


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "shared"    # Z

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/spdy/SpdyProtocolException;-><init>(Ljava/lang/String;ZLio/netty/handler/codec/spdy/SpdyProtocolException$1;)V

    .line 78
    return-void
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 0

    .line 84
    return-object p0
.end method
