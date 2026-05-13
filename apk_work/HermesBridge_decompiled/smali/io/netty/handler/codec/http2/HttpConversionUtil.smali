.class public final Lio/netty/handler/codec/http2/HttpConversionUtil;
.super Ljava/lang/Object;
.source "HttpConversionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;,
        Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;
    }
.end annotation


# static fields
.field private static final EMPTY_REQUEST_PATH:Lio/netty/util/AsciiString;

.field private static final HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Lio/netty/util/AsciiString;",
            ">;"
        }
    .end annotation
.end field

.field public static final OUT_OF_MESSAGE_SEQUENCE_METHOD:Lio/netty/handler/codec/http/HttpMethod;

.field public static final OUT_OF_MESSAGE_SEQUENCE_PATH:Ljava/lang/String; = ""

.field public static final OUT_OF_MESSAGE_SEQUENCE_RETURN_CODE:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 76
    new-instance v0, Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 79
    sget-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 81
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    .line 82
    .local v0, "keepAlive":Lio/netty/util/AsciiString;
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v2, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v0, v2}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 84
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->PROXY_CONNECTION:Lio/netty/util/AsciiString;

    .line 85
    .local v1, "proxyConnection":Lio/netty/util/AsciiString;
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v1, v3}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 86
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 87
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 88
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 89
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 90
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 91
    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    sget-object v3, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->PATH:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v3}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v3

    sget-object v4, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3, v4}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 98
    .end local v0    # "keepAlive":Lio/netty/util/AsciiString;
    .end local v1    # "proxyConnection":Lio/netty/util/AsciiString;
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->OPTIONS:Lio/netty/handler/codec/http/HttpMethod;

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->OUT_OF_MESSAGE_SEQUENCE_METHOD:Lio/netty/handler/codec/http/HttpMethod;

    .line 110
    sget-object v0, Lio/netty/handler/codec/http/HttpResponseStatus;->OK:Lio/netty/handler/codec/http/HttpResponseStatus;

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->OUT_OF_MESSAGE_SEQUENCE_RETURN_CODE:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 116
    const-string v0, "/"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http2/HttpConversionUtil;->EMPTY_REQUEST_PATH:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method

.method public static addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    .locals 7
    .param p0, "streamId"    # I
    .param p1, "inputHeaders"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "destinationMessage"    # Lio/netty/handler/codec/http/FullHttpMessage;
    .param p3, "addToTrailer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 387
    if-eqz p3, :cond_0

    .line 388
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 389
    invoke-interface {p2}, Lio/netty/handler/codec/http/FullHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v4

    instance-of v6, p2, Lio/netty/handler/codec/http/HttpRequest;

    .line 387
    move v1, p0

    move-object v2, p1

    move v5, p3

    invoke-static/range {v1 .. v6}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    .line 390
    return-void
.end method

