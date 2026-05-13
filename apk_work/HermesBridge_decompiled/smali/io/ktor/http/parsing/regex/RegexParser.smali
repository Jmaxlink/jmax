.class public final Lio/ktor/http/parsing/regex/RegexParser;
.super Ljava/lang/Object;
.source "RegexParser.kt"

# interfaces
.implements Lio/ktor/http/parsing/Parser;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRegexParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegexParser.kt\nio/ktor/http/parsing/regex/RegexParser\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,33:1\n215#2:34\n216#2:38\n1855#3:35\n1856#3:37\n1#4:36\n*S KotlinDebug\n*F\n+ 1 RegexParser.kt\nio/ktor/http/parsing/regex/RegexParser\n*L\n20#1:34\n20#1:38\n21#1:35\n21#1:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0006H\u0016J\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000c\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/ktor/http/parsing/regex/RegexParser;",
        "Lio/ktor/http/parsing/Parser;",
        "expression",
        "Lkotlin/text/Regex;",
        "indexes",
        "",
        "",
        "",
        "",
        "(Lkotlin/text/Regex;Ljava/util/Map;)V",
        "match",
        "",
        "input",
        "parse",
        "Lio/ktor/http/parsing/ParseResult;",
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


# instance fields
.field private final expression:Lkotlin/text/Regex;

.field private final indexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/text/Regex;Ljava/util/Map;)V
    .locals 1
    .param p1, "expression"    # Lkotlin/text/Regex;
    .param p2, "indexes"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/text/Regex;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "expression"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indexes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/ktor/http/parsing/regex/RegexParser;->expression:Lkotlin/text/Regex;

    .line 11
    iput-object p2, p0, Lio/ktor/http/parsing/regex/RegexParser;->indexes:Ljava/util/Map;

    .line 9
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lio/ktor/http/parsing/regex/RegexParser;->expression:Lkotlin/text/Regex;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)Lio/ktor/http/parsing/ParseResult;
    .locals 20
    .param p1, "input"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "input"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v2, v0, Lio/ktor/http/parsing/regex/RegexParser;->expression:Lkotlin/text/Regex;

    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object v2

    .line 15
    .local v2, "match":Lkotlin/text/MatchResult;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_0

    move-object/from16 v18, v2

    goto/16 :goto_3

    .line 19
    :cond_0
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .line 20
    .local v3, "mapping":Ljava/util/Map;
    iget-object v4, v0, Lio/ktor/http/parsing/regex/RegexParser;->indexes:Ljava/util/Map;

    .local v4, "$this$forEach$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 34
    .local v5, "$i$f$forEach":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .local v7, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 20
    .local v8, "$i$a$-forEach-RegexParser$parse$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 21
    .local v10, "locations":Ljava/util/List;
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 35
    .local v12, "$i$f$forEach":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "index":I
    const/16 v16, 0x0

    .line 22
    .local v16, "$i$a$-forEach-RegexParser$parse$1$1":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/List;

    .line 23
    .local v0, "result":Ljava/util/List;
    invoke-interface {v2}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v1

    invoke-interface {v1, v15}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    .local v1, "it":Lkotlin/text/MatchGroup;
    const/16 v17, 0x0

    .line 23
    .local v17, "$i$a$-let-RegexParser$parse$1$1$1":I
    move-object/from16 v18, v2

    .end local v2    # "match":Lkotlin/text/MatchResult;
    .local v18, "match":Lkotlin/text/MatchResult;
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    move-object/from16 v19, v4

    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .local v19, "$this$forEach$iv":Ljava/util/Map;
    invoke-virtual {v1}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v1    # "it":Lkotlin/text/MatchGroup;
    .end local v17    # "$i$a$-let-RegexParser$parse$1$1$1":I
    goto :goto_2

    .end local v18    # "match":Lkotlin/text/MatchResult;
    .end local v19    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v2    # "match":Lkotlin/text/MatchResult;
    .restart local v4    # "$this$forEach$iv":Ljava/util/Map;
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    .line 24
    .end local v2    # "match":Lkotlin/text/MatchResult;
    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v18    # "match":Lkotlin/text/MatchResult;
    .restart local v19    # "$this$forEach$iv":Ljava/util/Map;
    :goto_2
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v3, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_2
    nop

    .line 35
    .end local v0    # "result":Ljava/util/List;
    .end local v15    # "index":I
    .end local v16    # "$i$a$-forEach-RegexParser$parse$1$1":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v4, v19

    .end local v14    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 37
    .end local v18    # "match":Lkotlin/text/MatchResult;
    .end local v19    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v2    # "match":Lkotlin/text/MatchResult;
    .restart local v4    # "$this$forEach$iv":Ljava/util/Map;
    :cond_3
    move-object/from16 v18, v2

    move-object/from16 v19, v4

    .line 26
    .end local v2    # "match":Lkotlin/text/MatchResult;
    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .end local v11    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$forEach":I
    .restart local v18    # "match":Lkotlin/text/MatchResult;
    .restart local v19    # "$this$forEach$iv":Ljava/util/Map;
    nop

    .line 34
    .end local v8    # "$i$a$-forEach-RegexParser$parse$1":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "locations":Ljava/util/List;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .end local v7    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 38
    .end local v18    # "match":Lkotlin/text/MatchResult;
    .end local v19    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v2    # "match":Lkotlin/text/MatchResult;
    .restart local v4    # "$this$forEach$iv":Ljava/util/Map;
    :cond_4
    nop

    .line 28
    .end local v4    # "$this$forEach$iv":Ljava/util/Map;
    .end local v5    # "$i$f$forEach":I
    new-instance v0, Lio/ktor/http/parsing/ParseResult;

    invoke-direct {v0, v3}, Lio/ktor/http/parsing/ParseResult;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 15
    .end local v3    # "mapping":Ljava/util/Map;
    :cond_5
    move-object/from16 v18, v2

    .line 16
    .end local v2    # "match":Lkotlin/text/MatchResult;
    .restart local v18    # "match":Lkotlin/text/MatchResult;
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method
