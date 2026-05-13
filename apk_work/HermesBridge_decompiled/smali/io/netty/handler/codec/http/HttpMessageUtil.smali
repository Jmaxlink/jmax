.class final Lio/netty/handler/codec/http/HttpMessageUtil;
.super Ljava/lang/Object;
.source "HttpMessageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 44
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "(decodeResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v0, ", version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    return-void
.end method

.method private static appendFullCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpMessage;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "msg"    # Lio/netty/handler/codec/http/FullHttpMessage;

    .line 72
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "(decodeResult: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpMessage;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, ", version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v0, ", content: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpMessage;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method static appendFullRequest(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpRequest;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "req"    # Lio/netty/handler/codec/http/FullHttpRequest;

    .line 54
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendFullCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpMessage;)V

    .line 55
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 56
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 57
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpRequest;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 58
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    .line 59
    return-object p0
.end method

.method static appendFullResponse(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpResponse;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "res"    # Lio/netty/handler/codec/http/FullHttpResponse;

    .line 63
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendFullCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpMessage;)V

    .line 64
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)V

    .line 65
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 66
    invoke-interface {p1}, Lio/netty/handler/codec/http/FullHttpResponse;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 67
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    .line 68
    return-object p0
.end method

.method private static appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 3
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 100
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v2, ": "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private static appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "req"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 84
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    return-void
.end method

.method private static appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "res"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 93
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    sget-object v0, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    return-void
.end method

.method static appendRequest(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "req"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 28
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpMessage;)V

    .line 29
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)V

    .line 30
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 31
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    .line 32
    return-object p0
.end method

.method static appendResponse(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "res"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 36
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendCommon(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpMessage;)V

    .line 37
    invoke-static {p0, p1}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendInitialLine(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)V

    .line 38
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendHeaders(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 39
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->removeLastNewLine(Ljava/lang/StringBuilder;)V

    .line 40
    return-object p0
.end method

.method private static removeLastNewLine(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "buf"    # Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 110
    return-void
.end method
