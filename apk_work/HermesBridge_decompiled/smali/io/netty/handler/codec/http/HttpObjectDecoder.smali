.class public abstract Lio/netty/handler/codec/http/HttpObjectDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "HttpObjectDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;,
        Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_ALLOW_DUPLICATE_CONTENT_LENGTHS:Z = false

.field public static final DEFAULT_ALLOW_PARTIAL_CHUNKS:Z = true

.field public static final DEFAULT_CHUNKED_SUPPORTED:Z = true

.field public static final DEFAULT_INITIAL_BUFFER_SIZE:I = 0x80

.field public static final DEFAULT_MAX_CHUNK_SIZE:I = 0x2000

.field public static final DEFAULT_MAX_HEADER_SIZE:I = 0x2000

.field public static final DEFAULT_MAX_INITIAL_LINE_LENGTH:I = 0x1000

.field public static final DEFAULT_VALIDATE_HEADERS:Z = true

.field private static final ISO_CONTROL_OR_WHITESPACE:[Z

.field private static final LATIN_WHITESPACE:[Z

.field private static final SKIP_CONTROL_CHARS_BYTES:Lio/netty/util/ByteProcessor;

.field private static final SP_LENIENT_BYTES:[Z


# instance fields
.field private final allowDuplicateContentLengths:Z

.field private final allowPartialChunks:Z

.field private chunkSize:J

.field private final chunkedSupported:Z

.field private contentLength:J

.field private currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

.field private final headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

.field private final lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

.field private final maxChunkSize:I

.field private message:Lio/netty/handler/codec/http/HttpMessage;

.field private name:Lio/netty/util/AsciiString;

.field private final parserScratchBuffer:Lio/netty/buffer/ByteBuf;

.field private final resetRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private trailer:Lio/netty/handler/codec/http/LastHttpContent;

.field protected final validateHeaders:Z

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 133
    nop

    .line 981
    const/16 v0, 0x100

    new-array v1, v0, [Z

    sput-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    .line 982
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    const/16 v2, 0xa0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 983
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    const/16 v2, 0x89

    aput-boolean v3, v1, v2

    .line 984
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    const/16 v2, 0x8b

    aput-boolean v3, v1, v2

    .line 985
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    const/16 v2, 0x8c

    aput-boolean v3, v1, v2

    .line 986
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    const/16 v2, 0x8d

    aput-boolean v3, v1, v2

    .line 988
    new-array v1, v0, [Z

    sput-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->LATIN_WHITESPACE:[Z

    .line 989
    const/16 v1, -0x80

    .local v1, "b":B
    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    .line 990
    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder;->LATIN_WHITESPACE:[Z

    add-int/lit16 v4, v1, 0x80

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v5

    aput-boolean v5, v2, v4

    .line 989
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 1142
    .end local v1    # "b":B
    :cond_0
    new-array v0, v0, [Z

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->ISO_CONTROL_OR_WHITESPACE:[Z

    .line 1143
    const/16 v0, -0x80

    .local v0, "b":B
    :goto_1
    if-ge v0, v2, :cond_3

    .line 1144
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder;->ISO_CONTROL_OR_WHITESPACE:[Z

    add-int/lit16 v4, v0, 0x80

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isWhitespace(B)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v3

    :goto_3
    aput-boolean v5, v1, v4

    .line 1143
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_1

    .line 1148
    .end local v0    # "b":B
    :cond_3
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->SKIP_CONTROL_CHARS_BYTES:Lio/netty/util/ByteProcessor;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 196
    const/16 v0, 0x2000

    const/4 v1, 0x1

    const/16 v2, 0x1000

    invoke-direct {p0, v2, v0, v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    .line 198
    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z

    .line 205
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    .line 206
    return-void
.end method

.method protected constructor <init>(IIIZZ)V
    .locals 7
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z

    .line 214
    const/16 v6, 0x80

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZI)V

    .line 216
    return-void
.end method

.method protected constructor <init>(IIIZZI)V
    .locals 8
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I

    .line 224
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZIZ)V

    .line 226
    return-void
.end method

.method protected constructor <init>(IIIZZIZ)V
    .locals 9
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I
    .param p7, "allowDuplicateContentLengths"    # Z

    .line 235
    const/4 v8, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZIZZ)V

    .line 237
    return-void
.end method

.method protected constructor <init>(IIIZZIZZ)V
    .locals 2
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxChunkSize"    # I
    .param p4, "chunkedSupported"    # Z
    .param p5, "validateHeaders"    # Z
    .param p6, "initialBufferSize"    # I
    .param p7, "allowDuplicateContentLengths"    # Z
    .param p8, "allowPartialChunks"    # Z

    .line 245
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 153
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 154
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 188
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 246
    const-string v0, "maxInitialLineLength"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 247
    const-string v0, "maxHeaderSize"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 248
    const-string v0, "maxChunkSize"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 250
    invoke-static {p6}, Lio/netty/buffer/Unpooled;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->parserScratchBuffer:Lio/netty/buffer/ByteBuf;

    .line 251
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->parserScratchBuffer:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, p0, v1, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;-><init>(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/buffer/ByteBuf;I)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    .line 252
    new-instance v0, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->parserScratchBuffer:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;-><init>(Lio/netty/buffer/ByteBuf;I)V

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    .line 253
    iput p3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    .line 254
    iput-boolean p4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    .line 255
    iput-boolean p5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    .line 256
    iput-boolean p7, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->allowDuplicateContentLengths:Z

    .line 257
    iput-boolean p8, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->allowPartialChunks:Z

    .line 258
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/codec/http/HttpObjectDecoder;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpObjectDecoder;

    .line 133
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v0
.end method

.method static synthetic access$002(Lio/netty/handler/codec/http/HttpObjectDecoder;Lio/netty/handler/codec/http/HttpObjectDecoder$State;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http/HttpObjectDecoder;
    .param p1, "x1"    # Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 133
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object p1
.end method

.method static synthetic access$100()Lio/netty/util/ByteProcessor;
    .locals 1

    .line 133
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->SKIP_CONTROL_CHARS_BYTES:Lio/netty/util/ByteProcessor;

    return-object v0
.end method

.method static synthetic access$200()[Z
    .locals 1

    .line 133
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->ISO_CONTROL_OR_WHITESPACE:[Z

    return-object v0
.end method

.method private contentLength()J
    .locals 4

    .line 736
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 739
    :cond_0
    iget-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    return-wide v0
.end method

.method private static findEndOfString([BII)I
    .locals 2
    .param p0, "sb"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1018
    add-int/lit8 v0, p2, -0x1

    .local v0, "result":I
    :goto_0
    if-le v0, p1, :cond_1

    .line 1019
    aget-byte v1, p0, v0

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isWhitespace(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1018
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1023
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static findNonSPLenient([BII)I
    .locals 4
    .param p0, "sb"    # [B
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .line 952
    move v0, p1

    .local v0, "result":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 953
    aget-byte v1, p0, v0

    .line 955
    .local v1, "c":B
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isSPLenient(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    nop

    .line 952
    .end local v1    # "c":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    .restart local v1    # "c":B
    :cond_0
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isWhitespace(B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 962
    return v0

    .line 960
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid separator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 964
    .end local v0    # "result":I
    .end local v1    # "c":B
    :cond_2
    return p2
.end method

.method private static findNonWhitespace([BII)I
    .locals 5
    .param p0, "sb"    # [B
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .line 1004
    move v0, p1

    .local v0, "result":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1005
    aget-byte v1, p0, v0

    .line 1006
    .local v1, "c":B
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isWhitespace(B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1007
    return v0

    .line 1008
    :cond_0
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isOWS(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1004
    .end local v1    # "c":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    .restart local v1    # "c":B
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid separator, only a single space or horizontal tab allowed, but received a \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' (0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1011
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1014
    .end local v0    # "result":I
    .end local v1    # "c":B
    :cond_2
    return p2
.end method

.method private static findSPLenient([BII)I
    .locals 2
    .param p0, "sb"    # [B
    .param p1, "offset"    # I
    .param p2, "end"    # I

    .line 968
    move v0, p1

    .local v0, "result":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 969
    aget-byte v1, p0, v0

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isSPLenient(B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    return v0

    .line 968
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 973
    .end local v0    # "result":I
    :cond_1
    return p2
.end method

.method private static getChunkSize([BII)I
    .locals 6
    .param p0, "hex"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 816
    invoke-static {p0, p1, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->skipWhiteSpaces([BII)I

    move-result v0

    .line 817
    .local v0, "skipped":I
    if-eq v0, p2, :cond_5

    .line 821
    add-int/2addr p1, v0

    .line 822
    sub-int/2addr p2, v0

    .line 823
    const/4 v1, 0x0

    .line 824
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 825
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    invoke-static {v3}, Lio/netty/util/internal/StringUtil;->decodeHexNibble(B)I

    move-result v3

    .line 826
    .local v3, "digit":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 828
    add-int v4, p1, v2

    aget-byte v4, p0, v4

    .line 829
    .local v4, "b":B
    const/16 v5, 0x3b

    if-eq v4, v5, :cond_1

    invoke-static {v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isControlOrWhitespaceAsciiChar(B)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 837
    :cond_0
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5}, Ljava/lang/NumberFormatException;-><init>()V

    throw v5

    .line 830
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 834
    return v1

    .line 832
    :cond_2
    new-instance v5, Ljava/lang/NumberFormatException;

    invoke-direct {v5}, Ljava/lang/NumberFormatException;-><init>()V

    throw v5

    .line 839
    .end local v4    # "b":B
    :cond_3
    mul-int/lit8 v1, v1, 0x10

    .line 840
    add-int/2addr v1, v3

    .line 824
    .end local v3    # "digit":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 842
    .end local v2    # "i":I
    :cond_4
    return v1

    .line 819
    .end local v1    # "result":I
    :cond_5
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-direct {v1}, Ljava/lang/NumberFormatException;-><init>()V

    throw v1
.end method

.method private invalidChunk(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;
    .locals 2
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 615
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 619
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 621
    new-instance v0, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 622
    .local v0, "chunk":Lio/netty/handler/codec/http/HttpContent;
    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/HttpContent;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 624
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 625
    return-object v0
.end method

.method private invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 2
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;
    .param p2, "cause"    # Ljava/lang/Exception;

    .line 598
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->BAD_MESSAGE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 602
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 604
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 607
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {p2}, Lio/netty/handler/codec/DecoderResult;->failure(Ljava/lang/Throwable;)Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 609
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 610
    .local v0, "ret":Lio/netty/handler/codec/http/HttpMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 611
    return-object v0
.end method

.method private static isControlOrWhitespaceAsciiChar(B)Z
    .locals 2
    .param p0, "b"    # B

    .line 1157
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->ISO_CONTROL_OR_WHITESPACE:[Z

    add-int/lit16 v1, p0, 0x80

    aget-boolean v0, v0, v1

    return v0
.end method

.method private static isOWS(B)Z
    .locals 1
    .param p0, "ch"    # B

    .line 1027
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isSPLenient(B)Z
    .locals 2
    .param p0, "c"    # B

    .line 996
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->SP_LENIENT_BYTES:[Z

    add-int/lit16 v1, p0, 0x80

    aget-boolean v0, v0, v1

    return v0
.end method

.method private static isWhitespace(B)Z
    .locals 2
    .param p0, "b"    # B

    .line 1000
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->LATIN_WHITESPACE:[Z

    add-int/lit16 v1, p0, 0x80

    aget-boolean v0, v0, v1

    return v0
.end method

.method private static langAsciiString([BII)Ljava/lang/String;
    .locals 3
    .param p0, "asciiContent"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 885
    if-nez p2, :cond_0

    .line 886
    const-string v0, ""

    return-object v0

    .line 889
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 890
    array-length v1, p0

    if-ne p2, v1, :cond_1

    .line 891
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    invoke-direct {v1, p0, v0, v0, v2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1

    .line 893
    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0, v0, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1

    .line 895
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1, p2}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method private readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .locals 17
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 630
    .local v2, "message":Lio/netty/handler/codec/http/HttpMessage;
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    .line 632
    .local v3, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    iget-object v4, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    .line 634
    .local v4, "headerParser":Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
    invoke-virtual {v4, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 635
    .local v5, "line":Lio/netty/buffer/ByteBuf;
    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 636
    return-object v6

    .line 638
    :cond_0
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    .line 639
    .local v7, "lineLength":I
    :goto_0
    if-lez v7, :cond_5

    .line 640
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v8

    .line 641
    .local v8, "lineContent":[B
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v9

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v10

    add-int/2addr v9, v10

    .line 642
    .local v9, "startLine":I
    aget-byte v10, v8, v9

    .line 643
    .local v10, "firstChar":B
    iget-object v11, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    if-eq v10, v11, :cond_1

    const/16 v12, 0x9

    if-ne v10, v12, :cond_2

    .line 646
    :cond_1
    invoke-static {v8, v9, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->langAsciiString([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 647
    .local v12, "trimmedLine":Ljava/lang/String;
    iget-object v13, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    .line 648
    .local v13, "valueStr":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    .line 649
    .end local v12    # "trimmedLine":Ljava/lang/String;
    .end local v13    # "valueStr":Ljava/lang/String;
    goto :goto_1

    .line 650
    :cond_2
    iget-object v11, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    if-eqz v11, :cond_3

    .line 651
    iget-object v11, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    iget-object v12, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 653
    :cond_3
    invoke-direct {v0, v8, v9, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader([BII)V

    .line 656
    :goto_1
    invoke-virtual {v4, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 657
    if-nez v5, :cond_4

    .line 658
    return-object v6

    .line 660
    :cond_4
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v7

    .line 661
    .end local v8    # "lineContent":[B
    .end local v9    # "startLine":I
    .end local v10    # "firstChar":B
    goto :goto_0

    .line 664
    :cond_5
    iget-object v8, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    if-eqz v8, :cond_6

    .line 665
    iget-object v8, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    iget-object v9, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 669
    :cond_6
    iput-object v6, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    .line 670
    iput-object v6, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    .line 673
    new-instance v6, Lio/netty/handler/codec/http/HttpMessageDecoderResult;

    iget-object v8, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    iget v8, v8, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->size:I

    iget v9, v4, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->size:I

    invoke-direct {v6, v8, v9}, Lio/netty/handler/codec/http/HttpMessageDecoderResult;-><init>(II)V

    .line 674
    .local v6, "decoderResult":Lio/netty/handler/codec/http/HttpMessageDecoderResult;
    invoke-interface {v2, v6}, Lio/netty/handler/codec/http/HttpMessage;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 676
    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v8}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v8

    .line 677
    .local v8, "contentLengthFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_a

    .line 678
    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v9

    .line 679
    .local v9, "version":Lio/netty/handler/codec/http/HttpVersion;
    invoke-virtual {v9}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_8

    invoke-virtual {v9}, Lio/netty/handler/codec/http/HttpVersion;->majorVersion()I

    move-result v11

    if-ne v11, v12, :cond_7

    .line 680
    invoke-virtual {v9}, Lio/netty/handler/codec/http/HttpVersion;->minorVersion()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_2

    :cond_7
    move v11, v10

    goto :goto_3

    :cond_8
    :goto_2
    move v11, v12

    .line 683
    .local v11, "isHttp10OrEarlier":Z
    :goto_3
    iget-boolean v13, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->allowDuplicateContentLengths:Z

    invoke-static {v8, v11, v13}, Lio/netty/handler/codec/http/HttpUtil;->normalizeAndGetContentLength(Ljava/util/List;ZZ)J

    move-result-wide v13

    iput-wide v13, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 685
    iget-wide v13, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    .line 686
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 687
    .local v13, "lengthValue":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    if-gt v14, v12, :cond_9

    iget-wide v14, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 688
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 689
    :cond_9
    sget-object v12, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    iget-wide v14, v0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 694
    .end local v9    # "version":Lio/netty/handler/codec/http/HttpVersion;
    .end local v11    # "isHttp10OrEarlier":Z
    .end local v13    # "lengthValue":Ljava/lang/String;
    :cond_a
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 695
    invoke-static {v2, v10}, Lio/netty/handler/codec/http/HttpUtil;->setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 696
    sget-object v9, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v9

    .line 697
    :cond_b
    invoke-static {v2}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 698
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-interface {v2}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v9

    sget-object v10, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    if-ne v9, v10, :cond_c

    .line 699
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->handleTransferEncodingChunkedWithContentLength(Lio/netty/handler/codec/http/HttpMessage;)V

    .line 701
    :cond_c
    sget-object v9, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v9

    .line 702
    :cond_d
    invoke-direct/range {p0 .. p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-ltz v9, :cond_e

    .line 703
    sget-object v9, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v9

    .line 705
    :cond_e
    sget-object v9, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    return-object v9
.end method

.method private readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 14
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 743
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    .line 744
    .local v0, "headerParser":Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 745
    .local v1, "line":Lio/netty/buffer/ByteBuf;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 746
    return-object v2

    .line 748
    :cond_0
    iget-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 749
    .local v3, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 750
    .local v4, "lineLength":I
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    .line 753
    sget-object v2, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    return-object v2

    .line 756
    :cond_1
    const/4 v5, 0x0

    .line 757
    .local v5, "lastHeader":Ljava/lang/CharSequence;
    if-nez v3, :cond_2

    .line 758
    new-instance v6, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    sget-object v7, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    iget-boolean v8, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v6, v7, v8}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    iput-object v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    move-object v3, v6

    .line 760
    :cond_2
    :goto_0
    if-lez v4, :cond_8

    .line 761
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v6

    .line 762
    .local v6, "lineContent":[B
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    add-int/2addr v7, v8

    .line 763
    .local v7, "startLine":I
    aget-byte v8, v6, v7

    .line 764
    .local v8, "firstChar":B
    if-eqz v5, :cond_5

    const/16 v9, 0x20

    if-eq v8, v9, :cond_3

    const/16 v9, 0x9

    if-ne v8, v9, :cond_5

    .line 765
    :cond_3
    invoke-interface {v3}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v9

    invoke-virtual {v9, v5}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v9

    .line 766
    .local v9, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 767
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 770
    .local v10, "lastPos":I
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    invoke-static {v6, v7, v11}, Lio/netty/handler/codec/http/HttpObjectDecoder;->langAsciiString([BII)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 771
    .local v11, "lineTrimmed":Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 772
    .local v12, "currentLastPos":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v10, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 774
    .end local v9    # "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "lastPos":I
    .end local v11    # "lineTrimmed":Ljava/lang/String;
    .end local v12    # "currentLastPos":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 775
    :cond_5
    invoke-direct {p0, v6, v7, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeader([BII)V

    .line 776
    iget-object v9, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    .line 777
    .local v9, "headerName":Lio/netty/util/AsciiString;
    sget-object v10, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v10, v9}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    .line 778
    invoke-virtual {v10, v9}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    sget-object v10, Lio/netty/handler/codec/http/HttpHeaderNames;->TRAILER:Lio/netty/util/AsciiString;

    .line 779
    invoke-virtual {v10, v9}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 780
    invoke-interface {v3}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v10

    iget-object v11, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lio/netty/handler/codec/http/HttpHeaders;->add(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 782
    :cond_6
    iget-object v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    .line 784
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    .line 785
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    .line 787
    .end local v9    # "headerName":Lio/netty/util/AsciiString;
    :goto_1
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 788
    if-nez v1, :cond_7

    .line 789
    return-object v2

    .line 791
    :cond_7
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    .line 792
    .end local v6    # "lineContent":[B
    .end local v7    # "startLine":I
    .end local v8    # "firstChar":B
    goto/16 :goto_0

    .line 794
    :cond_8
    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 795
    return-object v3
.end method

.method private resetNow()V
    .locals 4

    .line 577
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 578
    .local v0, "message":Lio/netty/handler/codec/http/HttpMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 579
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    .line 580
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    .line 581
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 582
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->reset()V

    .line 583
    iget-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->headerParser:Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpObjectDecoder$HeaderParser;->reset()V

    .line 584
    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->trailer:Lio/netty/handler/codec/http/LastHttpContent;

    .line 585
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    move-object v1, v0

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 587
    .local v1, "res":Lio/netty/handler/codec/http/HttpResponse;
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isSwitchingToNonHttp1Protocol(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->UPGRADED:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 589
    return-void

    .line 593
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :cond_0
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 594
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->SKIP_CONTROL_CHARS:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 595
    return-void
.end method

.method private static skipWhiteSpaces([BII)I
    .locals 2
    .param p0, "hex"    # [B
    .param p1, "start"    # I
    .param p2, "length"    # I

    .line 806
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 807
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    invoke-static {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isWhitespace(B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 808
    return v0

    .line 806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v0    # "i":I
    :cond_1
    return p2
.end method

.method private splitHeader([BII)V
    .locals 8
    .param p1, "line"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 899
    add-int v0, p2, p3

    .line 901
    .local v0, "end":I
    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace([BII)I

    move-result v1

    .line 903
    .local v1, "nameStart":I
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v2

    .line 904
    .local v2, "isDecodingRequest":Z
    move v3, v1

    .local v3, "nameEnd":I
    :goto_0
    const/16 v4, 0x3a

    if-ge v3, v0, :cond_1

    .line 905
    aget-byte v5, p1, v3

    .line 915
    .local v5, "ch":B
    if-eq v5, v4, :cond_1

    if-nez v2, :cond_0

    .line 920
    invoke-static {v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isOWS(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 921
    goto :goto_1

    .line 904
    .end local v5    # "ch":B
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 925
    :cond_1
    :goto_1
    if-eq v3, v0, :cond_5

    .line 930
    move v5, v3

    .local v5, "colonEnd":I
    :goto_2
    if-ge v5, v0, :cond_3

    .line 931
    aget-byte v6, p1, v5

    if-ne v6, v4, :cond_2

    .line 932
    add-int/lit8 v5, v5, 0x1

    .line 933
    goto :goto_3

    .line 930
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 936
    :cond_3
    :goto_3
    sub-int v4, v3, v1

    invoke-virtual {p0, p1, v1, v4}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitHeaderName([BII)Lio/netty/util/AsciiString;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->name:Lio/netty/util/AsciiString;

    .line 937
    invoke-static {p1, v5, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonWhitespace([BII)I

    move-result v4

    .line 938
    .local v4, "valueStart":I
    if-ne v4, v0, :cond_4

    .line 939
    const-string v6, ""

    iput-object v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    goto :goto_4

    .line 941
    :cond_4
    invoke-static {p1, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString([BII)I

    move-result v6

    .line 943
    .local v6, "valueEnd":I
    sub-int v7, v6, v4

    invoke-static {p1, v4, v7}, Lio/netty/handler/codec/http/HttpObjectDecoder;->langAsciiString([BII)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->value:Ljava/lang/String;

    .line 945
    .end local v6    # "valueEnd":I
    :goto_4
    return-void

    .line 927
    .end local v4    # "valueStart":I
    .end local v5    # "colonEnd":I
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No colon found"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private splitInitialLine(Lio/netty/buffer/ByteBuf;)[Ljava/lang/String;
    .locals 13
    .param p1, "asciiBuffer"    # Lio/netty/buffer/ByteBuf;

    .line 846
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    .line 848
    .local v0, "asciiBytes":[B
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    .line 850
    .local v1, "arrayOffset":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    add-int/2addr v2, v1

    .line 852
    .local v2, "startContent":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    add-int/2addr v3, v2

    .line 854
    .local v3, "end":I
    invoke-static {v0, v2, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonSPLenient([BII)I

    move-result v4

    .line 855
    .local v4, "aStart":I
    invoke-static {v0, v4, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findSPLenient([BII)I

    move-result v5

    .line 857
    .local v5, "aEnd":I
    invoke-static {v0, v5, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonSPLenient([BII)I

    move-result v6

    .line 858
    .local v6, "bStart":I
    invoke-static {v0, v6, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findSPLenient([BII)I

    move-result v7

    .line 860
    .local v7, "bEnd":I
    invoke-static {v0, v7, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findNonSPLenient([BII)I

    move-result v8

    .line 861
    .local v8, "cStart":I
    add-int/lit8 v9, v8, -0x1

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v0, v9, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->findEndOfString([BII)I

    move-result v9

    .line 863
    .local v9, "cEnd":I
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    sub-int v11, v5, v4

    .line 864
    invoke-virtual {p0, v0, v4, v11}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitFirstWordInitialLine([BII)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    sub-int v11, v7, v6

    .line 865
    invoke-virtual {p0, v0, v6, v11}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitSecondWordInitialLine([BII)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    if-ge v8, v9, :cond_0

    sub-int v11, v9, v8

    .line 866
    invoke-virtual {p0, v0, v8, v11}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitThirdWordInitialLine([BII)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_0
    const-string v11, ""

    :goto_0
    const/4 v12, 0x2

    aput-object v11, v10, v12

    .line 863
    return-object v10
.end method


# virtual methods
.method protected abstract createInvalidMessage()Lio/netty/handler/codec/http/HttpMessage;
.end method

.method protected abstract createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 9
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 266
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$2;->$SwitchMap$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 448
    :pswitch_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 449
    .local v0, "readableBytes":I
    if-lez v0, :cond_17

    .line 454
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 444
    .end local v0    # "readableBytes":I
    :pswitch_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 445
    goto/16 :goto_6

    .line 431
    :pswitch_2
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readTrailingHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;

    move-result-object v0

    .line 432
    .local v0, "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    if-nez v0, :cond_1

    .line 433
    return-void

    .line 435
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    return-void

    .line 438
    .end local v0    # "trailer":Lio/netty/handler/codec/http/LastHttpContent;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void

    .line 347
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 355
    .local v0, "readLimit":I
    if-nez v0, :cond_2

    .line 356
    return-void

    .line 359
    :cond_2
    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 360
    .local v3, "toRead":I
    int-to-long v4, v3

    iget-wide v6, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 361
    iget-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    long-to-int v3, v4

    .line 363
    :cond_3
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 364
    .local v4, "content":Lio/netty/buffer/ByteBuf;
    iget-wide v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    int-to-long v7, v3

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 366
    iget-wide v5, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_4

    .line 368
    new-instance v1, Lio/netty/handler/codec/http/DefaultLastHttpContent;

    iget-boolean v2, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->validateHeaders:Z

    invoke-direct {v1, v4, v2}, Lio/netty/handler/codec/http/DefaultLastHttpContent;-><init>(Lio/netty/buffer/ByteBuf;Z)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    goto :goto_0

    .line 371
    :cond_4
    new-instance v1, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v1, v4}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_0
    return-void

    .line 339
    .end local v0    # "readLimit":I
    .end local v3    # "toRead":I
    .end local v4    # "content":Lio/netty/buffer/ByteBuf;
    :pswitch_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 340
    .local v0, "toRead":I
    if-lez v0, :cond_5

    .line 341
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 342
    .local v1, "content":Lio/netty/buffer/ByteBuf;
    new-instance v2, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-direct {v2, v1}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v1    # "content":Lio/netty/buffer/ByteBuf;
    :cond_5
    return-void

    .line 380
    .end local v0    # "toRead":I
    :pswitch_5
    :try_start_1
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 381
    .local v0, "line":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_6

    .line 382
    return-void

    .line 384
    :cond_6
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-static {v3, v4, v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;->getChunkSize([BII)I

    move-result v3

    .line 385
    .local v3, "chunkSize":I
    int-to-long v4, v3

    iput-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 386
    if-nez v3, :cond_7

    .line 387
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_FOOTER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 388
    return-void

    .line 390
    :cond_7
    sget-object v4, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNKED_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 395
    .end local v0    # "line":Lio/netty/buffer/ByteBuf;
    .end local v3    # "chunkSize":I
    nop

    .line 397
    :pswitch_6
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_d

    .line 398
    iget-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    long-to-int v0, v3

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->maxChunkSize:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 399
    .local v0, "toRead":I
    iget-boolean v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->allowPartialChunks:Z

    if-nez v3, :cond_8

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    if-ge v3, v0, :cond_8

    .line 400
    return-void

    .line 402
    :cond_8
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 403
    if-nez v0, :cond_9

    .line 404
    return-void

    .line 406
    :cond_9
    new-instance v3, Lio/netty/handler/codec/http/DefaultHttpContent;

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/netty/handler/codec/http/DefaultHttpContent;-><init>(Lio/netty/buffer/ByteBuf;)V

    .line 407
    .local v3, "chunk":Lio/netty/handler/codec/http/HttpContent;
    iget-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 409
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-wide v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    cmp-long v1, v4, v1

    if-eqz v1, :cond_a

    .line 412
    return-void

    .line 414
    :cond_a
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_DELIMITER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 418
    .end local v0    # "toRead":I
    .end local v3    # "chunk":Lio/netty/handler/codec/http/HttpContent;
    :pswitch_7
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    .line 419
    .local v0, "wIdx":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    .line 420
    .local v1, "rIdx":I
    :goto_1
    if-le v0, v1, :cond_c

    .line 421
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "rIdx":I
    .local v2, "rIdx":I
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    .line 422
    .local v1, "next":B
    const/16 v3, 0xa

    if-ne v1, v3, :cond_b

    .line 423
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_CHUNK_SIZE:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 424
    move v1, v2

    goto :goto_2

    .line 426
    .end local v1    # "next":B
    :cond_b
    move v1, v2

    goto :goto_1

    .line 427
    .end local v2    # "rIdx":I
    .local v1, "rIdx":I
    :cond_c
    :goto_2
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 428
    return-void

    .line 397
    .end local v0    # "wIdx":I
    .end local v1    # "rIdx":I
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 392
    :catch_1
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidChunk(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpContent;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    return-void

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_8
    :try_start_2
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->lineParser:Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;

    invoke-virtual {v0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder$LineParser;->parse(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 271
    .local v0, "line":Lio/netty/buffer/ByteBuf;
    if-nez v0, :cond_e

    .line 272
    return-void

    .line 274
    :cond_e
    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->splitInitialLine(Lio/netty/buffer/ByteBuf;)[Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "initialLine":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_16

    .line 277
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->createMessage([Ljava/lang/String;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    .line 278
    sget-object v4, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    iput-object v4, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 283
    .end local v0    # "line":Lio/netty/buffer/ByteBuf;
    .end local v3    # "initialLine":[Ljava/lang/String;
    nop

    .line 285
    :pswitch_9
    :try_start_3
    invoke-direct {p0, p2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->readHeaders(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    move-result-object v0

    .line 286
    .local v0, "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    if-nez v0, :cond_f

    .line 287
    return-void

    .line 289
    :cond_f
    iput-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    .line 290
    sget-object v3, Lio/netty/handler/codec/http/HttpObjectDecoder$2;->$SwitchMap$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 312
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v3

    goto :goto_3

    .line 299
    :pswitch_a
    iget-boolean v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkedSupported:Z

    if-eqz v1, :cond_10

    .line 303
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-void

    .line 300
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Chunked messages not supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1

    .line 294
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_b
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 297
    return-void

    .line 313
    .local v3, "contentLength":J
    :goto_3
    cmp-long v1, v3, v1

    if-eqz v1, :cond_15

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5

    .line 320
    :cond_11
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-eq v0, v1, :cond_13

    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_12

    goto :goto_4

    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1

    .line 323
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_13
    :goto_4
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_FIXED_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v0, v1, :cond_14

    .line 327
    iput-wide v3, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->chunkSize:J

    .line 331
    :cond_14
    return-void

    .line 314
    :cond_15
    :goto_5
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 317
    return-void

    .line 333
    .end local v0    # "nextState":Lio/netty/handler/codec/http/HttpObjectDecoder$State;
    .end local v3    # "contentLength":J
    :catch_2
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    return-void

    .line 275
    .local v0, "line":Lio/netty/buffer/ByteBuf;
    .local v3, "initialLine":[Ljava/lang/String;
    :cond_16
    :try_start_4
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "initialLine::length must be 3"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 280
    .end local v0    # "line":Lio/netty/buffer/ByteBuf;
    .end local v3    # "initialLine":[Ljava/lang/String;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_3
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    return-void

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 5
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 465
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 467
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 473
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    if-eqz v0, :cond_7

    .line 474
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->message:Lio/netty/handler/codec/http/HttpMessage;

    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    .line 475
    .local v0, "chunked":Z
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_VARIABLE_LENGTH_CONTENT:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    .line 477
    sget-object v1, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 479
    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    sget-object v2, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->READ_HEADER:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    if-ne v1, v2, :cond_2

    .line 485
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    new-instance v2, Lio/netty/handler/codec/PrematureChannelClosureException;

    const-string v3, "Connection closed before received headers"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/PrematureChannelClosureException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lio/netty/handler/codec/http/HttpObjectDecoder;->invalidMessage(Lio/netty/buffer/ByteBuf;Ljava/lang/Exception;)Lio/netty/handler/codec/http/HttpMessage;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 488
    return-void

    .line 493
    :cond_2
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isDecodingRequest()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_3

    goto :goto_1

    .line 500
    :cond_3
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .local v1, "prematureClosure":Z
    :goto_0
    goto :goto_2

    .line 495
    .end local v1    # "prematureClosure":Z
    :cond_5
    :goto_1
    const/4 v1, 0x1

    .line 503
    .restart local v1    # "prematureClosure":Z
    :goto_2
    if-nez v1, :cond_6

    .line 504
    sget-object v2, Lio/netty/handler/codec/http/LastHttpContent;->EMPTY_LAST_CONTENT:Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_6
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetNow()V

    .line 508
    .end local v0    # "chunked":Z
    .end local v1    # "prematureClosure":Z
    :cond_7
    return-void
.end method

.method protected handleTransferEncodingChunkedWithContentLength(Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 2
    .param p1, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 731
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 732
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->contentLength:J

    .line 733
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->parserScratchBuffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v0

    invoke-super {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 167
    throw v0
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 9
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 527
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 528
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 529
    .local v0, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    .line 530
    .local v2, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v3

    .line 531
    .local v3, "code":I
    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v4

    .line 538
    .local v4, "statusClass":Lio/netty/handler/codec/http/HttpStatusClass;
    sget-object v5, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 540
    const/16 v5, 0x65

    if-ne v3, v5, :cond_0

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_ACCEPT:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v7}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 541
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    sget-object v7, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    sget-object v8, Lio/netty/handler/codec/http/HttpHeaderValues;->WEBSOCKET:Lio/netty/util/AsciiString;

    invoke-virtual {v5, v7, v8, v6}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v1, v6

    .line 540
    :cond_1
    return v1

    .line 544
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 548
    return v1

    .line 546
    :sswitch_0
    return v6

    .line 551
    .end local v0    # "res":Lio/netty/handler/codec/http/HttpResponse;
    .end local v2    # "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    .end local v3    # "code":I
    .end local v4    # "statusClass":Lio/netty/handler/codec/http/HttpStatusClass;
    :cond_3
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xcc -> :sswitch_0
        0x130 -> :sswitch_0
    .end sparse-switch
.end method

.method protected abstract isDecodingRequest()Z
.end method

.method protected isSwitchingToNonHttp1Protocol(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 3
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 559
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v0

    sget-object v1, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 560
    return v2

    .line 562
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->UPGRADE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "newProtocol":Ljava/lang/String;
    if-eqz v0, :cond_2

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_0:Lio/netty/handler/codec/http/HttpVersion;

    .line 564
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    .line 565
    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpVersion;->text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 563
    :goto_1
    return v2
.end method

.method public reset()V
    .locals 2

    .line 573
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->resetRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->lazySet(Z)V

    .line 574
    return-void
.end method

.method protected splitFirstWordInitialLine([BII)Ljava/lang/String;
    .locals 1
    .param p1, "asciiContent"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 870
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->langAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected splitHeaderName([BII)Lio/netty/util/AsciiString;
    .locals 2
    .param p1, "sb"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 948
    new-instance v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, p3, v1}, Lio/netty/util/AsciiString;-><init>([BIIZ)V

    return-object v0
.end method

.method protected splitSecondWordInitialLine([BII)Ljava/lang/String;
    .locals 1
    .param p1, "asciiContent"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 874
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->langAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected splitThirdWordInitialLine([BII)Ljava/lang/String;
    .locals 1
    .param p1, "asciiContent"    # [B
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 878
    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectDecoder;->langAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 512
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpExpectationFailedEvent;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lio/netty/handler/codec/http/HttpObjectDecoder$2;->$SwitchMap$io$netty$handler$codec$http$HttpObjectDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/http/HttpObjectDecoder;->currentState:Lio/netty/handler/codec/http/HttpObjectDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/HttpObjectDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 517
    :pswitch_1
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectDecoder;->reset()V

    .line 518
    nop

    .line 523
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/ByteToMessageDecoder;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 524
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
