.class public final Lio/ktor/http/QueryKt;
.super Ljava/lang/Object;
.source "Query.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n+ 2 Parameters.kt\nio/ktor/http/Parameters$Companion\n*L\n1#1,95:1\n24#2:96\n*S KotlinDebug\n*F\n+ 1 Query.kt\nio/ktor/http/QueryKt\n*L\n14#1:96\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u001a,\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u001a \u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\rH\u0002\u001a \u0010\u000e\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\rH\u0002\u001a4\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u001a,\u0010\u0015\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "parseQueryString",
        "Lio/ktor/http/Parameters;",
        "query",
        "",
        "startIndex",
        "",
        "limit",
        "decode",
        "",
        "trimEnd",
        "start",
        "end",
        "text",
        "",
        "trimStart",
        "appendParam",
        "",
        "Lio/ktor/http/ParametersBuilder;",
        "nameIndex",
        "equalIndex",
        "endIndex",
        "parse",
        "ktor-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final appendParam(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIIZ)V
    .locals 18
    .param p0, "$this$appendParam"    # Lio/ktor/http/ParametersBuilder;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "nameIndex"    # I
    .param p3, "equalIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "decode"    # Z

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v1, -0x1

    const-string v12, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-ne v10, v1, :cond_2

    .line 54
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v9, v11, v1}, Lio/ktor/http/QueryKt;->trimStart(IILjava/lang/CharSequence;)I

    move-result v13

    .line 55
    .local v13, "spaceNameIndex":I
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v13, v11, v1}, Lio/ktor/http/QueryKt;->trimEnd(IILjava/lang/CharSequence;)I

    move-result v14

    .line 57
    .local v14, "spaceEndIndex":I
    if-le v14, v13, :cond_1

    .line 58
    nop

    .line 59
    if-eqz p5, :cond_0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-static/range {v1 .. v7}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :goto_0
    nop

    .line 62
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v0, v1, v2}, Lio/ktor/http/ParametersBuilder;->appendAll(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 64
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    return-void

    .line 66
    .end local v13    # "spaceNameIndex":I
    .end local v14    # "spaceEndIndex":I
    :cond_2
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v1}, Lio/ktor/http/QueryKt;->trimStart(IILjava/lang/CharSequence;)I

    move-result v13

    .line 67
    .restart local v13    # "spaceNameIndex":I
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v13, v10, v1}, Lio/ktor/http/QueryKt;->trimEnd(IILjava/lang/CharSequence;)I

    move-result v14

    .line 68
    .local v14, "spaceEqualIndex":I
    if-le v14, v13, :cond_5

    .line 69
    nop

    .line 70
    if-eqz p5, :cond_3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v2, v13

    move v3, v14

    invoke-static/range {v1 .. v7}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :goto_1
    move-object v15, v1

    .line 74
    .local v15, "name":Ljava/lang/String;
    add-int/lit8 v1, v10, 0x1

    move-object v2, v8

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v11, v2}, Lio/ktor/http/QueryKt;->trimStart(IILjava/lang/CharSequence;)I

    move-result v7

    .line 75
    .local v7, "spaceValueIndex":I
    move-object v1, v8

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v7, v11, v1}, Lio/ktor/http/QueryKt;->trimEnd(IILjava/lang/CharSequence;)I

    move-result v6

    .line 76
    .local v6, "spaceEndIndex":I
    nop

    .line 77
    if-eqz p5, :cond_4

    const/16 v12, 0x8

    const/16 v16, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v2, v7

    move v3, v6

    move/from16 v17, v6

    .end local v6    # "spaceEndIndex":I
    .local v17, "spaceEndIndex":I
    move v6, v12

    move v12, v7

    .end local v7    # "spaceValueIndex":I
    .local v12, "spaceValueIndex":I
    move-object/from16 v7, v16

    invoke-static/range {v1 .. v7}, Lio/ktor/http/CodecsKt;->decodeURLQueryComponent$default(Ljava/lang/String;IIZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v12

    move/from16 v2, v17

    goto :goto_2

    .line 78
    .end local v12    # "spaceValueIndex":I
    .end local v17    # "spaceEndIndex":I
    .restart local v6    # "spaceEndIndex":I
    .restart local v7    # "spaceValueIndex":I
    :cond_4
    move/from16 v17, v6

    move v1, v7

    .end local v6    # "spaceEndIndex":I
    .end local v7    # "spaceValueIndex":I
    .local v1, "spaceValueIndex":I
    .restart local v17    # "spaceEndIndex":I
    move/from16 v2, v17

    .end local v17    # "spaceEndIndex":I
    .local v2, "spaceEndIndex":I
    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    :goto_2
    nop

    .line 80
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v15, v3}, Lio/ktor/http/ParametersBuilder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v1    # "spaceValueIndex":I
    .end local v2    # "spaceEndIndex":I
    .end local v3    # "value":Ljava/lang/String;
    .end local v15    # "name":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static final parse(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIZ)V
    .locals 11
    .param p0, "$this$parse"    # Lio/ktor/http/ParametersBuilder;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "limit"    # I
    .param p4, "decode"    # Z

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "count":I
    move v1, p2

    .line 21
    .local v1, "nameIndex":I
    const/4 v2, -0x1

    .line 22
    .local v2, "equalIndex":I
    move v3, p2

    .local v3, "index":I
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v4

    if-gt v3, v4, :cond_3

    .line 23
    :goto_0
    if-ne v0, p3, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 27
    const/16 v6, 0x26

    if-ne v5, v6, :cond_1

    .line 28
    move-object v5, p0

    move-object v6, p1

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, p4

    invoke-static/range {v5 .. v10}, Lio/ktor/http/QueryKt;->appendParam(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIIZ)V

    .line 29
    add-int/lit8 v1, v3, 0x1

    .line 30
    const/4 v2, -0x1

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 33
    :cond_1
    const/16 v6, 0x3d

    if-ne v5, v6, :cond_2

    .line 34
    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 35
    move v2, v3

    .line 22
    :cond_2
    :goto_1
    if-eq v3, v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v7, v1

    move v8, v2

    .line 40
    .end local v1    # "nameIndex":I
    .end local v2    # "equalIndex":I
    .end local v3    # "index":I
    .local v7, "nameIndex":I
    .local v8, "equalIndex":I
    if-ne v0, p3, :cond_4

    .line 41
    return-void

    .line 43
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, v8

    move v6, p4

    invoke-static/range {v1 .. v6}, Lio/ktor/http/QueryKt;->appendParam(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIIZ)V

    .line 44
    return-void
