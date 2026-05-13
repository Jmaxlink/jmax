.class final Lio/netty/handler/codec/http/HttpContentCompressor$SnappyEncoderFactory;
.super Ljava/lang/Object;
.source "HttpContentCompressor.java"

# interfaces
.implements Lio/netty/handler/codec/http/CompressionEncoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpContentCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SnappyEncoderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http/HttpContentCompressor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http/HttpContentCompressor$1;

    .line 468
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentCompressor$SnappyEncoderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncoder()Lio/netty/handler/codec/MessageToByteEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/MessageToByteEncoder<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 472
    new-instance v0, Lio/netty/handler/codec/compression/SnappyFrameEncoder;

    invoke-direct {v0}, Lio/netty/handler/codec/compression/SnappyFrameEncoder;-><init>()V

    return-object v0
.end method
