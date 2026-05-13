.class public final Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;
.super Ljava/lang/Object;
.source "RegexParserGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegexParserGenerator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegexParserGenerator.kt\nio/ktor/http/parsing/regex/RegexParserGeneratorKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1864#2,3:73\n*S KotlinDebug\n*F\n+ 1 RegexParserGenerator.kt\nio/ktor/http/parsing/regex/RegexParserGeneratorKt\n*L\n41#1:73,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u001a.\u0010\u0000\u001a\u00020\u0001*\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00022\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0002\u001a\u000c\u0010\u0008\u001a\u00020\t*\u00020\nH\u0000\u001a:\u0010\u000b\u001a\u00020\u000c*\u00020\n2\u0018\u0010\r\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010H\u0002\u00a8\u0006\u0011"
    }
    d2 = {
        "add",
        "",
        "",
        "",
        "",
        "",
        "key",
        "value",
        "buildRegexParser",
        "Lio/ktor/http/parsing/Parser;",
        "Lio/ktor/http/parsing/Grammar;",
        "toRegex",
        "Lio/ktor/http/parsing/regex/GrammarRegex;",
        "groups",
        "offset",
        "shouldGroup",
        "",
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
.method private static final add(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .param p0, "$this$add"    # Ljava/util/Map;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 69
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 70
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public static final buildRegexParser(Lio/ktor/http/parsing/Grammar;)Lio/ktor/http/parsing/Parser;
    .locals 7
    .param p0, "$this$buildRegexParser"    # Lio/ktor/http/parsing/Grammar;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 11
    .local v0, "groups":Ljava/util/Map;
    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-static/range {v1 .. v6}, Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;->toRegex$default(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZILjava/lang/Object;)Lio/ktor/http/parsing/regex/GrammarRegex;

    move-result-object v1

    invoke-virtual {v1}, Lio/ktor/http/parsing/regex/GrammarRegex;->getRegex()Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "expression":Ljava/lang/String;
    new-instance v2, Lio/ktor/http/parsing/regex/RegexParser;

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lio/ktor/http/parsing/regex/RegexParser;-><init>(Lkotlin/text/Regex;Ljava/util/Map;)V

    check-cast v2, Lio/ktor/http/parsing/Parser;

    return-object v2
.end method

.method private static final toRegex(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZ)Lio/ktor/http/parsing/regex/GrammarRegex;
    .locals 16
    .param p0, "$this$toRegex"    # Lio/ktor/http/parsing/Grammar;
    .param p1, "groups"    # Ljava/util/Map;
    .param p2, "offset"    # I
    .param p3, "shouldGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/http/parsing/Grammar;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;IZ)",
            "Lio/ktor/http/parsing/regex/GrammarRegex;"
        }
    .end annotation

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 30
    instance-of v1, v0, Lio/ktor/http/parsing/StringGrammar;

    if-eqz v1, :cond_0

    new-instance v1, Lio/ktor/http/parsing/regex/GrammarRegex;

    sget-object v2, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    move-object v3, v0

    check-cast v3, Lio/ktor/http/parsing/StringGrammar;

    invoke-virtual {v3}, Lio/ktor/http/parsing/StringGrammar;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    .line 31
    :cond_0
    instance-of v1, v0, Lio/ktor/http/parsing/RawGrammar;

    if-eqz v1, :cond_1

    new-instance v1, Lio/ktor/http/parsing/regex/GrammarRegex;

    move-object v2, v0

    check-cast v2, Lio/ktor/http/parsing/RawGrammar;

    invoke-virtual {v2}, Lio/ktor/http/parsing/RawGrammar;->getValue()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_3

    .line 32
    :cond_1
    instance-of v1, v0, Lio/ktor/http/parsing/NamedGrammar;

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    .line 33
    move-object v1, v0

    check-cast v1, Lio/ktor/http/parsing/NamedGrammar;

    invoke-virtual {v1}, Lio/ktor/http/parsing/NamedGrammar;->getGrammar()Lio/ktor/http/parsing/Grammar;

    move-result-object v1

    add-int/lit8 v3, v8, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;->toRegex$default(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZILjava/lang/Object;)Lio/ktor/http/parsing/regex/GrammarRegex;

    move-result-object v1

    .line 34
    .local v1, "nested":Lio/ktor/http/parsing/regex/GrammarRegex;
    move-object v2, v0

    check-cast v2, Lio/ktor/http/parsing/NamedGrammar;

    invoke-virtual {v2}, Lio/ktor/http/parsing/NamedGrammar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v8}, Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;->add(Ljava/util/Map;Ljava/lang/String;I)V

    .line 35
    new-instance v2, Lio/ktor/http/parsing/regex/GrammarRegex;

    invoke-virtual {v1}, Lio/ktor/http/parsing/regex/GrammarRegex;->getRegex()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lio/ktor/http/parsing/regex/GrammarRegex;->getGroupsCount()I

    move-result v4

    invoke-direct {v2, v3, v4, v10}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZ)V

    move-object v1, v2

    .end local v1    # "nested":Lio/ktor/http/parsing/regex/GrammarRegex;
    goto/16 :goto_3

    .line 37
    :cond_2
    instance-of v1, v0, Lio/ktor/http/parsing/ComplexGrammar;

    if-eqz v1, :cond_8

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v1, "expression":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "currentOffset":I
    if-eqz v9, :cond_3

    add-int/lit8 v3, v8, 0x1

    goto :goto_0

    :cond_3
    move v3, v8

    :goto_0
    move v2, v3

    .line 41
    move-object v3, v0

    check-cast v3, Lio/ktor/http/parsing/ComplexGrammar;

    invoke-interface {v3}, Lio/ktor/http/parsing/ComplexGrammar;->getGrammars()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 73
    .local v4, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .line 74
    .local v5, "index$iv":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "item$iv":Ljava/lang/Object;
    add-int/lit8 v12, v5, 0x1

    .end local v5    # "index$iv":I
    .local v12, "index$iv":I
    if-gez v5, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    move-object v13, v11

    check-cast v13, Lio/ktor/http/parsing/Grammar;

    .local v5, "index":I
    .local v13, "grammar":Lio/ktor/http/parsing/Grammar;
    const/4 v14, 0x0

    .line 42
    .local v14, "$i$a$-forEachIndexed-RegexParserGeneratorKt$toRegex$1":I
    invoke-static {v13, v7, v2, v10}, Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;->toRegex(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZ)Lio/ktor/http/parsing/regex/GrammarRegex;

    move-result-object v15

    .line 44
    .local v15, "current":Lio/ktor/http/parsing/regex/GrammarRegex;
    if-eqz v5, :cond_5

    instance-of v10, v0, Lio/ktor/http/parsing/OrGrammar;

    if-eqz v10, :cond_5

    const-string v10, "|"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_5
    invoke-virtual {v15}, Lio/ktor/http/parsing/regex/GrammarRegex;->getRegex()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v15}, Lio/ktor/http/parsing/regex/GrammarRegex;->getGroupsCount()I

    move-result v10

    add-int/2addr v2, v10

    .line 47
    nop

    .line 74
    .end local v5    # "index":I
    .end local v13    # "grammar":Lio/ktor/http/parsing/Grammar;
    .end local v14    # "$i$a$-forEachIndexed-RegexParserGeneratorKt$toRegex$1":I
    .end local v15    # "current":Lio/ktor/http/parsing/regex/GrammarRegex;
    move v5, v12

    const/4 v10, 0x1

    .end local v11    # "item$iv":Ljava/lang/Object;
    goto :goto_1

    .line 75
    .end local v12    # "index$iv":I
    .local v5, "index$iv":I
    :cond_6
    nop

    .line 49
    .end local v3    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEachIndexed":I
    .end local v5    # "index$iv":I
    sub-int v3, v2, v8

    if-eqz v9, :cond_7

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 50
    .local v3, "groupsCount":I
    :cond_7
    new-instance v4, Lio/ktor/http/parsing/regex/GrammarRegex;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "expression.toString()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3, v9}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZ)V

    move-object v1, v4

    .end local v1    # "expression":Ljava/lang/StringBuilder;
    .end local v2    # "currentOffset":I
    .end local v3    # "groupsCount":I
    goto/16 :goto_3

    .line 52
    :cond_8
    instance-of v1, v0, Lio/ktor/http/parsing/SimpleGrammar;

    if-eqz v1, :cond_c

    .line 53
    nop

    .line 54
    instance-of v1, v0, Lio/ktor/http/parsing/MaybeGrammar;

    if-eqz v1, :cond_9

    const/16 v1, 0x3f

    goto :goto_2

    .line 55
    :cond_9
    instance-of v1, v0, Lio/ktor/http/parsing/ManyGrammar;

    if-eqz v1, :cond_a

    const/16 v1, 0x2a

    goto :goto_2

    .line 56
    :cond_a
    instance-of v1, v0, Lio/ktor/http/parsing/AtLeastOne;

    if-eqz v1, :cond_b

    const/16 v1, 0x2b

    .line 53
    :goto_2
    nop

    .line 60
    .local v1, "operator":C
    move-object v2, v0

    check-cast v2, Lio/ktor/http/parsing/SimpleGrammar;

    invoke-interface {v2}, Lio/ktor/http/parsing/SimpleGrammar;->getGrammar()Lio/ktor/http/parsing/Grammar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v7, v8, v3}, Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;->toRegex(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZ)Lio/ktor/http/parsing/regex/GrammarRegex;

    move-result-object v2

    .line 61
    .local v2, "nested":Lio/ktor/http/parsing/regex/GrammarRegex;
    new-instance v3, Lio/ktor/http/parsing/regex/GrammarRegex;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lio/ktor/http/parsing/regex/GrammarRegex;->getRegex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lio/ktor/http/parsing/regex/GrammarRegex;->getGroupsCount()I

    move-result v12

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v3

    .end local v1    # "operator":C
    .end local v2    # "nested":Lio/ktor/http/parsing/regex/GrammarRegex;
    goto/16 :goto_3

    .line 56
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported simple grammar element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_c
    instance-of v1, v0, Lio/ktor/http/parsing/AnyOfGrammar;

    const/16 v2, 0x5d

    const/16 v3, 0x5b

    if-eqz v1, :cond_d

    new-instance v1, Lio/ktor/http/parsing/regex/GrammarRegex;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    move-object v5, v0

    check-cast v5, Lio/ktor/http/parsing/AnyOfGrammar;

    invoke-virtual {v5}, Lio/ktor/http/parsing/AnyOfGrammar;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlin/text/Regex$Companion;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    .line 64
    :cond_d
    instance-of v1, v0, Lio/ktor/http/parsing/RangeGrammar;

    if-eqz v1, :cond_e

    new-instance v1, Lio/ktor/http/parsing/regex/GrammarRegex;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lio/ktor/http/parsing/RangeGrammar;

    invoke-virtual {v4}, Lio/ktor/http/parsing/RangeGrammar;->getFrom()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lio/ktor/http/parsing/RangeGrammar;

    invoke-virtual {v4}, Lio/ktor/http/parsing/RangeGrammar;->getTo()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v15}, Lio/ktor/http/parsing/regex/GrammarRegex;-><init>(Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 66
    :goto_3
    return-object v1

    .line 64
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported grammar element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic toRegex$default(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZILjava/lang/Object;)Lio/ktor/http/parsing/regex/GrammarRegex;
    .locals 0

    .line 25
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 27
    const/4 p2, 0x1

    .line 25
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 28
    const/4 p3, 0x0

    .line 25
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/http/parsing/regex/RegexParserGeneratorKt;->toRegex(Lio/ktor/http/parsing/Grammar;Ljava/util/Map;IZ)Lio/ktor/http/parsing/regex/GrammarRegex;

    move-result-object p0

    return-object p0
.end method
