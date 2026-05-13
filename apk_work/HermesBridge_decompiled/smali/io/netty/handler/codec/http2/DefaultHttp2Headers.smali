.class public Lio/netty/handler/codec/http2/DefaultHttp2Headers;
.super Lio/netty/handler/codec/DefaultHeaders;
.source "DefaultHttp2Headers.java"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/DefaultHeaders<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        ">;",
        "Lio/netty/handler/codec/http2/Http2Headers;"
    }
.end annotation


# static fields
.field static final HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP2_NAME_VALIDATOR_PROCESSOR:Lio/netty/util/ByteProcessor;

.field private static final VALUE_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR_PROCESSOR:Lio/netty/util/ByteProcessor;

    .line 42
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    .line 86
    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$3;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$3;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->VALUE_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(Z)V

    .line 107
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "validate"    # Z

    .line 118
    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    if-eqz p1, :cond_0

    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object v2, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 121
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3
    .param p1, "validate"    # Z
    .param p2, "arraySizeHint"    # I

    .line 135
    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    if-eqz p1, :cond_0

    sget-object v2, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object v2, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    invoke-direct {p0, v0, v1, v2, p2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 139
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 6
    .param p1, "validate"    # Z
    .param p2, "validateValues"    # Z
    .param p3, "arraySizeHint"    # I

    .line 156
    sget-object v1, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    sget-object v2, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    move-object v3, v0

    if-eqz p2, :cond_1

    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->VALUE_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    goto :goto_1

    :cond_1
    sget-object v0, Lio/netty/handler/codec/DefaultHeaders$ValueValidator;->NO_VALIDATION:Lio/netty/handler/codec/DefaultHeaders$ValueValidator;

    :goto_1
    move-object v5, v0

    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;ILio/netty/handler/codec/DefaultHeaders$ValueValidator;)V

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 161
    return-void
.end method

.method static synthetic access$000()Lio/netty/util/ByteProcessor;
    .locals 1

    .line 34
    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR_PROCESSOR:Lio/netty/util/ByteProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method static synthetic access$102(Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2Headers;
    .param p1, "x1"    # Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 34
    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object p1
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http2/DefaultHttp2Headers;

    .line 34
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method


# virtual methods
.method public authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 217
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 218
    return-object p0
.end method

.method public authority()Ljava/lang/CharSequence;
    .locals 1

    .line 245
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic clear()Lio/netty/handler/codec/Headers;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->clear()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    .line 189
    iget-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 190
    invoke-super {p0}, Lio/netty/handler/codec/DefaultHeaders;->clear()Lio/netty/handler/codec/Headers;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "caseInsensitive"    # Z

    .line 265
    if-eqz p3, :cond_0

    sget-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 33
    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 195
    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2Headers;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http2/Http2Headers;

    sget-object v1, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 200
    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->hashCode(Lio/netty/util/HashingStrategy;)I

    move-result v0

    return v0
.end method

.method public method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 205
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 206
    return-object p0
.end method

.method public method()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected final newHeaderEntry(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 7
    .param p1, "h"    # I
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 271
    .local p4, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v6, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Headers;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    return-object v6
.end method

.method protected bridge synthetic newHeaderEntry(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    .line 33
    check-cast p2, Ljava/lang/CharSequence;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->newHeaderEntry(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object p1

    return-object p1
.end method

.method public path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 223
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 224
    return-object p0
.end method

.method public path()Ljava/lang/CharSequence;
    .locals 1

    .line 250
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 211
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 212
    return-object p0
.end method

.method public scheme()Ljava/lang/CharSequence;
    .locals 1

    .line 240
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 229
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 230
    return-object p0
.end method

.method public status()Ljava/lang/CharSequence;
    .locals 1

    .line 255
    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/CharSequence;)V
    .locals 3
    .param p2, "forAdd"    # Z
    .param p3, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;Z",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 165
    .local p1, "validator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V

    .line 166
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->nameValidator()Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p3}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0, p3}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "Duplicate HTTP/2 pseudo-header \'%s\' encountered."

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 172
    :cond_0
    return-void
.end method

.method protected bridge synthetic validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->validateName(Lio/netty/handler/codec/DefaultHeaders$NameValidator;ZLjava/lang/CharSequence;)V

    return-void
.end method

.method protected validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p2, "name"    # Ljava/lang/CharSequence;
    .param p3, "value"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 177
    .local p1, "validator":Lio/netty/handler/codec/DefaultHeaders$ValueValidator;, "Lio/netty/handler/codec/DefaultHeaders$ValueValidator<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->nameValidator()Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    invoke-static {p2}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->hasPseudoHeaderFormat(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-object v0, Lio/netty/handler/codec/http2/Http2Error;->PROTOCOL_ERROR:Lio/netty/handler/codec/http2/Http2Error;

    const-string v1, "HTTP/2 pseudo-header \'%s\' must not be empty."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/http2/Http2Exception;->connectionError(Lio/netty/handler/codec/http2/Http2Error;Ljava/lang/String;[Ljava/lang/Object;)Lio/netty/handler/codec/http2/Http2Exception;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 185
    :cond_1
    return-void
.end method

.method protected bridge synthetic validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p2, Ljava/lang/CharSequence;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->validateValue(Lio/netty/handler/codec/DefaultHeaders$ValueValidator;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic valueIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Ljava/lang/CharSequence;

    .line 33
    invoke-super {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->valueIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
