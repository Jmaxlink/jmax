.class public Lio/netty/handler/codec/http/HttpRequestDecoder;
.super Lio/netty/handler/codec/http/HttpObjectDecoder;
.source "HttpRequestDecoder.java"


# static fields
.field private static final CONNECTION_AS_LONG_0:J = 0x697463656e6e6f43L

.field private static final CONNECTION_AS_SHORT_1:S = 0x6e6fs

.field private static final CONTENT_AS_LONG:J = 0x2d746e65746e6f43L

.field private static final Connection:Lio/netty/util/AsciiString;

.field private static final ContentLength:Lio/netty/util/AsciiString;

.field private static final ContentType:Lio/netty/util/AsciiString;

.field private static final GET_AS_INT:I = 0x544547

.field private static final HOST_AS_INT:I = 0x74736f48

.field private static final HTTP_1_0_AS_LONG:J = 0x302e312f50545448L

.field private static final HTTP_1_1_AS_LONG:J = 0x312e312f50545448L

.field private static final Host:Lio/netty/util/AsciiString;

.field private static final LENGTH_AS_LONG:J = 0x6874676e654cL

.field private static final POST_AS_INT:I = 0x54534f50

.field private static final TYPE_AS_INT:I = 0x65707954


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "Host"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpRequestDecoder;->Host:Lio/netty/util/AsciiString;

    .line 81
    const-string v0, "Connection"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpRequestDecoder;->Connection:Lio/netty/util/AsciiString;

    .line 82
    const-string v0, "Content-Type"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpRequestDecoder;->ContentType:Lio/netty/util/AsciiString;

    .line 83
    const-string v0, "Content-Length"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpRequestDecoder;->ContentLength:Lio/netty/util/AsciiString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>()V

    .line 114
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    .line 122
    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z

    .line 126
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(IIIZI)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z
    .param p5, "initialBufferSize"    # I

    .line 132
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZI)V

    .line 134
    return-void
.end method

.method public constructor <init>(IIIZIZ)V
    .locals 8
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z
    .param p5, "initialBufferSize"    # I
    .param p6, "allowDuplicateContentLengths"    # Z

    .line 139
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZIZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(IIIZIZZ)V
    .locals 9
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "validateHeaders"    # Z
    .param p5, "initialBufferSize"    # I
    .param p6, "allowDuplicateContentLengths"    # Z
    .param p7, "allowPartialChunks"    # Z

    .line 146
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZIZZ)V

    .line 148
    return-void
.end method

