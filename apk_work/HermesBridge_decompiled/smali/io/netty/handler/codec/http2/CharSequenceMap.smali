.class public final Lio/netty/handler/codec/http2/CharSequenceMap;
.super Lio/netty/handler/codec/DefaultHeaders;
.source "CharSequenceMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/DefaultHeaders<",
        "Ljava/lang/CharSequence;",
        "TV;",
        "Lio/netty/handler/codec/http2/CharSequenceMap<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    .local p0, "this":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>(Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "caseSensitive"    # Z

    .line 36
    .local p0, "this":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<TV;>;"
    invoke-static {}, Lio/netty/handler/codec/UnsupportedValueConverter;->instance()Lio/netty/handler/codec/UnsupportedValueConverter;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>(ZLio/netty/handler/codec/ValueConverter;)V

    .line 37
    return-void
.end method

.method public constructor <init>(ZLio/netty/handler/codec/ValueConverter;)V
    .locals 1
    .param p1, "caseSensitive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<TV;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    invoke-direct {p0, v0, p2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;)V

    .line 41
    return-void
.end method

.method public constructor <init>(ZLio/netty/handler/codec/ValueConverter;I)V
    .locals 2
    .param p1, "caseSensitive"    # Z
    .param p3, "arraySizeHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;I)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/netty/handler/codec/http2/CharSequenceMap;, "Lio/netty/handler/codec/http2/CharSequenceMap<TV;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    if-eqz p1, :cond_0

    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object v0, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    sget-object v1, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-direct {p0, v0, p2, v1, p3}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    .line 47
    return-void
.end method
