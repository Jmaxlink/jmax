.class final Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;
.super Ljava/lang/Object;
.source "HttpContentCompressor.java"

# interfaces
.implements Lio/netty/handler/codec/http/CompressionEncoderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpContentCompressor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrEncoderFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/http/HttpContentCompressor;


# direct methods
.method private constructor <init>(Lio/netty/handler/codec/http/HttpContentCompressor;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;->this$0:Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/codec/http/HttpContentCompressor;Lio/netty/handler/codec/http/HttpContentCompressor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/codec/http/HttpContentCompressor;
    .param p2, "x1"    # Lio/netty/handler/codec/http/HttpContentCompressor$1;

    .line 443
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;-><init>(Lio/netty/handler/codec/http/HttpContentCompressor;)V

    return-void
.end method


# virtual methods
.method public createEncoder()Lio/netty/handler/codec/MessageToByteEncoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/MessageToByteEncoder<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 447
    new-instance v0, Lio/netty/handler/codec/compression/BrotliEncoder;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpContentCompressor$BrEncoderFactory;->this$0:Lio/netty/handler/codec/http/HttpContentCompressor;

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpContentCompressor;->access$700(Lio/netty/handler/codec/http/HttpContentCompressor;)Lio/netty/handler/codec/compression/BrotliOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/BrotliOptions;->parameters()Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/compression/BrotliEncoder;-><init>(Lcom/aayushatharva/brotli4j/encoder/Encoder$Parameters;)V

    return-object v0
.end method
