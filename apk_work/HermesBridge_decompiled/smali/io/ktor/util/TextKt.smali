.class public final Lio/ktor/util/TextKt;
.super Ljava/lang/Object;
.source "Text.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,115:1\n151#2,6:116\n151#2,6:122\n*S KotlinDebug\n*F\n+ 1 Text.kt\nio/ktor/util/TextKt\n*L\n50#1:116,6\n73#1:122,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0002\u001a\u000c\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0000\u001a>\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0008*\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0018\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00080\u000bH\u0086\u0008\u00f8\u0001\u0000\u001a\n\u0010\u000c\u001a\u00020\u0006*\u00020\u0006\u001a\n\u0010\r\u001a\u00020\u0006*\u00020\u0006\u001a\n\u0010\u000e\u001a\u00020\u0006*\u00020\u0006\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "toLowerCasePreservingASCII",
        "",
        "ch",
        "toUpperCasePreservingASCII",
        "caseInsensitive",
        "Lio/ktor/util/CaseInsensitiveString;",
        "",
        "chomp",
        "Lkotlin/Pair;",
        "separator",
        "onMissingDelimiter",
        "Lkotlin/Function0;",
        "escapeHTML",
        "toLowerCasePreservingASCIIRules",
        "toUpperCasePreservingASCIIRules",
        "ktor-utils"
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
.method public static final caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;
    .locals 1
    .param p0, "$this$caseInsensitive"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lio/ktor/util/CaseInsensitiveString;

    invoke-direct {v0, p0}, Lio/ktor/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final chomp(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Lkotlin/Pair;
    .locals 7
    .param p0, "$this$chomp"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "onMissingDelimiter"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "separator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onMissingDelimiter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    .local v0, "$i$f$chomp":I
    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 39
    .local v1, "idx":I
    nop

    .line 40
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 39
    :goto_0
    return-object v2
.end method

.method public static final escapeHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "$this$escapeHTML"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    move-object v0, p0

    .line 12
    .local v0, "text":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .local v1, "$this$escapeHTML_u24lambda_u240":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 15
    .local v3, "$i$a$-buildString-TextKt$escapeHTML$1":I
    const/4 v4, 0x0

    .local v4, "idx":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_7

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 17
    .local v6, "ch":C
    nop

    .line 18
    const/16 v7, 0x27

    if-ne v6, v7, :cond_2

    const-string v7, "&#x27;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 19
    :cond_2
    const/16 v7, 0x22

    if-ne v6, v7, :cond_3

    const-string v7, "&quot;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 20
    :cond_3
    const/16 v7, 0x26

    if-ne v6, v7, :cond_4

    const-string v7, "&amp;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 21
    :cond_4
    const/16 v7, 0x3c

    if-ne v6, v7, :cond_5

    const-string v7, "&lt;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 22
    :cond_5
    const/16 v7, 0x3e

    if-ne v6, v7, :cond_6

    const-string v7, "&gt;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 23
    :cond_6
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    .end local v6    # "ch":C
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 26
    .end local v4    # "idx":I
    :cond_7
    nop

    .line 14
    .end local v1    # "$this$escapeHTML_u24lambda_u240":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-TextKt$escapeHTML$1":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method private static final toLowerCasePreservingASCII(C)C
    .locals 3
    .param p0, "ch"    # C

    .line 91
    nop

    .line 92
    const/16 v0, 0x41

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    goto :goto_2

    .line 93
    :cond_1
    if-ltz p0, :cond_2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    move v0, p0

    goto :goto_2

    .line 94
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 95
    :goto_2
    return v0
.end method

.method public static final toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "$this$toLowerCasePreservingASCIIRules"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 116
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ge v2, v3, :cond_2

    .line 117
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "it":C
    const/4 v7, 0x0

    .line 51
    .local v7, "$i$a$-indexOfFirst-TextKt$toLowerCasePreservingASCIIRules$firstIndex$1":I
    invoke-static {v6}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCII(C)C

    move-result v8

    if-eq v8, v6, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v4

    .line 117
    .end local v6    # "it":C
    .end local v7    # "$i$a$-indexOfFirst-TextKt$toLowerCasePreservingASCIIRules$firstIndex$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 118
    goto :goto_2

    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "index$iv":I
    :cond_2
    move v2, v5

    .line 50
    .end local v0    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_2
    move v0, v2

    .line 54
    .local v0, "firstIndex":I
    if-ne v0, v5, :cond_3

    .line 55
    return-object p0

    .line 58
    :cond_3
    move-object v1, p0

    .line 59
    .local v1, "original":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .local v2, "$this$toLowerCasePreservingASCIIRules_u24lambda_u242":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 60
    .local v5, "$i$a$-buildString-TextKt$toLowerCasePreservingASCIIRules$1":I
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 62
    move v4, v0

    .local v4, "index":I
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v6

    if-gt v4, v6, :cond_4

    .line 63
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCII(C)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    if-eq v4, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 65
    .end local v4    # "index":I
    :cond_4
    nop

    .line 59
    .end local v2    # "$this$toLowerCasePreservingASCIIRules_u24lambda_u242":Ljava/lang/StringBuilder;
    .end local v5    # "$i$a$-buildString-TextKt$toLowerCasePreservingASCIIRules$1":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method private static final toUpperCasePreservingASCII(C)C
    .locals 3
    .param p0, "ch"    # C

    .line 97
    nop

    .line 98
    const/16 v0, 0x61

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    add-int/lit8 v0, p0, -0x20

    int-to-char v0, v0

    goto :goto_2

    .line 99
    :cond_1
    if-ltz p0, :cond_2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    move v0, p0

    goto :goto_2

    .line 100
    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 101
    :goto_2
    return v0
.end method

.method public static final toUpperCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "$this$toUpperCasePreservingASCIIRules"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    .local v0, "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 122
    .local v1, "$i$f$indexOfFirst":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    :goto_0
    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ge v2, v3, :cond_2

    .line 123
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .local v6, "it":C
    const/4 v7, 0x0

    .line 74
    .local v7, "$i$a$-indexOfFirst-TextKt$toUpperCasePreservingASCIIRules$firstIndex$1":I
    invoke-static {v6}, Lio/ktor/util/TextKt;->toUpperCasePreservingASCII(C)C

    move-result v8

    if-eq v8, v6, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v4

    .line 123
    .end local v6    # "it":C
    .end local v7    # "$i$a$-indexOfFirst-TextKt$toUpperCasePreservingASCIIRules$firstIndex$1":I
    :goto_1
    if-eqz v8, :cond_1

    .line 124
    goto :goto_2

    .line 122
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "index$iv":I
    :cond_2
    move v2, v5

    .line 73
    .end local v0    # "$this$indexOfFirst$iv":Ljava/lang/CharSequence;
    .end local v1    # "$i$f$indexOfFirst":I
    :goto_2
    move v0, v2

    .line 77
    .local v0, "firstIndex":I
    if-ne v0, v5, :cond_3

    .line 78
    return-object p0

    .line 81
    :cond_3
    move-object v1, p0

    .line 82
    .local v1, "original":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .local v2, "$this$toUpperCasePreservingASCIIRules_u24lambda_u244":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 83
    .local v5, "$i$a$-buildString-TextKt$toUpperCasePreservingASCIIRules$1":I
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2, v6, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 85
    move v4, v0

    .local v4, "index":I
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v6

    if-gt v4, v6, :cond_4

    .line 86
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lio/ktor/util/TextKt;->toUpperCasePreservingASCII(C)C

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    if-eq v4, v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 88
    .end local v4    # "index":I
    :cond_4
    nop

    .line 82
    .end local v2    # "$this$toUpperCasePreservingASCIIRules_u24lambda_u244":Ljava/lang/StringBuilder;
    .end local v5    # "$i$a$-buildString-TextKt$toUpperCasePreservingASCIIRules$1":I
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