.method private static isConnection([BI)Z
    .locals 5
    .param p0, "sb"    # [B
    .param p1, "start"    # I

    .line 191
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 199
    .local v0, "maybeConnecti":J
    const-wide v2, 0x697463656e6e6f43L    # 9.75388069753124E199

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 200
    return v3

    .line 202
    :cond_0
    add-int/lit8 v2, p1, 0x8

    aget-byte v2, p0, v2

    add-int/lit8 v4, p1, 0x9

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    int-to-short v2, v2

    .line 203
    .local v2, "maybeOn":S
    const/16 v4, 0x6e6f

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static isContentLength([BI)Z
    .locals 10
    .param p0, "sb"    # [B
    .param p1, "start"    # I

    .line 226
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v5, 0x28

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v6, 0x30

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v6, 0x38

    shl-long/2addr v2, v6

    or-long/2addr v0, v2

    .line 234
    .local v0, "maybeContent":J
    const-wide v2, 0x2d746e65746e6f43L    # 1.0029884506169278E-89

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 235
    return v3

    .line 237
    :cond_0
    add-int/lit8 v2, p1, 0x8

    aget-byte v2, p0, v2

    add-int/lit8 v6, p1, 0x9

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, p1, 0xa

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, p1, 0xb

    aget-byte v6, p0, v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v2, v6

    int-to-long v6, v2

    add-int/lit8 v2, p1, 0xc

    aget-byte v2, p0, v2

    int-to-long v8, v2

    shl-long/2addr v8, v4

    or-long/2addr v6, v8

    add-int/lit8 v2, p1, 0xd

    aget-byte v2, p0, v2

    int-to-long v8, v2

    shl-long v4, v8, v5

    or-long/2addr v4, v6

    .line 243
    .local v4, "maybeLength":J
    const-wide v6, 0x6874676e654cL

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static isContentType([BI)Z
    .locals 5
    .param p0, "sb"    # [B
    .param p1, "start"    # I

    .line 207
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 215
    .local v0, "maybeContent":J
    const-wide v2, 0x2d746e65746e6f43L    # 1.0029884506169278E-89

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 216
    return v3

    .line 218
    :cond_0
    add-int/lit8 v2, p1, 0x8

    aget-byte v2, p0, v2

    add-int/lit8 v4, p1, 0x9

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, p1, 0xa

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, p1, 0xb

    aget-byte v4, p0, v4

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 222
    .local v2, "maybeType":I
    const v4, 0x65707954

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static isGetMethod([BI)Z
    .locals 2
    .param p0, "sb"    # [B
    .param p1, "start"    # I

    .line 247
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 250
    .local v0, "maybeGet":I
    const v1, 0x544547

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isHost([BI)Z
    .locals 2
    .param p0, "sb"    # [B
    .param p1, "start"    # I

    .line 183
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 187
    .local v0, "maybeHost":I
    const v1, 0x74736f48

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isPostMethod([BI)Z
    .locals 2
    .param p0, "sb"    # [B
    .param p1, "start"    # I

    .line 254
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 258
    .local v0, "maybePost":I
    const v1, 0x54534f50

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
    .locals 5

    .line 297
    new-instance v0, Lio/netty/handler/codec/http/DefaultFullHttpRequest;

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    const-string v3, "/bad-request"

    iget-boolean v4, p0, Lio/netty/handler/codec/http/HttpRequestDecoder;->validateHeaders:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultFullHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 5
    .param p1, "initialLine"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpRequest;

    const/4 v1, 0x2

    aget-object v1, p1, v1

    .line 153
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpVersion;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    .line 154
    invoke-static {v2}, Lio/netty/handler/codec/http/HttpMethod;->valueOf(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, p1, v3

    iget-boolean v4, p0, Lio/netty/handler/codec/http/HttpRequestDecoder;->validateHeaders:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    .line 152
    return-object v0
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 2
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/handler/codec/http/DefaultHttpRequest;

    if-ne v0, v1, :cond_0

    .line 311
    const/4 v0, 0x0

    return v0

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    return v0
.end method

.method protected isDecodingRequest()Z
    .locals 1

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method protected splitFirstWordInitialLine([BII)Ljava/lang/String;
    .locals 1
    .param p1, "sb"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 263
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 264
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpRequestDecoder;->isGetMethod([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    .line 268
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpRequestDecoder;->isPostMethod([BI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Lio/netty/handler/codec/http/HttpMethod;->POST:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpMethod;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 272
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitFirstWordInitialLine([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected splitHeaderName([BII)Lio/netty/util/AsciiString;
    .locals 2
    .param p1, "sb"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 159
    aget-byte v0, p1, p2

    .line 160
    .local v0, "firstChar":B
    const/16 v1, 0x48

    if-ne v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    .line 161
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpRequestDecoder;->isHost([BI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    sget-object v1, Lio/netty/handler/codec/http/HttpRequestDecoder;->Host:Lio/netty/util/AsciiString;

    return-object v1

    .line 164
    :cond_0
    const/16 v1, 0x43

    if-ne v0, v1, :cond_3

    .line 165
    const/16 v1, 0xa

    if-ne p3, v1, :cond_1

    .line 166
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpRequestDecoder;->isConnection([BI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    sget-object v1, Lio/netty/handler/codec/http/HttpRequestDecoder;->Connection:Lio/netty/util/AsciiString;

    return-object v1

    .line 169
    :cond_1
    const/16 v1, 0xc

    if-ne p3, v1, :cond_2

    .line 170
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpRequestDecoder;->isContentType([BI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    sget-object v1, Lio/netty/handler/codec/http/HttpRequestDecoder;->ContentType:Lio/netty/util/AsciiString;

    return-object v1

    .line 173
    :cond_2
    const/16 v1, 0xe

    if-ne p3, v1, :cond_3

    .line 174
    invoke-static {p1, p2}, Lio/netty/handler/codec/http/HttpRequestDecoder;->isContentLength([BI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 175
    sget-object v1, Lio/netty/handler/codec/http/HttpRequestDecoder;->ContentLength:Lio/netty/util/AsciiString;

    return-object v1

    .line 179
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeaderName([BII)Lio/netty/util/AsciiString;

    move-result-object v1

    return-object v1
.end method

.method protected splitThirdWordInitialLine([BII)Ljava/lang/String;
    .locals 5
    .param p1, "sb"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 277
    const/16 v0, 0x8

    if-ne p3, v0, :cond_1

    .line 278
    aget-byte v1, p1, p2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 286
    .local v0, "maybeHttp1_x":J
    const-wide v2, 0x312e312f50545448L    # 8.544069490496323E-72

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 287
    const-string v2, "HTTP/1.1"

    return-object v2

    .line 288
    :cond_0
    const-wide v2, 0x302e312f50545448L

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 289
    const-string v2, "HTTP/1.0"

    return-object v2

    .line 292
    .end local v0    # "maybeHttp1_x":J
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitThirdWordInitialLine([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
