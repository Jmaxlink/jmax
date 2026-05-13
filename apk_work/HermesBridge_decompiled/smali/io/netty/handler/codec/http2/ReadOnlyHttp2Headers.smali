.class public final Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;
.super Ljava/lang/Object;
.source "ReadOnlyHttp2Headers.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyIterator;,
        Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PSEUDO_HEADER_TOKEN:B = 0x3at


# instance fields
.field private final otherHeaders:[Lio/netty/util/AsciiString;

.field private final pseudoHeaders:[Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 46
    return-void
.end method

.method private varargs constructor <init>(Z[Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)V
    .locals 1
    .param p1, "validateHeaders"    # Z
    .param p2, "pseudoHeaders"    # [Lio/netty/util/AsciiString;
    .param p3, "otherHeaders"    # [Lio/netty/util/AsciiString;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 118
    array-length v0, p3

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 121
    if-eqz p1, :cond_0

    .line 122
    invoke-static {p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->validateHeaders([Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)V

    .line 124
    :cond_0
    iput-object p2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    .line 125
    iput-object p3, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    .line 126
    return-void

    .line 119
    :cond_1
    invoke-static {}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->newInvalidArraySizeException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;)[Lio/netty/util/AsciiString;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    return-object v0
.end method

.method public static varargs clientHeaders(ZLio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;
    .locals 7
    .param p0, "validateHeaders"    # Z
    .param p1, "method"    # Lio/netty/util/AsciiString;
    .param p2, "path"    # Lio/netty/util/AsciiString;
    .param p3, "scheme"    # Lio/netty/util/AsciiString;
    .param p4, "authority"    # Lio/netty/util/AsciiString;
    .param p5, "otherHeaders"    # [Lio/netty/util/AsciiString;

    .line 88
    new-instance v0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 90
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v2}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 91
    invoke-virtual {v3}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v4}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [Lio/netty/util/AsciiString;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object p1, v5, v1

    const/4 v1, 0x2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object p2, v5, v1

    const/4 v1, 0x4

    aput-object v3, v5, v1

    const/4 v1, 0x5

    aput-object p3, v5, v1

    const/4 v1, 0x6

    aput-object v4, v5, v1

    const/4 v1, 0x7

    aput-object p4, v5, v1

    invoke-direct {v0, p0, v5, p5}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;-><init>(Z[Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)V

    .line 88
    return-object v0
.end method

.method private static contains(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILio/netty/util/HashingStrategy;[Lio/netty/util/AsciiString;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "nameHash"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "valueHash"    # I
    .param p5, "headers"    # [Lio/netty/util/AsciiString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/CharSequence;",
            "I",
            "Lio/netty/util/HashingStrategy<",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Lio/netty/util/AsciiString;",
            ")Z"
        }
    .end annotation

    .line 762
    .local p4, "hashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<Ljava/lang/CharSequence;>;"
    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 763
    .local v0, "headersEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 764
    aget-object v3, p5, v2

    .line 765
    .local v3, "roName":Lio/netty/util/AsciiString;
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p5, v4

    .line 766
    .local v4, "roValue":Lio/netty/util/AsciiString;
    invoke-virtual {v3}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v5

    if-ne v5, p3, :cond_0

    .line 767
    invoke-virtual {v3, p0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p4, v4, p2}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 768
    return v1

    .line 763
    .end local v3    # "roName":Lio/netty/util/AsciiString;
    .end local v4    # "roValue":Lio/netty/util/AsciiString;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 771
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;
    .locals 7
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 155
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    .line 157
    .local v0, "nameHash":I
    iget-object v1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 158
    .local v1, "pseudoHeadersEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 159
    iget-object v3, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    aget-object v3, v3, v2

    .line 160
    .local v3, "roName":Lio/netty/util/AsciiString;
    invoke-virtual {v3}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v4

    if-ne v4, v0, :cond_0

    invoke-virtual {v3, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    return-object v4

    .line 158
    .end local v3    # "roName":Lio/netty/util/AsciiString;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 165
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 166
    .local v2, "otherHeadersEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 167
    iget-object v4, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    aget-object v4, v4, v3

    .line 168
    .local v4, "roName":Lio/netty/util/AsciiString;
    invoke-virtual {v4}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_2

    invoke-virtual {v4, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    iget-object v5, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    return-object v5

    .line 166
    .end local v4    # "roName":Lio/netty/util/AsciiString;
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 172
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method private static newInvalidArraySizeException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pseudoHeaders and otherHeaders must be arrays of [name, value] pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs serverHeaders(ZLio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;
    .locals 4
    .param p0, "validateHeaders"    # Z
    .param p1, "status"    # Lio/netty/util/AsciiString;
    .param p2, "otherHeaders"    # [Lio/netty/util/AsciiString;

    .line 111
    new-instance v0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    sget-object v1, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    .line 112
    invoke-virtual {v1}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-direct {v0, p0, v2, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;-><init>(Z[Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)V

    .line 111
    return-object v0
.end method

.method public static varargs trailers(Z[Lio/netty/util/AsciiString;)Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;
    .locals 2
    .param p0, "validateHeaders"    # Z
    .param p1, "otherHeaders"    # [Lio/netty/util/AsciiString;

    .line 66
    new-instance v0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_ASCII_STRINGS:[Lio/netty/util/AsciiString;

    invoke-direct {v0, p0, v1, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;-><init>(Z[Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)V

    return-object v0
.end method

.method private static varargs validateHeaders([Lio/netty/util/AsciiString;[Lio/netty/util/AsciiString;)V
    .locals 7
    .param p0, "pseudoHeaders"    # [Lio/netty/util/AsciiString;
    .param p1, "otherHeaders"    # [Lio/netty/util/AsciiString;

    .line 134
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 136
    aget-object v1, p0, v0

    const-string v2, "pseudoHeaders"

    invoke-static {v1, v0, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNullArrayParam(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "seenNonPseudoHeader":Z
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 141
    .local v1, "otherHeadersEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 142
    aget-object v3, p1, v2

    .line 143
    .local v3, "name":Lio/netty/util/AsciiString;
    sget-object v4, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v4, v3}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 144
    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v5}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result v6

    if-eq v6, v4, :cond_1

    .line 145
    const/4 v0, 0x1

    goto :goto_2

    .line 146
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lio/netty/util/AsciiString;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result v5

    if-eq v5, v4, :cond_2

    goto :goto_2

    .line 147
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "otherHeaders name at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a pseudo header that appears after non-pseudo headers."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_3
    :goto_2
    add-int/lit8 v4, v2, 0x1

    aget-object v4, p1, v4

    add-int/lit8 v5, v2, 0x1

    const-string v6, "otherHeaders"

    invoke-static {v4, v5, v6}, Lio/netty/util/internal/ObjectUtil;->checkNotNullArrayParam(Ljava/lang/Object;ILjava/lang/String;)Ljava/lang/Object;

    .line 141
    .end local v3    # "name":Lio/netty/util/AsciiString;
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 152
    .end local v2    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->add(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 591
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+Ljava/lang/CharSequence;+Ljava/lang/CharSequence;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 516
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 521
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs add(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/CharSequence;

    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addBoolean(Ljava/lang/CharSequence;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addBoolean(Ljava/lang/CharSequence;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 546
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addByte(Ljava/lang/CharSequence;B)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addByte(Ljava/lang/CharSequence;B)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # B

    .line 551
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addChar(Ljava/lang/CharSequence;C)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addChar(Ljava/lang/CharSequence;C)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # C

    .line 556
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addDouble(Ljava/lang/CharSequence;D)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addDouble(Ljava/lang/CharSequence;D)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # D

    .line 581
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addFloat(Ljava/lang/CharSequence;F)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addFloat(Ljava/lang/CharSequence;F)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # F

    .line 576
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 566
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addLong(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addLong(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # J

    .line 571
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addObject(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addObject(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addObject(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addObject(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 536
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addObject(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 531
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs addObject(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 541
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 561
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic addTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->addTimeMillis(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public addTimeMillis(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # J

    .line 586
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 711
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authority()Ljava/lang/CharSequence;
    .locals 1

    .line 736
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lio/netty/handler/codec/Headers;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->clear()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2

    .line 686
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 425
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "caseInsensitive"    # Z

    .line 751
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v6

    .line 752
    .local v6, "nameHash":I
    if-eqz p3, :cond_0

    sget-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    move-object v7, v0

    .line 754
    .local v7, "strategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<Ljava/lang/CharSequence;>;"
    invoke-interface {v7, p2}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v8

    .line 756
    .local v8, "valueHash":I
    iget-object v5, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    move-object v0, p1

    move v1, v6

    move-object v2, p2

    move v3, v8

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILio/netty/util/HashingStrategy;[Lio/netty/util/AsciiString;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v5, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    .line 757
    move-object v0, p1

    move v1, v6

    move-object v2, p2

    move v3, v8

    move-object v4, v7

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ILio/netty/util/HashingStrategy;[Lio/netty/util/AsciiString;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 756
    :goto_2
    return v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public containsBoolean(Ljava/lang/CharSequence;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 443
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsBoolean(Ljava/lang/Object;Z)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsBoolean(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public containsByte(Ljava/lang/CharSequence;B)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # B

    .line 448
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsByte(Ljava/lang/Object;B)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsByte(Ljava/lang/CharSequence;B)Z

    move-result p1

    return p1
.end method

.method public containsChar(Ljava/lang/CharSequence;C)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # C

    .line 453
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsChar(Ljava/lang/Object;C)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsChar(Ljava/lang/CharSequence;C)Z

    move-result p1

    return p1
.end method

.method public containsDouble(Ljava/lang/CharSequence;D)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # D

    .line 478
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsDouble(Ljava/lang/Object;D)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsDouble(Ljava/lang/CharSequence;D)Z

    move-result p1

    return p1
.end method

.method public containsFloat(Ljava/lang/CharSequence;F)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # F

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic containsFloat(Ljava/lang/Object;F)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsFloat(Ljava/lang/CharSequence;F)Z

    move-result p1

    return p1
.end method

.method public containsInt(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 463
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsInt(Ljava/lang/Object;I)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsInt(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public containsLong(Ljava/lang/CharSequence;J)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # J

    .line 468
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsLong(Ljava/lang/Object;J)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsLong(Ljava/lang/CharSequence;J)Z

    move-result p1

    return p1
.end method

.method public containsObject(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 435
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 436
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 438
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsObject(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsShort(Ljava/lang/CharSequence;S)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 458
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsShort(Ljava/lang/Object;S)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsShort(Ljava/lang/CharSequence;S)Z

    move-result p1

    return p1
.end method

.method public containsTimeMillis(Ljava/lang/CharSequence;J)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # J

    .line 483
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsTimeMillis(Ljava/lang/Object;J)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->containsTimeMillis(Ljava/lang/CharSequence;J)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 177
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 183
    .local v0, "value":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getAll(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 8
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    .line 199
    .local v0, "nameHash":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 202
    .local v2, "pseudoHeadersEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 203
    iget-object v4, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    aget-object v4, v4, v3

    .line 204
    .local v4, "roName":Lio/netty/util/AsciiString;
    invoke-virtual {v4}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v5

    if-ne v5, v0, :cond_0

    invoke-virtual {v4, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    add-int/lit8 v6, v3, 0x1

    aget-object v5, v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v4    # "roName":Lio/netty/util/AsciiString;
    :cond_0
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 209
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .line 210
    .local v3, "otherHeadersEnd":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_3

    .line 211
    iget-object v5, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    aget-object v5, v5, v4

    .line 212
    .local v5, "roName":Lio/netty/util/AsciiString;
    invoke-virtual {v5}, Lio/netty/util/AsciiString;->hashCode()I

    move-result v6

    if-ne v6, v0, :cond_2

    invoke-virtual {v5, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    iget-object v6, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    add-int/lit8 v7, v4, 0x1

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .end local v5    # "roName":Lio/netty/util/AsciiString;
    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 217
    .end local v4    # "i":I
    :cond_3
    return-object v1
.end method

.method public bridge synthetic getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllAndRemove(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getAllAndRemove(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getAllAndRemove(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAndRemove(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAndRemove(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getAndRemove(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getAndRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getAndRemove(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 227
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 228
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToBoolean(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Z

    .line 233
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getBoolean(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public bridge synthetic getBoolean(Ljava/lang/Object;Z)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getBoolean(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public getBooleanAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getBooleanAndRemove(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getBooleanAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanAndRemove(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # Z

    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getBooleanAndRemove(Ljava/lang/Object;Z)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getBooleanAndRemove(Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/CharSequence;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # B

    .line 245
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getByte(Ljava/lang/CharSequence;)Ljava/lang/Byte;

    move-result-object v0

    .line 246
    .local v0, "value":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public bridge synthetic getByte(Ljava/lang/Object;B)B
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getByte(Ljava/lang/CharSequence;B)B

    move-result p1

    return p1
.end method

.method public getByte(Ljava/lang/CharSequence;)Ljava/lang/Byte;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 239
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 240
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToByte(Ljava/lang/CharSequence;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getByte(Ljava/lang/CharSequence;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getByteAndRemove(Ljava/lang/CharSequence;B)B
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # B

    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getByteAndRemove(Ljava/lang/Object;B)B
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getByteAndRemove(Ljava/lang/CharSequence;B)B

    move-result p1

    return p1
.end method

.method public getByteAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Byte;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getByteAndRemove(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getByteAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public getChar(Ljava/lang/CharSequence;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # C

    .line 257
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getChar(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v0

    .line 258
    .local v0, "value":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public bridge synthetic getChar(Ljava/lang/Object;C)C
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getChar(Ljava/lang/CharSequence;C)C

    move-result p1

    return p1
.end method

.method public getChar(Ljava/lang/CharSequence;)Ljava/lang/Character;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 251
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 252
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToChar(Ljava/lang/CharSequence;)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getChar(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public getCharAndRemove(Ljava/lang/CharSequence;C)C
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # C

    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCharAndRemove(Ljava/lang/Object;C)C
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getCharAndRemove(Ljava/lang/CharSequence;C)C

    move-result p1

    return p1
.end method

.method public getCharAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Character;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getCharAndRemove(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getCharAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/CharSequence;D)D
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # D

    .line 317
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getDouble(Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object v0

    .line 318
    .local v0, "value":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public bridge synthetic getDouble(Ljava/lang/Object;D)D
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getDouble(Ljava/lang/CharSequence;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDouble(Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 311
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 312
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToDouble(Ljava/lang/CharSequence;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getDouble(Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getDoubleAndRemove(Ljava/lang/CharSequence;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # D

    .line 410
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getDoubleAndRemove(Ljava/lang/Object;D)D
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getDoubleAndRemove(Ljava/lang/CharSequence;D)D

    move-result-wide p1

    return-wide p1
.end method

.method public getDoubleAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Double;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getDoubleAndRemove(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getDoubleAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public getFloat(Ljava/lang/CharSequence;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # F

    .line 305
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getFloat(Ljava/lang/CharSequence;)Ljava/lang/Float;

    move-result-object v0

    .line 306
    .local v0, "value":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public bridge synthetic getFloat(Ljava/lang/Object;F)F
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getFloat(Ljava/lang/CharSequence;F)F

    move-result p1

    return p1
.end method

.method public getFloat(Ljava/lang/CharSequence;)Ljava/lang/Float;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 299
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 300
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToFloat(Ljava/lang/CharSequence;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getFloat(Ljava/lang/CharSequence;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getFloatAndRemove(Ljava/lang/CharSequence;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # F

    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getFloatAndRemove(Ljava/lang/Object;F)F
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getFloatAndRemove(Ljava/lang/CharSequence;F)F

    move-result p1

    return p1
.end method

.method public getFloatAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Float;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getFloatAndRemove(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getFloatAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public getInt(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # I

    .line 281
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v0

    .line 282
    .local v0, "value":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;I)I
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getInt(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 275
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 276
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToInt(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getIntAndRemove(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # I

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getIntAndRemove(Ljava/lang/Object;I)I
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getIntAndRemove(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public getIntAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 375
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getIntAndRemove(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getIntAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getLong(Ljava/lang/CharSequence;J)J
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # J

    .line 293
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getLong(Ljava/lang/CharSequence;)Ljava/lang/Long;

    move-result-object v0

    .line 294
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public bridge synthetic getLong(Ljava/lang/Object;J)J
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getLong(Ljava/lang/CharSequence;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLong(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 287
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 288
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToLong(Ljava/lang/CharSequence;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getLong(Ljava/lang/CharSequence;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLongAndRemove(Ljava/lang/CharSequence;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # J

    .line 390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getLongAndRemove(Ljava/lang/Object;J)J
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getLongAndRemove(Ljava/lang/CharSequence;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getLongAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 385
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getLongAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getLongAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 263
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 264
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToShort(Ljava/lang/CharSequence;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getShort(Ljava/lang/CharSequence;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # S

    .line 269
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;

    move-result-object v0

    .line 270
    .local v0, "value":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public bridge synthetic getShort(Ljava/lang/Object;S)S
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getShort(Ljava/lang/CharSequence;S)S

    move-result p1

    return p1
.end method

.method public getShortAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Short;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 365
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getShortAndRemove(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getShortAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public getShortAndRemove(Ljava/lang/CharSequence;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # S

    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getShortAndRemove(Ljava/lang/Object;S)S
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getShortAndRemove(Ljava/lang/CharSequence;S)S

    move-result p1

    return p1
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;J)J
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # J

    .line 329
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;

    move-result-object v0

    .line 330
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public bridge synthetic getTimeMillis(Ljava/lang/Object;J)J
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getTimeMillis(Ljava/lang/CharSequence;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 323
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get0(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    .line 324
    .local v0, "value":Lio/netty/util/AsciiString;
    if-eqz v0, :cond_0

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToTimeMillis(Ljava/lang/CharSequence;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getTimeMillisAndRemove(Ljava/lang/CharSequence;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # J

    .line 420
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getTimeMillisAndRemove(Ljava/lang/Object;J)J
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getTimeMillisAndRemove(Ljava/lang/CharSequence;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTimeMillisAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getTimeMillisAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->getTimeMillisAndRemove(Ljava/lang/CharSequence;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 493
    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 691
    new-instance v0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyIterator;-><init>(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$1;)V

    return-object v0
.end method

.method public method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 701
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public method()Ljava/lang/CharSequence;
    .locals 1

    .line 726
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 502
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 503
    .local v1, "pseudoHeadersEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 504
    iget-object v3, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    aget-object v3, v3, v2

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 507
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 508
    .local v2, "otherHeadersEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 509
    iget-object v4, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    aget-object v4, v4, v3

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 511
    .end local v3    # "i":I
    :cond_2
    return-object v0
.end method

.method public path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 716
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public path()Ljava/lang/CharSequence;
    .locals 1

    .line 741
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 681
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->remove(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 706
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scheme()Ljava/lang/CharSequence;
    .locals 1

    .line 731
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->set(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->set(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 671
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+Ljava/lang/CharSequence;+Ljava/lang/CharSequence;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 596
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 601
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs set(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/CharSequence;

    .line 606
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setAll(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setAll(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setAll(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+",
            "Ljava/lang/CharSequence;",
            "+",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 676
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+Ljava/lang/CharSequence;+Ljava/lang/CharSequence;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setBoolean(Ljava/lang/CharSequence;Z)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(Ljava/lang/CharSequence;Z)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Z

    .line 626
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setByte(Ljava/lang/CharSequence;B)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setByte(Ljava/lang/CharSequence;B)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # B

    .line 631
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setChar(Ljava/lang/CharSequence;C)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setChar(Ljava/lang/CharSequence;C)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # C

    .line 636
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setDouble(Ljava/lang/CharSequence;D)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(Ljava/lang/CharSequence;D)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # D

    .line 661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setFloat(Ljava/lang/CharSequence;F)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(Ljava/lang/CharSequence;F)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # F

    .line 656
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 646
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setLong(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setLong(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # J

    .line 651
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setObject(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setObject(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setObject(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setObject(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http2/Http2Headers;"
        }
    .end annotation

    .line 616
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setObject(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/Object;

    .line 611
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setObject(Ljava/lang/CharSequence;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 621
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 641
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->setTimeMillis(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object p1

    return-object p1
.end method

.method public setTimeMillis(Ljava/lang/CharSequence;J)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # J

    .line 666
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 2

    .line 488
    iget-object v0, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->pseudoHeaders:[Lio/netty/util/AsciiString;

    array-length v0, v0

    iget-object v1, p0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->otherHeaders:[Lio/netty/util/AsciiString;

    array-length v1, v1

    add-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 2
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 721
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public status()Ljava/lang/CharSequence;
    .locals 1

    .line 746
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->get(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 778
    .local v1, "separator":Ljava/lang/String;
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 779
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 781
    const-string v1, ", "

    .line 782
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 783
    :cond_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public valueIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 696
    new-instance v0, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers$ReadOnlyValueIterator;-><init>(Lio/netty/handler/codec/http2/ReadOnlyHttp2Headers;Ljava/lang/CharSequence;)V

    return-object v0
.end method