.method public static addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    .locals 5
    .param p0, "streamId"    # I
    .param p1, "inputHeaders"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "outputHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p3, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p4, "isTrailer"    # Z
    .param p5, "isRequest"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 407
    new-instance v0, Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;

    invoke-direct {v0, p0, p2, p5}, Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;-><init>(ILio/netty/handler/codec/http/HttpHeaders;Z)V

    .line 409
    .local v0, "translator":Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;
    :try_start_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http2/HttpConversionUtil$Http2ToHttpHeaderTranslator;->translateHeaders(Ljava/lang/Iterable;)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    nop

    .line 416
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {p2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 417
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRAILER:Lio/netty/util/AsciiString;

    invoke-virtual {p2, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 418
    if-nez p4, :cond_0

    .line 419
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->STREAM_ID:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-virtual {p2, v1, p0}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    .line 420
    const/4 v1, 0x1

    invoke-static {p2, p3, v1}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;Z)V

    .line 422
    :cond_0
    return-void

    .line 412
    :catchall_0
    move-exception v1

    .line 413
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, v2, v1, v4, v3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2

    .line 410
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 411
    .local v1, "ex":Lio/netty/handler/codec/http2/Http2Exception;
    throw v1
.end method

.method private static extractPath(Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/Http2Headers;)Ljava/lang/String;
    .locals 2
    .param p0, "method"    # Ljava/lang/CharSequence;
    .param p1, "headers"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 272
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->CONNECT:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpMethod;->asciiName()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->authority()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "authority header cannot be null in the conversion to HTTP/1.x"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    return-object v0

    .line 277
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->path()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "path header cannot be null in conversion to HTTP/1.x"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    return-object v0
.end method

.method public static parseStatus(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 6
    .param p0, "status"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 189
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpResponseStatus;->parseLine(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 190
    .local v0, "result":Lio/netty/handler/codec/http/HttpResponseStatus;
    sget-object v1, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    if-eq v0, v1, :cond_0

    .line 198
    nop

    .line 199
    return-object v0

    .line 191
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Invalid HTTP/2 status code \'%d\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    .end local p0    # "status":Ljava/lang/CharSequence;
    throw v1
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v0    # "result":Lio/netty/handler/codec/http/HttpResponseStatus;
    .restart local p0    # "status":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v0

    .line 196
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v2, "Unrecognized HTTP status code \'%s\' encountered in translation to HTTP/1.x"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v1

    throw v1

    .line 193
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Lio/netty/handler/codec/http2/Http2Exception;
    throw v0
.end method

.method static setHttp2Authority(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 5
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "out"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 594
    if-eqz p0, :cond_2

    .line 595
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    sget-object v0, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-interface {p1, v0}, Lio/netty/handler/codec/http2/Http2Headers;->authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_0

    .line 598
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 599
    .local v0, "start":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .line 600
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 603
    new-instance v2, Lio/netty/util/AsciiString;

    invoke-direct {v2, p0, v0, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;II)V

    invoke-interface {p1, v2}, Lio/netty/handler/codec/http2/Http2Headers;->authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_0

    .line 601
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    .end local v0    # "start":I
    .end local v1    # "length":I
    :cond_2
    :goto_0
    return-void
.end method

.method private static setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 1
    .param p0, "in"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p1, "out"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 609
    const-string v0, ""

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Ljava/net/URI;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 610
    return-void
.end method

.method private static setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Ljava/net/URI;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 4
    .param p0, "in"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "out"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 613
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    new-instance v1, Lio/netty/util/AsciiString;

    invoke-direct {v1, v0}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p2, v1}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 616
    return-void

    .line 620
    :cond_0
    sget-object v1, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->SCHEME:Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;

    invoke-virtual {v1}, Lio/netty/handler/codec/http2/HttpConversionUtil$ExtensionHeaderNames;->text()Lio/netty/util/AsciiString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "cValue":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 622
    invoke-static {v1}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 623
    return-void

    .line 626
    :cond_1
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 627
    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTPS:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    sget-object v3, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpScheme;->port()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 629
    sget-object v2, Lio/netty/handler/codec/http/HttpScheme;->HTTP:Lio/netty/handler/codec/http/HttpScheme;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpScheme;->name()Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-interface {p2, v2}, Lio/netty/handler/codec/http2/Http2Headers;->scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 634
    :goto_0
    return-void

    .line 631
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, ":scheme must be specified. see https://tools.ietf.org/html/rfc7540#section-8.1.2.3"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBuf;Z)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 9
    .param p0, "streamId"    # I
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
    .param p3, "validateHttpHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 298
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "method header cannot be null in conversion to HTTP/1.x"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 300
    .local v0, "method":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->extractPath(Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/Http2Headers;)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "path":Ljava/lang/CharSequence;
    new-instance v8, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v3, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    .line 302
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {v2}, Lio/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v4

    .line 302
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v8

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/buffer/ByteBuf;Z)V

    .line 304
    .local v2, "msg":Lio/netty/handler/codec/http/FullHttpRequest;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v2, v3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    nop

    .line 312
    return-object v2

    .line 308
    :catchall_0
    move-exception v4

    .line 309
    .local v4, "t":Ljava/lang/Throwable;
    invoke-interface {v2}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 310
    sget-object v5, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v6, "HTTP/2 to HTTP/1.x headers conversion error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v5, v4, v6, v3}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    throw v3

    .line 305
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 306
    .local v3, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-interface {v2}, Lio/netty/handler/codec/http/FullHttpRequest;->release()Z

    .line 307
    throw v3
.end method

.method public static toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpRequest;
    .locals 1
    .param p0, "streamId"    # I
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "validateHttpHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 268
    invoke-interface {p2}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBuf;Z)Lio/netty/handler/codec/http/FullHttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public static toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBuf;Z)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 6
    .param p0, "streamId"    # I
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
    .param p3, "validateHttpHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 236
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->parseStatus(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 239
    .local v0, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    new-instance v1, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-direct {v1, v2, v0, p2, p3}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Z)V

    .line 242
    .local v1, "msg":Lio/netty/handler/codec/http/FullHttpResponse;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/FullHttpMessage;Z)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    nop

    .line 250
    return-object v1

    .line 246
    :catchall_0
    move-exception v3

    .line 247
    .local v3, "t":Ljava/lang/Throwable;
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 248
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v5, "HTTP/2 to HTTP/1.x headers conversion error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v4, v3, v5, v2}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v2

    throw v2

    .line 243
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Lio/netty/handler/codec/http2/Http2Exception;
    invoke-interface {v1}, Lio/netty/handler/codec/http/FullHttpResponse;->release()Z

    .line 245
    throw v2
