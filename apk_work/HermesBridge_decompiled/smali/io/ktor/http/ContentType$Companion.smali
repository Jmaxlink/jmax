.class public final Lio/ktor/http/ContentType$Companion;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/ContentType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n+ 2 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters$Companion\n*L\n1#1,318:1\n63#2,2:319\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n*L\n117#1:319,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lio/ktor/http/ContentType$Companion;",
        "",
        "()V",
        "Any",
        "Lio/ktor/http/ContentType;",
        "getAny",
        "()Lio/ktor/http/ContentType;",
        "parse",
        "value",
        "",
        "ktor-http"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/ktor/http/ContentType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAny()Lio/ktor/http/ContentType;
    .locals 1

    .line 149
    invoke-static {}, Lio/ktor/http/ContentType;->access$getAny$cp()Lio/ktor/http/ContentType;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Ljava/lang/String;)Lio/ktor/http/ContentType;
    .locals 16
    .param p1, "value"    # Ljava/lang/String;

    move-object/from16 v0, p1

    const-string v1, "value"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/ContentType$Companion;->getAny()Lio/ktor/http/ContentType;

    move-result-object v1

    return-object v1

    .line 117
    :cond_0
    sget-object v1, Lio/ktor/http/HeaderValueWithParameters;->Companion:Lio/ktor/http/HeaderValueWithParameters$Companion;

    .local v1, "this_$iv":Lio/ktor/http/HeaderValueWithParameters$Companion;
    const/4 v2, 0x0

    .line 319
    .local v2, "$i$f$parse":I
    invoke-static/range {p1 .. p1}, Lio/ktor/http/HttpHeaderValueParserKt;->parseHeaderValue(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/ktor/http/HeaderValue;

    .line 320
    .local v3, "headerValue$iv":Lio/ktor/http/HeaderValue;
    invoke-virtual {v3}, Lio/ktor/http/HeaderValue;->getValue()Ljava/lang/String;

    move-result-object v4

    .local v4, "parts":Ljava/lang/String;
    invoke-virtual {v3}, Lio/ktor/http/HeaderValue;->getParams()Ljava/util/List;

    move-result-object v5

    .local v5, "parameters":Ljava/util/List;
    const/4 v6, 0x0

    .line 118
    .local v6, "$i$a$-parse-ContentType$Companion$parse$1":I
    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/16 v8, 0x2f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v7

    .line 120
    .local v7, "slash":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 121
    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "*"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Lio/ktor/http/ContentType;->Companion:Lio/ktor/http/ContentType$Companion;

    invoke-virtual {v8}, Lio/ktor/http/ContentType$Companion;->getAny()Lio/ktor/http/ContentType;

    move-result-object v8

    return-object v8

    .line 123
    :cond_1
    new-instance v8, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v8, v0}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 126
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "type":Ljava/lang/String;
    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_3

    move v10, v11

    goto :goto_0

    :cond_3
    move v10, v8

    :goto_0
    if-nez v10, :cond_7

    .line 132
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v12, "this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 134
    .local v10, "subtype":Ljava/lang/String;
    move-object v12, v9

    check-cast v12, Ljava/lang/CharSequence;

    const/16 v13, 0x20

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-static {v12, v13, v8, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12, v13, v8, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 138
    move-object v12, v10

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    move v11, v8

    :goto_1
    if-nez v11, :cond_5

    move-object v11, v10

    check-cast v11, Ljava/lang/CharSequence;

    const/16 v12, 0x2f

    invoke-static {v11, v12, v8, v14, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 142
    new-instance v8, Lio/ktor/http/ContentType;

    invoke-direct {v8, v9, v10, v5}, Lio/ktor/http/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 320
    .end local v4    # "parts":Ljava/lang/String;
    .end local v5    # "parameters":Ljava/util/List;
    .end local v6    # "$i$a$-parse-ContentType$Companion$parse$1":I
    .end local v7    # "slash":I
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "subtype":Ljava/lang/String;
    nop

    .line 117
    .end local v1    # "this_$iv":Lio/ktor/http/HeaderValueWithParameters$Companion;
    .end local v2    # "$i$f$parse":I
    .end local v3    # "headerValue$iv":Lio/ktor/http/HeaderValue;
    return-object v8

    .line 139
    .restart local v1    # "this_$iv":Lio/ktor/http/HeaderValueWithParameters$Companion;
    .restart local v2    # "$i$f$parse":I
    .restart local v3    # "headerValue$iv":Lio/ktor/http/HeaderValue;
    .restart local v4    # "parts":Ljava/lang/String;
    .restart local v5    # "parameters":Ljava/util/List;
    .restart local v6    # "$i$a$-parse-ContentType$Companion$parse$1":I
    .restart local v7    # "slash":I
    .restart local v9    # "type":Ljava/lang/String;
    .restart local v10    # "subtype":Ljava/lang/String;
    :cond_5
    new-instance v8, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v8, v0}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_6
    new-instance v8, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v8, v0}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 129
    .end local v10    # "subtype":Ljava/lang/String;
    :cond_7
    new-instance v8, Lio/ktor/http/BadContentTypeFormatException;

    invoke-direct {v8, v0}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
