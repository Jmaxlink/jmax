.class public final Lio/netty/handler/codec/http/HttpMessageDecoderResult;
.super Lio/netty/handler/codec/DecoderResult;
.source "HttpMessageDecoderResult.java"


# instance fields
.field private final headerSize:I

.field private final initialLineLength:I


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "initialLineLength"    # I
    .param p2, "headerSize"    # I

    .line 33
    sget-object v0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->SIGNAL_SUCCESS:Lio/netty/util/Signal;

    invoke-direct {p0, v0}, Lio/netty/handler/codec/DecoderResult;-><init>(Ljava/lang/Throwable;)V

    .line 34
    iput p1, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->initialLineLength:I

    .line 35
    iput p2, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->headerSize:I

    .line 36
    return-void
.end method


# virtual methods
.method public headerSize()I
    .locals 1

    .line 49
    iget v0, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->headerSize:I

    return v0
.end method

.method public initialLineLength()I
    .locals 1

    .line 42
    iget v0, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->initialLineLength:I

    return v0
.end method

.method public totalSize()I
    .locals 2

    .line 56
    iget v0, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->initialLineLength:I

    iget v1, p0, Lio/netty/handler/codec/http/HttpMessageDecoderResult;->headerSize:I

    add-int/2addr v0, v1

    return v0
.end method
