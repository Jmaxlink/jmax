.class public final Lio/ktor/server/netty/NettyApplicationCallHandlerKt;
.super Ljava/lang/Object;
.source "NettyApplicationCallHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNettyApplicationCallHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NettyApplicationCallHandler.kt\nio/ktor/server/netty/NettyApplicationCallHandlerKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,118:1\n1864#2,3:119\n*S KotlinDebug\n*F\n+ 1 NettyApplicationCallHandler.kt\nio/ktor/server/netty/NettyApplicationCallHandlerKt\n*L\n90#1:119,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000c\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0002\u001a\u00020\u0003*\u0008\u0012\u0004\u0012\u00020\u00010\u0004H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0003*\u00020\u0006H\u0002\u001a\u000c\u0010\u0007\u001a\u00020\u0003*\u00020\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "CHUNKED_VALUE",
        "",
        "hasValidTransferEncoding",
        "",
        "",
        "isSeparator",
        "",
        "isValid",
        "Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;",
        "ktor-server-netty"
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
.field private static final CHUNKED_VALUE:Ljava/lang/String; = "chunked"


# direct methods
.method public static final hasValidTransferEncoding(Ljava/util/List;)Z
    .locals 15
    .param p0, "$this$hasValidTransferEncoding"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .line 120
    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "item$iv":Ljava/lang/Object;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "index$iv":I
    .local v6, "index$iv":I
    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .local v2, "headerIndex":I
    .local v7, "header":Ljava/lang/String;
    const/4 v8, 0x0

    .line 91
    .local v8, "$i$a$-forEachIndexed-NettyApplicationCallHandlerKt$hasValidTransferEncoding$1":I
    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v13, 0x6

    const/4 v14, 0x0

    const-string v10, "chunked"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v9

    .line 92
    .local v9, "chunkedStart":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    .line 94
    if-lez v9, :cond_1

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lio/ktor/server/netty/NettyApplicationCallHandlerKt;->isSeparator(C)Z

    move-result v10

    if-nez v10, :cond_1

    .line 95
    goto :goto_2

    .line 98
    :cond_1
    add-int/lit8 v10, v9, 0x7

    .line 99
    .local v10, "afterChunked":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_2

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lio/ktor/server/netty/NettyApplicationCallHandlerKt;->isSeparator(C)Z

    move-result v11

    if-nez v11, :cond_2

    .line 100
    goto :goto_2

    .line 103
    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v11

    const/4 v12, 0x0

    if-eq v2, v11, :cond_3

    .line 104
    return v12

    .line 107
    :cond_3
    add-int/lit8 v11, v9, 0x7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_4

    goto :goto_1

    :cond_4
    move v5, v12

    .line 108
    .local v5, "chunkedIsNotLast":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 109
    return v12

    .line 111
    :cond_5
    nop

    .line 120
    .end local v2    # "headerIndex":I
    .end local v5    # "chunkedIsNotLast":Z
    .end local v7    # "header":Ljava/lang/String;
    .end local v8    # "$i$a$-forEachIndexed-NettyApplicationCallHandlerKt$hasValidTransferEncoding$1":I
    .end local v9    # "chunkedStart":I
    .end local v10    # "afterChunked":I
    :cond_6
    :goto_2
    move v2, v6

    .end local v4    # "item$iv":Ljava/lang/Object;
    goto :goto_0

    .line 121
    .end local v6    # "index$iv":I
    .local v2, "index$iv":I
    :cond_7
    nop

    .line 113
    .end local v0    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEachIndexed":I
    .end local v2    # "index$iv":I
    return v5
.end method

.method private static final isSeparator(C)Z
    .locals 1
    .param p0, "$this$isSeparator"    # C

    .line 117
    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

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

.method public static final isValid(Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;)Z
    .locals 4
    .param p0, "$this$isValid"    # Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->getHttpRequest()Lio/netty/handler/codec/http/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/DecoderResult;->isFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 76
    return v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v2, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v2}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/ktor/http/Headers;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 81
    :cond_1
    invoke-virtual {p0}, Lio/ktor/server/netty/http1/NettyHttp1ApplicationRequest;->getHeaders()Lio/ktor/http/Headers;

    move-result-object v0

    sget-object v3, Lio/ktor/http/HttpHeaders;->INSTANCE:Lio/ktor/http/HttpHeaders;

    invoke-virtual {v3}, Lio/ktor/http/HttpHeaders;->getTransferEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/ktor/http/Headers;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 82
    .local v0, "encodings":Ljava/util/List;
    :cond_2
    invoke-static {v0}, Lio/ktor/server/netty/NettyApplicationCallHandlerKt;->hasValidTransferEncoding(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 83
    return v1

    .line 86
    :cond_3
    return v2
.end method
