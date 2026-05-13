.class public final Lio/ktor/http/cio/HttpParserKt;
.super Ljava/lang/Object;
.source "HttpParser.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpParser.kt\nio/ktor/http/cio/HttpParserKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,306:1\n1083#2,2:307\n1#3:309\n*S KotlinDebug\n*F\n+ 1 HttpParser.kt\nio/ktor/http/cio/HttpParserKt\n*L\n145#1:307,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u001a\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u001a\u0018\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u0018\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a(\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u001a\u0018\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u000c\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0013H\u0000\u001a\u0019\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001f\u001a-\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010!\u001a\u0018\u0010\"\u001a\u00020#2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u0018\u0010$\u001a\u00020#2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u001b\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\u001d\u001a\u00020\u001eH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001f\u001a\u001b\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u001d\u001a\u00020\u001eH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001f\u001a\u0018\u0010)\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u0018\u0010*\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u0018\u0010+\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002\u001a\u0010\u0010,\u001a\u00020\u00102\u0006\u0010-\u001a\u00020\u0001H\u0002\u001a\u0010\u0010.\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020\rH\u0002\u001a\u0010\u00100\u001a\u00020\u001a2\u0006\u00101\u001a\u00020\rH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00062"
    }
    d2 = {
        "HTTP_LINE_LIMIT",
        "",
        "HTTP_STATUS_CODE_MAX_RANGE",
        "HTTP_STATUS_CODE_MIN_RANGE",
        "hostForbiddenSymbols",
        "",
        "",
        "versions",
        "Lio/ktor/http/cio/internals/AsciiCharTree;",
        "",
        "characterIsNotAllowed",
        "",
        "text",
        "",
        "ch",
        "isDelimiter",
        "",
        "noColonFound",
        "range",
        "Lio/ktor/http/cio/internals/MutableRange;",
        "parseHeaderName",
        "Lio/ktor/http/cio/internals/CharArrayBuilder;",
        "parseHeaderNameFailed",
        "index",
        "start",
        "parseHeaderValue",
        "",
        "parseHeaders",
        "Lio/ktor/http/cio/HttpHeadersMap;",
        "input",
        "Lio/ktor/utils/io/ByteReadChannel;",
        "(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "builder",
        "(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "parseHttpMethod",
        "Lio/ktor/http/HttpMethod;",
        "parseHttpMethodFull",
        "parseRequest",
        "Lio/ktor/http/cio/Request;",
        "parseResponse",
        "Lio/ktor/http/cio/Response;",
        "parseStatusCode",
        "parseUri",
        "parseVersion",
        "statusOutOfRange",
        "code",
        "unsupportedHttpVersion",
        "result",
        "validateHostHeader",
        "host",
        "ktor-http-cio"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final HTTP_LINE_LIMIT:I = 0x2000

.field private static final HTTP_STATUS_CODE_MAX_RANGE:I = 0x3e7

.field private static final HTTP_STATUS_CODE_MIN_RANGE:I = 0x64

.field private static final hostForbiddenSymbols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final versions:Lio/ktor/http/cio/internals/AsciiCharTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/http/cio/internals/AsciiCharTree<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    const/16 v0, 0x2f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Character;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/HttpParserKt;->hostForbiddenSymbols:Ljava/util/Set;

    .line 182
    sget-object v0, Lio/ktor/http/cio/internals/AsciiCharTree;->Companion:Lio/ktor/http/cio/internals/AsciiCharTree$Companion;

    const-string v1, "HTTP/1.0"

    const-string v2, "HTTP/1.1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/ktor/http/cio/internals/AsciiCharTree$Companion;->build(Ljava/util/List;)Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v0

    sput-object v0, Lio/ktor/http/cio/HttpParserKt;->versions:Lio/ktor/http/cio/internals/AsciiCharTree;

    return-void
.end method

.method private static final characterIsNotAllowed(Ljava/lang/CharSequence;C)Ljava/lang/Void;
    .locals 3
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 297
    new-instance v0, Lio/ktor/http/cio/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Character with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not allowed in header names, \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final isDelimiter(C)Z
    .locals 4
    .param p0, "ch"    # C

    .line 300
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "\"(),/:;<=>?@[\\]{}"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, p0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static final noColonFound(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/Void;
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    .line 293
    new-instance v0, Lio/ktor/http/cio/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No colon in HTTP header in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v2

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v3

    invoke-interface {p0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in builder: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseHeaderName(Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;)I
    .locals 4
    .param p0, "text"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v0

    .line 230
    .local v0, "index":I
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v1

    .line 232
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 233
    invoke-virtual {p0, v0}, Lio/ktor/http/cio/internals/CharArrayBuilder;->charAt(I)C

    move-result v2

    .line 234
    .local v2, "ch":C
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 235
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 236
    return v0

    .line 239
    :cond_0
    invoke-static {v2}, Lio/ktor/http/cio/HttpParserKt;->isDelimiter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    nop

    .end local v2    # "ch":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    .restart local v2    # "ch":C
    :cond_1
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v3

    invoke-static {p0, v0, v3, v2}, Lio/ktor/http/cio/HttpParserKt;->parseHeaderNameFailed(Lio/ktor/http/cio/internals/CharArrayBuilder;IIC)Ljava/lang/Void;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3

    .line 246
    .end local v2    # "ch":C
    :cond_2
    move-object v2, p0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, p1}, Lio/ktor/http/cio/HttpParserKt;->noColonFound(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/Void;

    new-instance v2, Lkotlin/KotlinNothingValueException;

    invoke-direct {v2}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v2
.end method

.method private static final parseHeaderNameFailed(Lio/ktor/http/cio/internals/CharArrayBuilder;IIC)Ljava/lang/Void;
    .locals 2
    .param p0, "text"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "index"    # I
    .param p2, "start"    # I
    .param p3, "ch"    # C

    .line 250
    const/16 v0, 0x3a

    if-eq p3, v0, :cond_1

    .line 253
    if-ne p1, p2, :cond_0

    .line 254
    new-instance v0, Lio/ktor/http/cio/ParserException;

    .line 255
    nop

    .line 254
    const-string v1, "Multiline headers via line folding is not supported since it is deprecated as per RFC7230."

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p3}, Lio/ktor/http/cio/HttpParserKt;->characterIsNotAllowed(Ljava/lang/CharSequence;C)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 251
    :cond_1
    new-instance v0, Lio/ktor/http/cio/ParserException;

    const-string v1, "Empty header names are not allowed as per RFC7230."

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseHeaderValue(Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;)V
    .locals 9
    .param p0, "text"    # Lio/ktor/http/cio/internals/CharArrayBuilder;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    const-string v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v0

    .line 264
    .local v0, "start":I
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v1

    .line 265
    .local v1, "end":I
    move v2, v0

    .line 267
    .local v2, "index":I
    invoke-static {p0, v2, v1}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpacesAndHorizontalTabs(Lio/ktor/http/cio/internals/CharArrayBuilder;II)I

    move-result v2

    .line 269
    if-lt v2, v1, :cond_0

    .line 270
    invoke-virtual {p1, v1}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 271
    return-void

    .line 274
    :cond_0
    move v3, v2

    .line 275
    .local v3, "valueStart":I
    move v4, v2

    .line 277
    .local v4, "valueLastIndex":I
    :goto_0
    if-ge v2, v1, :cond_7

    .line 278
    invoke-virtual {p0, v2}, Lio/ktor/http/cio/internals/CharArrayBuilder;->charAt(I)C

    move-result v5

    .line 279
    .local v5, "ch":C
    const/16 v6, 0x9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_1

    :goto_1
    move v6, v8

    goto :goto_2

    :cond_1
    const/16 v6, 0x20

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v7

    :goto_2
    if-nez v6, :cond_6

    .line 281
    const/16 v6, 0xd

    if-ne v5, v6, :cond_3

    :goto_3
    move v7, v8

    goto :goto_4

    :cond_3
    const/16 v6, 0xa

    if-ne v5, v6, :cond_4

    goto :goto_3

    :cond_4
    :goto_4
    if-nez v7, :cond_5

    .line 282
    move v4, v2

    goto :goto_5

    .line 281
    :cond_5
    move-object v6, p0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6, v5}, Lio/ktor/http/cio/HttpParserKt;->characterIsNotAllowed(Ljava/lang/CharSequence;C)Ljava/lang/Void;

    new-instance v6, Lkotlin/KotlinNothingValueException;

    invoke-direct {v6}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v6

    .line 285
    .end local v5    # "ch":C
    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_7
    invoke-virtual {p1, v3}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 289
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Lio/ktor/http/cio/internals/MutableRange;->setEnd(I)V

    .line 290
    return-void
.end method

.method public static final parseHeaders(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lio/ktor/http/cio/internals/CharArrayBuilder;",
            "Lio/ktor/http/cio/internals/MutableRange;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;

    iget v2, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 92
    iget v3, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->label:I

    const/16 v4, 0x2000

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lio/ktor/http/cio/HttpHeadersMap;

    .local v3, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    iget-object v5, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$2:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/internals/MutableRange;

    .local v5, "range":Lio/ktor/http/cio/internals/MutableRange;
    iget-object v6, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$1:Ljava/lang/Object;

    check-cast v6, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .local v6, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    iget-object v7, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteReadChannel;

    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object v3, v2

    goto :goto_2

    .line 134
    .end local v5    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v6    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v7    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 92
    .end local v3    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :pswitch_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    move-object/from16 v5, p2

    .restart local v5    # "range":Lio/ktor/http/cio/internals/MutableRange;
    move-object/from16 v6, p1

    .line 97
    .restart local v6    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    new-instance v7, Lio/ktor/http/cio/HttpHeadersMap;

    invoke-direct {v7, v6}, Lio/ktor/http/cio/HttpHeadersMap;-><init>(Lio/ktor/http/cio/internals/CharArrayBuilder;)V

    .line 99
    .local v7, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    move-object/from16 v21, v7

    move-object v7, v3

    move-object/from16 v3, v21

    .line 100
    .local v3, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_1
    nop

    .line 101
    :try_start_1
    move-object v8, v6

    check-cast v8, Ljava/lang/Appendable;

    iput-object v7, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$0:Ljava/lang/Object;

    iput-object v6, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->L$3:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$2;->label:I

    invoke-interface {v7, v8, v4, v1}, Lio/ktor/utils/io/ByteReadChannel;->readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v8, v0, :cond_1

    .line 92
    return-object v0

    .line 101
    :cond_1
    move-object v12, v3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object v3, v2

    move-object v2, v8

    .end local v2    # "$result":Ljava/lang/Object;
    .end local v5    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v6    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v7    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .local v3, "$result":Ljava/lang/Object;
    .local v12, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .local v13, "range":Lio/ktor/http/cio/internals/MutableRange;
    .local v14, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .local v15, "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    :try_start_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    .end local v13    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v14    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v15    # "input":Lio/ktor/utils/io/ByteReadChannel;
    invoke-virtual {v12}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    .restart local v13    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .restart local v14    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .restart local v15    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :cond_2
    invoke-virtual {v14}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    invoke-virtual {v13, v2}, Lio/ktor/http/cio/internals/MutableRange;->setEnd(I)V

    .line 107
    invoke-virtual {v13}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v2

    invoke-virtual {v13}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v5

    sub-int/2addr v2, v5

    .line 109
    .local v2, "rangeLength":I
    if-eqz v2, :cond_4

    .line 110
    if-ge v2, v4, :cond_3

    .line 112
    invoke-virtual {v13}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v5

    move v11, v5

    .line 113
    .local v11, "nameStart":I
    invoke-static {v14, v13}, Lio/ktor/http/cio/HttpParserKt;->parseHeaderName(Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;)I

    move-result v5

    move v10, v5

    .line 115
    .local v10, "nameEnd":I
    move-object v5, v14

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v11, v10}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase(Ljava/lang/CharSequence;II)I

    move-result v6

    .line 117
    .local v6, "nameHash":I
    invoke-virtual {v13}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v5

    move v9, v5

    .line 118
    .local v9, "headerEnd":I
    invoke-static {v14, v13}, Lio/ktor/http/cio/HttpParserKt;->parseHeaderValue(Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 120
    invoke-virtual {v13}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v5

    move v8, v5

    .line 121
    .local v8, "valueStart":I
    invoke-virtual {v13}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v5

    .line 122
    .local v5, "valueEnd":I
    move-object v7, v14

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7, v8, v5}, Lio/ktor/http/cio/internals/CharsKt;->hashCodeLowerCase(Ljava/lang/CharSequence;II)I

    move-result v7

    .line 123
    .local v7, "valueHash":I
    invoke-virtual {v13, v9}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 125
    move/from16 v16, v5

    .end local v5    # "valueEnd":I
    .local v16, "valueEnd":I
    move-object v5, v12

    move/from16 v17, v8

    .end local v8    # "valueStart":I
    .local v17, "valueStart":I
    move v8, v11

    move/from16 v18, v9

    .end local v9    # "headerEnd":I
    .local v18, "headerEnd":I
    move v9, v10

    move/from16 v19, v10

    .end local v10    # "nameEnd":I
    .local v19, "nameEnd":I
    move/from16 v10, v17

    move/from16 v20, v11

    .end local v11    # "nameStart":I
    .local v20, "nameStart":I
    move/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Lio/ktor/http/cio/HttpHeadersMap;->put(IIIIII)V

    move-object v2, v3

    move-object v3, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    .end local v2    # "rangeLength":I
    .end local v6    # "nameHash":I
    .end local v7    # "valueHash":I
    .end local v16    # "valueEnd":I
    .end local v17    # "valueStart":I
    .end local v18    # "headerEnd":I
    .end local v19    # "nameEnd":I
    .end local v20    # "nameStart":I
    goto/16 :goto_1

    .line 110
    .end local v13    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v14    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v15    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v2    # "rangeLength":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v4, "Header line length limit exceeded"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v12    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    throw v0

    .line 128
    .end local v2    # "rangeLength":I
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v12    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :cond_4
    sget-object v0, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v0}, Lio/ktor/http/HttpHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lio/ktor/http/cio/HttpHeadersMap;->get(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 129
    .local v0, "host":Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    .line 130
    invoke-static {v0}, Lio/ktor/http/cio/HttpParserKt;->validateHostHeader(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    .end local v0    # "host":Ljava/lang/CharSequence;
    :cond_5
    return-object v12

    .line 134
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v3, v12

    .line 135
    .end local v12    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .local v0, "t":Ljava/lang/Throwable;
    .local v2, "$result":Ljava/lang/Object;
    .local v3, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :goto_3
    invoke-virtual {v3}, Lio/ktor/http/cio/HttpHeadersMap;->release()V

    .line 136
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final parseHeaders(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/HttpHeadersMap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;

    iget v1, v0, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;

    invoke-direct {v0, p1}, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p1, v0

    .local p1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v6, p1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->result:Ljava/lang/Object;

    .local v6, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v7

    .line 84
    iget v0, p1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->label:I

    packed-switch v0, :pswitch_data_0

    .end local v6    # "$result":Ljava/lang/Object;
    .end local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v6    # "$result":Ljava/lang/Object;
    .restart local p1    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget-object p0, p1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .local p0, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, v6

    goto :goto_1

    .end local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :pswitch_1
    invoke-static {v6}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v0, p0

    .line 85
    .local v0, "input":Lio/ktor/utils/io/ByteReadChannel;
    new-instance p0, Lio/ktor/http/cio/internals/CharArrayBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v1}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 86
    .restart local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    iput-object p0, p1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lio/ktor/http/cio/HttpParserKt$parseHeaders$1;->label:I

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lio/ktor/http/cio/HttpParserKt;->parseHeaders$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "input":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v0, v7, :cond_1

    .line 84
    return-object v7

    .line 86
    :cond_1
    :goto_1
    check-cast v0, Lio/ktor/http/cio/HttpHeadersMap;

    if-nez v0, :cond_2

    new-instance v0, Lio/ktor/http/cio/HttpHeadersMap;

    invoke-direct {v0, p0}, Lio/ktor/http/cio/HttpHeadersMap;-><init>(Lio/ktor/http/cio/internals/CharArrayBuilder;)V

    .end local p0    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic parseHeaders$default(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 92
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 95
    new-instance p2, Lio/ktor/http/cio/internals/MutableRange;

    const/4 p4, 0x0

    invoke-direct {p2, p4, p4}, Lio/ktor/http/cio/internals/MutableRange;-><init>(II)V

    .line 92
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/cio/HttpParserKt;->parseHeaders(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final parseHttpMethod(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Lio/ktor/http/HttpMethod;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    .line 151
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 152
    invoke-static {}, Lio/ktor/http/cio/internals/CharsKt;->getDefaultHttpMethods()Lio/ktor/http/cio/internals/AsciiCharTree;

    move-result-object v0

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v2

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v3

    sget-object v1, Lio/ktor/http/cio/HttpParserKt$parseHttpMethod$exact$1;->INSTANCE:Lio/ktor/http/cio/HttpParserKt$parseHttpMethod$exact$1;

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lio/ktor/http/cio/internals/AsciiCharTree;->search$default(Lio/ktor/http/cio/internals/AsciiCharTree;Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/http/HttpMethod;

    .line 153
    .local v0, "exact":Lio/ktor/http/HttpMethod;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/http/HttpMethod;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 155
    return-object v0

    .line 158
    :cond_0
    invoke-static {p0, p1}, Lio/ktor/http/cio/HttpParserKt;->parseHttpMethodFull(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Lio/ktor/http/HttpMethod;

    move-result-object v1

    return-object v1
.end method

.method private static final parseHttpMethodFull(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Lio/ktor/http/HttpMethod;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    .line 162
    new-instance v0, Lio/ktor/http/HttpMethod;

    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->nextToken(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/HttpMethod;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final parseRequest(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/Request;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;

    iget v2, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v3, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-object v0, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "version":Ljava/lang/CharSequence;
    iget-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "uri":Ljava/lang/CharSequence;
    iget-object v4, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/http/HttpMethod;

    .local v4, "method":Lio/ktor/http/HttpMethod;
    iget-object v5, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .local v5, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v3

    move-object v3, v2

    goto/16 :goto_4

    .line 49
    .end local v0    # "version":Ljava/lang/CharSequence;
    .end local v3    # "uri":Ljava/lang/CharSequence;
    .end local v4    # "method":Lio/ktor/http/HttpMethod;
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 24
    .end local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :pswitch_1
    iget-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/http/cio/internals/MutableRange;

    .local v3, "range":Lio/ktor/http/cio/internals/MutableRange;
    iget-object v7, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .local v7, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    iget-object v8, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lio/ktor/utils/io/ByteReadChannel;

    .local v8, "input":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v9, v8

    move-object v8, v7

    move-object v7, v3

    move-object v3, v2

    goto :goto_2

    .line 49
    .end local v3    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v8    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_1
    move-exception v0

    move-object v5, v7

    goto/16 :goto_5

    .line 24
    .end local v7    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v3, p0

    .line 25
    .local v3, "input":Lio/ktor/utils/io/ByteReadChannel;
    new-instance v7, Lio/ktor/http/cio/internals/CharArrayBuilder;

    invoke-direct {v7, v6, v5, v6}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .restart local v7    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    new-instance v8, Lio/ktor/http/cio/internals/MutableRange;

    invoke-direct {v8, v4, v4}, Lio/ktor/http/cio/internals/MutableRange;-><init>(II)V

    .line 28
    .local v8, "range":Lio/ktor/http/cio/internals/MutableRange;
    move-object/from16 v18, v8

    move-object v8, v3

    move-object/from16 v3, v18

    .line 29
    .local v3, "range":Lio/ktor/http/cio/internals/MutableRange;
    .local v8, "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_1
    nop

    .line 30
    :try_start_2
    move-object v9, v7

    check-cast v9, Ljava/lang/Appendable;

    iput-object v8, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$0:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$1:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$2:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->label:I

    const/16 v10, 0x2000

    invoke-interface {v8, v9, v10, v1}, Lio/ktor/utils/io/ByteReadChannel;->readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v9, v0, :cond_1

    .line 24
    return-object v0

    .line 30
    :cond_1
    move-object/from16 v18, v3

    move-object v3, v2

    move-object v2, v9

    move-object v9, v8

    move-object v8, v7

    move-object/from16 v7, v18

    .end local v2    # "$result":Ljava/lang/Object;
    .local v3, "$result":Ljava/lang/Object;
    .local v7, "range":Lio/ktor/http/cio/internals/MutableRange;
    .local v8, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .local v9, "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_2
    :try_start_3
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v6

    .line 31
    :cond_2
    invoke-virtual {v8}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v2

    invoke-virtual {v7, v2}, Lio/ktor/http/cio/internals/MutableRange;->setEnd(I)V

    .line 32
    invoke-virtual {v7}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v2

    invoke-virtual {v7}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v10

    if-eq v2, v10, :cond_a

    .line 34
    move-object v2, v8

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2, v7}, Lio/ktor/http/cio/HttpParserKt;->parseHttpMethod(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Lio/ktor/http/HttpMethod;

    move-result-object v2

    .line 35
    .local v2, "method":Lio/ktor/http/HttpMethod;
    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10, v7}, Lio/ktor/http/cio/HttpParserKt;->parseUri(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 36
    .local v10, "uri":Ljava/lang/CharSequence;
    move-object v11, v8

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11, v7}, Lio/ktor/http/cio/HttpParserKt;->parseVersion(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 37
    .local v11, "version":Ljava/lang/CharSequence;
    move-object v12, v8

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12, v7}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 39
    invoke-virtual {v7}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v12

    invoke-virtual {v7}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v13

    if-ne v12, v13, :cond_9

    .line 42
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_3

    move v12, v5

    goto :goto_3

    :cond_3
    move v12, v4

    :goto_3
    if-nez v12, :cond_8

    .line 43
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_4

    move v4, v5

    :cond_4
    if-nez v4, :cond_7

    .line 45
    iput-object v8, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lio/ktor/http/cio/HttpParserKt$parseRequest$1;->label:I

    invoke-static {v9, v8, v7, v1}, Lio/ktor/http/cio/HttpParserKt;->parseHeaders(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v7    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v4, v0, :cond_5

    .line 24
    return-object v0

    .line 45
    :cond_5
    move-object v5, v8

    move-object v0, v11

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    .end local v2    # "method":Lio/ktor/http/HttpMethod;
    .end local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v11    # "version":Ljava/lang/CharSequence;
    .restart local v0    # "version":Ljava/lang/CharSequence;
    .restart local v4    # "method":Lio/ktor/http/HttpMethod;
    .restart local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :goto_4
    :try_start_4
    move-object/from16 v16, v2

    check-cast v16, Lio/ktor/http/cio/HttpHeadersMap;

    if-nez v16, :cond_6

    return-object v6

    .line 47
    .local v16, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :cond_6
    new-instance v2, Lio/ktor/http/cio/Request;

    move-object v12, v2

    move-object v13, v4

    move-object v14, v10

    move-object v15, v0

    move-object/from16 v17, v5

    invoke-direct/range {v12 .. v17}, Lio/ktor/http/cio/Request;-><init>(Lio/ktor/http/HttpMethod;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v2

    .line 49
    .end local v0    # "version":Ljava/lang/CharSequence;
    .end local v4    # "method":Lio/ktor/http/HttpMethod;
    .end local v10    # "uri":Ljava/lang/CharSequence;
    .end local v16    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 43
    .end local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .restart local v2    # "method":Lio/ktor/http/HttpMethod;
    .restart local v7    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .restart local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .restart local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .restart local v10    # "uri":Ljava/lang/CharSequence;
    .restart local v11    # "version":Ljava/lang/CharSequence;
    :cond_7
    :try_start_5
    new-instance v0, Lio/ktor/http/cio/ParserException;

    const-string v4, "HTTP version is not specified"

    invoke-direct {v0, v4}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    throw v0

    .line 42
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :cond_8
    new-instance v0, Lio/ktor/http/cio/ParserException;

    const-string v4, "URI is not specified"

    invoke-direct {v0, v4}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    throw v0

    .line 40
    .end local v2    # "method":Lio/ktor/http/HttpMethod;
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    .end local v10    # "uri":Ljava/lang/CharSequence;
    .end local v11    # "version":Ljava/lang/CharSequence;
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :cond_9
    new-instance v0, Lio/ktor/http/cio/ParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extra characters in request line: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v8

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v7}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v5

    invoke-virtual {v7}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v7    # "range":Lio/ktor/http/cio/internals/MutableRange;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 32
    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v3    # "$result":Ljava/lang/Object;
    .restart local v7    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .restart local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .restart local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :cond_a
    move-object v2, v3

    move-object v3, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_1

    .line 49
    .end local v7    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v9    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_3
    move-exception v0

    move-object v2, v3

    move-object v5, v8

    .line 50
    .end local v3    # "$result":Ljava/lang/Object;
    .end local v8    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .local v0, "t":Ljava/lang/Throwable;
    .local v2, "$result":Ljava/lang/Object;
    .restart local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :goto_5
    invoke-virtual {v5}, Lio/ktor/http/cio/internals/CharArrayBuilder;->release()V

    .line 51
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final parseResponse(Lio/ktor/utils/io/ByteReadChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteReadChannel;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/http/cio/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    instance-of v1, v0, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;

    iget v2, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;

    invoke-direct {v1, v0}, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v0, v1

    .local v1, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v2, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->result:Ljava/lang/Object;

    .local v2, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 58
    iget v3, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->label:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .end local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v2    # "$result":Ljava/lang/Object;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .restart local v1    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v2    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget v0, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->I$0:I

    .local v0, "statusCode":I
    iget-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .local v3, "statusText":Ljava/lang/CharSequence;
    iget-object v4, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, "version":Ljava/lang/CharSequence;
    iget-object v5, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .local v5, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v2

    goto/16 :goto_2

    .end local v0    # "statusCode":I
    .end local v3    # "statusText":Ljava/lang/CharSequence;
    .end local v4    # "version":Ljava/lang/CharSequence;
    .end local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :pswitch_1
    iget-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/http/cio/internals/MutableRange;

    .local v3, "range":Lio/ktor/http/cio/internals/MutableRange;
    iget-object v5, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lio/ktor/http/cio/internals/CharArrayBuilder;

    .restart local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    iget-object v6, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    .local v6, "input":Lio/ktor/utils/io/ByteReadChannel;
    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    move-object v6, v5

    move-object v5, v2

    goto :goto_1

    .line 75
    .end local v3    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v6    # "input":Lio/ktor/utils/io/ByteReadChannel;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 58
    .end local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :pswitch_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v6, p0

    .line 59
    .restart local v6    # "input":Lio/ktor/utils/io/ByteReadChannel;
    new-instance v3, Lio/ktor/http/cio/internals/CharArrayBuilder;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v4}, Lio/ktor/http/cio/internals/CharArrayBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .local v3, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    new-instance v7, Lio/ktor/http/cio/internals/MutableRange;

    const/4 v8, 0x0

    invoke-direct {v7, v8, v8}, Lio/ktor/http/cio/internals/MutableRange;-><init>(II)V

    .line 62
    .local v7, "range":Lio/ktor/http/cio/internals/MutableRange;
    nop

    .line 63
    :try_start_2
    move-object v8, v3

    check-cast v8, Ljava/lang/Appendable;

    iput-object v6, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$1:Ljava/lang/Object;

    iput-object v7, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$2:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->label:I

    const/16 v5, 0x2000

    invoke-interface {v6, v8, v5, v1}, Lio/ktor/utils/io/ByteReadChannel;->readUTF8LineTo(Ljava/lang/Appendable;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v5, v0, :cond_1

    .line 58
    return-object v0

    .line 63
    :cond_1
    move-object/from16 v16, v6

    move-object v6, v3

    move-object v3, v7

    move-object/from16 v7, v16

    .local v3, "range":Lio/ktor/http/cio/internals/MutableRange;
    .local v6, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .local v7, "input":Lio/ktor/utils/io/ByteReadChannel;
    :goto_1
    :try_start_3
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    .line 64
    :cond_2
    invoke-virtual {v6}, Lio/ktor/http/cio/internals/CharArrayBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lio/ktor/http/cio/internals/MutableRange;->setEnd(I)V

    .line 66
    move-object v4, v6

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Lio/ktor/http/cio/HttpParserKt;->parseVersion(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 67
    .restart local v4    # "version":Ljava/lang/CharSequence;
    move-object v5, v6

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v3}, Lio/ktor/http/cio/HttpParserKt;->parseStatusCode(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)I

    move-result v5

    .line 68
    .local v5, "statusCode":I
    move-object v8, v6

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8, v3}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 69
    invoke-virtual {v3}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v8

    invoke-virtual {v3}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lio/ktor/http/cio/internals/CharArrayBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 70
    .local v8, "statusText":Ljava/lang/CharSequence;
    invoke-virtual {v3}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v9

    invoke-virtual {v3, v9}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 72
    iput-object v6, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$0:Ljava/lang/Object;

    iput-object v4, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$1:Ljava/lang/Object;

    iput-object v8, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->L$2:Ljava/lang/Object;

    iput v5, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->I$0:I

    const/4 v9, 0x2

    iput v9, v1, Lio/ktor/http/cio/HttpParserKt$parseResponse$1;->label:I

    invoke-static {v7, v6, v3, v1}, Lio/ktor/http/cio/HttpParserKt;->parseHeaders(Lio/ktor/utils/io/ByteReadChannel;Lio/ktor/http/cio/internals/CharArrayBuilder;Lio/ktor/http/cio/internals/MutableRange;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v3    # "range":Lio/ktor/http/cio/internals/MutableRange;
    .end local v7    # "input":Lio/ktor/utils/io/ByteReadChannel;
    if-ne v9, v0, :cond_3

    .line 58
    return-object v0

    .line 72
    :cond_3
    move v0, v5

    move-object v5, v6

    move-object v3, v8

    .end local v6    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v8    # "statusText":Ljava/lang/CharSequence;
    .restart local v0    # "statusCode":I
    .local v3, "statusText":Ljava/lang/CharSequence;
    .local v5, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :goto_2
    :try_start_4
    check-cast v9, Lio/ktor/http/cio/HttpHeadersMap;

    if-nez v9, :cond_4

    new-instance v6, Lio/ktor/http/cio/HttpHeadersMap;

    invoke-direct {v6, v5}, Lio/ktor/http/cio/HttpHeadersMap;-><init>(Lio/ktor/http/cio/internals/CharArrayBuilder;)V

    move-object v14, v6

    goto :goto_3

    :cond_4
    move-object v14, v9

    .line 74
    .local v14, "headers":Lio/ktor/http/cio/HttpHeadersMap;
    :goto_3
    new-instance v6, Lio/ktor/http/cio/Response;

    move-object v10, v6

    move-object v11, v4

    move v12, v0

    move-object v13, v3

    move-object v15, v5

    invoke-direct/range {v10 .. v15}, Lio/ktor/http/cio/Response;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lio/ktor/http/cio/HttpHeadersMap;Lio/ktor/http/cio/internals/CharArrayBuilder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v6

    .line 75
    .end local v0    # "statusCode":I
    .end local v3    # "statusText":Ljava/lang/CharSequence;
    .end local v4    # "version":Ljava/lang/CharSequence;
    .end local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .end local v14    # "headers":Lio/ktor/http/cio/HttpHeadersMap;
    .restart local v6    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :catchall_1
    move-exception v0

    move-object v5, v6

    goto :goto_4

    .end local v6    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .local v3, "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :catchall_2
    move-exception v0

    move-object v5, v3

    .line 76
    .end local v3    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v5    # "builder":Lio/ktor/http/cio/internals/CharArrayBuilder;
    :goto_4
    invoke-virtual {v5}, Lio/ktor/http/cio/internals/CharArrayBuilder;->release()V

    .line 77
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final parseStatusCode(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    .line 198
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, "status":I
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v1

    .line 202
    .local v1, "newStart":I
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v2

    .local v2, "idx":I
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_4

    .line 203
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 204
    .local v4, "ch":C
    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    .line 205
    invoke-static {v0}, Lio/ktor/http/cio/HttpParserKt;->statusOutOfRange(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    move v1, v2

    .line 209
    goto :goto_1

    .line 206
    :cond_0
    new-instance v3, Lio/ktor/http/cio/ParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Status-code must be 3-digit. Status received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0x30

    if-gt v6, v4, :cond_2

    const/16 v6, 0x3a

    if-ge v4, v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    .line 211
    mul-int/lit8 v5, v0, 0xa

    add-int/lit8 v6, v4, -0x30

    add-int v0, v5, v6

    .line 202
    .end local v4    # "ch":C
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .restart local v4    # "ch":C
    :cond_3
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v3

    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->findSpaceOrEnd(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)I

    move-result v5

    invoke-interface {p0, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "code":Ljava/lang/String;
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal digit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in status code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 218
    .end local v2    # "idx":I
    .end local v3    # "code":Ljava/lang/String;
    .end local v4    # "ch":C
    :cond_4
    :goto_1
    invoke-virtual {p1, v1}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 219
    return v0
.end method

.method private static final parseUri(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    .line 166
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 167
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v0

    .line 168
    .local v0, "start":I
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->findSpaceOrEnd(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)I

    move-result v1

    .line 169
    .local v1, "spaceOrEnd":I
    sub-int v2, v1, v0

    .line 171
    .local v2, "length":I
    if-gtz v2, :cond_0

    const-string v3, ""

    check-cast v3, Ljava/lang/CharSequence;

    return-object v3

    .line 172
    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 173
    invoke-virtual {p1, v1}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 174
    const-string v3, "/"

    check-cast v3, Ljava/lang/CharSequence;

    return-object v3

    .line 177
    :cond_1
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 178
    .local v3, "s":Ljava/lang/CharSequence;
    invoke-virtual {p1, v1}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 179
    return-object v3
.end method

.method private static final parseVersion(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "range"    # Lio/ktor/http/cio/internals/MutableRange;

    .line 185
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->skipSpaces(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)V

    .line 187
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 188
    sget-object v1, Lio/ktor/http/cio/HttpParserKt;->versions:Lio/ktor/http/cio/internals/AsciiCharTree;

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v3

    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getEnd()I

    move-result v4

    sget-object v0, Lio/ktor/http/cio/HttpParserKt$parseVersion$exact$1;->INSTANCE:Lio/ktor/http/cio/HttpParserKt$parseVersion$exact$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lio/ktor/http/cio/internals/AsciiCharTree;->search$default(Lio/ktor/http/cio/internals/AsciiCharTree;Ljava/lang/CharSequence;IIZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "exact":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lio/ktor/http/cio/internals/MutableRange;->getStart()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lio/ktor/http/cio/internals/MutableRange;->setStart(I)V

    .line 191
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    return-object v1

    .line 194
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/http/cio/internals/TokenizerKt;->nextToken(Ljava/lang/CharSequence;Lio/ktor/http/cio/internals/MutableRange;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lio/ktor/http/cio/HttpParserKt;->unsupportedHttpVersion(Ljava/lang/CharSequence;)Ljava/lang/Void;

    new-instance v1, Lkotlin/KotlinNothingValueException;

    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v1

    .line 309
    .end local v0    # "exact":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 187
    .local v0, "$i$a$-check-HttpParserKt$parseVersion$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-check-HttpParserKt$parseVersion$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final statusOutOfRange(I)Z
    .locals 1
    .param p0, "code"    # I

    .line 222
    const/16 v0, 0x64

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3e7

    if-le p0, v0, :cond_0

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

.method private static final unsupportedHttpVersion(Ljava/lang/CharSequence;)Ljava/lang/Void;
    .locals 3
    .param p0, "result"    # Ljava/lang/CharSequence;

    .line 304
    new-instance v0, Lio/ktor/http/cio/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HTTP version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final validateHostHeader(Ljava/lang/CharSequence;)V
    .locals 9
    .param p0, "host"    # Ljava/lang/CharSequence;

    .line 141
    const-string v0, ":"

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    move-object v0, p0

    .local v0, "$this$any$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 307
    .local v1, "$i$f$any":I
    move v2, v3

    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .local v4, "element$iv":C
    move v5, v4

    .local v5, "it":C
    const/4 v6, 0x0

    .line 145
    .local v6, "$i$a$-any-HttpParserKt$validateHostHeader$1":I
    sget-object v7, Lio/ktor/http/cio/HttpParserKt;->hostForbiddenSymbols:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 307
    .end local v5    # "it":C
    .end local v6    # "$i$a$-any-HttpParserKt$validateHostHeader$1":I
    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .end local v4    # "element$iv":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_1
    nop

    .line 145
    .end local v0    # "$this$any$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$any":I
    :goto_1
    if-nez v3, :cond_2

    .line 148
    return-void

    .line 146
    :cond_2
    new-instance v0, Lio/ktor/http/cio/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host cannot contain any of the following symbols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/ktor/http/cio/HttpParserKt;->hostForbiddenSymbols:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_3
    new-instance v0, Lio/ktor/http/cio/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host header with \':\' should contains port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/ktor/http/cio/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