.end method

.method public static toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBufAllocator;Z)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1
    .param p0, "streamId"    # I
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p3, "validateHttpHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 217
    invoke-interface {p2}, Lio/netty/buffer/ByteBufAllocator;->buffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toFullHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/buffer/ByteBuf;Z)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public static toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p0, "inHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p1, "validateHeaders"    # Z

    .line 462
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    sget-object v0, Lio/netty/handler/codec/http2/EmptyHttp2Headers;->INSTANCE:Lio/netty/handler/codec/http2/EmptyHttp2Headers;

    return-object v0

    .line 466
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->size()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZI)V

    .line 467
    .local v0, "out":Lio/netty/handler/codec/http2/Http2Headers;
    invoke-static {p0, v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 468
    return-object v0
.end method

.method public static toHttp2Headers(Lio/netty/handler/codec/http/HttpMessage;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 6
    .param p0, "in"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "validateHeaders"    # Z

    .line 434
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 435
    .local v0, "inHeaders":Lio/netty/handler/codec/http/HttpHeaders;
    new-instance v1, Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->size()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(ZI)V

    .line 436
    .local v1, "out":Lio/netty/handler/codec/http2/Http2Headers;
    instance-of v2, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v2, :cond_3

    .line 437
    move-object v2, p0

    check-cast v2, Lio/netty/handler/codec/http/HttpRequest;

    .line 438
    .local v2, "request":Lio/netty/handler/codec/http/HttpRequest;
    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderNames;->HOST:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v3}, Lio/netty/handler/codec/http/HttpHeaders;->getAsString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, "host":Ljava/lang/String;
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/netty/handler/codec/http/HttpUtil;->isOriginForm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/netty/handler/codec/http/HttpUtil;->isAsteriskForm(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 444
    .local v4, "requestTargetUri":Ljava/net/URI;
    invoke-static {v4}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Path(Ljava/net/URI;)Lio/netty/util/AsciiString;

    move-result-object v5

    invoke-interface {v1, v5}, Lio/netty/handler/codec/http2/Http2Headers;->path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 446
    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_0
    move-object v3, v5

    .line 447
    invoke-static {v0, v4, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Ljava/net/URI;Lio/netty/handler/codec/http2/Http2Headers;)V

    goto :goto_2

    .line 440
    .end local v4    # "requestTargetUri":Ljava/net/URI;
    :cond_2
    :goto_1
    new-instance v4, Lio/netty/util/AsciiString;

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v4}, Lio/netty/handler/codec/http2/Http2Headers;->path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .line 441
    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->setHttp2Scheme(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 449
    :goto_2
    invoke-static {v3, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->setHttp2Authority(Ljava/lang/String;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 450
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/handler/codec/http/HttpMethod;->asciiName()Lio/netty/util/AsciiString;

    move-result-object v4

    invoke-interface {v1, v4}, Lio/netty/handler/codec/http2/Http2Headers;->method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    .end local v2    # "request":Lio/netty/handler/codec/http/HttpRequest;
    .end local v3    # "host":Ljava/lang/String;
    goto :goto_3

    .line 451
    :cond_3
    instance-of v2, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v2, :cond_4

    .line 452
    move-object v2, p0

    check-cast v2, Lio/netty/handler/codec/http/HttpResponse;

    .line 453
    .local v2, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-interface {v1, v3}, Lio/netty/handler/codec/http2/Http2Headers;->status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    goto :goto_4

    .line 451
    .end local v2    # "response":Lio/netty/handler/codec/http/HttpResponse;
    :cond_4
    :goto_3
    nop

    .line 457
    :goto_4
    invoke-static {v0, v1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V

    .line 458
    return-object v1
.end method

.method public static toHttp2Headers(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 11
    .param p0, "inHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p1, "out"    # Lio/netty/handler/codec/http2/Http2Headers;

    .line 524
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v0

    .line 527
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    .line 528
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toLowercaseMap(Ljava/util/Iterator;I)Lio/netty/handler/codec/http2/CharSequenceMap;

    move-result-object v1

    .line 529
    .local v1, "connectionBlacklist":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<Lio/netty/util/AsciiString;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 530
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 531
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object v3

    .line 532
    .local v3, "aName":Lio/netty/util/AsciiString;
    sget-object v4, Lio/netty/handler/codec/http2/HttpConversionUtil;->HTTP_TO_HTTP2_HEADER_BLACKLIST:Lio/netty/handler/codec/http2/CharSequenceMap;

    invoke-virtual {v4, v3}, Lio/netty/handler/codec/http2/CharSequenceMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1, v3}, Lio/netty/handler/codec/http2/CharSequenceMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 534
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 535
    invoke-static {v2, p1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->toHttp2HeadersFilterTE(Ljava/util/Map$Entry;Lio/netty/handler/codec/http2/Http2Headers;)V

    goto/16 :goto_2

    .line 536
    :cond_0
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 537
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v4

    .line 541
    .local v4, "value":Lio/netty/util/AsciiString;
    :try_start_0
    sget-object v5, Lio/netty/util/ByteProcessor;->FIND_SEMI_COLON:Lio/netty/util/ByteProcessor;

    invoke-virtual {v4, v5}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v5

    .line 542
    .local v5, "index":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 543
    const/4 v7, 0x0

    .line 545
    .local v7, "start":I
    :cond_1
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v5, v9}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v10

    invoke-interface {p1, v8, v10}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 547
    add-int/lit8 v7, v5, 0x2

    .line 548
    invoke-virtual {v4}, Lio/netty/util/AsciiString;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 549
    invoke-virtual {v4}, Lio/netty/util/AsciiString;->length()I

    move-result v8

    sub-int/2addr v8, v7

    sget-object v10, Lio/netty/util/ByteProcessor;->FIND_SEMI_COLON:Lio/netty/util/ByteProcessor;

    invoke-virtual {v4, v7, v8, v10}, Lio/netty/util/AsciiString;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v8

    move v5, v8

    if-ne v8, v6, :cond_1

    .line 550
    :cond_2
    invoke-virtual {v4}, Lio/netty/util/AsciiString;->length()I

    move-result v6

    if-ge v7, v6, :cond_3

    .line 553
    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-virtual {v4}, Lio/netty/util/AsciiString;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8, v9}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v8

    invoke-interface {p1, v6, v8}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 554
    nop

    .end local v7    # "start":I
    goto :goto_1

    .line 551
    .restart local v7    # "start":I
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cookie value is of unexpected format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    .end local v1    # "connectionBlacklist":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<Lio/netty/util/AsciiString;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v3    # "aName":Lio/netty/util/AsciiString;
    .end local v4    # "value":Lio/netty/util/AsciiString;
    .end local p0    # "inHeaders":Lio/netty/handler/codec/http/HttpHeaders;
    .end local p1    # "out":Lio/netty/handler/codec/http2/Http2Headers;
    throw v6

    .line 555
    .end local v7    # "start":I
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    .restart local v1    # "connectionBlacklist":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<Lio/netty/util/AsciiString;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .restart local v3    # "aName":Lio/netty/util/AsciiString;
    .restart local v4    # "value":Lio/netty/util/AsciiString;
    .restart local p0    # "inHeaders":Lio/netty/handler/codec/http/HttpHeaders;
    .restart local p1    # "out":Lio/netty/handler/codec/http2/Http2Headers;
    :cond_4
    sget-object v6, Lio/netty/handler/codec/http/HttpHeaderNames;->COOKIE:Lio/netty/util/AsciiString;

    invoke-interface {p1, v6, v4}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    .end local v5    # "index":I
    :goto_1
    nop

    .line 562
    .end local v4    # "value":Lio/netty/util/AsciiString;
    goto :goto_2

    .line 557
    .restart local v4    # "value":Lio/netty/util/AsciiString;
    :catch_0
    move-exception v5

    .line 560
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 563
    .end local v4    # "value":Lio/netty/util/AsciiString;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 566
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    .end local v3    # "aName":Lio/netty/util/AsciiString;
    :cond_6
    :goto_2
    goto/16 :goto_0

    .line 567
    :cond_7
    return-void
.end method

.method private static toHttp2HeadersFilterTE(Ljava/util/Map$Entry;Lio/netty/handler/codec/http2/Http2Headers;)V
    .locals 5
    .param p1, "out"    # Lio/netty/handler/codec/http2/Http2Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lio/netty/handler/codec/http2/Http2Headers;",
            ")V"
        }
    .end annotation

    .line 508
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lio/netty/util/AsciiString;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 509
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-static {v0, v1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-interface {p1, v0, v1}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    goto :goto_1

    .line 513
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->unescapeCsvFields(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 514
    .local v0, "teValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 515
    .local v2, "teValue":Ljava/lang/CharSequence;
    invoke-static {v2}, Lio/netty/util/AsciiString;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-static {v3, v4}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 516
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TE:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->TRAILERS:Lio/netty/util/AsciiString;

    invoke-interface {p1, v1, v3}, Lio/netty/handler/codec/http2/Http2Headers;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 517
    goto :goto_1

    .line 519
    .end local v2    # "teValue":Ljava/lang/CharSequence;
    :cond_1
    goto :goto_0

    .line 521
    .end local v0    # "teValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method private static toHttp2Path(Ljava/net/URI;)Lio/netty/util/AsciiString;
    .locals 3
    .param p0, "uri"    # Ljava/net/URI;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->length(Ljava/lang/String;)I

    move-result v1

    .line 575
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->length(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->length(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 576
    .local v0, "pathBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-virtual {p0}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_0
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 580
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {p0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    :cond_1
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 584
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p0}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lio/netty/handler/codec/http2/HttpConversionUtil;->EMPTY_REQUEST_PATH:Lio/netty/util/AsciiString;

    goto :goto_0

    :cond_3
    new-instance v2, Lio/netty/util/AsciiString;

    invoke-direct {v2, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    return-object v2
.end method

.method public static toHttpRequest(ILio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/handler/codec/http/HttpRequest;
    .locals 9
    .param p0, "streamId"    # I
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "validateHttpHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 330
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->method()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "method header cannot be null in conversion to HTTP/1.x"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 332
    .local v0, "method":Ljava/lang/CharSequence;
    invoke-static {v0, p1}, Lio/netty/handler/codec/http2/HttpConversionUtil;->extractPath(Ljava/lang/CharSequence;Lio/netty/handler/codec/http2/Http2Headers;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "path":Ljava/lang/CharSequence;
    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpRequest;

    sget-object v3, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lio/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v4

    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, p2}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    .line 336
    .local v2, "msg":Lio/netty/handler/codec/http/HttpRequest;
    :try_start_0
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    nop

    .line 342
    return-object v2

    .line 339
    :catchall_0
    move-exception v3

    .line 340
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, v4, v3, v6, v5}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v4

    throw v4

    .line 337
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v3

    .line 338
    .local v3, "e":Lio/netty/handler/codec/http2/Http2Exception;
    throw v3
.end method

.method public static toHttpResponse(ILio/netty/handler/codec/http2/Http2Headers;Z)Lio/netty/handler/codec/http/HttpResponse;
    .locals 8
    .param p0, "streamId"    # I
    .param p1, "http2Headers"    # Lio/netty/handler/codec/http2/Http2Headers;
    .param p2, "validateHttpHeaders"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/netty/handler/codec/http2/Http2Exception;
        }
    .end annotation

    .line 361
    invoke-interface {p1}, Lio/netty/handler/codec/http2/Http2Headers;->status()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/codec/http2/HttpConversionUtil;->parseStatus(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 364
    .local v0, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpResponse;

    sget-object v2, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-direct {v1, v2, v0, p2}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V

    .line 366
    .local v1, "msg":Lio/netty/handler/codec/http/HttpResponse;
    :try_start_0
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lio/netty/handler/codec/http2/HttpConversionUtil;->addHttp2ToHttpHeaders(ILio/netty/handler/codec/http2/Http2Headers;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    :try_end_0
    .catch Lio/netty/handler/codec/http2/Http2Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    nop

    .line 372
    return-object v1

    .line 369
    :catchall_0
    move-exception v2

    .line 370
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "HTTP/2 to HTTP/1.x headers conversion error"

    invoke-static {p0, v3, v2, v5, v4}, Lio/netty/handler/codec/http2/Http2Exception;->streamError(ILio/netty/handler/codec/http2/Http2Error;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v3

    throw v3

    .line 367
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Lio/netty/handler/codec/http2/Http2Exception;
    throw v2
.end method

.method private static toLowercaseMap(Ljava/util/Iterator;I)Lio/netty/handler/codec/http2/CharSequenceMap;
    .locals 9
    .param p1, "arraySizeHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;I)",
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Lio/netty/util/AsciiString;",
            ">;"
        }
    .end annotation

    .line 473
    .local p0, "valuesIter":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/lang/CharSequence;>;"
    invoke-static {}, Lio/netty/handler/codec/UnsupportedValueConverter;->instance()Lio/netty/handler/codec/UnsupportedValueConverter;

    move-result-object v0

    .line 474
    .local v0, "valueConverter":Lio/netty/handler/codec/UnsupportedValueConverter;, "Lio/netty/handler/codec/UnsupportedValueConverter<Lio/netty/util/AsciiString;>;"
    new-instance v1, Lio/netty/handler/codec/http2/CharSequenceMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, p1}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>(ZLio/netty/handler/codec/ValueConverter;I)V

    .line 476
    .local v1, "result":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<Lio/netty/util/AsciiString;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 477
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toLowerCase()Lio/netty/util/AsciiString;

    move-result-object v2

    .line 479
    .local v2, "lowerCased":Lio/netty/util/AsciiString;
    :try_start_0
    sget-object v3, Lio/netty/util/ByteProcessor;->FIND_COMMA:Lio/netty/util/ByteProcessor;

    invoke-virtual {v2, v3}, Lio/netty/util/AsciiString;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v3

    .line 480
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 481
    const/4 v5, 0x0

    .line 483
    .local v5, "start":I
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v2, v5, v3, v6}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v7

    invoke-virtual {v7}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object v7

    sget-object v8, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v7, v8}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 484
    add-int/lit8 v5, v3, 0x1

    .line 485
    invoke-virtual {v2}, Lio/netty/util/AsciiString;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 486
    invoke-virtual {v2}, Lio/netty/util/AsciiString;->length()I

    move-result v7

    sub-int/2addr v7, v5

    sget-object v8, Lio/netty/util/ByteProcessor;->FIND_COMMA:Lio/netty/util/ByteProcessor;

    invoke-virtual {v2, v5, v7, v8}, Lio/netty/util/AsciiString;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v7

    move v3, v7

    if-ne v7, v4, :cond_0

    .line 487
    :cond_1
    invoke-virtual {v2}, Lio/netty/util/AsciiString;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4, v6}, Lio/netty/util/AsciiString;->subSequence(IIZ)Lio/netty/util/AsciiString;

    move-result-object v4

    invoke-virtual {v4}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object v4

    sget-object v6, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4, v6}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 488
    nop

    .end local v5    # "start":I
    goto :goto_1

    .line 489
    :cond_2
    invoke-virtual {v2}, Lio/netty/util/AsciiString;->trim()Lio/netty/util/AsciiString;

    move-result-object v4

    sget-object v5, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v4, v5}, Lio/netty/handler/codec/http2/CharSequenceMap;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v3    # "index":I
    :goto_1
    nop

    .line 496
    .end local v2    # "lowerCased":Lio/netty/util/AsciiString;
    goto :goto_0

    .line 491
    .restart local v2    # "lowerCased":Lio/netty/util/AsciiString;
    :catch_0
    move-exception v3

    .line 494
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 497
    .end local v2    # "lowerCased":Lio/netty/util/AsciiString;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v1
.end method