.end method

.method public static final parseQueryString(Ljava/lang/String;IIZ)Lio/ktor/http/Parameters;
    .locals 5
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "limit"    # I
    .param p3, "decode"    # Z

    const-string v0, "query"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 12
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    invoke-virtual {v0}, Lio/ktor/http/Parameters$Companion;->getEmpty()Lio/ktor/http/Parameters;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lio/ktor/http/Parameters;->Companion:Lio/ktor/http/Parameters$Companion;

    .local v0, "this_$iv":Lio/ktor/http/Parameters$Companion;
    const/4 v1, 0x0

    .line 96
    .local v1, "$i$f$build":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4, v2, v3}, Lio/ktor/http/ParametersKt;->ParametersBuilder$default(IILjava/lang/Object;)Lio/ktor/http/ParametersBuilder;

    move-result-object v2

    move-object v3, v2

    .local v3, "$this$parseQueryString_u24lambda_u240":Lio/ktor/http/ParametersBuilder;
    const/4 v4, 0x0

    .line 14
    .local v4, "$i$a$-build-QueryKt$parseQueryString$1":I
    invoke-static {v3, p0, p1, p2, p3}, Lio/ktor/http/QueryKt;->parse(Lio/ktor/http/ParametersBuilder;Ljava/lang/String;IIZ)V

    .line 96
    .end local v3    # "$this$parseQueryString_u24lambda_u240":Lio/ktor/http/ParametersBuilder;
    .end local v4    # "$i$a$-build-QueryKt$parseQueryString$1":I
    invoke-interface {v2}, Lio/ktor/http/ParametersBuilder;->build()Lio/ktor/http/Parameters;

    move-result-object v2

    move-object v0, v2

    .line 11
    .end local v0    # "this_$iv":Lio/ktor/http/Parameters$Companion;
    .end local v1    # "$i$f$build":I
    :goto_0
    return-object v0
.end method

.method public static synthetic parseQueryString$default(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/Parameters;
    .locals 0

    .line 10
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    const/16 p2, 0x3e8

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/QueryKt;->parseQueryString(Ljava/lang/String;IIZ)Lio/ktor/http/Parameters;

    move-result-object p0

    return-object p0
.end method

.method private static final trimEnd(IILjava/lang/CharSequence;)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 85
    move v0, p1

    .line 86
    .local v0, "spaceIndex":I
    :goto_0
    if-le v0, p0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 87
    :cond_0
    return v0
.end method

.method private static final trimStart(IILjava/lang/CharSequence;)I
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "query"    # Ljava/lang/CharSequence;

    .line 91
    move v0, p0

    .line 92
    .local v0, "spaceIndex":I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlin/text/CharsKt;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return v0
.end method
